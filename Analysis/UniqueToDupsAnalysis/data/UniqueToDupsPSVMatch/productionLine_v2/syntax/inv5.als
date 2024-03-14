Workers & Robots not in workers
-- div,1
all w:Workstation | w.workers &
-- div,2
all workers.Human - workers.Robot
-- div,1
all workers.Human + workers.Robot
-- div,1
all wb : Workstation | some h : Human
-- div,1
no (worksers - Robot->Robot - Human->Human)
-- div,1
all w:Worstation | w.workers in Human + Robot
-- div,1
Robot in Workstation <-> no Human in Workstation
-- div,1
all w:Workstation | w.workers in (Human or Robot)
-- div,1
Workstation.workers in Human or w.workers in Robot
-- div,1
all ww:Workstation | disj Human,Worker in ww.workers
-- div,1
all wb : Workstation | !(Human & Robot & wb.workers)
-- div,1
all h :  Human | all r : Robot | all w : Workstation
-- div,1
all ws : Workstation | Human&Robot not in we.workers
-- div,1
all w : Workstation | w.wokers not in (Robot + Human)
-- div,1
all w : Workstation | w.workers all in (Human or Robot)
-- div,1
all h: Human, r: Robot: h in w.workers & r in w.workers
-- div,1
all h: Human, r: Robot | h in w.workers & r in w.workers
-- div,1
all w : Workstation | w.works in Human or w.works in Robot
-- div,1
all w : Workers | all w1 :  Workstation | w1->w in workers
-- div,1
all s:Workstation | w.workers in Human or w.workers in Robot
-- div,1
sll w:Workstation | w.workers in Human or w.workers in Robot
-- div,1
all wb : Workstation | no (workers.Human & Robot)
-- div,1
all wt:worktation | no (wt.workers-Human) & (wt.workers-Robot)
-- div,1
Robot in Workstation.workers -> no Human in Workstation.workers
-- div,1
all w : Wortkstation | w.workers in Human or w.workers in Robot
-- div,1
all w:Workstation | no w:workers & Robot or no w.workers & Human
-- div,1
all wb : Workstation | sb.workers in Human or wb.workers in Robot
-- div,1
some Robot in Workstation.workers -> no Human in Workstation.workers
-- div,2
all wb : Workstation | no (Human & Robot & wb.workers)
-- div,1
all w : Workstation | all w.workers in Human or all w.workers in Robot
-- div,1
all h :  Human | all r : Robot | all w : workstation | h->w in workers
-- div,1
all wb : Workstation | no (workers.Human & workers.Robot)
-- div,1
all h :  Human | all r : Robot | all w : Workstation ! h -> w in workers
-- div,1
all w:Worstation, h:Human, r:Robot | h not in w.works or r not in w.works
-- div,1
all w:Workstation, h:Human, r:Robot | h not in w.works or r not in w.works
-- div,1
all w : Workstation, h: Humans, r: Robots | w.workers in h or w.workers in r
-- div,1
all s:Workstation, h:Human, r:Robot |hnot in s.workers or r not in s.workers
-- div,1
all w:Workstation, h:Human , r:Robot | h not in w.Workers or r not in w.Workers
-- div,1
all ws:Workstation , all w:Worker| ws->w in workers implies w in Human or Robot
-- div,1
all w1,w2 : Worker | all ws : Workstation | (w1->ws in works and w2->ws in works)
-- div,1
all w:Workstation | w.workers in Human or w.workers in Robot
-- div,2
all ws : Workstation | some h : Human | h in ws.workers implies no ws.worker&Robot
-- div,1
all wt:Workstation,w:Worker | w in wt.Workers and w in Human implies no wt.Workers-Human
-- div,1
all h:Human, ws:Workstation | ws->h in workers implies all r:robot | ws->r not in workers
-- div,1
all h : Human | all r : Robots | all w : Workstation | r in w.workers and h not in w.workers
-- div,1
all h : Humans | all r : Robots | all w : Workstation | r in w.workers and h not in w.workers
-- div,1
all ws:Worstation | not some w1, w2:Worker | ws->w and w1 in Human and w2 in Robot and w1!=w2
-- div,1
all ws:Workstation | not some w1, w2:Worker | ws->w and w1 in Human and w2 in Robot and w1!=w2
-- div,1
all h : Human | all r : Robot | all w : Workstation | h in w.worker implies r not in w.workers
-- div,1
all w1, w2 : Worker, ws : Workstation | w1,w2 in ws implies (w1,w2 in Robot or w1,w2 in Human)
-- div,1
all ws : Workstation, some h : Human, some r : Robot | h in ws.workers iff r not in ws.workers
-- div,1
all w1, w2 : Worker, ws : Workstation | (w1,w2 in ws) implies ((w1,w2 = Robot) or (w1,w2 = Human))
-- div,1
all h :  Human | all r : Robot | all w : Workstation | h->w in workers
-- div,1
all w1, w2 : Worker, ws : Workstation | (w1,w2 in ws) implies ((w1,w2 in Robot) or (w1,w2 in Human))
-- div,1
all w : Workstation, work : Worker | w->work in workers and work in Human implies work not in robots
-- div,1
all h :  Human | all r : Robot | all w : Workstation ! h -> w in workers implies r->w not in workers
-- div,1
all w,w1 : Worker | all ws:Worstation | (w+w1) in ws.workers and w in Human | implies w1 not in Robot
-- div,1
all w : Workstation, work : Workers | w->work in workers and work in Human implies work not in robots
-- div,2
all w1,w2 : Worker | all ws : workstation | (w1->ws in works and w2->ws in works) implies (w1,w2 in Human)
-- div,1
all  w: WorkStation, wr:Workers | wr in Human implies no Worker-Robot and wr in Robot implies no Worker-Human
-- div,1
all  w: Workstation, wr:Workers | wr in Human implies no Worker-Robot and wr in Robot implies no Worker-Human
-- div,1
all ws: Worksation, w1,w2: Worker | w1 in ws.workers and w2 in ws.workers and w1 in Human implies w2 in Human
-- div,1
all w,w1 : Worker | all ws:Worstation | w in ws.workers and w1 in ws.workers and w in Human implies w1 in Human
-- div,1
all ws:Workstation, w1,w2:Workers | w1->ws in workers and w2->ws in workers and w1 in Human implies w2 in Robot
-- div,1
all ws : Workstation | all w1, w2 : Workers | (w1+w2) in ws.workers implies (w1+w2) in Human or (w1+w2) in Robot
-- div,1
all w,w1 : Worker | all ws:Worstation | w in ws.workers and w1 in ws.workers and w in Human | implies w1 in Human
-- div,1
all w,w1 : Worker | all ws:Worstation | w in ws.workers and w1 in w1.workers and w in Human | implies w1 in Human
-- div,1
all w : Workstation | all w1,w2 : Worker | (w1 in w.workers and w2 in w.workers and w1 is Human) implies w2 is Human
-- div,3
all w : Workstation | all w1,w2 : Worker |  (w1 in w.workers and w2 in w.workers and w1 is Human) implies w2 is Human
-- div,1
all w1,w2: Worker | all: ws: Workstation | w1 in ws.workers and w2 in ws.workers and w1 in Human implies  w2 in Human
-- div,2
all w : Workstation | all w1,w2 : Worker | (w1 in w.workers and w2 in w.workers and w1 is Human) implies (w2 is Human
-- div,1
all w,w1 : Worker | all ws:Worstation | w in ws.workers and w1 in w1.workers and w in Human | implies w1 not in Robot
-- div,1
all w : Workstation | all w1,w2 : Worker | (w1 in w.workers and w2 in w.workers and w1 is Human) implies (w2 is Human)
-- div,1
all w : Workstation | (Robot in w.worker implies no Human in w.worker) and (Human in w.worker implies no Robot in w.worker)
-- div,1
all w : Workstation | all w1,w2 : Worker | ((ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)
-- div,1
all h :  Human | all r : Robot | all w : Workstation | h -> w in workers implies r->w not in workers
-- div,1
all w1,w2 : Worker | all ws : Workstation | (w1->ws in works and w2->ws in works) implies (w1,w2 in Human) or (w1,w2 in Robot)
-- div,1
all w1,w2 : Worker | all ws : workstation | (w1->ws in works and w2->ws in works) implies (w1,w2 in Human) or (w1,w2 in Robot)
-- div,3
all w1,w2 : Worker | all ws : Workstation | (ws->w1 in workers and ws->w2 in workers) implies (w1,w2 in Human) or (w1,w2 in Robot)
-- div,1
all w1,w2: Worker | all: ws: Workstation | w1 in ws.workers and w2 in ws.workers implies (w1 and w2 in Human) or (w1 and w2 in Robot)
-- div,1
all h : Human, r : Robot, w : Worksation | (w->h in workers implies w->r not in workers) and (w->r in workers implies w->h not in workers)
-- div,1
all w1,w2 : Worker | all ws : Workstation | (ws->w1 in workers and ws->w2 in workers and w2 in Human) implies w1 in Human
-- div,2
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1 : Component,c2:Component]: r {
r iff
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all w1, w2 : Worker | ws : Worksation | w1 in Human and w2 in Robot implies (w1 in ws.workers and w2 not in ws.workers) or (w2 in ws.workers and w1 not in ws.workers)
-- div,1
all w1, w2 : Worker | ws : Workstation | w1 in Human and w2 in Robot implies (w1 in ws.workers and w2 not in ws.workers) or (w2 in ws.workers and w1 not in ws.workers)
-- div,1
all w1, w2 : Worker | ws : Workstation | w1 in Human and w2 in Robot implies ((w1 in ws.workers and w2 not in ws.workers) or (w2 in ws.workers and w1 not in ws.workers))
-- div,1
all w: Workstation | no (Robot in w.workers) implies (Human in w.workers)
all w: Workstation | no (Human in w.workers) implies (Robot in w.workers)

all w: Workstation |
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1,c2]{
all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2]
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1,c2]= r {
r iff
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1,c2] : r{
r iff
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1,c2]: r {
r iff
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1,c2=]: r {
r iff
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1,c2] : r {
r iff
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1 : Component,c2:Component] {
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1 : Component,c2:Component]: {
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1 : Component,c2:Component]:  {
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1 : Component,c2:Component]: r:Bool  {
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])
-- div,1
all ws : Workstation | all w1,w2 : Worker |
(ws->w1 in workers and ws->w2 in workers and w1 in Human)
implies (w2 in Human)

}

fun path [c1 : Component,c2:Component]:  {
(all c3 : Component | c1->c3 in parts implies c3->c2 not in parts and path[c3,c2])

}


{pred inv6 {

all c1,c2 : Component | c1->c2 in parts implies c2->c1 not in parts
-- div,1
