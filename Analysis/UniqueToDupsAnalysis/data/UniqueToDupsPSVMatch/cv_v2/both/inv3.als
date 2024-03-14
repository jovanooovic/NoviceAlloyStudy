all u:User| one u.profile.ids
-- div,1
all u:User| lone u.profile.ids
-- div,1
all disj w1,w2 : Work | w1.ids != w2.ids
-- div,1
all disj w1,w2:Source.profile | w1.ids != w2.ids
-- div,1
all w1,w2 : User.profile | w1.ids = w2.ids implies w1=w2
-- div,2
all u : User, disj w, w1 : u.profile | w.ids != w1.ids
-- div,1
all w1,w2:Source.profile | w1.ids = w2.ids implies w1=w2
-- div,4
all s : Source | profile.(source.s<:ids.~(source.s<:ids)).~profile in iden
-- div,1
all s: Source | all disj w, w1: ((source.s) & User.profile) | w.ids != w1.ids
-- div,1
one  u1 : User |all  w1,w2 :u1.profile | w1.source = w2.source implies no (w1.ids & w2.ids)
-- div,1
all u:User | all w1,w2 : Work | (w1 in u.profile and w2 in u.profile and w1.ids=w2.ids) implies w1=w2
-- div,1
