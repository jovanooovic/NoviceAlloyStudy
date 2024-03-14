all
-- div,3
all x
-- div,8
all u
-- div,1
all u:User |
-- div,3
some follows.y
-- div,1
not no follows.y
-- div,1
follow.Influencer
-- div,1
some i : Influencer
-- div,1
all i: Influencer |
-- div,1
all i : Influencer |
-- div,1
all follow.Influencer
-- div,1
all follows.Influencer
-- div,1
User.follow.Influencer
-- div,1
no  -follows.Influencer
-- div,1
all i | i in User.follows
-- div,1
Influencer in Users.follows
-- div,1
all u: Influencer | follows.i
-- div,1
all i : Influencer, u: User |
-- div,1
x : Influencer | all follows.x
-- div,1
Influencer in User.follows
-- div,2
all User in follows.Influencer
-- div,2
all i:Influencer | all follows.i
-- div,1
follows.Influencer = User - Iden
-- div,1
all x: Influencer| all follows.x
-- div,1
all i : Influencer i in u.follows
-- div,1
all i: Influencer | all follows.i
-- div,2
some (follows.Influencers & univ)
-- div,1
all i : Influencer | all follows.i
-- div,8
all x : Influencer | all follows.y
-- div,1
all x : Influencer | all follows.x
-- div,9
all i:Influencer | u:univ | i in u
-- div,1
all i: Influencer |  all follows.i
-- div,1
all x : Influencer | all x.follows
-- div,1
all i : Influencers | i in follows
-- div,1
follows in (User->Influence - iden)
-- div,1
all i : Influencer |  follows.i
all
-- div,1
all i : Influencer | i in u.follows
-- div,1
all u : User | u.follows.influencer
-- div,1
all x : Influencer | x in y.follows
-- div,1
all x : Influencers | x in y.follows
-- div,1
all i:Influencers| i in User.follows
-- div,1
all i:Influencer | follows.i = univ\i
-- div,1
all i: Influencers | User = follows.i
-- div,1
all i:Influencer |  i.follows == univ
-- div,1
all i:Influencer | i in Users.follows
-- div,1
all i:Influencer | follows.i = univ/i
-- div,1
all i : Influncer | i in User.follows
-- div,2
all x: Users | Influencer in x.follows
-- div,1
all x: Users | x.follows in Influencer
-- div,1
all i: Influencer | i in Users.follows
-- div,1
all u:User i:Influencer | follows.i = u
-- div,1
all i in Influencer | i in User.follows
-- div,1
all u:User i:Influencer | follows.I = u
-- div,1
all i : Influencers | User in follows.i
-- div,1
all i : Influencer | User in follows.i)
-- div,1
all i:Influencer | all i.follows & univ
-- div,1
all i : Influencer | follows.i = User\i
-- div,1
all x : User | un in follows.Influencer
-- div,1
all i : Influencer | all x in follows.i
-- div,1
| all u : User | u.follows in Influencer
-- div,3
all i : Influencer | User-x in follows.i
-- div,1
all i:Influencer | Person-i in follows.i
-- div,1
all i : Influencer : i in User-i.follows
-- div,1
all i : Influencer | all -> i in follows
-- div,1
all u : User | user.follows & Influencer
-- div,1
all i : Influencer | (follows.u) in univ
-- div,1
all u:User i:Influencer | follows.I in u
-- div,1
all x : User | x.influencer -> follows.x
-- div,1
| all u : User | u.follows in Influencers
-- div,1
all i : INfluencer | univ -> i in follows
-- div,1
all u : User | user.follows in Influencer
-- div,1
all x:User | all Influencers in x.follows
-- div,1
all u : Influencer | univ -> i in follows
-- div,1
all i:Influencer | Persone-i in follows.i
-- div,1
all x:Influencers | follows.x in User - x
-- div,1
all u : User | Influencer - x in x.follows
-- div,1
all i:Influencers, x:User| x->i in follows
-- div,1
all i:Influencer | u:univ | i in u.follows
-- div,3
all i:Influencer| (User-x) -> x in follows
-- div,1
all i : Influencers | User - i in follows.i
-- div,1
all f : Influencer, u : Users | u.follows.f
-- div,1
all u:univ |i:Influencer  | u->i in follows
-- div,1
all x : User | Influencers - x in x.follows
-- div,1
all i : Influencer | no ( User \ follows.i)
-- div,1
all i:Influencer | u:User  | u->i in follows
-- div,1
all u : User - Influencer | all u.Influencer
-- div,1
all u: User-i, i:Influencer | i in u.follows
-- div,1
all u : User | u -> u not in follows
-- div,3
all i = Influencer | Influencer in u.follows
-- div,1
some i : Influencer | all u : User follows.i
-- div,1
disj u: User, i: Influencer | i in u.follows
-- div,1
all i: Influencer | all x : User | follows.i
-- div,1
all i1 : Influencer | all User in i1.follows
-- div,1
all i: Influencer, u: User | i in u1.follows
-- div,1
all i : Influencer | (follows.i !& i) = User
-- div,1
all u: User-i, i:Influencer | u in i.follows
-- div,1
all u: User-i, i:Influencer | u in follows.i
-- div,1
all Influencer:i | User:u | i in user.follows
-- div,1
all f : Influencer | u : User | (u.follows).u
-- div,1
all u:User,i:Influencer - u+ | i in u.follows
-- div,1
all i:Influence | all u:User | i in u.follows
-- div,1
all i: Influencer |  all x : User | x.follows
-- div,1
all i : Influencer | follow.i in all u : User
-- div,1
all f : Influencer, u : Users | (u.follows).f
-- div,1
all i : User | i in Influencer | all u : User
-- div,1
all i:Influencer |  i.follows & iden  == univ
-- div,1
all i : Influencer | follows.i in all u : User
-- div,1
all x ,y: Users ,Influencers  | x.follows in y
-- div,1
all u:univ and i:Influencer  | u->i in follows
-- div,1
all i:Inflluncer, u: User -i | u in i. follows
-- div,1
some i : User | i in Influencer | all u : User
-- div,1
all x : Users, y : Influencer | x in y.follows
-- div,2
all f:follower | all u:User-f | f in u.follows
-- div,1
all x : User | x.follows in all y : Influencer
-- div,1
all u:User | all i:Influencers | u.follows + i
-- div,1
all x : User | y : Influencer | y in x.follows
-- div,1
all u:User | some i: Influencer => u.follows&i
-- div,2
all u : User, i : Influencer | u.follows all u
-- div,1
all i:Influences | all u:User | i in u.follows
-- div,1
all i : Influencer
all u : User | all follows.i
-- div,1
all i : Influencer | all u : User | x follows.i
-- div,1
all u:Users | all i:Influencers | u.follows + i
-- div,1
all i: Influncer | all u: User | i in u.follows
-- div,1
all u: User , one i: Influencer| i in u.follows
-- div,2
all i: Influencer |  all x : User | x.follows.i
-- div,1
all x:User | all y:Influencers | y in x.follows
-- div,2
all u : User-i, i : Influencer | i in u.follows
-- div,1
all i : Influencer | u : User -i |i in u.follows
-- div,1
all u : User, i : Influencer | u in follows.i &&
-- div,2
all u : User, all i : Influencer| i in u.follows
-- div,1
all i:Influencer, u:User| i==u or i in u.follows
-- div,3
all u: User , one i: Influencer | i in u.follows
-- div,1
all u: User-i| all i:Influencer | u in follows.i
-- div,1
all u : User | u.follows.Influecer in Influencer
-- div,2
all i : Influencer | follows.i in User+Influecer
-- div,1
all i : Influencer | all u : User | u.follows.i)
-- div,1
all x : Influencers, y : User | follows.x in User
-- div,1
all f:follower | all u in User-f | f in u.follows
-- div,1
all Influencer:i | User:u | i in u.follows & u!=i
-- div,1
all u: User-i| all i: Influencer | u in follows.i
-- div,1
all i : Influencer - u, u : User | i in u.follows
-- div,1
all i:Influencer, u:user | u!=i => u in i.follows
-- div,1
all i: Influencer | all u: Users | u in i.follows
-- div,1
all x: User | all y: Influencer => y in x.follows
-- div,1
all i:Influencer | univ u:User  | u->i in follows
-- div,1
all x:User | (all y:Influencers | y in x.follows)
-- div,1
all i: Influencer, u:User| u!=i => u in i.follwos
-- div,1
all i: Influencer, u:User| u!=i => u in i.follwoa
-- div,1
all i : Influencer | all u : User | all follows.i
-- div,4
all x : User | all y : Influencer | x in follows.
-- div,4
all i : Influencer, u : Users | u -> i in follows
-- div,1
all i : Influencer (all u : User | all follows.i)
-- div,1
all i = Influencer | all u : User | i in u.follows
-- div,1
all x : User | all y : Influencer | y in u.follows
-- div,1
all x : Influences | all y : User | y in follows.x
-- div,1
all u : User - Influencer | all follows.Influencer
-- div,2
all x in Influencer | all y in Users | y.follows.x
-- div,1
all i : Influencer | all  u : User->u in i.follows
-- div,1
some i : Influencer | all u : User | all follows.i
-- div,2
all u: User-i | all i: Influencer | i in u.follows
-- div,1
all i : Influencer | all u : User | all u follows.i
-- div,1
all i : Influencer | all u : User| i in u.follows )
-- div,1
all x : Influencer | all y : Users | y in follows.x
-- div,1
all f:follower | all u in User-f | f in u.followers
-- div,1
all Influencer:i | User:u | i in u.follows & u != i
-- div,1
none u:User, i:Influencer | u->i in follows and u=i
-- div,1
all x : Influencers | all y : User | x in follows.y
-- div,1
all u : User | u.follows in Influencer
-- div,2
all x : User | x.follows in (User - not Influencer)
-- div,1
all u : User | u in follows.Influencer
-- div,1
all x : Influencers | all u : users | x in u.follows
-- div,1
all u : User-i | all i : Influencer | i in u.follows
-- div,1
all Influencer:i | User:u | i in user.follows & u!=i
-- div,2
all i : Influencer , u : User implies u in follows.i
-- div,3
all u = User | u = Influencer implies i in u.follows
-- div,2
all Influencer:i | User:u | i in u.follows & u not i
-- div,1
all Influencer:i | User:u |  u != i & i in u.follows
-- div,1
all i : Influencer | univ -> i in follows
-- div,2
all y : user | some x : influencer | x->y in follows
-- div,1
all i : Influencer , u : User - i | u in follows.i a
-- div,1
all Influencer:i | User:u | u not i & i in u.follows
-- div,1
all i : Influencer | all u : User | i in u.follows |
-- div,1
all u : User-u | all i : Influencer | u in follows.i
-- div,1
all u: User, i: Influencer | i != u => i in u.folows
-- div,1
|

