-- equiv pair start,36
all i:Influencer | follows.i = User-i
-- div,18
all x:Influencer| follows.x = User - x
-- div,2
all i: Influencer | i.~follows = User - i
-- div,1
all u:User | u.follows&Influencer = Influencer-u
-- div,8
all u: User | u in Influencer implies (follows.u = User - u)
-- div,1
all x : User, i : Influencer | x != i <=> i in x.follows
-- div,1
all i:Influencer, u:User | i!=u iff i in u.follows
-- div,2
all i: Influencer | all u: User | i in u.follows iff i != u
-- div,2
all u: User | all i: Influencer | u != i <=> u->i in follows
-- div,1
-- equiv pair end
