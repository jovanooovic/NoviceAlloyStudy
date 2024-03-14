
















sig Address {}
  
abstract sig Resource {}
  
sig File, Processor extends Resource {} 
 

sig MemBlock extends Resource {
  start: Address,
  end: Address
}

sig Process {
  mem: set MemBlock,  
  code: lone MemBlock,
  proc: lone Processor,
  res: lone Resource - Processor,
  status: Status
}
  
enum Status { Blocked, BlockedOut, Running, Terminated, Waiting, WaitingOut }





fact f_a { 
  
  all p: Processor | lone proc.p 
}

fact f_b { 
  
 

}

fact f_c { 
  
  all p: Process | p.status = Running implies some p.proc 
}

fact f_d { 
  
  all p: Process | p.status != Running implies no p.proc 
}

fact f_e { 
  
  no Process.mem & Process.code
}

fact f_f { 
  
  all m1, m2: MemBlock |
    m1 != m2 implies m1.start != m2.start or m1.end != m2.end
}

fact f_g { 
  
  let Term = status.Terminated |
    no (Term.mem + Term.code + Term.proc + Term.res)
}

fact f_h { 
  
  all p: Process |
    p.status in (BlockedOut + WaitingOut) or 
    (some p.code and some p.mem)
}

fact f_i { 
  
  all p: res.File |
    p.status in (Blocked + BlockedOut)
}



run {#Process > 1} for 5









assert A_a { 
  
  all p: Process |  p.status = Running iff some p.proc
}
check A_a for 15


assert A_b { 
  
  all m: MemBlock | lone code.m
}
check A_b for 15



assert A_c { 
  
  all p: Process | one p.status
}
check A_c  for 15


assert A_d { 
  
  no (status.Waiting).proc

}
check A_d for 15


assert A_e { 
  
  all pr: Processor | lone proc.pr
}
check A_e for 15


assert A_f { 
  
  all pr: Processor | some proc.pr
}
check A_f  for 15


assert A_g { 
  
  
  all p: code.MemBlock | some p.mem
}
check A_g for 17


assert A_h { 
  
  all p: Process - status.Terminated | some p.mem 

}
check A_h for 15

