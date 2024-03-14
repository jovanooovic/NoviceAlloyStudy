all i:Influencer | follows.i = 1
-- div,1
all i:Influencer | follows.i = univ
-- div,4
all i : Influencer | i -> univ in follows
-- div,1
all i : Influencer | univ -> i in follows
-- div,2
all i : Influencer | (follows.i - i) = User
-- div,1
all i:Influencer | follows.i = univ-i
-- div,2
all u : User | u.follows = Influencer - u
-- div,1
all i : Influencer | i in User.follows-i
-- div,4
all u : User | u in (follows.Influencer-u)
-- div,2
all i : Influencer | User in follows.i - i
-- div,1
all u:User | Influencer in u.follows-User
-- div,1
all u:User | u in Influencer implies (u.follows = univ)
-- div,1
all u : User, i : Influencer| i in u.follows - i
-- div,1
all i: Influencer, u: User | i in (u-i).follows
-- div,1
all u : User | u.follows&Influencer-u = Influencer
-- div,1
all u : User | u.follows&(Influencer-u) = Influencer
-- div,1
all u:univ | one i:Influencer  | u->i in follows
-- div,1
all u:univ | all i:Influencer  | u->i in follows
-- div,1
all u:univ | one i:Influencer  | i->u in follows
-- div,1
all u : User | u in follows.Influencer and u not in Influencer
-- div,1
all x:User,i:Influencer | i in x.follows and i != x
-- div,1
all x:Influencer,y:User | x in y.follows and x != y
-- div,1
all i:Influencer, u:User | i in u.follows and i != u
-- div,3
all u:User,i:Influencer | i!=u  and i in u.follows
-- div,2
all u: User | u not in u.follows and Influencer in u.follows
-- div,2
all i: Influencer, u: User | u != i and i in u.follows
-- div,2
all x : Influencer , y : User | y in follows.x and y != x
-- div,1
all i : Influencer, u : User | u in follows.i && i != u
-- div,1
all i : Influencer, u : User | i in u.follows and u != i
-- div,1
all u : User, i : Influencer | u in follows.i && u != i
-- div,1
all u:User, i:Influencer | i in u.follows and i!=u
-- div,4
all u : User | Influencer in u.follows and u not in u.follows
-- div,1
all u:User, i:Influencer | i!=u and u->i in follows
-- div,1
all x: User, y: Influencer| x!=y and x->y in follows
-- div,1
all i : Influencer, u : User | u != i and u -> i in follows
-- div,1
all u:User | u in Influencer implies u in User.follows-User
-- div,1
all i: Influencer, u:User | u->i in follows and u!=i
-- div,4
all u:User, i:Influencer | u!=i and u->i in follows
-- div,2
all i:Influencer | all u:univ | u-i in i.follows
-- div,1
all i:Influencer, u:User| i in u.follows - i.follows
-- div,1
all i : Influencer | all u : User | u in follows.i-i
-- div,1
all u:User, i:Influencer | u not in i and u->i in follows
-- div,1
all i : Influencer | all u : User | i in (u-i).follows
-- div,2
all i:Influencer | all u:User | i  in u.follows-i
-- div,3
all i: Influencer | User in i.~follows and i not in i.follows
-- div,1
all x, y: User | x in Influencer => y in x.follows and y != x
-- div,1
all x,y:User | x in Influencer implies x in y.follows and x!=y
-- div,1
all u,x:User| u in Influencer implies u->x in follows and u!=x
-- div,1
all inf : Influencer, u : User | inf != u and u -> inf in follows
-- div,1
all x,y: User | x in Influencer implies x in y.follows and !(x=y)
-- div,1
all u : User | u & Influencer in u.follows and no (follows & iden)
-- div,1
all x,y : univ | x in Influencer implies y in User and y->x in follows
-- div,1
all u : User | all i : Influencer | u in follows.i and u != i
-- div,2
all i:Influencer | all u :User |  i in u.follows and u!=i
-- div,1
all u : User | all i : Influencer | i in u.follows and u != i
-- div,1
all u : User, i : Influencer | i in u.follows and u not in Influencer
-- div,1
all u:User,i:Influencer | u not in Influencer and i in u.follows
-- div,1
all i: Influencer, u: User | u not in Influencer and i in u.follows
-- div,1
all i : Influencer | all u : User | i in u.follows and i!=u
-- div,5
all i : Influencer | all u : User | u != i and u in follows.i
-- div,1
all x : Influencer | all u : User | x in u.follows and x != u
-- div,1
all f : Influencer | all u : User | f in u.follows and f != u
-- div,1
all x : Influencer | all y : User | x in follows.y and y != x
-- div,1
all x : User | all y : Influencer | x != y and y in follows.x
-- div,2
all x : User | all y : Influencer | x != y and y in x.follows
-- div,1
all u : User | all i: Influencer | i in u.follows and i != u
-- div,1
all x : Influencer | all y : User | x in y.follows and x != y
-- div,1
all i : Influencer, u : User | i in u.follows and i not in i.follows
-- div,4
all i : Influencer, u : User | u in i.follows and i not in i.follows
-- div,1
all x: User, y: Influencer| (x not in Influencer) and x->y in follows
-- div,1
all x : Influencer, y : User | x in follows.y and x not in follows.x
-- div,3
all x : Influencer , y : User | y in follows.x and x not in follows.x
-- div,2
all i:Influencer |(all u:User | u->i in follows and u != i)
-- div,1
all i:Influencer,u:User | u->i in follows and u not in Influencer
-- div,1
all u : User, i : Influencer| (u in follows.i) && (i not in follows.i)
-- div,2
all x: User | all y: Influencer | x-> y in follows and x !=y
-- div,1
all i : Influencer, u : User | u in follows.i && i not in follows.i
-- div,3
all u : User | all i : Influencer | u->i in follows and u!=i
-- div,1
all i : Influencer, u : User | (i in follows.u) and (i not in follows.i)
-- div,2
all x : Influencer, y : User | (x in y.follows) and (x not in x.follows)
-- div,1
all i: Influencer | all y: User | i in y.follows and !(i=y)
-- div,1
all u1,u2: User | u2 in Influencer implies (u2 in u1.follows and u2 != u1)
-- div,1
all i : Influencer, u : User | u->i in follows and i->i not in follows
-- div,1
all u1,u2:User| u2 in Influencer implies u1->u2 in follows and u1 != u2
-- div,1
all u : User, i : Influencer | i in u.follows and no (follows & iden)
-- div,1
all x: Influencer, y:User| y-> x in follows and x->x not in follows
-- div,2
all x : univ | x in Influencer implies all y: univ | y->x in follows
-- div,2
all i : univ | i in Influencer implies all e : univ | e->i in follows
-- div,2
all inf : Influencer | all x : User | inf in x.follows and inf not in x
-- div,1
all u:User, x:User| u in Influencer implies x->u in follows and x!=u
-- div,1
all x : Influencer | all y : User | y in follows.x and y not in Influencer
-- div,1
all u : User | all i: Influencer | i in u.follows and i not in Influencer
-- div,1
all u : User | all i : Influencer | i in u.follows and i not in i.follows
-- div,1
all x : Influencer | all y : User | x in follows.y and x not in follows.x
-- div,1
one i : Influencer | all u : User | i in u.follows and i not in i.follows
-- div,1
all x : User | all y : Influencer | x in follows.y and y not in follows.y
-- div,1
all i : Influencer | all u : User | i in u.follows and i not in i.follows
-- div,1
all i:Influencer | all u:User | u in i.follows and u not in u.follows
-- div,1
all x : Influencer | all y : User | x in y.follows and x not in x.follows
-- div,1
all i : Influencer | all u : User | i in u.follows and no (follows & iden)
-- div,1
one x: Influencer| all y:User| y-> x in follows  and x->x not in follows
-- div,1
all inf : Influencer | all u1 : User | inf in u1.follows and u1 not in Influencer
-- div,1
all x: User | x in Influencer => all y: User| y != x && y in x.follows
-- div,1
all f : User | f in Influencer implies all u : User | f in u.follows and f != u
-- div,1
all u:univ | u in Influencer implies all t:User |t!=u and t in u.follows
-- div,2
all i: Influencer | all user: User| i in user.follows and i not in i.follows
-- div,1
all x: User | x in Influencer => all y: User| y in x.follows and y != x
-- div,1
all i : univ | i in Influencer implies all u : User | u->i in follows and i!=u
-- div,1
all u: User | all inf : Influencer |  inf in u.follows and inf not in inf.follows
-- div,1
all u: User | u in Influencer implies all u1: User | u in u1.follows and u != u1
-- div,1
all u1: User, u2: User | u1 in Influencer implies u1 in u2.follows and u2 not in u2.follows
-- div,1
all u: User | (all inf: Influencer | u!=inf && inf in u.follows && u not in inf.follows)
-- div,1
all x : Influencer | all p : User | p in follows.x and x not in follows.x and p not in follows.p
-- div,1
all i:Influencer | all u:User | u in i.follows and u not in u.follows and i not in i.follows
-- div,1
all x : User | x not in follows.x
all y : Influencer | all x : User  |  x in follows.y
-- div,1
all i : Influencer | all u : User | i in u.follows and i in i.follows and no (follows & iden)
-- div,1
all i : Influencer | all u : User | i in u.follows
all u : User | u not in u.follows
-- div,1
all influencer : univ | influencer in Influencer implies all user : univ | user->influencer in follows
-- div,1
all i : Influencer | i not in i.follows
all i : Influencer | all u : User | i in u.follows
-- div,1
all i : Influencer | all u : User | i in u.follows
all i : Influencer | i not in i.follows
-- div,1
all i : Influencer, u : User | u -> i in follows
all i, j : Influencer | i -> j in follows implies i != j
-- div,1
all u1 : User | all inf : Influencer | inf in u1.follows and inf not in inf.follows and inf not in follows.inf
-- div,1
all i : Influencer, u : User | u -> i in follows
all i,j : Influencer | i -> j in follows and i != j
-- div,3
all influencer : univ | influencer in Influencer implies all user : univ | user in User and user->influencer in follows
-- div,2
