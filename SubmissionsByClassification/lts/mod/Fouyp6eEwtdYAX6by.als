









abstract sig Resource {}
  
sig MemBlock, Processor, OtherResource extends Resource {} 
sig File in OtherResource {}

enum Status { BlockedIn, BlockedOut, Inactive, Running, WaitingIn, WaitingOut }

sig Process {
  var code: lone MemBlock,
  var mem: lone MemBlock,  
  var proc: lone Processor,
  var res: lone OtherResource,
  var status: Status
}

enum Operator { Block, Create, Preempt, Resume, Run, Suspend, Terminate, Unblock }
one sig Track { var op: lone Operator }






pred isBlocked [p: Process] {
  p.status in BlockedIn + BlockedOut
}

pred isWaiting [p: Process] {
  p.status in WaitingIn +  WaitingOut
}

pred isInMemory [p: Process] {
  p.status in WaitingIn + BlockedIn + Running
}

pred isSuspended [p: Process] {
  p.status in WaitingOut + BlockedOut
}

pred isRunning [p: Process] {
  p.status = Running
}

pred isInactive [p: Process] {
  p.status = Inactive
}

pred isSwappedOut [p: Process] {
  p.status in BlockedOut + WaitingOut
}

pred overlap [m1: MemBlock, m2: MemBlock] {
  m1 = m2
}






pred noChangeExcept [r: Process -> univ, P: set Process ] {
  all p: Process - P | p.r' = p.r
}







pred block [p: Process, r: OtherResource ] {
  
  
  
  
  isRunning[p]
 
  
  
  
  
  p.proc' = none   
  
  p.res' = r 
  p.status' = BlockedIn   
  
  
  
  
  noChangeExcept [code, none]
  noChangeExcept [mem, none]
  noChangeExcept [proc, p]
  noChangeExcept [res, p]
  noChangeExcept [status, p]

  Track.op' = Block
}


pred create [p: Process, c: MemBlock, m: MemBlock] {
  
  
  
  
  p.status = Inactive
  
  no um: c + Process.code + Process.mem | overlap[m, um]
  
  no um: Process.mem | overlap[c, um]

  
  
  
  
  p.code' = c
  p.mem' = m
  
  p.status' = WaitingIn

  
  
  
  noChangeExcept [code, p]
  noChangeExcept [mem, p]
  noChangeExcept [proc, none]
  noChangeExcept [res, none]
  noChangeExcept [status, p]

  Track.op' = Create
}


pred preempt [p: Process] {
  
  
  
  
  isRunning[p]
  
  
  
  
  
  p.proc' = none
  p.status' = WaitingIn 

  
  
  
  noChangeExcept [code, none]
  noChangeExcept [mem, none]
  noChangeExcept [proc, p]
  noChangeExcept [res, none]
  noChangeExcept [status, p]

  Track.op' = Preempt
}


pred resume [p: Process, c: MemBlock, m: MemBlock] {
  
  
  
  
  isSwappedOut[p]
  
  no um: c + Process.code + Process.mem | overlap[m, um]
  
  no um: Process.mem | overlap[c, um]

  
  
  
  
  p.code' = c
  p.mem' = m
  
  
  p.status' = (p.status = BlockedOut => BlockedIn else WaitingIn)

  
  
  
  noChangeExcept [code, p]
  noChangeExcept [mem, p]
  noChangeExcept [proc, none]
  noChangeExcept [res, none]
  noChangeExcept [status, p]

  Track.op' = Resume
}


pred run_ [p: Process, pr: Processor] {
  
  
  
  
  p.status = WaitingIn
  
  no proc.pr 
 
  
  
  
  
  p.proc' = pr
  p.status' = Running

  
  
  
  noChangeExcept [code, none]
  noChangeExcept [mem, none]
  noChangeExcept [proc, p]
  noChangeExcept [res, none]
  noChangeExcept [status, p]

  Track.op' = Run
}


pred suspend [p: Process] {
  
  
  
  
  isInMemory[p]
  not isRunning[p]
  
  
  
  
  
  p.code' = none
  p.mem' = none
  p.status' = (p.status = BlockedIn => BlockedOut else WaitingOut)

  
  
  
  noChangeExcept [code, p]
  noChangeExcept [mem, p]
  noChangeExcept [proc, none]
  noChangeExcept [res, none]  
  noChangeExcept [status, p]

  Track.op' = Suspend
}


pred terminate [p: Process] {
  
  
  
  
  p.status = Running
  
  
  
  
  
  p.code' = none
  p.mem' = none
  p.proc' = none
  p.res' = none
  p.status' = Inactive

  
  
  
  noChangeExcept [code, p]
  noChangeExcept [mem, p]
  noChangeExcept [proc, p]
  noChangeExcept [res, p]
  noChangeExcept [status, p]

  Track.op' = Terminate
}


pred unblock [p: Process] {
  
  
  
  
  isBlocked[p]
  
  
  
  
  
  p.res' = none
  p.status' = (p.status = BlockedIn => WaitingIn else WaitingOut)

  
  
  
  noChangeExcept [code, none]
  noChangeExcept [mem, none]
  noChangeExcept [proc, none]
  noChangeExcept [res, p]
  noChangeExcept [status, p]

  Track.op' = Unblock
}





