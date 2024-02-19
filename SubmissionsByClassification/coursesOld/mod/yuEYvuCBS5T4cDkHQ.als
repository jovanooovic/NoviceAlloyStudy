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
  	all uc1: UC | some c1: Curso | c1->uc1 in plano

}
