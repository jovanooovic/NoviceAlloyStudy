-- equiv pair start,16

-- div,5
User.(profile.ids) in Id
-- div,1
all u : User | no none
-- div,1
User.profile.~ids.ids in User.profile.iden
-- div,1
(profile.ids.source).~(profile.ids.source) in iden
-- div,1
all w : source.Source, disj w1,w2 : w.ids | w1 not = w2
-- div,1
all u : User.profile, disj x,y : u.ids | x = y => x = y
-- div,1
all u:User , s:Source| lone (u.profile.source & s).ids
-- div,1
all s:Source,u:User,id:Id | lone (((u.profile) & (source.s)).ids & id)
-- div,1
all s:Source,u:User | all disj i1,i2 : ((u.profile) & (source.s)).ids | i1 != i2
-- div,1
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.ids = w2.*ids) and (w1.source = w2.source)) implies w1=w2
-- div,1
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.*ids = w2.*ids) and (w1.source = w2.source)) implies w1=w2
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all disj w1,w2 : u.profile | w1.source = w2.source implies (w1.ids not in w2.ids and w2.ids not in w1.ids)
-- div,1
-- equiv pair end
-- equiv pair start,2
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.ids = w2.ids) and (w1.source = w2.source)) implies w1=w2
-- div,2
-- equiv pair end
