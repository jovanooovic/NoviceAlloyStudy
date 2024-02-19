sig UC {
	precedencias : set UC,
	inscritos : set Aluno
}
sig Curso {
	plano : some UC,
	inscritos : set Aluno
}
sig Aluno {}
