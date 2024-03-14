var sig File {}
var sig Trash in File {}


pred delete[f : File] { 
  f not in Trash
  Trash' = Trash + f 
  File' = File
}


pred restore[f : File] {  } 


pred empty {   }


pred do_nothing {
  Trash' = Trash
  File' = File 
}

fact behavior { 
  
  no Trash
  
  always (
    (some f: File | delete[f] or restore[f]) or empty or do_nothing
  )
}

assert restoreAfterDelete {
  
  always (all f : File | restore[f] implies once delete[f])
}

assert deleteAll {
  
  
  always ((File in Trash and empty) implies always no File)
}
