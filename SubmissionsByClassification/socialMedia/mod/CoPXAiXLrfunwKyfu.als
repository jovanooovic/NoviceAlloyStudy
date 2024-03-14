sig UC {
precedencias : set UC,
inscritos : set Aluno
}

sig Curso {
plano : some UC,
inscritos : set Aluno
}

sig Aluno {}



pred inv1 {
  
  all c : Curso , uc : UC | some (c.plano & uc)
  }
