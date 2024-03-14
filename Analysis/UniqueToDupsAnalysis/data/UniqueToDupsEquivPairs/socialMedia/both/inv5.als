-- equiv pair start,5
no Influencer.follows
-- div,1
all i : Influencer | no i.follows
-- div,1
all inf : Influencer | no inf.follows
-- div,2
all u: User | u in Influencer => u.follows in (u - Influencer)
-- div,1
-- equiv pair end
-- equiv pair start,27
User = follows.Influencer
-- div,1
follows.Influencer = User
-- div,4
User in follows.Influencer
-- div,2
all x: User| x in follows.Influencer
-- div,2
all y : User | y in follows.Influencer
-- div,1
all u:User | u in follows.Influencer
-- div,8
all u:User| some (follows.Influencer & u)
-- div,1
all u: User | some u.follows&Influencer
-- div,4
all x : User | some i : Influencer | x in follows.i
-- div,1
all x : User | some y : Influencer | x in follows.y
-- div,2
all x:User | some y:Influencer | x->y in follows
-- div,1
-- equiv pair end
-- equiv pair start,76
Influencer in User.follows
-- div,13
Influencer & User.follows = Influencer
-- div,1
all x: Influencer| some follows.x
-- div,2
all i : Influencer | some follows.i
-- div,4
all y : Influencer | not no follows.y
-- div,2
all i : Influencer | #(follows.i) > 0
-- div,1
all f : Influencer | f in User.follows
-- div,1
all x: Influencer | x in User.follows
-- div,2
all i:Influencer| i in User.follows
-- div,31
all inf : Influencer | inf in User.follows
-- div,3
all user: User| Influencer in User.follows
-- div,1
all u:User | u in Influencer implies u in User.follows
-- div,3
all i: Influencer | (User.follows = i + User.follows)
-- div,1
all influencer: Influencer | influencer in User.follows
-- div,2
all i:Influencer | all u:User | some follows.i
-- div,1
all i : Influencer | some u : User | u in follows.i
-- div,3
all i : Influencer | some u : User | i in u.follows
-- div,2
all u:User | u not in u-Influencer implies u in User.follows
-- div,1
all i : univ | i in Influencer implies some e : univ | e->i in follows
-- div,1
all i : univ | i in Influencer implies some e : User | e->i in follows
-- div,1
-- equiv pair end
-- equiv pair start,35
User.follows in Influencer
-- div,2
follows in User->Influencer
-- div,1
all x: User | x.follows in Influencer
-- div,2
all u:User | u.follows in Influencer
-- div,22
all u: User | no u.follows-Influencer
-- div,2
all u:univ | u in User.follows implies u in Influencer
-- div,1
all x,y : User | x->y in follows implies y in Influencer
-- div,1
User.follows in Influencer and Influencer.follows in Influencer
-- div,1
all u1,u2:User | u1->u2 in follows implies u2 in Influencer
-- div,2
all u1,u2:User | all u3:User | u1->u2 in follows and u3->u2 in follows implies u2 in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,571
User->Influencer in follows
-- div,4
all i: Influencer | User = follows.i
-- div,1
all x : Influencer | follows.x = User
-- div,1
all i:Influencer | follows.i = User
-- div,6
all u:User| Influencer in u.follows
-- div,34
all x: User | Influencer in x.follows
-- div,2
all x: Influencer| User in follows.x
-- div,3
all i: Influencer | User in follows.i
-- div,8
all i: Influencer | User in i.~follows
-- div,1
all i : Influencer | no User - follows.i
-- div,3
all u : User | no Influencer-u.follows
-- div,1
all x:Influencer | no User - follows.x
-- div,1
all i:Influencer | #(follows.i) = #User
-- div,2
all user: User| Influencer in user.follows
-- div,5
all u : User | Influencer-u.follows = none
-- div,1
all i : Influencer, a : User | i in a.follows
-- div,1
all u : User, i : Influencer| u in follows.i
-- div,8
all u:User,i:Influencer |i in u.follows
-- div,44
all x : User, y : Influencer | y in x.follows
-- div,2
all x:User,i:Influencer | i in x.follows
-- div,2
all i : Influencer | #(follows.i)=#(User-1)
-- div,1
all i:Influencer, u:User | u in follows.i
-- div,25
all x : Influencer, y : User | y in follows.x
-- div,5
all f : Influencer, u : User | f in u.follows
-- div,1
all x : User, y : Influencer | x in  follows.y
-- div,1
all x : Influencer, u : User | x in u.follows
-- div,3
all x:Influencer,y:User | x in y.follows
-- div,6
all i : Influencer, x : User | i in x.follows
-- div,4
all i:Influencer, u:User| i in u.follows
-- div,43
all x : User, y : Influencer | x->y in follows
-- div,1
all u:User, i:Influencer | u->i in follows
-- div,5
all x:Influencer, u:User| u->x in follows
-- div,2
all i:Influencer, x:User| x->i in follows
-- div,2
all x:Influencer, y:User | y->x in follows
-- div,3
all u:Influencer, x:User| x->u in follows
-- div,1
all i:Influencer,u:User | u->i in follows
-- div,18
all u1 : User, i : Influencer | i in u1.follows
-- div,1
all u:User | u.follows&Influencer = Influencer
-- div,8
all u1: User, i: Influencer | u1->i in follows
-- div,1
all u : User+Influencer | Influencer in u.follows
-- div,1
all u1 : Influencer, u2 : User | u1 in u2.follows
-- div,1
all a,b : User | b in Influencer implies b in a.follows
-- div,1
all x,y:User | x in Influencer implies x in y.follows
-- div,6
all inf : Influencer, u : User | u -> inf in follows
-- div,1
all x, y: User | y in Influencer => y in x.follows
-- div,1
all u,i : User | i in Influencer implies i in u.follows
-- div,2
all u : User | u.follows + Influencer in u.follows
-- div,1
all u : User| Influencer - u.follows in u.follows
-- div,2
all u : User | u in Influencer implies User = follows.u
-- div,1
all x,y: User |  x in Influencer implies y->x in follows
-- div,2
all u,i: User | i in Influencer implies u->i in follows
-- div,2
all u : User | u in Influencer implies User in follows.u
-- div,1
all u, u1 : User | u in Influencer implies u in u1.follows
-- div,1
all i : Influencer | #(follows.i) = #(Influencer + User )
-- div,1
all i:Influencer | #(follows.i) = #(User+Influencer)
-- div,1
all f : Influencer | all u : User | f in u.follows
-- div,2
all y : Influencer | all x : User  | y in x.follows
-- div,1
all x : Influencer | all y: User | x in y.follows
-- div,20
all x: Influencer | all u: User | x in u.follows
-- div,6
all u1,u2:User| u1 in Influencer implies u1 in u2.follows
-- div,6
all x : User | all i : Influencer | x in follows.i
-- div,1
all i : Influencer | all x : User | i in x.follows
-- div,5
all y : Influencer | all x : User  | x in follows.y
-- div,1
all i:Influencer | all u:User | i in u.follows
-- div,54
all u: User| all i: Influencer | u in follows.i
-- div,11
all x: Influencer| all y: User| y in follows.x
-- div,15
all x: User | all i: Influencer | i in x.follows
-- div,1
all i : Influencer | all u : User |u in follows.i
-- div,6
all x1,x2 : User | x1 in Influencer implies (x1 in x2.follows)
-- div,1
all x : Influencer | all p : User | p in follows.x
-- div,2
all u1,u2: User | u2 in Influencer implies u2 in u1.follows
-- div,2
all x1,x2 : User | x1 in Influencer implies (x2 in follows.x1)
-- div,1
all x: User | all y: Influencer | y in x.follows
-- div,8
all u:User | all i:Influencer | i in u.follows
-- div,30
all u : User | u in Influencer implies no User - follows.u
-- div,1
all x : User | all y : Influencer | x in follows.y
-- div,8
all x : Influencer | all y : User | y->x in follows
-- div,3
all u: User | u in Influencer implies (#follows.u = ((#User)))
-- div,1
all i:Influencer | all u:User | u->i in follows
-- div,17
all u1,u2:User| u2 in Influencer implies u1->u2 in follows
-- div,3
all u : User| all i : Influencer | u->i in follows
-- div,6
all i1 : Influencer | all u : User |
i1 in u.follows
-- div,1
all i : Influencer | all u : User | u in i.~(follows)
-- div,1
all inf : Influencer | all x : User | inf in x.follows
-- div,1
all i1 : Influencer | all u1 : User | i1 in u1.follows
-- div,3
all u: User | all inf : Influencer |  inf in u.follows
-- div,3
all inf : Influencer | all u : User | u in follows.inf
-- div,1
all u1 : User | all u2 : Influencer | u2 in u1.follows
-- div,4
all inf : Influencer | all u: User | inf in u.follows
-- div,3
all inf:Influencer | no u:User | u -> inf not in follows
-- div,1
all u: User+Influencer, i: Influencer | i in u.follows
-- div,2
all i : Influencer | (follows.i) in User and User in follows.i
-- div,1
all user : User | all i : Influencer | i in user.follows
-- div,1
all i: Influencer | all user: User| i in user.follows
-- div,5
all u1 : User | all inf : Influencer | inf in u1.follows
-- div,1
all i:User, u:User| i in Influencer => i in u.follows
-- div,1
all x:User,y:User | x in Influencer implies x in y.follows
-- div,1
all u: User, i: User | u in Influencer  => u in i.follows
-- div,1
all u:User, x:User| u in Influencer implies x->u in follows
-- div,1
all u:User,u2:User | u in Influencer implies u in u2.follows
-- div,2
all u1: User, u2: User | u1 in Influencer implies u1 in u2.follows
-- div,1
all x:Influencer,y:User | x in Influencer implies x in y.follows
-- div,2
all u,i : univ | i in Influencer and u in User implies u->i in follows
-- div,2
all x, y : univ | x in Influencer and y in User implies y->x in follows
-- div,2
all i: Influencer, u : User | i in u.follows and i in i.follows
-- div,1
all u : User, i : Influencer| u in follows.i && i in follows.i
-- div,2
all i : Influencer | all u : User + Influencer | i in u.follows
-- div,1
all i : Influencer | all user : User | Influencer in user.follows
-- div,1
all x : User | all y : User | y in Influencer implies y in x.follows
-- div,1
all u:User | u in Influencer => (all p:User| u in p.follows)
-- div,1
all u: User | all x: User | u in Influencer implies (x in follows.u)
-- div,1
all u : User | u in Influencer implies (all x : User | u in x.follows)
-- div,1
all x:User| x in Influencer implies all y:User | x in y.follows
-- div,1
all u : User | u in Influencer => all y : User | u in y.follows
-- div,1
all x:univ | x in Influencer implies all y:User | y->x in follows
-- div,1
all i : univ | i in Influencer implies all e : User | e->i in follows
-- div,3
all u: User | u in Influencer implies all u1: User | u in u1.follows
-- div,1
all x1 : User | x1 in Influencer implies (all x2 : User | x2 in follows.x1)
-- div,2
all u1: User, u2: User, i: Influencer | u2 = i implies u1->u2 in follows
-- div,1
all x : User | all y : Influencer | x in follows.y and y in follows.y
-- div,1
all influencer: Influencer| all user: User | influencer in user.follows
-- div,2
all i : Influencer | all u : User | i in u.follows and i in i.follows
-- div,1
all u1,u2:User| u1 in Influencer implies u1 in u2.follows and u1 in u1.follows
-- div,1
all user : User | Influencer in user.follows and Influencer in Influencer.follows
-- div,1
User->Influencer in follows
all u:User, i:Influencer | u->i in follows
-- div,1
all influencer, user : univ | influencer in Influencer and user in User implies influencer in user.follows
-- div,2
all i : Influencer, u : User | u -> i in follows
all i,j : Influencer | i -> j in follows
-- div,1
all influencer, user : univ | influencer in Influencer and user in User implies user->influencer in follows
-- div,1
all u1 : User,inf : Influencer | u1->inf in follows
all i1,i2 : Influencer | i1->i2 in follows
-- div,1
all inf : Influencer | all u: User | inf in u.follows
all inf,inf2 : Influencer | inf in inf2.follows
-- div,1
-- equiv pair end
-- equiv pair start,3
some (follows.Influencer & univ)
-- div,2
some x : Influencer | some follows.x
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : User | i in User.follows
-- div,1
-- equiv pair end
-- equiv pair start,8
all i : Influencer | one follows.i
-- div,3
all x: Influencer| one follows.x
-- div,2
all i : Influencer, u : User | one follows.i
-- div,1
all u:User | all i:Influencer | one follows.i
-- div,1
all i:Influencer | one u:User  | u->i in follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all i : User | i in User-i.follows
-- div,1
all u1, u2: User | u1 -> u2 in follows implies u1 != u2
-- div,1
all i : Influencer | (follows.i in User) no (follows & iden)
-- div,1
-- equiv pair end
-- equiv pair start,1
(follows - iden).Influencer = User
-- div,1
-- equiv pair end
-- equiv pair start,9
all x : Influencer | x in follows.x
-- div,1
all i : Influencer | i in follows.i
-- div,1
all x : Influencer | x in x.follows
-- div,1
all u : User | u & Influencer in u.follows
-- div,4
all i : Influencer | all u : User | i in i.~(follows)
-- div,1
all u : User, u2 : User | u in Influencer implies u in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Influencer | lone follows.x
-- div,1
-- equiv pair end
-- equiv pair start,3
all i:Influencer | some (i.follows)
-- div,1
all x : Influencer | x in follows.User
-- div,1
all u:univ | u in Influencer implies some t:User | t in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,4
all u:User | u.follows = Influencer
-- div,2
all u1, u2 : User | u2 in Influencer iff u2 in u1.follows
-- div,1
all u1 : User,inf : Influencer | u1->inf in follows

all u : User | u.follows in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | follows.Influencer = u
-- div,1
-- equiv pair end
-- equiv pair start,6
all u:User| follows.Influencer in u
-- div,2
all i : Influencer | (follows.i -> User) in iden
-- div,2
all i : Influencer | all u : User | follows.i in u
-- div,1
all u: User | all i : Influencer | follows.i in u
-- div,1
-- equiv pair end
-- equiv pair start,52
all u:User | Influencer in follows.u
-- div,1
all x : Influencer | User in x.follows
-- div,1
all i : Influencer | User in i.follows
-- div,1
all i1 : Influencer | User in i1.follows
-- div,2
all i : Influencer | User-i.follows = none
-- div,2
all i : Influencer, u : User | u in i.follows
-- div,3
all x : Influencer, u : User | u in x.follows
-- div,1
all u : User, i : Influencer | u in i.follows
-- div,2
all i : Influencer, x : User | i in follows.x
-- div,1
all i : Influencer,u : User | i in follows.u
-- div,4
all x:Influencer, y:User | x in follows.y
-- div,2
all x : User, y : Influencer | x in y.follows
-- div,1
all u : User, i : Influencer | i in follows.u
-- div,1
all x, y: User | x in Influencer => y in x.follows
-- div,1
all x : Influencer | all y : User | y in x.follows
-- div,1
all u : User | all i : Influencer | u in i.follows
-- div,3
all x : Influencer | all y : User | x in follows.y
-- div,3
all u:User | all i:Influencer | i in  follows.u
-- div,4
all i:Influencer | all u:User | u in i.follows
-- div,7
all x : User | all y : Influencer | y in follows.x
-- div,1
all u : User | all i : Influencer | i -> u in follows
-- div,1
all i: Influencer | all u: User | i->u in follows
-- div,3
all i:Influencer | all u:univ | u in User implies u in i.follows
-- div,2
all u:univ | u in Influencer implies all t:User | t in u.follows
-- div,2
all i : univ | i in Influencer implies all e : User | i->e in follows
-- div,1
all x : Influencer | all y : User | x in follows.y and x in follows.x
-- div,1
-- equiv pair end
-- equiv pair start,7
follows in (User->Influencer - iden)
-- div,2
all u: User | u not in u.follows and u.follows in Influencer
-- div,1
all u: User | no (follows & iden) and u.follows in Influencer
-- div,4
-- equiv pair end
-- equiv pair start,1
all x,y : Influencer | y in follows.x
-- div,1
-- equiv pair end
-- equiv pair start,1
follows in Influencer set -> set User
-- div,1
-- equiv pair end
-- equiv pair start,7
all inf : Influencer | no follows.inf
-- div,1
all u: User| u.follows in User-Influencer
-- div,1
all x : User | x.follows in (User - Influencer)
-- div,1
all u : User | u.follows & Influencer in u.follows - Influencer
-- div,1
all i : Influencer | i not in i.follows and (follows.i -> User) in iden
-- div,1
all i:Influencer | all u1,u2:User | (u1->i in follows and u2->i in follows) implies u1!=u2
-- div,2
-- equiv pair end
-- equiv pair start,35
all u:User | Influencer-u in follows.u
-- div,1
all i : Influencer | User-i in i.follows
-- div,3
all i1 : Influencer | User-i1 in i1.follows
-- div,1
all i:Influencer, u: User -i | u in i. follows
-- div,1
all i : Influencer, u : User | u != i implies i in follows.u
-- div,1
all x:Influencer, y:User | x!=y implies x in follows.y
-- div,1
all i:Influencer, u:User | u!=i => u in i.follows
-- div,3
all u : User, i : Influencer | u !=i implies u in i.follows
-- div,1
all i : Influencer, u : User | u != i implies i->u in follows
-- div,1
all x: Influencer, y: User | x!=y implies x->y in follows
-- div,1
all i:Influencer | all u:User | u-i in i.follows
-- div,5
all i:Influencer | all u:User-i | u in i.follows
-- div,6
all i: Influencer | all u: User | (User-i) in i.follows
-- div,1
all x : Influencer | all y : User | x in follows.y or y = x
-- div,1
all u : User | all i : Influencer |u != i implies i in follows.u
-- div,1
all x : User | all y : Influencer | x != y implies y in follows.x
-- div,1
all u:User, x:User-u| u in Influencer implies u->x in follows
-- div,1
all x : Influencer | all y : User | x !=y implies x in follows.y
-- div,1
all i:Influencer | all u:univ | u in User implies u-i in i.follows
-- div,4
-- equiv pair end
-- equiv pair start,2
follows.Influencer = User - Influencer
-- div,2
-- equiv pair end
-- equiv pair start,4
all u : User | u in Influencer.follows
-- div,2
all x:User | some (Influencer & follows.x)
-- div,1
all y : User | some x : Influencer | x -> y in follows
-- div,1
-- equiv pair end
-- equiv pair start,6
all x : Influencer |  User.follows in x
-- div,1
all u : User | (u.follows -> Influencer) in iden
-- div,2
all i : Influencer | all u : User | u.follows in i
-- div,2
all u:User | all I:Influencer | u.follows in I
-- div,1
-- equiv pair end
-- equiv pair start,6
Influencer in (User-Influencer).follows
-- div,2
all i : Influencer | i in (User-Influencer).follows
-- div,3
all i : Influencer | i in (User-Influencer-i).follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : User, u : User | u in follows.i
-- div,1
-- equiv pair end
-- equiv pair start,14
all i:Influencer| i in (User-i).follows
-- div,12
all i: Influencer, u: User | i in (User-i).follows
-- div,1
all i : Influencer | i in (User+Influencer-i).follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all i : Influencer | i.follows = User - i
-- div,2
all u1: User | u1 in Influencer implies User-u1.follows = u1
-- div,1
-- equiv pair end
-- equiv pair start,2
all i : Influencer | i not in suggested.i
-- div,2
-- equiv pair end
-- equiv pair start,2
all u : User | u.follows - u in Influencer
-- div,2
-- equiv pair end
-- equiv pair start,1
all x:Influencer | no (User-x) & follows.x
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer | (User - i).follows = i
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | u - Influencer  in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all i:Influencer | User - i in User.follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all i : Influencer | #(follows.i)=#(User)-1
-- div,1
all i : Influencer | #(follows.i) = #(Influencer + User )-1
-- div,1
all u: User | u in Influencer implies (#follows.u = ((#User)-1))
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer, x : User | lone x.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer, x : User | lone follows.x
-- div,1
-- equiv pair end
-- equiv pair start,2
one x : Influencer, y : User | y in follows.x
-- div,1
one i : Influencer, u : User | i in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User | all i:Influencer | follows.i = u
-- div,1
all i : Influencer | all u : User | u = i.~(follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
Influencer.follows = User.follows - Influencer
-- div,1
-- equiv pair end
-- equiv pair start,4
one i:Influencer | all u:User | u in i.follows
-- div,1
one x : Influencer | all y : User | x in follows.y
-- div,1
one i : Influencer | all u : User | i -> u in follows
-- div,1
one i:Influencer | all u:univ | u in User implies u+i in i.follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all u: User-Influencer| u.follows in Influencer
-- div,3
-- equiv pair end
-- equiv pair start,1
all i : Influencer | User in Influencer.follows
-- div,1
-- equiv pair end
-- equiv pair start,4
some x:Influencer | all y:User | x in y.follows
-- div,1
some i:Influencer |all u:User | u->i in follows
-- div,1
some x1 : User | all x2 : User | x1 in x2.follows and x1 in Influencer
-- div,1
some x1 : User | all x2 : User | x2 -> x1 in follows and x1 in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,2
all i:Influencer | all u:User | u-i in u.follows
-- div,1
all i : Influencer | all u: User - i | u in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Influencer | some (Influencer & x.follows)
-- div,1
-- equiv pair end
-- equiv pair start,5
one i:Influencer | all u:User | u-i in i.follows
-- div,2
one i : Influencer | all u : User-i | u in i.follows
-- div,1
one i:Influencer | all u:univ | u in User implies u-i in i.follows
-- div,2
-- equiv pair end
-- equiv pair start,2
all u: User | one i: Influencer | u in follows.i
-- div,1
all u:User | one i:Influencer  | u->i in follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User | one i:Influencer  | i->u in follows
-- div,2
-- equiv pair end
-- equiv pair start,1
some i:Influencer | all u:User-i | i in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all i: Influencer | i in (Influencer - i).follows
-- div,1
all i : Influencer | (i in User.follows) and (i in (Influencer - i).follows)
-- div,1
-- equiv pair end
-- equiv pair start,11
all i : Influencer | follows.i in User-Influencer
-- div,2
all u:User, i:Influencer | u->i in follows implies u not in Influencer
-- div,1
all inf : Influencer | all u1 : User | inf in follows.u1 implies u1 not in Influencer
-- div,1
all inf : Influencer | all u1 : User | inf in u1.follows implies u1 not in Influencer
-- div,7
-- equiv pair end
-- equiv pair start,1
all i : Influencer | follows.i = User.follows - i
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer | i.follows = User.follows - i
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User-Influencer | u in Influencer.follows
-- div,1
all u:User | some inf:Influencer | u!=inf  implies  u in inf.follows
-- div,1
-- equiv pair end
-- equiv pair start,7
all y : User-Influencer | y in follows.Influencer
-- div,1
all u : User-Influencer | u in follows.Influencer
-- div,2
all u: User-Influencer | some u.follows&Influencer
-- div,1
all u : User-Influencer | some i : Influencer | i in u.follows
-- div,1
all u:User | some inf:Influencer | u != inf implies inf in u.follows
-- div,2
-- equiv pair end
-- equiv pair start,3
all i : Influencer | follows.i = User - Influencer
-- div,1
all u: User | u in Influencer implies (follows.u = User - Influencer)
-- div,1
all u : User, i : Influencer | i in u.follows iff u not in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,6
one x : Influencer | all y : User | y in follows.x
-- div,1
one i:Influencer | all u:User | i in u.follows
-- div,2
one i:Influencer| all x:User| x->i in follows
-- div,1
one i : Influencer | all u : User | u -> i in follows
-- div,1
one influencer: Influencer | all user: User | influencer in user.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User | u.suggested - Influencer in u.follows
-- div,2
-- equiv pair end
-- equiv pair start,3
some x : Influencer | all y : User | y in x.follows
-- div,1
some i : Influencer | all u : User | u in i.follows
-- div,1
some x : Influencer | all y : User | x->y in follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all y : User | some x : Influencer | some follows.x
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1,u2:User| u2 in Influencer and u1->u2 in follows
-- div,1
-- equiv pair end
-- equiv pair start,2
one influencer: Influencer | influencer in User.follows
-- div,1
one influencer: Influencer | all user: User | influencer in User.follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all x : User - Influencer | all p:User | x in p.follows
-- div,2
all inf : User-Influencer | all u : User | u in follows.inf
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | all i:Influencer | u.follows in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,9
all i: Influencer, u: User-Influencer | i->u in follows
-- div,1
all x : User-Influencer | all y : Influencer | y in follows.x
-- div,1
all x : Influencer | all u : User - Influencer | u in x.follows
-- div,1
all i:Influencer | all u:User | u -Influencer in i.follows
-- div,1
all u : User - Influencer | all i : Influencer | i in follows.u
-- div,1
all i:Influencer | all nu:User-Influencer | i in follows.nu
-- div,1
all u1,u2: User| u1 in Influencer and u2 not in Influencer implies u2 in u1.follows
-- div,1
all u1, u2: User | (u2 in Influencer and u1 not in Influencer) implies u1 in u2.follows
-- div,1
all u1, u2: User | (u2 in Influencer and u1 not in Influencer and u1!=u2) implies u1 in u2.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all i:Influencer, u: User - Influencer | i.follows in u
-- div,1
all i: Influencer, u: User - Influencer | i in Influencer => i.follows in u
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: User, u: User | (i not in u  => i in (u).follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User-Influencer | u.follows in follows.Influencer
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj u,i:User | Influencer in i implies i in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1,u2:User| u1 in Influencer implies u1 in u2.suggested
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: Influencer | all user: User| i not in user.suggested
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Influencer,y:User | x in y.follows or x in y.suggested
-- div,1
-- equiv pair end
-- equiv pair start,5
all i: Influencer | i in User.follows and i not in i.follows
-- div,3
all i : Influencer | i not in i.follows and i in User.follows
-- div,1
all i : Influencer | (i in (User+Influencer).follows) and (i not in i.follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | one i: User | u -> i in follows implies u != i
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer | all u : User-Influencer | i in i.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | all i:Influencer | u.follows in Influencer.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
some u: Influencer | all u1: User - Influencer | u in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Influencer | follows.x in User and User not in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,2
all i : Influencer | i in User.follows and i in Influencer.follows
-- div,2
-- equiv pair end
-- equiv pair start,2
all u1:User|one u2:User| u2 in Influencer implies u1->u2 in follows
-- div,2
-- equiv pair end
-- equiv pair start,3
all u:User | one i:User | u -> i in follows implies i in Influencer
-- div,3
-- equiv pair end
-- equiv pair start,1
one i : Influencer, u : User | i in u.follows and i not in i.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | one i: User | i -> u in follows implies i in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: User, u: User - Influencer | (i not in u  => i in (u).follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
some u: User | u in Influencer implies all u1: User | u in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | u in Influencer implies (u.follows = User - Influencer)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User-Influencer | all i : Influencer | u.follows in follows.i
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Influencer, y:User| y-> x in follows implies y->y not in follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: User, u: User - Influencer | (i not in u  => i in (u+i).follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User-Influencer | no (follows & iden)  and u.follows in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:univ | u in Influencer implies some t:User |t!=u and t in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: Influencer, u: User - Influencer | i = Influencer => i.follows in u
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | some y : Influencer | x in follows.y and y not in follows.y
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer | all u : User | u in follows.i && (u not in suggested.i)
-- div,1
-- equiv pair end
-- equiv pair start,3
all i : Influencer | all u : User | u in follows.i && (u not in suggested.u)
-- div,1
all i : Influencer, u : User | (u in follows.i) && (u not in suggested.u) && (i not in suggested.i)
-- div,1
all i : Influencer | all u : User | u in follows.i && (u not in suggested.u) && (i not in suggested.i)
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: Influencer, u: User - Influencer | u->i in follows and i->i in follows
-- div,1
-- equiv pair end
-- equiv pair start,1
some x1 : User | all x2 : User | x2 -> x1 in follows implies x1 in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,5
all u: User | (some inf: Influencer | inf in u.follows && u not in inf.follows)
-- div,1
all u: User | (some inf: Influencer | u!=inf && inf not in u.follows && u in inf.follows)
-- div,1
all u: User | (some inf: Influencer | u!=inf && inf in u.follows && u not in inf.follows)
-- div,3
-- equiv pair end
-- equiv pair start,4
all i:Influencer, u: User - Influencer | (i.follows in u) && i not in u.follows
-- div,1
all i:Influencer, u: User - Influencer | (i.follows in u) && i not in User.follows
-- div,1
all i:Influencer, u: User - Influencer | i in Influencer =>( (i.follows in u) && i not in u.follows)
-- div,1
all i:Influencer, u: User - Influencer | i in Influencer =>( (i.follows in u) && i not in User.follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | one i: User | u -> i in follows and i in Influencer implies u != i
-- div,1
-- equiv pair end
-- equiv pair start,1
all i1,i2 : Influencer | i1->i2 in follows
all u : User | u.follows in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,1
some u: User | (all inf: Influencer | u!=inf && inf in u.follows && u not in inf.follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | all inf: Influencer | u!=inf implies inf in u.follows && u not in inf.follows
-- div,1
-- equiv pair end
-- equiv pair start,4
all u:User | some inf: Influencer | u!=inf implies inf in u.follows && u not in inf.follows
-- div,4
-- equiv pair end
-- equiv pair start,3
all u:User | some inf: Influencer | u!=inf implies u in inf.follows && inf not in u.follows
-- div,3
-- equiv pair end
-- equiv pair start,1
all u:User | all inf:Influencer | u!=inf  implies (u in inf.follows && inf not in u.follows)
-- div,1
-- equiv pair end
-- equiv pair start,2
all i:Influencer, u: User - Influencer | i not in u => (i in u.follows && u not in i.follows)
-- div,1
all i:Influencer, u: User - Influencer | i != User => (i in u.follows && u not in i.follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1,u2:User | some u3:User | u1->u2 in follows and u3->u2 in follows implies u2 in Influencer
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Influencer | (all y : User-x | y in follows.x)

all y : User-Influencer | y in follows.Influencer
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer, u : User | u in follows.i
all u1, u2 : User | u1 in follows.u2 implies u2 not in suggested.u1
-- div,1
-- equiv pair end
-- equiv pair start,2
all i : Influencer, u : User | u in follows.i
all u1, u2 : User | u1 in follows.u2 implies u1 not in suggested.u2
all u : User | u not in suggested.u
-- div,1
all i : Influencer, u : User | u in follows.i
all u1, u2 : User | u1 in follows.u2 implies u1 not in suggested.u2
all u3 : User | u3 not in suggested.u3
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer, u : User | u in follows.i
all u1, u2 : User | u1 in follows.u2 implies u2 not in suggested.u1
all u3 : User | u3 not in suggested.u3
-- div,1
-- equiv pair end
