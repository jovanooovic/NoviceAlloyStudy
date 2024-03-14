iden not in posts
-- div,1
iden not in follows
-- div,9
iden not in follows.follows
-- div,1
all u: User | one u
-- div,1
iden not in follows.~follows
-- div,1
all u: User | u->u in iden
-- div,1
all x: User | x not in x.posts
-- div,1
all u : User | u not in u.posts
-- div,2
all u : User |u . follows != u
-- div,1
all x : User | x.follows != x
-- div,4
all u : User | u -> u not in posts
-- div,1
all x : User | x != follows.x
-- div,1
all u : User | follows.u != u
-- div,2
all x : User | follows.x != x
-- div,1
all u : User | not u in u.sees
-- div,1
all x: User | !x.follows = x
-- div,3
all u : User | not u -> u in posts
-- div,1
all u1 : User | follows.u1 != u1
-- div,1
all u1 : User | u1.follows != u1
-- div,1
all x : User | User not in follows.x
-- div,1
all disj a, b : User | a not in a.follows
-- div,1
all u:User | u not in u.follows.posts
-- div,1
all x, y : User | x.follows = y implies x !=y
-- div,3
all u : User+Influencer | follows.u != u
-- div,1
all x, y : univ | x.follows = y implies x != y
-- div,1
all x, y : univ | x in User and x.follows = y implies x != y
-- div,1
all u : User | follows.u != u
all i : Influencer | follows.i != i
-- div,2
all x, y : univ | x in User or x in Influencer and x.follows = y implies x != y
-- div,1
all x, y : User | x.follows = y implies x != y
all x, y : Influencer | x.follows = y implies x != y
-- div,1
