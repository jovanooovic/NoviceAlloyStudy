pred Inv4c {  
	all u : User, disj x,y : u.visible | x not in y.^(ids.~ids)
}
