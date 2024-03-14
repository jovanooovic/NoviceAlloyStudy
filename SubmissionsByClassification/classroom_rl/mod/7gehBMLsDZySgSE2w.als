module HAMSTERS

abstract sig Task {}
abstract sig Atomic extends Task {
	var guard : lone True
}
one sig True {}
abstract sig Composite extends Task {
	subtasks : seq Task
}
abstract sig Disable, Suspend, Concurrent, Choice extends Composite {}

abstract sig Sequence extends Composite {
	var log : seq Task
}

one sig Root in Task {}
sig Iterative, Optional, Input in Task {}

sig Erroneous in Atomic {}


fun parent : Task -> Task {
	{ a,b : Task | a in elems[b.subtasks] }
}


fun succ : Task -> Task {
	{ x, y : Task | some p : Task | x+y in elems[p.subtasks] and idxOf[p.subtasks,y] = idxOf[p.subtasks,x].next }
}



fact Tree {
	
	no Root.parent
	all t : Task-Root | one t.parent
	all t : Task | t not in t.^parent
}

fact WellFormed {

	
	all t : Composite | not lone elems[t.subtasks] and not hasDups[t.subtasks]

	

	
	all t : Choice+Disable+Suspend | no parent.t & Optional

	
	all t : Sequence | no succ.(parent.t) & Iterative

	
 	all t : Sequence+Concurrent | some parent.t - Optional

	
	all t : Erroneous | t in Input and some t.parent & Sequence
}



var sig executed, enabled, running, finished, done in Task {}

fact Behavior { no executed and no log and always {
	
	nop or (some t : Atomic | execute[t]) or (some t : Task | reset[t])
	
	enabled = { t : Task | {
		
		t.parent in enabled
		
		t in Atomic implies t.guard = True and (t in Erroneous or t not in done)
		
		some t.parent & Choice implies no (parent.(t.parent) - t) & running
		
		some t.parent & Sequence implies all x : ^succ.t | ((t in Erroneous or x in done) or (x in Optional and x not in running))
		
		some t.parent & Sequence implies no t.^succ & running and (t in Erroneous or no t.^succ & done)
		
		some t.parent & Disable implies no t.succ & (running + done)
		
		some t.parent & Suspend implies no t.succ & running
		}}
	
	running = { t : Task | t not in done and some ^parent.t & done }
	
	finished = { t : Task | { 
		
		t in Atomic implies t in executed
		
		t not in Disable implies no parent.t & running
		
		t in Sequence implies (all t : parent.t - Optional | no t.^succ - Optional implies t in done)
		
		t in Concurrent implies parent.t - Optional in done
		
		t in Choice implies some parent.t & done
		
		t in Suspend implies parent.t - (parent.t).succ in done
		
		t in Disable implies parent.t - succ.(parent.t) in done
		}}
	
	done = { t : Task | t in finished - Iterative - (parent.Suspend).succ }
	}
}


var sig Enabled in Atomic {}
fact {
	always Enabled = enabled & Atomic
}


pred nop {
	executed' = executed
	log' = log
}


pred execute [t : Atomic] {
	t in enabled
	executed' = executed + t

	all x : Sequence & t.parent | x.log' = x.log.add[t]

	all x : Sequence - t.parent {
		some parent.x & (finished' - finished) 
		implies x.log' = x.log.add[parent.x & (finished' - finished)] 
		else x.log' = x.log
	}
}


pred reset [t : Task] {
	t in enabled & (finished - done)
	executed' = executed - *parent.t
	all x : *parent.t | no x.log'
	all x : Sequence - *parent.t | x.log' = x.log
}

pred WF_Task[t:Task] {
	
	t in Atomic implies (eventually always (t in enabled) implies always eventually execute[t])
	eventually always (t in enabled and t in finished - done) implies always eventually reset[t]
}

pred WF {
	
	all t : Atomic | eventually always (t in enabled) implies always eventually execute[t]
	all t : Task | eventually always (t in enabled and t in finished - done) implies always eventually reset[t]
}

pred SF_Task[t:Task] {
	
	t in Atomic implies (always eventually (t in enabled) implies always eventually execute[t])
	always eventually (t in enabled and t in finished - done) implies always eventually reset[t]
}

pred SF {
	
	all t : Atomic |  always eventually (t in enabled) implies always eventually execute[t]
	all t : Task |  always eventually (t in enabled and t in finished - done) implies always eventually reset[t]
}

pred Complete {
	
	Root in done
}

pred Deadlock {
	no t : Atomic | t in enabled
 	no t : Task | t in enabled and t in finished - done
}

run Complete {
	no Erroneous and eventually Complete
}

run ErroneousComplete {
	some Erroneous and eventually Complete
}

assert NoDeadlock {
	
	no Erroneous
	implies 
	always (guard.True = Atomic and not Complete implies not Deadlock)
}
check NoDeadlock for 6 but 3 seq, 10 steps expect 0
