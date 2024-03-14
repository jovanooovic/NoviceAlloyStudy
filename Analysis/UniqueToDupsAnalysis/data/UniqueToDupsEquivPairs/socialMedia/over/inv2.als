-- equiv pair start,82
no follows
-- div,1
#(follows) = 0
-- div,1
no follows.iden
-- div,1
no follows.User
-- div,7
no User.follows
-- div,2
(User.follows) = none
-- div,2
no follows.~follows
-- div,1
no follows.User.iden
-- div,1
no User & User.follows
-- div,1
User.follows & User = none
-- div,3
User.follows & User in none
-- div,1
all x: User | no x.follows
-- div,5
all u:User| no u.follows
-- div,6
all x: User | no follows.x
-- div,21
all u:User | no follows.u
-- div,16
all u : User | no follows->u
-- div,1
all u:User | no iden.follows
-- div,1
all u:User|  #u.follows=0
-- div,1
all u: User | no u->follows.u
-- div,1
all u: User | no u.follows->u
-- div,1
all y : User | not some follows.y
-- div,1
all x : User | not some follows.x
-- div,1
all u : User | u not in follows.User
-- div,2
all u: User | no u->follows->u
-- div,1
no follows.User and no follows.Influencer
-- div,2
all u1,u2:User | u1->u2 not in follows
-- div,1
-- equiv pair end
-- equiv pair start,16
no User.iden
-- div,1
all x : User | x -> x in posts
-- div,1
all u:User | u not in u.*follows
-- div,2
all x : User | x.follows not in x.follows
-- div,1
all u:User | u.follows not in u.follows
-- div,1
all x, y: User | x->y in follows - iden
-- div,1
all x : User | x.follows not in User.follows
-- div,1
all u : User | u -> u in follows and u != u
-- div,1
all x: User, y: User | x->y in follows - iden
-- div,1
all x: User, y: User | x->y in follows and x != y
-- div,2
all x : User | all y : User | x.follows = y and x != y
-- div,2
all x: User | all y: User | x->y in follows and x != y
-- div,1
all u1 : User| all u2 : User | u1 -> u2 in follows and u1 != u2
-- div,1
-- equiv pair end
-- equiv pair start,7
iden in follows
-- div,2
no iden - follows
-- div,1
no follows + iden
-- div,1
User.follows not in User
-- div,2
follows - iden = iden
-- div,1
-- equiv pair end
-- equiv pair start,15
no iden & ^follows
-- div,1
no ^follows & iden
-- div,2
all u:User | u not in u.^follows
-- div,12
-- equiv pair end
-- equiv pair start,1
no follows.User and no suggested.User
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User,u2:User | u=u2 and u2 not in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
one u1,u2:User | u1->u2 in follows implies u1!=u2
-- div,1
-- equiv pair end
-- equiv pair start,4
all u : User | u not in u.follows and u not in u.suggested
-- div,1
all u:User | u->u not in follows and u->u not in suggested
-- div,2
all u:User | u->u not in follows
all u:User | u->u not in suggested
-- div,1
-- equiv pair end
