follows.Influencer
-- div,3
Influencer.follows
-- div,1
all i: User | follows.i
-- div,1
User.follows.Influencer
-- div,1
some (Influencer & follows)
-- div,2
all i:Influencer | follows.i
-- div,1
all i:Influencer | i.follows
-- div,1
all u:Influencer | follows.u
-- div,1
all x:Influencer | follows.x
-- div,1
all u: Influencer | follows.u
-- div,1
all i: Influencer | follows.i
-- div,10
all i:Influencer, u:User | u.i
-- div,1
all i:Influencer | i.follows.i
-- div,1
all i : Influencer | follows.i
-- div,8
all i: Influencer | follows.i-i
-- div,1
all i : Influencer |  follows.i
-- div,1
follows.Influencer = User - iden
-- div,1
all x : Influencer | follows.User
-- div,1
all u: User| u.follows.Influencer
-- div,1
all i : Influencer | i in follows
-- div,3
all x : Influencer | x in follows
-- div,1
all i: Influencer | univ follows.i
-- div,1
all i : Influencer | set follows.i
-- div,2
all u:User| Influencer - u.follows
-- div,1
all u: User | u.follows.Influencer
-- div,3
all i : Influencer | follows.i - i
-- div,1
all i : Influencer | univ follows.i
-- div,1
all x : Influencer | x some follows
-- div,1
all i : Influencer | User follows.i
-- div,1
all i : Influencer | User.follows.i
-- div,3
all u : User | u.follows.Influencer
-- div,4
all i:Influencer | ~(User-i).follows
-- div,2
all u: User | u.follows & Influencer
-- div,1
all i : Influencer | i in follows -i
-- div,1
all i:Influencer | i->i in i.follows
-- div,1
all x : Influencer | x some x.follows
-- div,1
all i : Influencer | User.follows & i
-- div,2
all u : User | u.follows & Influencer
-- div,7
all u : User | u.follows + Influencer
-- div,1
all x : Influencer | x some follows.x
-- div,1
all i : Influencer | i in follows - i
-- div,1
all i:Influencer, u:User | u.follows.i
-- div,1
all x : Influencer | follows=follows.x
-- div,1
User-Influencer->Influencer in follows
-- div,1
all i: Influencer, u:User | u.follows.i
-- div,1
all u: User, i: Influencer| u.follows.i
-- div,1
all i:Influencer | follows.i = (User.i)
-- div,1
all u:User, i:Influencer| i - u.follows
-- div,1
all i : User | all u : User | follows.i
-- div,1
all x : Influencer | x some User.follows
-- div,1
all u : User | u.Influencer in u.follows
-- div,1
all i:Influencer, u:User | u.follows & i
-- div,1
all f : Influencer, u : User | follows.u
-- div,1
all u: User, i: Influencer | u.follows.i
-- div,1
all x : User | x.Influencer -> follows.x
-- div,1
Influencer and User.follows = Influencer
-- div,1
all User, i : Influencer | User.follows.i
-- div,1
all x : Influencer | no x.follows-follows
-- div,1
all u:User | Influencer-u -> follows in u
-- div,1
all x : Influencer | no follows-follows.x
-- div,1
all i:Influencer | all u:User | follows.i
-- div,4
all i:Influencer | all u:User | i.follows
-- div,1
all i : Influencer | no follows.i-follows
-- div,1
all x : Influencer | no follows.x-follows
-- div,2
all u:User | all i:Influencer | follows.i
-- div,2
all i : Influencer | no i.follows-follows
-- div,1
all i : Influencer, x : User | x.follows.i
-- div,1
all u : User, i : Influencer | u.follows i
-- div,1
all u : User, i : Influencer | u.follows.i
-- div,7
all u: User | some u.follows in Influencer
-- div,1
all i:Influencer  | all u:User | follows.i
-- div,1
all u:User | all i:Influencer |  follows.u
-- div,1
all x : User | x in Influencer -> follows.x
-- div,1
all x : Influencer | follows-x.follows=none
-- div,1
all u : User | some u.follows in Influencer
-- div,1
all x : Influencer | no follows.x - follows
-- div,1
all i : Influencer | follows.i in User.univ
-- div,1
all i1 : Influencer | i1.follows is User-i1
-- div,1
all u:User | (Influencer-u) -> follows in u
-- div,1
all u: User| all i : Influencer| u.follows.i
-- div,1
all i: Influencer | all x : User | follows.i
-- div,1
all u : User | (u.follows)-(User-Influencer)
-- div,1
all u:User | all i:Influencer |  u.follows.i
-- div,1
(User -> Influencer - Influencer) in follows
-- div,1
all u : User, i : Influencer | i & u.follows
-- div,1
all f : Influencer, u : User | (follows.u).f
-- div,1
all f : Influencer, u : User | (u.follows).u
-- div,1
all f : Influencer, u : User | (u.follows).f
-- div,2
all i : Influencer | (follows.i.User) in iden
-- div,1
all i : Influencer | all u : User |
follows.i
-- div,1
all i : Influencer | follows.i & User in iden
-- div,1
all u : User | u.Influencer - iden in follows
-- div,1
all u:User | all i:Influencer | u.follows + i
-- div,1
all i : Influencer | all u : User | follows.i
-- div,1
all i: Influencer | all x : User | x.follows.i
-- div,1
all i : Influencer, u : User |   u + follows.i
-- div,1
all i : Influencer, u : User - i | i u.follows
-- div,1
all i : Influencer, u : User |   u & follows.i
-- div,1
some i : Influencer | all u : User | follows.u
-- div,1
some i : Influencer | all u : User | follows.i
-- div,4
all u : User | some u & Influencer in u.follows
-- div,2
all u : User | univ u & Influencer in u.follows
-- div,1
all x : User | all y : Influencer | x follows.y
-- div,2
all x : Influencer | all y : User | y.follows.x
-- div,1
all i: Influencer |  all x : User | x.follows.i
-- div,1
all i : Influencer | all x : User | x.follows.i
-- div,2
all x : User | all y : Influencer | y follows.x
-- div,2
all i : Influencer | (follows.i & User) in iden
-- div,1
all i : Influencer | all u : User | u follows.i
-- div,1
all i : Influencer | some u : User | u.follows.i
-- div,1
all i : Influencer | all u : User | u->i follows
-- div,1
all y : User | some x : Influencer | y.follows.x
-- div,1
all u:User | all I:Influencer | univ u.follows.I
-- div,1
all u : User| all i : Influencer | set follows.i
-- div,1
all f: Influencer|all u:User| (f in u-f).follows
-- div,1
all x : User | all y : Influencer | x in follows
-- div,1
all x : Influencer | all y : User | y.follows(x)
-- div,1
all u : User | u in Influencer implies follows.u
-- div,1
all u : User | u in Influencer => User.follows.u
-- div,2
all i : Influencer | all u : User | i & u.follows
-- div,1
all u : User | u.follows.Influencer in Influencer
-- div,1
all f : Influencer | all u : User | (u.follows).u
-- div,1
all i : Influencer | all u : User | u.follows & i
-- div,3
all u: User, i:Influencer | u->i follows and u!=i
-- div,1
all x : User | x in Influencer implies x.follows.x
-- div,1
all i : Influencer | (follows.i -> User-i) in iden
-- div,1
all i:Influencer | all u:User | one i in u.follows
-- div,1
all x : User | x in Influencer implies x follows x
-- div,1
all i : Influencer | some u : User | (u.follows).i
-- div,1
all u: User , i: Influencer | u->i in follows  - i
-- div,1
all i:Influencer |  i.follows & iden  implies univ
-- div,1
all u : User | (u.follows).Influencer in Influencer
-- div,1
all i:Influencer | follows.i = univ and i.follows.i
-- div,1
all i: Influencer | i not in User implies follows.i
-- div,1
all infl:Influencer | none infl.follows:>Influencer
-- div,2
all u : User, i : Influencer | i->u implies follows
-- div,4
all u : User | u.(follows.Influencer) in Influencer
-- div,1
all u:User| u not in follows implies u in Influencer
-- div,1
all u : User | some u.follows & u.follows.Influencer
-- div,1
all i: Influencer, u2:User-i | some i and u2.follows
-- div,1
all u : User | u.follows implies u.follows.Influencer
-- div,1
all u : User | u in Influencer implies (follows.User)
-- div,1
all i:Influencer | (follows.i = univ) and i.follows.i
-- div,1
some i : Influencer| all u : User - i | i & u.follows
-- div,1
no (follows & iden)
all u: User| u.follows.Influencer
-- div,1
all y : User | some x : Influencer | some y.follows.x
-- div,1
all f: Influencer|all u:User|some  (f in u-f).follows
-- div,1
all u : User| u.follows & Influencer implies u.follows
-- div,1
all i : Influencer | all u : User |u != i in u.follows
-- div,1
all i : Influencer | all u : User | u!= i in u.follows
-- div,1
all u : User , i:Influencer | u!=i => i i in u.follows
-- div,1
all i : Influencer, u : User - i | some i and u.follows
-- div,1
all u : User, i : Influencer| u.Influencer in u.follows
-- div,1
all u : User, i : Influencer | u.follows.i in u.follows
-- div,1
all i : Influencer | all u : User | i -> i in u.follows
-- div,1
all i : Influencer | all u : User | (i in u.follows) - i
-- div,1
all u : User.Influencer, i : Influencer | u in follows.i
-- div,1
all u:User | u in Influencer implies u in User.follows.u
-- div,1
all i : Influencer, u : User | u != i -> u->i in follows
-- div,1
all i : Influencer | all u : User | u.follows in follows
-- div,1
all u : User, i : Influencer | i!u implies i in u.follows
-- div,1
all u:User | u not in u-Influencer implies User.follows.u
-- div,1
all i : Influencer, u : User | i in u.follows and i not u
-- div,1
all u : User | u->Influencer - iden in follows.Influencer
-- div,1
all u : User | u.follows - User in u.follows in Influencer
-- div,1
all i: Influencer, u: User | (Influencer-u) i in u.follows
-- div,1
all x : Influencer | follows.x in (User not in Influencer)
-- div,1
all inf : Influencer, u : User| u!= inf -> u in follows.inf
-- div,1
all i : Influencer | (follows.i -> User-Influencer) in iden
-- div,1
all u : User | (u.follows.Influencer -> Influencer) in iden
-- div,1
all inf : Influencer, u : User| u!= inf -> inf in u.follows
-- div,1
all u : User | u in Influencer implies none follows.u - User
-- div,1
all i : Influencer, u : User |  u - i implies u in follows.i
-- div,1
all i: Influencer, u: User | (Influencer-i-u) i in u.follows
-- div,1
all u : User-Influencer, i : Influencer | some i in u.follows
-- div,2
all u : User | ((u.follows.Influencer) -> Influencer) in iden
-- div,1
all u : User | ((u.follows).Influencer -> Influencer) in iden
-- div,1
all u : User-Influencer, i : Influencer | some i and u.follows
-- div,1
all i : Influencer | all u : User | u != i implies u.follows.i
-- div,1
all u: User | all inf : Influencer |  inf in u.follows and inf
-- div,1
all u : User-Influencer | some i : Influencer | i and u.follows
-- div,1
all u:User | some inf:Influencer | u!=inf implies u.follows inf
-- div,1
all u : User | ((u.(follows.Influencer)) -> Influencer) in iden
-- div,1
all inf : Influencer | all u : User| u!= inf -> u in follows.inf
-- div,1
all inf : User-Influencer, u : User| u!= inf -> inf in u.follows
-- div,1
all u1 : User | all u2 : Influencer | u1 implies u2 in u1.follows
-- div,1
all u:User | some inf:Influencer | u != inf implies u.follows inf
-- div,1
all u1,u2: User| u1 in Influencer and u2 implies u1 in u2.follows
-- div,1
all u : User, i : Influencer | i in u.follows and u not Influencer
-- div,1
all x : User.Influencer | all p:User - Influencer | x in p.follows
-- div,1
all i : Influencer, u : User | i in u.follows & i not in i.follows
-- div,1
all u : User | all i : Influencer | i not u implies i in u.follows
-- div,1
all x, y : univ| x in Influencer and y in User implies y->x follows
-- div,1
all u : User | u & Influencer in u.follows and not (follows & iden)
-- div,1
all x, y : univ | x in Influencer and y in User implies y->x follows
-- div,1
all i : Influencer | all u : User | i in u.follows and u.follows - i
-- div,1
all i : Influencer | all u : User | i in u.follows and i.follows - i
-- div,1
all u1,u2: User | u1!=u2 and u1 in Influencer implies (u2.follows.u1)
-- div,2
all i : Influencer | all u : User | i & u.follows no (follows & iden)
-- div,1
all u : User | all i: Influencer | i in u.follows and i not Influencer
-- div,1
all i : Influencer | all u : User | i in u.follows and i.follows - iden
-- div,1
all i : Influencer | all u : User | i in u.follows and no (follows & i)
-- div,1
all x : Influencer | all y : User | y not Influencer and x in follows.y
-- div,1
all i : Influencer | all u : User | i & u.follows and no (follows & iden)
-- div,1
all u:univ | u in Influencer implies all t:User and t!=u | t in u.follows
-- div,1
all u : User-Influencer | all i : Influencer | i implies (u in follows.i)
-- div,1
all i : Influencer |
all u : User | u in Influencer implies (follows.User)
-- div,1
all i : Influencer | all u : User | u.follows & i implies i not in i.follows
-- div,1
all i : Influencer | all u : User | i in u.follows and no (i.follows & iden)
-- div,1
all i : Influencer | all u : User | i in u.follows and no (u.follows & iden)
-- div,1
all u:User, i:Influencer | u->i in follows implies u != i and none i->u in follows
-- div,1
all x : univ | x in Influencer implies all y : univ | y in User and x!=y implies y->x follows
-- div,1
