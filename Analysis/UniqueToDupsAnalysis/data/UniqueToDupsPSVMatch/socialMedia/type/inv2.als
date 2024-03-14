User x
-- div,1
iden u
-- div,1
follows
-- div,1
no ~User
-- div,1
User.~User
-- div,2
iden follows
-- div,2
no iden.~User
-- div,1
iden u.follows
-- div,2
follows = none
-- div,1
iden follows.u
-- div,1
User.follows
-- div,5
(iden ) = none
-- div,1
follows in User
-- div,7
follows & iden
-- div,3
(follows) = none
-- div,2
follows - iden
-- div,1
User not in iden
-- div,1
(iden & follows)
-- div,1
none follows.iden
-- div,1
no follows in iden
-- div,2
no iden in follows
-- div,3
User.~User in iden
-- div,6
none follows & iden
-- div,1
no follows and iden
-- div,5
no (iden in follows)
-- div,1
no User.follows.User
-- div,2
not follows.~follows
-- div,3
follows & iden = none
-- div,2
User not User.follows
-- div,1
all x : User | none x
-- div,1
iden & follows = none
-- div,1
follows.~follows iden
-- div,1
no (follows and iden)
-- div,1
none follows.~follows
-- div,4
User.follows not User
-- div,1
none (follows & iden)
-- div,1
no iden.~User.follows
-- div,1
all x: User|follows.x
-- div,1
all x: User|!follows.x
-- div,2
all u:User | u.follows
-- div,1
(User->follows) = none
-- div,1
follows & iden is none
-- div,1
all u:User | follows.u
-- div,1
all u:User | ~u.follows
-- div,1
(iden & follows) = univ
-- div,1
(iden & follows) = none
-- div,2
one u: User | u.follows
-- div,1
all x: User | x.follows
-- div,1
no User in User.follows
-- div,4
follows.~follows in none
-- div,1
all x : User | follows.x
-- div,2
all x: univ | !follows.x
-- div,1
all u : User | u.follows
-- div,1
iden not in User.follows
-- div,1
one x : User | follows.x
-- div,1
all u:User | u.follows.u
-- div,1
all x : User | x.follows
-- div,1
iden not in follows.User
-- div,1
all u:User | u.follows-u
-- div,1
all u : User | follows.u
-- div,1
User.follows not in iden
-- div,1
User.^follows not in iden
-- div,2
all x: User|not follows.x
-- div,1
follows & iden is in none
-- div,1
all y : User | one User.y
-- div,1
all x : User |  follows.x
-- div,2
all u: User | u.u in iden
-- div,1
all u:User | no(follows&u)
-- div,1
User.follows + iden = none
-- div,1
all x : Photo |  follows.x
-- div,1
all u:User | not follows.u
-- div,1
all y : User | y follows x
-- div,1
all y : User | y follows y
-- div,1
all x : User | follows - x
-- div,1
User.follows & iden = none
-- div,1
all x:User | not follows.x
-- div,1
one x:User | not follows.x
-- div,1
all u:User | iden follows.u
-- div,2
all x : User | none posts.x
-- div,1
all u: User | not u.follows
-- div,1
all x: User | not follows.x
-- div,1
all x: User | x.follows - x
-- div,1
all u:User | none follows.u
-- div,1
all x : User | follows != x
-- div,2
all u:User | u no follows.u
-- div,1
all x:User | no x.follows.x
-- div,2
(follows & iden) is in none
-- div,2
all u : User | u in follows
-- div,1
all u1:User | u1.^(follows)
-- div,1
all u:User | iden u.follows
-- div,1
all u : User | u not in iden
-- div,1
all u:User | not u.follows.u
-- div,2
all y : User | not follows.y
-- div,1
all x:User | not x.follows.x
-- div,2
(iden & User.follows) = none
-- div,1
all u:User | u not u.follows
-- div,1
all u: User | no u.follows.u
-- div,6
follows.~follows not in User
-- div,8
no follows.~follows  in iden
-- div,1
all x:User| x not in follows
-- div,1
one x:User| x not in follows
-- div,1
all x : User | not follows.x
-- div,26
all u : User | u.follows - u
-- div,1
all u : User | not follows.u
-- div,1
all x : User | x.follows ! x
-- div,1
all x : User | not x.follows
-- div,2
all u:User | u not follows.u
-- div,1
all x : User | x - follows.x
-- div,1
all x : User | x no x.follows
-- div,1
one x : User | none follows.x
-- div,1
all x:User | none x.follows.x
-- div,4
all x:User | x not in follows
-- div,1
all x : User | none follows.x
-- div,6
all u : User | none follows.u
-- div,3
all u:User | u->u not follows
-- div,3
all x : User | x no follows.x
-- div,1
all x : User | none x.follows
-- div,2
all y : User | none follows.y
-- div,1
all u:User | no u.follows = u
-- div,1
all x : User | no x.follows.x
-- div,4
all u : User | no u.follows.u
-- div,6
all u : User | none u.follows
-- div,1
all u: User | u not u.follows
-- div,1
all u: User | u not in User.u
-- div,1
all x : User| x not follows.x
-- div,1
all x : User | no x.x.follows
-- div,1
follows->~follows not in User
-- div,1
all x: User| no x in follows.x
-- div,2
all x : User | not x.follows x
-- div,1
all u : User | no u in follows
-- div,3
all u : User | u not follows.u
-- div,1
all x : User | not x.follows.x
-- div,7
one u: User | u not in follows
-- div,2
all x : User | no x in follows
-- div,1
all u: User | some u not in ~u
-- div,1
all x : User | x not follows x
-- div,2
all x : User | x not x.follows
-- div,2
all u : User | u not in u.^(u)
-- div,1
(follows.~follows) not in User
-- div,1
all x : User | x not follows.x
-- div,7
all x : User | none x.follows.x
-- div,2
all x : User | none (follows.x)
-- div,1
all x : follows | not follows.x
-- div,2
all u : User | none u.follows.u
-- div,2
all x : User | not x in follows
-- div,2
all x : User | x not(x.follows)
-- div,2
one x : User | none (follows.x)
-- div,1
all u: User | u.follows in iden
-- div,1
all u: User | no u in u.follows
-- div,19
all x: User | no x in x.follows
-- div,1
all x : User | x none follows.x
-- div,1
one x : User | not x.follows(x)
-- div,1
all x : User | none follows x x
-- div,1
all u:User | no u->u in follows
-- div,1
all u : User | none follows.u-u
-- div,1
all u:User | none u.follows & u
-- div,1
all u:User | u.u not in follows
-- div,1
all u : User | no u.follows = u
-- div,1
all x: User | no x in follows.x
-- div,4
all x : User | x not in follows
-- div,1
all u : User | u not in follows
-- div,10
all u1, u2:User | u1.^(follows)
-- div,1
all u : User | no u in u.follows
-- div,4
all u:User | u not in u->follows
-- div,1
all x : User | no x -> x follows
-- div,1
all u:User | u.follows-u in iden
-- div,1
all u: User | u.follows not iden
-- div,1
all x : User | no x in follows.x
-- div,5
User.follows & User implies none
-- div,1
all x : not Influencer |  User.x
-- div,1
all x : User | no x in x.follows
-- div,4
all u:User | u->u noot in follow
-- div,1
User.follows-iden = User.follows
-- div,1
all u: User| u not in u.follows.u
-- div,1
follows.~follows not in User.iden
-- div,1
all x:follows| x not in iden
-- div,3
all u : User | no u in follows[u]
-- div,5
all x : User | no x->x in follows
-- div,3
all u : User | no u->u in follows
-- div,1
all x : User | not x -> follows.x
-- div,1
all f : follows | f not in iden
-- div,1
all x:User | no follows.x in iden
-- div,1
follows.~follows not in iden.User
-- div,1
all x : User | not x -> x follows
-- div,1
all x:User | no x.follows in iden
-- div,1
all u:User | u not in u.follows.u
-- div,1
all u : User | u not it u.follows
-- div,1
one x : User | none one follows.x
-- div,1
all u1 : User | u1 not in follows
-- div,1
all u: User | u->u nor in follows
-- div,1
all x:User | x.follows not in iden
-- div,1
all x,y:follows | x->y not in iden
-- div,1
all x : User | no (x in x.follows)
-- div,1
all u : User | none follows & iden
-- div,1
all u : User | u not in u->follows
-- div,3
all u:User | User.u not in follows
-- div,1
all u : User | u not in u.follows.u
-- div,1
all u: User | some u not in follows
-- div,2
all x:User | no x->x not in follows
-- div,1
all x:User | x.follows -> follows.x
-- div,2
all x : follows | follows != x
-- div,1
all x : not Influencer | one User.x
-- div,1
all x : not Influencer |  not User.x
-- div,1
all x : not Influencer | one posts.x
-- div,1
all u : User | follows.u not in iden
-- div,1
all u: User | u.~(u.follows) in iden
-- div,1
all u : User | u.follows not in iden
-- div,1
all x,y: not Influencer |  not User.x
-- div,1
all u: User | some u not in u.follows
-- div,2
all u:User | u & u.follows not = iden
-- div,1
all u: User | u.~(u->follows) in iden
-- div,1
all u: User | some u not in follows.u
-- div,3
all u : User | no u.follows.u and u=u
-- div,3
follows.User.User.follows not in iden
-- div,1
all u:User | u & u.follows not in iden
-- div,3
all u: User | u not in follows.follows
-- div,1
all u : User | u not in u.^(u.follows)
-- div,1
all x : User | follows.x not x.follows
-- div,1
all u:User | u not in u.^(follows.User)
-- div,1
User.follows & User.follows not in iden
-- div,2
all x:User | not x.follows -> follows.x
-- div,1
all u : User | not follows in follows.u
-- div,1
all u: User | u implies u not in follows
-- div,5
all x:User | x.follows implies follows.x
-- div,1
(follows.User).(User.follows) not in iden
-- div,1
all x:User | x.follows -> {not follows.x}
-- div,1
User.follows & User.follows & iden = none
-- div,1
all x:User | not {x.follows and follows.x}
-- div,1
all x,y:User| x=y implies no x in y.follows
-- div,1
all x,y : User | x follows y implies x != y
-- div,4
all x : User | all y : User | x.follows ! y
-- div,1
all x,y : univ | x->y follows implies x != y
-- div,1
one x: User | one x not follows y and y is x
-- div,1
all x:User | x.follows implies not follows.x
-- div,1
all x,y : User | x = y implies x no follows.y
-- div,1
all u1,u2:User | u1.follows.u2 implies u1!=u2
-- div,1
all u1,u2:User | u1 in follows implies u1!=u2
-- div,1
all u1, u2 : User | u1->u2 follows implies u1!=u2
-- div,1
all x: User, y: User | no x.y in follows and x != y
-- div,1
all x,y: User | y in x.follows implies x no y.follows
-- div,1
some x:User | some y:User | x = y -> x not in follows
-- div,1
all f1,f2 : User | f1 in f2.follows implies f1 not f2
-- div,1
all u : User , u2 : User | u.follows.u != u.follows.u2
-- div,1
all u1,u2 : User | u1 in follows -> u2 implies u1 = u2
-- div,1
all x: User | some follows.x
all x: User | x no follows.x
-- div,3
some x : User | some y : User | some follows.x.y and x != y
-- div,1
all u1, u2:User | no (u1 not in u2.follows) implies u1 != u2
-- div,1
all u : User , u2 : User | User.follows.u != User.follows.u2
-- div,2
all u1 : User | all u2 : User | u1 -> u2 in follows ->  u1 != u2
-- div,2
all u1 : User | all u2 : User | u1-u2 in follows implies u1 != u2
-- div,1
(all u1 : User | all u2 : User | u1 -> u2 in follows) ->  u1 != u2
-- div,1
all x : User | not some follows.x
all x, y : User | some y.follows.x
-- div,1
all x : User | not one follows.x
all x : User | all y : User | y.follows.x
-- div,1
all x : User | not some follows.x
all x : User | all y : User | some y.follows.x
-- div,1
all x : User | not one follows.x
all x : User | all y : User | y.follows and x.follows
-- div,1
