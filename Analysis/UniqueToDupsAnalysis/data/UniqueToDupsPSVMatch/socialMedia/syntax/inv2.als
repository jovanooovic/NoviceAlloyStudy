all u:
-- div,1
u.u in iden
-- div,1
one x : User
-- div,1
all u:User |
-- div,2
no follows.u
-- div,1
no follows.x
-- div,1
all x : User
-- div,3
all x : User |
-- div,6
some u: User |
-- div,1
u.follows != u
-- div,1
Follows = none
-- div,1
no u.follows.u
-- div,1
no follows & id
-- div,4
not p.follows.p
-- div,1
all x,y : User |
-- div,1
+follows in iden
-- div,1
u . follows != u
-- div,1
no x & x.follows
-- div,1
no u in u.follows
-- div,1
all x: !follows.x
-- div,1
id not in follows
-- div,2
User x : follows.x
-- div,1
no x->x in follows
-- div,1
x not in follows.x
-- div,1
no ident & follows
-- div,1
no(Follows & iden)
-- div,1
User x | follows.x
-- div,1
x.follows.x not in
-- div,2
no follows & ident
-- div,1
follows.~follows in
-- div,1
.no(follows & iden)
-- div,1
no -follows*follows
-- div,1
no -follows.follows
-- div,1
no ident in follows
-- div,1
u.~u.folows in iden
-- div,3
x->x not in follows
-- div,1
u.follows->u in iden
-- div,1
follow.~follows iden
-- div,1
all x: not follows.x
-- div,3
iden not in follows.u
-- div,1
follows.x not in User
-- div,1
u.follows not in iden
-- div,2
follows.u not in iden
-- div,1
no (-follows)*follows
-- div,1
all x : not follows.x
-- div,1
all x: not x.follows.x
-- div,1
all x: x->x in follows
-- div,2
all x: User|not user.s
-- div,1
User x : not follows.x
-- div,1
no (-follows) x follows
-- div,1
| none follows.~follows
-- div,2
x: User | x -> follows.x
-- div,1
some x : User ~follows x
-- div,1
one u : user | u.follows
-- div,1
not x : User | follows.x
-- div,1
User.follows & User = no
-- div,1
-follows.follows in iden
-- div,1
x : User | not follows.x
-- div,1
follows.-follows in iden
-- div,1
no (iden User) - follows
-- div,1
one x : not x.follows(x)
-- div,1
all u: User-u | u.follows
-- div,1
all x| u not in u.follows
-- div,1
x : User | no (follows.x)
-- div,1
none x : User | follows.x
-- div,1
y: User | y->y in follows
-- div,2
all x: user | no x.follow
-- div,1
User.follows^ not in iden
-- div,1
all x : user | follows - x
-- div,1
all x: user | no x.follows
-- div,1
user.follows & user = none
-- div,1
all x: not x->x in follows
-- div,1
all u : User | not in iden
-- div,1
all u | u not in u.follows
-- div,2
none a: User | a.follows.a
-- div,1
all u : u not in u.follows
-- div,1
all x: User - x | x.follows
-- div,1
one u : user | no u.follows
-- div,1
all u:User | no iden.folows
-- div,1
u : User | none u.follows.u
-- div,1
all u: User - u | u.follows
-- div,1
all y : User | follows(x,y)
-- div,1
all x : user | not follow.x
-- div,1
all y : User | follows(y,y)
-- div,1
all x: User|not in follows.x
-- div,1
follows.-follows not in User
-- div,2
all x:User | no x:follows(x)
-- div,2
all x : user | not follows.x
-- div,1
follows.~follows not in Users
-- div,1
all u : user | no u follows.u
-- div,2
all u: user | no follows&iden
-- div,1
follows.-follows not in Users
-- div,1
all x : User | no x follows.x
-- div,1
all u : User | no u follows.u
-- div,1
All User u : u not in u.Users
-- div,1
all u: user | no u->follows.u
-- div,1
all x,y: User | x in y.folowed
-- div,2
follows.(-follows) not in iden
-- div,1
all x : User | follows.all - x
-- div,1
all x,y: user | x -> y follows
-- div,1
all u:User | u no in u.follows
-- div,1
all x:User| u not in u.follows
-- div,1
one u: User | not in u.follows
-- div,1
all x:User| u->u not in follows
-- div,1
all x : User | not in x.follows
-- div,1
no some x: User| x in follows.x
-- div,1
one x : User | not in follows.x
-- div,1
all x: User | x not in follow.x
-- div,1
all X:User | x not in x.follows
-- div,1
all u:User | u->u not in follow
-- div,1
all x : User | not in follows.y
-- div,3
all x : User | not in follows.x
-- div,10
all u:user | u not in u.follows
-- div,1
all u:User | u-> not in follows
-- div,1
all u : User | not in follows.u
-- div,1
all u: user | no u.follows&iden
-- div,1
all y : User | not in follows.y
-- div,1
x : User | not (some follows.x)
-- div,1
all x: User | x no in follows.x
-- div,1
all u: user | no follows.u&iden
-- div,1
all u:User > u -> not in follows
-- div,1
all x : User | x not in follws.x
-- div,1
(-follows) x follows not in iden
-- div,1
all x : User | x not in follow.x
-- div,1
all u: user | u not in u.follows
-- div,2
all x : User | not x in follow.x
-- div,1
all u:User | u -> not in follows
-- div,1
all u : User | u not in u.follow
-- div,1
all u: User | u not in follows.x
-- div,1
All u: User | u not in follows.u
-- div,1
all u: User | u not in u.Follows
-- div,1
not some u:User | u->u in folows
-- div,1
all x : User | all not follows.x
-- div,1
all x : User | not (x,x) follows
-- div,1
all u: User | no (follos & iden)
-- div,1
all x : user | x not in x.follow
-- div,1
one u: User | u not in follows.x
-- div,1
all x : User | not in  x.follows
-- div,1
all x : user implies follows - x
-- div,1
all y : User | not all follows.y
-- div,1
all x : User | one not follows.x
-- div,1
all u : User | u not in follows.
-- div,1
All u: User | u not in u.follows
-- div,1
all u:User | u.follows-u == iden
-- div,1
all U: User | u not in u.follows
-- div,1
all x,y: user | x -> y in follows
-- div,1
all u:User | no(follows & iden u)
-- div,1
all x : User | x not in follows.y
-- div,2
all u:Users | u->u noot in follow
-- div,1
one x : User | not in suggested.x
-- div,2
all U : User | u not in u.follows
-- div,2
one x : User | x.follows <: not x
-- div,1
all u : User | not in u.follows.u
-- div,1
all x : User | all x.follows != x
-- div,1
all x : User | y not in follows.y
-- div,1
all x : User | x not in u.follows
-- div,1
all u1: User | u not in u.follows
-- div,1
all x : User | some not follows.x
-- div,2
all x : User | not in (follows.x)
-- div,1
all u : User | x not in x.follows
-- div,1
all u: User | u not in u.folllows
-- div,1
one y : User | not in suggested.y
-- div,2
all x : User | none follow.x == x
-- div,1
all u : user | u not in u.follows
-- div,1
all x : User | u not in follows.y
-- div,1
all u : User | u not in follows.^
-- div,1
all x : User | y not in x.follows
-- div,1
/all u:User | u->u not in follows
-- div,2
all u : User | u not in z.follows
-- div,1
all u : User implies not follows.u
-- div,1
all x : user implies not follows x
-- div,1
all x : User implies x.follows - x
-- div,1
all x : User | all x not follows x
-- div,1
all u : User implies u.follows - u
-- div,2
all x : User | all x not follows.x
-- div,1
all u : User | u -> not in follows
-- div,2
all u:User | u.follows & u == none
-- div,1
all x:user |  x-> x not in follows
-- div,1
all x: Users | x->u not in follows
-- div,1
all x: Users | x->x not in follows
-- div,1
all x : User | none x.follows == x
-- div,1
all x : user implies not follows.x
-- div,1
all u : User  u not in u->follows|
-- div,1
all u:User | lone not in u.follows
-- div,1
all x : User | none follows.x == x
-- div,1
all x : User | not (x,x) in follows
-- div,1
all u : User | u not in u.followers
-- div,1
all u : User | u not in u->follows|
-- div,1
all x : User | all follows.x : no x
-- div,2
no follows.User & no suggested.User
-- div,1
all u1:User | u1 not in u1.follows;
-- div,4
all u in User | u not in u.followers
-- div,1
all u : user | u -> u not in follows
-- div,1
all u : User implies not u.follows.u
-- div,2
for all u: user | u not in u.follows
-- div,1
follows in (User one -> User - User)
-- div,6
all x:User | x.follows -> !follows.x
-- div,1
x,y : User | x->y in follows and x!=y
-- div,1
all x : User | all follows.x and no x
-- div,1
all x | some y | follows.x <=> x != y
-- div,1
/all u : user | u -> u not in follows
-- div,1
all u:user | user not in follows.user
-- div,1
all x : some y : follows.x <=> x != y
-- div,1
all u: user | some x not in x.follows
-- div,1
all x : User | no y follows.x | y = x
-- div,1
x, y : User | x->y in follows and x=y
-- div,1
all u: User | some x not in x.follows
-- div,1
all u:User | u.follows-u == u.follows
-- div,1
all u : User | all not u -> u in posts
-- div,1
u in User implies u not in u.followers
-- div,1
all x:User | x.follows -> not follows.x
-- div,1
all X:User | none y:User | x.follows(x)
-- div,1
all u : User | u implies not in follows
-- div,2
all u:User | u not in u.^(follows.~set)
-- div,1
all x | some y | follows.x <=> follows.y
-- div,1
all X:User | none y:User | x->follows(y)
-- div,1
all d : User | d not in d.entries.object
-- div,1
u in User | implies u not in u.followers
-- div,1
all u : User | u implies not in follows.u
-- div,1
x.follows : set User | x.follows <: not x
-- div,1
all x : User | all follows.x implies no x
-- div,1
all u:User | u not in u.^(follows.object)
-- div,1
all u : User | u implies not in u.follows
-- div,1
all user : user | user not in user.follows
-- div,1
all user : User | user not in user.Follows
-- div,1
all x, y: User | y =follows.x | x not in y
-- div,1
all x,y : x -> y in follows implies x != y
-- div,1
all u1,u2 : User | u1.follows.u2 -> u1=u2
.
-- div,1
all x : User | all follows.x : implies no x
-- div,1
all x : User | no y follows.x implies y = x
-- div,1
all x: User | all y: User | follows.x | y!=x
-- div,2
all x,y : User | x->y in follow implies x!=y
-- div,3
all x,y : User | x->y in follow implies !x=y
-- div,1
all x, y : uni | x.follows = y implies x != y
-- div,1
all x, y : User | no y follows.x implies y = x
-- div,1
all x,y : User | x == y implies x no follows.y
-- div,2
all x,y : User | x->y in follow implies x != y
-- div,5
all x,y:User| iff x=y implies no x in y.follows
-- div,1
follows in User -> User | x.follows | follows.x
-- div,2
u1, u2 : User | u1 in u2.follows implies u1!=u2
-- div,2
all x : univ | x in User implies not follow(x,x)
-- div,1
all x : User, Influencer | User not in follows.x
-- div,1
all x and y : User| no y follows.x implies y = x
-- div,1
all x : univ | x in User implies not follows(x,x)
-- div,1
all x and y : User| no y follows.x implies y == x
-- div,1
all u:User,u1:User | u=u2 and u2 not in u.follows
-- div,1
all u : User | u in User.follows
all u : User | no
-- div,1
all x,y : User | x == y implies x not in follows.y
-- div,2
all u1,u2 : User | u1=u2 implies ^(u1.follows.u2)
.
-- div,1
all u1,u2 : User | u1=u2 implies u1.^(follows.u2)
.
-- div,1
some x:User | some y:User | x = y -> not in follows
-- div,1
y : User
all x : User| no y follows.x implies y = x
-- div,1
all u : User | all u1 : User - u | u.followns in u1
-- div,1
all u1, u2 : User | u1 in u2.follows implies u1<>u2
-- div,1
set u1,u2 : User | u1 in u2.follows implies u1 != u2
-- div,1
all u : User , u2 : User | follows.u != \\follows.u2
-- div,1
one x:User | one y:User | x = y | x not in follows.y
-- div,1
all u : User , u2 : User | u.follows.x != u.follows.y
-- div,1
all x : User, y : User | no y follows.x implies y = x
-- div,1
all u1, u2:User | u1 -> u2 in follows implies u1 == u2
-- div,1
some x:User | some y:User | x = y | x not in follows.y
-- div,1
all x : User | all y : User | x.follows == y and x != y
-- div,1
all u1,u2 : User | u1=u2 implies  not (u1.follows.u2)
.
-- div,1
one u1, u2: User | u1 -> u2 in follows implies u1 != us
-- div,1
all u1, u2: User | u1 -> u2 in follows implies u1 != us
-- div,1
some x : User | some y : User | x != y | x->y in follows
-- div,1
all u1, u2: User | u1 -> u2 in follows implies u1 != us2
-- div,1
all u : User | u not in u.follows
follows.(-follows) in iden
-- div,1
all x : User, y : User | x.follows & y.follows implies x == y
-- div,1
all x : User | not some follows.x
all y : User | some follows.x
-- div,1
all x : User | all y : User | x == y implies not x-> y in follows
-- div,1
all x : User | all x2 : User | x -> x2 in follows implies x1 != x2
-- div,1
all x : User | all x2 : User | x -> x2 in follows implies u1 != u2
-- div,1
all x, y : univ | x in User and y in User and follows(x, y) implies x!=y
-- div,1
all x, y: User | x -> y in follows implies x!=y
all u: user | no u.follows&iden
-- div,1
