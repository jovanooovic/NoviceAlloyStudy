-- equiv pair start,46
follows.Influencer in User
-- div,1
Influencer-User in User.follows
-- div,1
all x : Influencer | follows.x in User
-- div,3
all i: Influencer | follows.i in User
-- div,12
all i : Influencer | i.follows in User
-- div,2
all i : Influencer | (follows.i) in univ
-- div,1
all i1 : Influencer | i1.follows in User
-- div,1
all x : Influencer | no x.follows - User
-- div,1
all x : Influencer | no follows.x - User
-- div,1
all i: Influencer | follows.i-i in User
-- div,3
all u: User-Influencer | u.follows in User
-- div,1
all u:User | u.follows in Influencer + User
-- div,1
all i: Influencer | follows.i-i in User-i
-- div,1
all i: Influencer | follows.i-Influencer in User
-- div,1
all i : Influencer | follows.i in User+Influencer
-- div,1
all u: User | u.follows&Influencer in Influencer
-- div,3
all u : User | u.follows & Influencer in u.follows
-- div,2
all u : User | no u.follows&Influencer-Influencer
-- div,1
all i: Influencer, u: User | i-User in u.follows
-- div,1
all u : User | u in Influencer implies no follows.u - User
-- div,1
all u : User | u.follows - User in u.follows & Influencer
-- div,1
all i : Influencer | all u : User | i not in u.follows - i
-- div,1
all i : Influencer , u: User | u->i in follows implies u in User
-- div,1
all i:Influencer | all nu:Influencer-User | i in nu.follows
-- div,1
all i:Influencer, u:User | u->i in follows implies (u in User or u in Influencer)
-- div,1
all inf : Influencer | all u1 : User | inf in u1.follows and u1 not in Influencer implies (u1 not in Influencer)
-- div,2
-- equiv pair end
-- equiv pair start,564
User->Influencer - iden in follows
-- div,13
all i:Influencer | User-i in follows.i
-- div,21
all x: Influencer| User-x in follows.x
-- div,4
all x : User | Influencer - x in x.follows
-- div,9
all u:User | Influencer-u in u.follows
-- div,31
all i:Influencer| (User-i) -> i in follows
-- div,7
all i : Influencer | no (User - i - follows.i)
-- div,4
all u : User | u->Influencer - iden in follows
-- div,2
all x:Influencer | no (User-x) - follows.x
-- div,2
all i : Influencer | (follows.i - i) = (User - i)
-- div,1
all i : Influencer | User - i in follows.i - i
-- div,1
all user : User |
Influencer - user in user.follows
-- div,1
all x : Influencer , u :  (User-x) | x in u.follows
-- div,1
all i:Influencer, u:User-i| i in u.follows
-- div,20
all i:Influencer, u:User-i | u in follows.i
-- div,5
all i: Influencer, u: User | i-u in u.follows
-- div,3
all x : Influencer, y : User-x | x in y.follows
-- div,2
all u:User,i:Influencer-u | i in u.follows
-- div,5
all u:User, i:Influencer | i-u in u.follows
-- div,1
all i:Influencer, x:User-i| x->i in follows
-- div,2
all x:Influencer, u:User-x| u->x in follows
-- div,3
all u:Influencer, x:User-u| x->u in follows
-- div,1
all x:Influencer, y : User-x| y-> x in follows
-- div,6
all disj u,i:User | i in Influencer implies i in u.follows
-- div,1
all disj u,b:User |  u in Influencer implies u in b.follows
-- div,1
all u1 : Influencer,  u2 : User-u1 | u1 in u2.follows
-- div,1
all u : User | u in Influencer implies User-u in follows.u
-- div,1
all i : Influencer, u : User-i | some i & u.follows
-- div,5
all i:Influencer, u:User | i in u.follows or i=u
-- div,4
all i:Influencer, u:User| i = u or i in u.follows
-- div,1
all u:User, i:Influencer | i in u.follows or i = u
-- div,8
all i:Influencer, u:User | u!=i implies u in follows.i
-- div,4
all a : Influencer, b : User | a != b implies a in b.follows
-- div,1
all i:Influencer,u:User | u -> i in follows or i = u
-- div,1
all i:Influencer, u:User | i!=u => i in u.follows
-- div,18
all i: Influencer, u2:User-i | some i & u2.follows
-- div,2
all x:Influencer, y:User | x!=y implies x in y.follows
-- div,4
all x : User, i : Influencer | x != i => i in x.follows
-- div,2
all u:User, i:Influencer|u!=i => i in u.follows
-- div,17
all x : User, y : Influencer | x != y implies y in x.follows
-- div,1
all i:Influencer, u:User| i in u or i in u.follows
-- div,1
all u: User, i: Influencer | i != u => i in u.follows
-- div,11
all i:Influencer,u:User | u->i in follows or u=i
-- div,1
all x:User,i:Influencer | i!=x implies i in x.follows
-- div,2
all i:Influencer, u:User | u!=i => i in u.follows
-- div,43
all u : User, i : Influencer | u !=i implies u in follows.i
-- div,3
all u:User, i:Influencer | u->i in follows or u=i
-- div,2
all u : User | u.follows & Influencer-u = Influencer-u
-- div,1
all u:User, i:Influencer | u!=i => u->i in follows
-- div,8
all i:Influencer, u:User | u!=i => u->i in follows
-- div,23
all disj u1,u2:User| u1 in Influencer implies u1 in u2.follows
-- div,2
all i : Influencer, u : User | u not in i implies u in follows.i
-- div,1
all i:Influencer,u:User | i!=u implies u->i in follows
-- div,12
all x : User, y : Influencer | x != y implies x->y in follows
-- div,1
all u:User, i:Influencer | i!=u implies  u->i in follows
-- div,4
all x : Influencer, u : User | u != x implies u->x in follows
-- div,1
all u: User, i: Influencer | u not in i implies i in u.follows
-- div,1
all i: Influencer, u: User  | (i not in u  => i in (u).follows)
-- div,1
all x: Influencer| all y: User-x| y in follows.x
-- div,4
all i:Influencer | all x:User - i | i in x.follows
-- div,2
all i:Influencer | all p:(User - i) | i in p.follows
-- div,1
all u : User | all i : Influencer-u | u in follows.i
-- div,2
all i:Influencer | all u:User-i | i in u.follows
-- div,46
all x : Influencer | all p:User - x | x in p.follows
-- div,1
all x : Influencer | all y : User-x | x in y.follows
-- div,6
all u:User, i:Influencer | u not in i implies  u->i in follows
-- div,1
all x : Influencer | all p : User - x| p in follows.x
-- div,1
all i:Influencer | all u:User | i-u in u.follows
-- div,2
all x: Influencer | all u: User - x | x in u.follows
-- div,1
all i:Influencer | all u:User-i | u in follows.i
-- div,12
all y :  Influencer | all x : User - y | x->y in follows
-- div,1
all u : User, i : Influencer | u !=i implies u in i.~follows
-- div,1
all x : Influencer | all y : User - x | y->x in follows
-- div,3
all i:Influencer | all u:User-i | u->i in follows
-- div,4
all i, u: User | i != u and i in Influencer implies i in u.follows
-- div,1
all x, y: User | y in Influencer && y != x => y in x.follows
-- div,7
all i:Influencer | all u1:User-i | u1->i in follows
-- div,2
all u, v: User | (u!=v and v in Influencer) implies u->v in follows
-- div,1
all inf : Influencer, u : User | inf != u => u -> inf in follows
-- div,1
all u1 : Influencer | all u2 : User-u1 | u1 in u2.follows
-- div,1
all u,u2:User | u in Influencer and u != u2 implies u in u2.follows
-- div,1
all inf : Influencer | all u : User-inf |  inf in u.follows
-- div,3
all i: Influencer | all user: User - i| i in user.follows
-- div,4
all inf : Influencer | all u : User-inf | u in follows.inf
-- div,2
all x : Influencer | all y : User | x in y.follows or x = y
-- div,1
all i: Influencer | all u: User | i in u.follows or i = u
-- div,1
all u: User | all i: Influencer | u in follows.i or u=i
-- div,1
all u : User | all i : Influencer | i in u.follows or u = i
-- div,4
all f : Influencer | all u : User | u != f implies f in u.follows
-- div,1
all x: User, y:User-x |  x in Influencer implies y->x in follows
-- div,1
all i: Influencer | no u: User | u != i and i not in u.follows
-- div,1
all i:Influencer | all u:User | u!=i implies u in follows.i
-- div,4
all u : User | all i : Influencer | i != u implies i in u.follows
-- div,1
all x: User | all y : Influencer | x!= y implies x in follows.y
-- div,4
all i: Influencer | all u:User | i!=u implies i in u.follows
-- div,4
all u:User, x:User-u| u in Influencer implies x->u in follows
-- div,2
all i:Influencer | all u :User | u!= i => i in u.follows
-- div,13
all i : Influencer | all x : User | x != i implies x in follows.i
-- div,1
all u : User| all i : Influencer | u != i => i in u.follows
-- div,5
all x: User | all y : Influencer | x!= y implies y in x.follows
-- div,2
all x : Influencer | all p : User | p != x implies p in follows.x
-- div,1
all u : User| all i : Influencer | i != u implies u in follows.i
-- div,3
all x : Influencer | all y : User | x != y implies x in y.follows
-- div,5
all y : Influencer | all x : User  | x != y implies x in follows.y
-- div,3
all u : User | all i : Influencer | u != i => u in follows.i
-- div,6
all i:Influencer | all u:User | i!=u implies u->i in follows
-- div,3
all u : User | all i : Influencer | i not in u => i in u.follows
-- div,3
all i:Influencer | (all u:User | u!= i implies u->i in follows)
-- div,9
all x :  User | all y : Influencer | x != y implies x->y in follows
-- div,1
all x : Influencer | all y : User | x != y implies y -> x in follows
-- div,1
all x : Influencer | all y : User | y != x implies y->x in follows
-- div,2
all u: User | all i: Influencer | u != i => u->i in follows
-- div,5
all u1,u2: User| u1 in Influencer and u1 != u2 implies u1 in u2.follows
-- div,1
all u1,u2:User | (u1!=u2 and u1 in Influencer) implies u1 in u2.follows
-- div,3
all u1 : User | all i : Influencer | u1 != i implies i in u1.follows
-- div,1
all inf : Influencer, user : User | inf != user => inf in user.follows
-- div,1
all u1 : User | all u2 : Influencer | u2!=u1 implies u2 in u1.follows
-- div,1
all inf : Influencer | all x : User |  inf not in x implies inf in x.follows
-- div,1
all inf:Influencer | no u:User | u -> inf not in follows and u != inf
-- div,2
all u:User | u in Influencer => (all p:User- u| u in p.follows)
-- div,2
all u : User | u in Influencer => all y : User-u | u in y.follows
-- div,1
all u1 : User | all inf : Influencer | u1 != inf implies inf in u1.follows
-- div,1
all u:User,u2:User | u in Influencer and u != u2 implies u in u2.follows
-- div,1
all x, y : univ | x in Influencer and y in User and x!=y implies y->x in follows
-- div,1
all u : User | u in Influencer implies (all u2 : User - u | u in u2.follows)
-- div,1
all u : User | u in Influencer implies (all us : User - u | u in us.follows)
-- div,2
all i:User | i in Influencer implies all u:User | u!=i implies u in follows.i
-- div,1
all i : univ | i in Influencer implies all u : User | i!=u implies u->i in follows
-- div,2
all u : User | u in Influencer implies (all y: User | y != u implies y->u in follows)
-- div,1
all x : univ | x in Influencer implies all y : univ | y in User and x!=y implies y->x in follows
-- div,1
all influencer, user : univ | influencer in Influencer and user in User and influencer!=user implies influencer in user.follows
-- div,4
all influencer, user : univ | influencer in Influencer and user in User and influencer!=user implies user in follows.influencer
-- div,1
all influencer, user : univ | influencer in Influencer and user in User and influencer!=user implies user->influencer in follows
-- div,1
-- equiv pair end
-- equiv pair start,29
all i : Influencer | i not in i.follows
-- div,1
all i : Influencer | i->i not in follows
-- div,2
all i: Influencer | follows.i in User-i
-- div,2
all i : Influencer | i.follows in User-i
-- div,2
all x:Influencer | follows.x in User - x
-- div,1
all i1 : Influencer | i1.follows in User-i1
-- div,1
all i : Influencer, u : User |  (i not in follows.i)
-- div,1
all u:User, i:Influencer | i not in follows.i
-- div,1
all u:User | u in Influencer implies u not in follows.u
-- div,1
all i : Influencer | i not in i.follows and (follows.i) in User
-- div,1
all u:User, i:Influencer | i in u.follows implies u!=i
-- div,1
all u:User, i:Influencer | u->i in follows implies u != i
-- div,1
all i:Influencer, u:User | u->i in follows implies i!=u
-- div,1
all i : Influencer, u : User | u -> i in follows implies u != i
-- div,3
not some u:User, i:Influencer | u->i in follows and u=i
-- div,1
all u : User| u in Influencer implies not u & Influencer in u.follows
-- div,1
all u : User| all i : Influencer | u in follows.i implies u!=i
-- div,3
all i : Influencer | all u : User | u->i in follows implies u!=i
-- div,1
all u1,u2:User| u2 in Influencer and u1->u2 in follows implies u1!=u2
-- div,1
all u1, u2: User | u1 -> u2 in follows and u2 in Influencer implies u1 != u2
-- div,1
all x: Influencer, y:User| y-> x in follows implies x->x not in follows
-- div,2
-- equiv pair end
-- equiv pair start,135
(User-Influencer)->Influencer in follows
-- div,1
all i : Influencer | User - Influencer in follows.i
-- div,2
all u:User-Influencer | Influencer in u.follows
-- div,8
all user: User - Influencer | Influencer in user.follows
-- div,2
all x : Influencer, u : User - Influencer | x in u.follows
-- div,1
all i:Influencer, u:User-Influencer | i in u.follows
-- div,6
all i:Influencer, u:User-Influencer | u in follows.i
-- div,6
all x : User-Influencer, y : Influencer | y in x.follows
-- div,1
all u : User-Influencer, i : Influencer | u in follows.i
-- div,1
all u:User-Influencer, i:Influencer | i in u.follows
-- div,13
all x : User-Influencer, y : Influencer | x->y in follows
-- div,1
all i: Influencer, u: User-Influencer | u->i in follows
-- div,3
all u : User - Influencer, i : Influencer | u -> i in follows
-- div,1
all x:Influencer, y:User-Influencer | y->x in follows
-- div,2
all u : User - Influencer , u1 : Influencer | u1 in u.follows
-- div,1
all u : User-Influencer | u.follows&Influencer = Influencer
-- div,2
all u1 : Influencer, u2 : User-Influencer | u1 in u2.follows
-- div,1
all u : User-Influencer, i : Influencer | some i & u.follows
-- div,2
all i : Influencer, u : User-Influencer | some i & u.follows
-- div,1
all u : User, i : Influencer | u not in Influencer implies i in u.follows
-- div,1
all i: Influencer, u: User | u not in Influencer implies i in u.follows
-- div,1
all x: User, y: Influencer| x not in Influencer implies x->y in follows
-- div,2
all i:Influencer | all p:(User - Influencer) | i in p.follows
-- div,1
all u : User-Influencer | all i : Influencer | u in follows.i
-- div,5
all x : User-Influencer | all y : Influencer | x in follows.y
-- div,5
all i:Influencer | all u:User-Influencer | i in u.follows
-- div,7
all x : Influencer | all u : User - Influencer | x in u.follows
-- div,2
all x : User-Influencer | all y : Influencer | y in x.follows
-- div,2
all u : User-Influencer | all i : Influencer | i in u.follows
-- div,4
all i : Influencer, u : User | u not in Influencer => u->i in follows
-- div,2
all i:Influencer | all u:User-Influencer  | u in follows.i
-- div,3
all x : Influencer | all y : User-Influencer | x in y.follows
-- div,2
all u: Influencer | all u1: User - Influencer | u in u1.follows
-- div,1
all i:Influencer | all nu:User-Influencer | i in nu.follows
-- div,1
all u : User | u not in Influencer implies u.follows&Influencer = Influencer
-- div,1
all u : User-Influencer | all inf : Influencer |  inf in u.follows
-- div,1
all x, y: User | x in Influencer and y not in Influencer implies x in y.follows
-- div,1
all u1 : Influencer | all u2 : User-Influencer | u1 in u2.follows
-- div,1
all inf : Influencer | all u : User-Influencer| u in follows.inf
-- div,1
all inf : Influencer | all u: User-Influencer | inf in u.follows
-- div,1
all x : User-Influencer, y : Influencer | x != y implies x->y in follows
-- div,1
all i: Influencer, u: User - Influencer | u != i => u->i in follows
-- div,1
all i:Influencer, u: User - Influencer | i not in u => (i in u.follows)
-- div,2
all i: Influencer | all user: User - Influencer| i in user.follows
-- div,3
all i: User, u: User - Influencer | i in Influencer  => i in u.follows
-- div,1
all i: Influencer | all u: User | u not in Influencer implies i in u.follows
-- div,2
all u : User | all i : Influencer | u not in Influencer implies i in u.follows
-- div,1
all x: User| x not in Influencer implies (all y: Influencer | x->y in follows)
-- div,3
all u1,u2: User| u1 in Influencer and u2 not in Influencer implies u1 in u2.follows
-- div,4
all i : Influencer | all u : User | u not in Influencer implies u->i in follows
-- div,2
all u:User | u not in Influencer implies (all i:Influencer | u->i in follows)
-- div,2
all u1, u2: User | (u2 in Influencer and u1 not in Influencer) implies u2 in u1.follows
-- div,1
all x : User | all y : Influencer | !x in Influencer implies y in x.follows
-- div,1
all i:Influencer, u: User - Influencer | i in Influencer => (i in u.follows)
-- div,1
all u : User-Influencer | all i : Influencer | i != u implies u in follows.i
-- div,1
all i : Influencer | all u : User - Influencer | u != i implies u in follows.i
-- div,1
all x:univ | x in Influencer implies all y:(User-Influencer) | y->x in follows
-- div,1
all u:User | u in Influencer implies (all u2:User-Influencer | u in u2.follows)
-- div,1
all u : User | u in Influencer implies (all us : User - Influencer | u in us.follows)
-- div,1
all u,i : univ | i in Influencer and u in User and u not in Influencer implies u->i in follows
-- div,1
all influencer: Influencer | all user: User - Influencer | influencer in user.follows
-- div,1
all u1, u2: User | (u2 in Influencer and u1 not in Influencer and u1!=u2) implies u2 in u1.follows
-- div,1
all x: User | x not in Influencer implies (all y: Influencer | x->y in follows and x!=y)
-- div,1
all x : User | all y : User | y in Influencer and !x in Influencer implies y in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | Influencer-u in User.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer | all a : i.follows | i in a.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: Influencer, u: User | (Influencer-i-u) in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: User, u: User - Influencer | (i in Influencer  => i in (u+i).follows)
-- div,1
-- equiv pair end
-- equiv pair start,3
all i:Influencer, u: User - Influencer | i != u => (i in u.follows && User not in i.follows)
-- div,1
all i:Influencer, u: User - Influencer | i != User => (i in u.follows && User not in i.follows)
-- div,1
all i:Influencer, u: User - Influencer | i in Influencer => (i in u.follows && User not in i.follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User-Influencer | all i,y : Influencer | i!=y implies ((i in follows.y) and (u in follows.y))
-- div,1
-- equiv pair end
-- equiv pair start,2
all infl:Influencer, usr:User | usr != infl implies usr->infl in follows


all infl:Influencer | some u:User | u->infl in follows implies u not in Influencer
-- div,2
-- equiv pair end
