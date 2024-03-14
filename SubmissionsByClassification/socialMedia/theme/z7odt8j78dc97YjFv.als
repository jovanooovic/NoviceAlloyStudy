.



// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	
	all u:UC | some c:Curso | c->u in plano
}


pred inv2 {
	
	all a:Aluno | some c:Curso | c->a in incritos implies (some uc:UC | uc->a in inscritos)
}


pred inv3 {
	
    
	all uc1,uc2:UC | uc1->uc2 in precedencia implies(all c:Course | c->uc1 in plano )
}


pred inv4 {


  	all uc1,uc2:UC | all a:Aluno | uc1->a in inscritos and uc1->uc2 in precedentes implies uc2->a not       in inscritos 

}


pred inv5 {
	// Influencers are followed by everyone else

}


pred inv6 {
	// Influencers post every day

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
}


pred inv8 {
	// An user only sees ads from followed or suggested users

}
