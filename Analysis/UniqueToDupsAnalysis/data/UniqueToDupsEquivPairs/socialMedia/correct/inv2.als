-- equiv pair start,1071
no follows&iden
-- div,78
no iden & follows
-- div,13
#(iden & follows) = 0
-- div,1
iden - follows = iden
-- div,1
follows - iden = follows
-- div,2
follows = follows-iden
-- div,1
follows in (follows - iden)
-- div,1
no u:User | u in u.follows
-- div,7
no u:User | u->u in follows
-- div,3
all d : User | d not in d.follows
-- div,1
all x : User | x !in follows.x
-- div,102
all u: User | u !in u.follows
-- div,373
all x : User | x !in x.follows
-- div,83
all y:User | y not in y.follows
-- div,2
all a: User|a not in follows.a
-- div,2
all y : User | y not in follows.y
-- div,2
all a: User | a not in a.follows
-- div,1
all u:User | u not in follows.u
-- div,74
all x:User| x->x not in follows
-- div,28
all u:User| u->u not in follows
-- div,61
all x: User| not x in follows.x
-- div,11
all u: User | no follows&iden
-- div,4
all x : User | !x in x.follows
-- div,8
all u:User | not u in u.follows
-- div,9
all x:User | no x.follows&x
-- div,1
all u1:User | u1 not in u1.follows
-- div,20
all p : User | no p & p.follows
-- div,1
all x : User | not x->x in follows
-- div,4
all u: User | not u->u in follows
-- div,4
all u1 : User | u1 not in follows.u1
-- div,1
all x : univ | not x->x in follows
-- div,1
not some x: User| x in follows.x
-- div,1
all u : User | no u & u.follows
-- div,3
all u : User | no (u.follows & u)
-- div,1
all u1:User | u1 -> u1 not in follows
-- div,2
not some u:User | u->u in follows
-- div,14
all u:User | u.follows & u = none
-- div,1
all user : User | user not in follows.user
-- div,1
all user: User | user not in user.follows
-- div,6
all user : User | user -> user not in follows
-- div,1
all user1: User | user1 not in user1.follows
-- div,2
all u:User | u.follows-u = u.follows
-- div,1
all x,y : User | x = y implies x not in follows.y
-- div,1
all u, a: User | a = u => u not in a.follows
-- div,1
all a, b : User | b in a.follows implies a != b
-- div,1
all x,y:User | x->y in follows implies x!=y
-- div,21
all u,x: User | u->x in follows implies u!=x
-- div,1
all u, i : User | u->i in follows implies i!=u
-- div,1
all a,b : User | a->b in follows implies a!=b
-- div,2
all x,y : univ | x->y in follows implies x!=y
-- div,4
all x,y : User | y->x in follows implies y!=x
-- div,1
all x,y: User | x in y.follows implies !(x=y)
-- div,1
all x : User | all y : x.follows | x != y
-- div,2
all x: User | all y: follows.x | y!=x
-- div,4
all f1,f2 : User | f1 in f2.follows implies f1 != f2
-- div,3
all u1,u2:User | u2 in u1.follows implies u1 != u2
-- div,1
all x1,x2:User | x2 in x1.follows implies (x1 != x2)
-- div,3
all u1,u2:User | u1 = u2 implies u2 not in u1.follows
-- div,1
all u1,u2:User | u1 in u2.follows implies u1!=u2
-- div,14
all u1,u2: User | u1 = u2 implies u1 not in u1.follows
-- div,1
all u1,u2:User | u1->u2 in follows => u1!=u2
-- div,24
all u1, u2 : User | u2 -> u1 in follows => u2 != u1
-- div,3
all u1, u2 : User | u1 -> u2 in follows => u2 != u1
-- div,1
all u1, u2:User | u1=u2 => u1->u2 not in follows
-- div,1
all u1 : univ | u1 in User implies not u1->u1 in follows
-- div,2
all u1 , u2 : User | u1->u2 in follows implies not u1=u2
-- div,1
all x : User | x not in follows.x and x not in x.follows
-- div,2
all x : User | x not in x.follows and x not in follows.x
-- div,1
all user : User | all f : user.follows | user not in f
-- div,1
all u:User,u2:User | u2 in u.follows implies u!=u2
-- div,1
all f,u : univ | u in User and u->f in follows implies f != u
-- div,1
all u1: User, u2: User | u1 -> u2 in follows implies u1 != u2
-- div,3
all u: User | u not in u.follows
follows - iden = follows
-- div,1
all u: User | u -> u not in follows
follows - iden = follows
-- div,1
all x : User | all x2 : User | x->x2 in follows implies x != x2
-- div,2
all u1 : User| all u2 : User | u1 = u2 implies u2 not in u1.follows
-- div,1
all u1 : User | all u2 : User | u1->u2 in follows implies u1 != u2
-- div,5
all u1, u2 : User | u1 in u2.follows and u2 in u1.follows implies u1 != u2
-- div,1
all x, y : univ | x in User and y in User and x->y in follows implies x!=y
-- div,1
all x : User | x not in follows.x

all x : User | x not in x.follows
-- div,1
all u1,u2:User | u1->u2 in follows and u2->u1 in follows implies u1!=u2
-- div,2
all u:User | u->u not in follows
all u:User | u not in u.follows
-- div,2
all u: User | u not in u.follows
all u: User | no follows&iden
-- div,1
all u:User | u->u not in follows
all u:User | u not in u.follows
no (follows & iden)
-- div,4
all u: User | u -> u not in follows
all u: User | u not in u.follows
follows - iden = follows
-- div,2
all user, follower : univ | user in User and follower in User and user->follower in follows implies user!=follower
-- div,9
all x : User | x not in x.follows and x not in follows.x
all x : Influencer | x not in x.follows and x not in follows.x
-- div,1
-- equiv pair end