pred Init [] {
  
  no code
  no mem
  no proc
  no res
  
  Process.status = Inactive
}




pred Trans [] {
  some p: Process | 
       (some r: OtherResource | block [p, r])
    or (some c, m: MemBlock | create [p, c, m])
    or preempt [p]
    or (some c, m: MemBlock | resume [p, c, m])
    or (some pr: Processor | run_ [p, pr])
    or suspend [p]
    or terminate [p]
    or unblock [p]
}






fact Scheduler {
  Init and always Trans

 
}





pred TestScenario1 {
  
  eventually some p: Process | isRunning[p]  

  
  eventually some disj p1, p2: Process |(p1+p2).status = Running    

  
  eventually some p: Process | isSuspended[p]  

  
  eventually some p: Process | isSwappedOut[p]

  
  eventually some p: Process | terminate[p]

  
  eventually some p: Process | preempt[p]
}

run TestScenario1 for 5 but 8 Resource

pred TestScenario2 {
  
  
  after eventually some disj p1, p2: Process | (p1+p2).status in Inactive   

  
  eventually some p: Process | 
    p.status = BlockedIn and after eventually p.status = WaitingIn

  
  always all p: Process | isRunning[p] implies eventually terminate[p]

 
  always eventually Init
}

run TestScenario2 for 5 but 8 Resource






assert inactiveProcsHaveNothing {
  always all p: status.Inactive | 
    no (p.code + p.mem) and
    no (p.proc + p.res)
}
check inactiveProcsHaveNothing for 5 but 10 Resource


assert oneProcessPerProcessor { 
  always all p: Processor | lone proc.p 
}
check oneProcessPerProcessor for 5 but 10 Resource


assert runningProcessesAndProcessors { 
  always all p: Process | p.status = Running iff some p.proc 
}
check runningProcessesAndProcessors for 5 but 10 Resource


assert codeIsDisjointFromData { 
  always no Process.mem & Process.code
}
check codeIsDisjointFromData for 4 but 6 Resource


assert terminatedProcess { 
  always all p: Process |
    before terminate[p] implies no (p.mem + p.proc + p.mem + p.res)
}
check terminatedProcess for 5 but 6 Resource


assert activeProcess { 
  always all p: Process |
    p.status in (Inactive + BlockedOut + WaitingOut) or isInMemory[p]

  
  always all p: Process |
    p.status != Inactive implies (isSwappedOut[p] or isInMemory[p])
}
check activeProcess for 4 but 6 Resource


assert waitingForFile { 
  always all p: res.File |
    p.status in (BlockedIn + BlockedOut)
}
check waitingForFile for 4 but 6 Resource


assert dataMemoryIsNotShared { 
  always all m: MemBlock | lone mem.m
}
check dataMemoryIsNotShared for 4 but 6 Resource


assert waitingProcessesHaveNoProcessor { 
  always no (status.WaitingIn).proc
}
check waitingProcessesHaveNoProcessor for 4 but 6 Resource



assert processesWithCodeHaveData { 
  always all p: code.MemBlock | some p.mem
}
check processesWithCodeHaveData for 4 but 6 Resource


assert BlockedOnlyIfOnceRunning { 
  always all p: Process | isBlocked[p] implies once isRunning[p] 
}
check BlockedOnlyIfOnceRunning for 4 but 6 Resource



assert BlockedOnlyIfOnceRunning2 { 
  always all p: Process |
    isBlocked[p] and isSwappedOut[p] implies 
      once (isInMemory[p] and once isRunning[p]) 
      
}
check BlockedOnlyIfOnceRunning2 for 4 but 6 Resource



assert SwappedOutUntilBack { 
  always all p: Process |
    isSwappedOut[p] implies
      always isSwappedOut[p] or (isSwappedOut[p] until isInMemory[p])
}
check SwappedOutUntilBack for 4 but 6 Resource


assert onlyRunningProcessesGetTerminated { 
  always all p: Process |
    terminate[p] implies isRunning[p] 
}
check onlyRunningProcessesGetTerminated for 4 but 6 Resource













assert runningProcessesCannotShareCode { 
  
  always all disj p, q: Process |
    isRunning[p] and isRunning[q] implies p.code != q.code 
}

check runningProcessesCannotShareCode for 4 but 6 Resource




assert processesCannotRunIndefinitely { 
  always all p: Process |
    isRunning[p] implies eventually not isRunning[p] 
}
check processesCannotRunIndefinitely for 4 but 6 Resource






assert noForeverSwaps { 
  always all p: Process |
    not isInMemory[p] implies eventually always (isInMemory[p] or isInactive[p]) 
}
check noForeverSwaps for 4 but 6 Resource




assert waitingProcessesEventuallyRun { 
  always all p: Process |
    isWaiting[p] implies eventually isRunning[p] 
}
check waitingProcessesEventuallyRun for 4 but 6 Resource