all i : Influencer | all u : User | i in u.follows
-- div,3
all Influencer:i | User:u | i in user.follows & u !=i
-- div,1
all i:user, u:user| i in Influencer => i in u.follows
-- div,1
all x : Influencer | y in User implies y in follows.x
-- div,1
all i : Influencer ,  u : User implies u in i.follows
-- div,1
all u:univ | u in User.follows implies u in i.follows
-- div,1
all i : Influencer , u : User implies u->i in follows
-- div,2
all x in Influencer | all y in Users | y in follows.x
-- div,3
all i : Influencer | all u: User | all i in u.follows
-- div,1
all x : Influencer | (all y : User | x in y.follows
9
-- div,1
all i : Influencer | all u : User -u | i in u.follows
-- div,1
all i : Influencer |i in (User - Influencers).follows
-- div,1
all i : Influencer |  u : User implies u in i.follows
-- div,1
all i : Influencer | all u : User | u.follows & i.user
-- div,1
all i : Influenter | all u : User - i | i in u.follows
-- div,1
all x : User | x->y in follows implies y in Influencer
-- div,1
all i: Influencer | (User.follows = i + User.follows)s
-- div,1
all i : Influencer, u : User | i in u.follows or i == u
-- div,1
all inf in Influencer | all x : User | inf in x.follows
-- div,2
all Influencer:i |  User:u | (u != i) => i in u.follows
-- div,1
all  User:u | Influencer:i | (u != i) -> i in u.follows
-- div,2
all i : Influencer, x: User | i in u.follows and i != x
-- div,1
all i : Influencer, x: User | i in u.follows and i != u
-- div,1
all u : Users | u in Influencer implies (all follows.u)
-- div,1
all Influencer:i ->   User:u | u != i -> i in u.follows
-- div,1
all i : Influencer | all u : User | u.follows & i.users
-- div,1
all Influencer:i |  User:u | (u != i) -> i in u.follows
-- div,3
all Influencer:i ,  User:u | (u != i) => i in u.follows
-- div,1
all u : User | u -> u not in follows | u -> i in follows
-- div,1
all iInfluencer, u:User | u != i implies u->i in follows
-- div,1
all i : Influencer | all u : User - u | i in u.follows )
-- div,1
all Influencer:i |   User:u | (u != i) -> i in u.follows
-- div,1
all u : User | u.follows - u in Influencer
-- div,1
all u:User | u in Influencer implies u2 not in follows.u2
-- div,1
all user : User | all user : User - i | i in user.follows
-- div,1
all i : Influencer implies (all u : User | all follows.i)
-- div,1
all x : User, i : Influencer | disj x,i => i in x.follows
-- div,1
all i : User | i in Influencer | all u : User | follows.i
-- div,1
all x:!Influencers | (all y:Influencers | y in x.follows)
-- div,1
all i : Influencer, u : User-Influencers | u in follows.i
-- div,2
all u : User | u in Influencer implies (all follows.User)
-- div,1
all i:Influencer, u:User | i != u implies u -> in follows
-- div,1
all inf : Influencer, u : User| u!= inf -> i in u.follows
-- div,1
all i : Influencer implies all u : User  | u in follows.i
-- div,1
all u:User | some inf:Influencer | u!=inf | u.follows inf
-- div,1
all Influencer:i ->   User:u | (u != i) -> i in u.follows
-- div,1
all i : Influencer | all  u : User implies u in i.follows
-- div,1
all u : User-Influencer | x.follows in follows.Influencer
-- div,1
all u : User | u.follows & u in u.follows
-- div,1
all u : User | u.follows - u in u.follows
-- div,1
all x ,y: Users ,Influencers  | x.follow implies follows.y
-- div,3
all Influencer:i -> all  User:u | u != i -> i in u.follows
-- div,1
all u:User , i:Influencer | (u & i) implies u.follows all i
-- div,2
all u: User | one i: User | i in Influencer => in u.follows
-- div,1
all u: User , one i: User | i in Influencer => in u.follows
-- div,1
all u : User | all i : Influencer | u=! i | u->i in follows
-- div,1
all u : User | all i : Influencer | u!= i | u->i in follows
-- div,1
all u : User - Influencer , i : Influencer| i in nu.follows
-- div,1
all i : Influencer implies (all u : User | u->i in follows)
-- div,1
all i: Influencer | all u: Users | i in u.follows and i != u
-- div,1
all u:User | some inf:Influencer | u!=inf | u in inf.follows
-- div,1
all u:User,u2:User | u == Influencer implies u in u2.follows
-- div,1
all  User:u , Influencer:i | (u != i) implies i in u.follows
-- div,2
all i : Influencer | all u = User | i implies i in u.follows
-- div,1
all u:User | some inf:Influencer | u!=inf | u.follows in inf
-- div,1
all u : User | u in Influencer implies u in all User.follows
-- div,1
all u:User,u2:User | u = Influencer implies u2 in u.followers
-- div,1
all x:User| x=Influencer implies all (User-x) -> x in follows
-- div,1
all i : Influencer | u not in u.follows and i in User.follows
-- div,1
all Influencer:i |   User:u | (u != i) implies i in u.follows
-- div,1
all u1, u2 : User | u2 in influencer implies u2 in u1.follows
-- div,1
all i: Influencers | all u: Users | i in u.follows and i != u
-- div,1
all u : User | u -> u not in follows | u.follows in Influencer
-- div,2
all u:User,u2:User | u == Influencer implies u2 in u.followers
-- div,1
all i : Influencer | all u : User - Influence | i in u.follows
-- div,1
all disj u1,u2:User| u1 in influencer implies u1 in u2.follows
-- div,1
all x:Influencer,y:User | x in y.follows
-- div,1
i, u: User | i != u and i in Influencer implies i in u.follows
-- div,2
all inf : Influencer | all u : User| u!= i -> u in follows.inf
-- div,1
all u : User - Influencer , u1 : Influencer | u1 in u2.follows
-- div,1
all disj u1,u2:User| u1 in influences implies u1 in u2.follows
-- div,1
all i: Influencer, u: User | i in u.follows
-- div,2
all u:User,i:Influencer | u not in Influecer and i in u.follows
-- div,1
all x:User| x in Influencer implies x in all y:User | y.follows
-- div,1
all i : Influencer | all u : User |u != i inplies i in u.follows
-- div,1
all i : Influencer, u : User | i in u.follows & not in i.follows
-- div,1
all inf : Influencer, user : User | inf != u => inf in u.follows
-- div,1
all u: User | u in Influencers implies (#follows.u = ((#User)-1))
-- div,1
one i : Influencer | i -> univ in follows | i -> i not in follows
-- div,1
all i: Influencer, u : User | u in follows.i | i not in follows.i
-- div,1
all x,y : Influencer,User | x in follows.y and x not in follows.x
-- div,1
all u : User-Influencer | all i : Influencer | all u in follows.i
-- div,1
all i:Influencer | all u:univ | u in Users implies u in i.follows
-- div,1
all u : User , all i : Influencer | i != u implies i in u.follows
-- div,1
all u : User-Influencer | all i : Influencer | set u in follows.i
-- div,1
all i: Influencer, u : User | i in follows.u | i not in follows.i
-- div,1
all u : User | u in Influencer implies (none follows.u - follows)
-- div,1
all i : Influencer, u : User | u in follows.i | i not in follows.i
-- div,3
all y : Influencer | all x : User  | u != y implies x in follows.y
-- div,1
all u : User | all i : influencer |  u != i implies i in u.follows
-- div,1
all i : Influencer | all u : User | i in u.follows | i.follows - i
-- div,1
all i : Influencer, u : User | i in u.follows and not in i.follows
-- div,1
all u : User,i : Influencer | (i in Influencer) implies (u.follows
-- div,1
all i:Influencer | all u:User | u in i.follows | u not in u.follows
-- div,1
all inf : Influencer, user : User | inf != user => inf in u.follows
-- div,1
all i:Influencer | all u:User | u in i.follows | u->u not in follows
-- div,1
all i:Influencer | all u:User | u in i.follows | i->i not in follows
-- div,1
all u: User , one i: Influencer| i in u.follows . i not in i.follows
-- div,1
all u : User | u in Influencer implies (all x : User | i in x.follows)
-- div,1
all i : Influencer, p : Person | p in i.follows and i not in i.follows
-- div,1
all x : User | (all y : User | y in Influencer) implies y in x.follows
-- div,2
all u: User , one i: Influencer| i in u.follows and i not in i.follows
-- div,1
all i : Influencer, all u: User |u in follows.i and i not in follows.i
-- div,1
all i : Influencer, all u : User | i in u.follows and not in i.follows
-- div,1
all i : Influencer | all x : User| x not in Influencer| i in  x.follows
-- div,1
all i : Influencer | u not in u.follows and (follows.i -> User) in iden
-- div,1
all x,y : univ | x in Influencers implies y in User and y->x in follows
-- div,1
all i : Influencer | all u : User | u in i.follows
-- div,1
all i : Influencer | all u : User | i in u.follows and u.follows not & i
-- div,1
all x : Influencer | all p : User | p in follows.x
-- div,2
all i : Influencer | all u : User | i in u.follows | no (follows & iden)
-- div,1
all i : Influencer, all u : User | i in u.follows and i not in i.follows
-- div,1
all i : Influencer | all u : User | u->i in follows
-- div,6
all u : User | u.follows - u in u.follows & Influencer
-- div,1
all i : Influencer | all u : User | u -u not in follow | u -> i in follows
-- div,1
all y : User | some x : Influencer | x->y in follows
-- div,2
all i : Influencer, u : User | (i some follows.u) and (i not in follows.i)
-- div,1
all x : Influencer | all y : User | y in ( follows.x + not in Influencer )
-- div,1
all i: Influencar, u: User - Influencer | i = Influencer => i.follows in u
-- div,1
all i : Influencer | all x : User| all x not in Influencer| i in  x.follows
-- div,2
all i : Influencer |
all u : Users | u in Influencer implies (follows.User)
-- div,1
all i : Influencer | all x : User| all x not in Influencer| i in  x.follows.
-- div,1
all u:User | u not in Influencer implies (all i:Influencer | u->i in follows
-- div,2
all i : Influencer | all u : User | u -> u not in follow | u -> i in follows
-- div,1
all x : Influencer | y in  User implies x in follows.y and x not in follows.x
-- div,1
one i : Influencer | all u : User | i -> u in follows | i -> i not in follows
-- div,2
all i : Influencer, u : User | u -> i in follows implies u != i
-- div,1
all i : Influencer | all u : User | i -> i not in follows | u -> i in follows
-- div,1
all i:Influencer, u:User | i!=u implies u->i in follows
-- div,1
all i : Influencer | all u : User | u -> u not in follows | u -> i in follows
-- div,1
all f : User : f in Influencer implies all u : User | f in u.follows and f != u
-- div,1
all x: User| (x in not Influencer) implies (all y: Influencer | x->y in follows)
-- div,1
all x, y : univ | x in Influencer and y in User and x|=y implies y->x in follows
-- div,1
all i:Influencer, u: User - Influencer | (i.follows in u) && i not in User.follow
-- div,1
all i:Influencer, u:User | u->i in follows implies (u in User ou u in Influencer)
-- div,1
all u:User | some inf:Influencer | u!=inf |u in inf.follows | inf not in u.follows
-- div,1
all f : User : f in Influencer implies all u : User | f in u.follows and f not in u
-- div,1
all i : Influencer | all u : User | i != u implies i in u.follows
-- div,1
all i : Influencer | all u : User | i != u implies u->i in follows
-- div,2
all i: Influencer, u: User - Influencer | u != i => u->i in follows
-- div,1
rall inf : Influencer | all u1 : User | inf in u1.follows and u1 not in Influencer implies (u1 not in Influencer)
-- div,1
(all inf : Influencer | all u1 : User | inf in u1.follows and u1 not in Influencer) implies (u1 not in Influencer)
-- div,1
all infl:Influencer, usr:User | usr != infl implies usr->infl in follows


all infl:Influence | some u:User | u->infl in follows implies u not in Influencer
-- div,1
all infl:Influencer, usr:User | user != infl implies user->infl in follows


all infl:Influence | some u:User | u->infl in follows implies u not in Influencer
-- div,1
