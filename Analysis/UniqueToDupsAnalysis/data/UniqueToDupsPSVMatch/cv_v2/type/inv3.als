let R = User.profile | R.~R in iden
-- div,1
all u:User | all id1,id2 : Id | no u.profile.id1 & u.profile.id2
-- div,1
all w: Work, u: User | lone w.ids in (u.profile.source & w.source)
-- div,2
all u1 : User , w1,w2 = u1.profile | w1.source = w2.source implies no (w1.ids & w2.ids)
-- div,1
all u1 : User , w1,w2 :u1.profile |  (w1.source & w2.source) implies no (w1.ids & w2.ids)
-- div,1
