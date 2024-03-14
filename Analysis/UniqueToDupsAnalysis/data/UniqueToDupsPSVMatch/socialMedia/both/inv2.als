follows in iden
-- div,3
follows not in iden
-- div,11
not follows in iden
-- div,1
follows != ~follows
-- div,1
User not in User.follows
-- div,10
User->User not in follows
-- div,1
posts in (User one -> Photo)
-- div,3
follows.~follows in iden
-- div,9
~follows.follows in iden
-- div,1
follows.~follows not in iden
-- div,14
follows.*follows not in iden
-- div,1
always(User not in User.follows)
-- div,1
follows.User not in User.follows
-- div,1
always(User->User not in follows)
-- div,2
User<:iden:>User not in follows
-- div,1
one x: User | no follows.x
-- div,2
no (follows.User & suggested.User)
-- div,1
all u : User | one u.follows
-- div,1
all y : User | one follows.y
-- div,1
all x : User | one follows.x
-- div,3
one x : User | one follows.x
-- div,1
all u : User | one follows.u
-- div,1
all u : User | lone follows.u
-- div,1
all u : User | u in follows.u
-- div,1
all x: User| x in follows.x
-- div,1
all x: User | x in x.follows
-- div,3
all x : User | lone follows.x
-- div,2
all u:User | u in u.follows
-- div,2
one x : User | lone follows.x
-- div,1
all x : User | some follows.x
-- div,5
one x : User | x not in follows.x
-- div,1
all u:User | u.follows not in u
-- div,2
all u:User | u->u in follows
-- div,1
one x:User| x not in x.follows
-- div,1
one u: User | u not in u.follows
-- div,2
all x :User| x->x in follows
-- div,3
follows.~follows in iden.~follows
-- div,1
all u : User | follows.u not in u
-- div,1
some u:User | u not in u.follows
-- div,1
one u : User | u->u not in follows
-- div,1
all x : User | one ~follows.x
-- div,1
some x:User| x not in x.follows
-- div,1
all u : User | not one follows.u
-- div,1
one x:User| x->x not in follows
-- div,1
some u: User | u->u not in follows
-- div,1
some u: User | ! u->u in follows
-- div,1
one u1:User | u1 -> u1 not in follows
-- div,1
all disj a, b : User | b in a.follows
-- div,1
all u: User | u.follows->u in iden
-- div,2
all u: User | u.follows->u not in iden
-- div,1
one user : User | user not in user.follows
-- div,1
all u : User | follows.u not in u.follows
-- div,1
all x:User | x.follows not in follows.x
-- div,1
all i: Influencer | i.posts in i.sees
-- div,1
all x:User | follows.x not in x.follows
-- div,2
all u : User | u.follows not in follows.u
-- div,1
all x : User + Influencer | some follows.x
-- div,1
some x:User | some y:User | x = y
-- div,1
User not in User.follows
User not in User.suggested
-- div,1
all u : User + Influencer | not one follows.u
-- div,1
all u : User - Influencer | u not in u.*follows
-- div,1
all x: User | all y: follows.x | y = x
-- div,1
all u1, u2:User | u1 -> u2 in follows implies u1 = u2
-- div,1
all x : User | all y : User | x.follows != y
-- div,1
all u1 : User | all u2 : User | follows.u1 != u2
-- div,2
all u1 : User | all u2 : User | u1.follows != u2
-- div,1
all u : User | all u1 : User - u | u.follows in u1
-- div,1
all disj a, b : User | b in a.follows and a not in a.follows
-- div,1
some x : User | some y : User | some follows.x and x != y
-- div,1
all x : User | all y : Influencer | x.follows = y and x != y
-- div,1
all u1, u2:User | u1 -> u2 in follows and u2 -> u1 in follows implies u1 = u2
-- div,1
no (follows.User & suggested.User & follows.Influencer & suggested.Influencer)
-- div,1
some x : User | some y : User | some follows.x and some follows.y and x != y
-- div,1
