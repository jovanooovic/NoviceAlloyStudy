all w1,w2: Work | no (w1.ids & w2.ids)
-- div,1
all w1,w2: Work | no (w1.ids + w2.ids)
-- div,1
let R = User.profile <: ids | R.~R in iden
-- div,1
all w1,w2 : User.profile | w1.ids != w2.ids
-- div,1
always (all u : User, p : u.profile | no p.ids & Id)
-- div,1
all s: Source | all id1, id2: (source.s).ids | id1 != id2
-- div,1
all w1,w2:Work | profile.w1.ids = profile.w2.ids implies w1=w2
-- div,1
all u:User , disj w1,w2:(u.profile) | w1.ids = w1.ids-w2.ids
-- div,2
all w1,w2: Work | w1.source = w2.source implies always no (w1.ids & w2.ids)
-- div,1
all w1,w2: Work | w1.source = w2.source implies always no (w1.ids + w2.ids)
-- div,1
all s: Source | all id1, id2: ((source.s) & User.profile).ids | id1 != id2
-- div,2
all w : User.profile | all id1,id2 : Id | id1 in w.ids implies id2 not in w.ids
-- div,1
some w : User.profile | all id1,id2 : Id | id1 in w.ids implies id2 not in w.ids
-- div,1
all s: Source, u: User | all disj w1, w2: (u.profile & source.s) | no w1.ids
-- div,1
all s: Source | all disj w, w1: ((source.s) & User.profile) | no (w.ids & w1.ids)
-- div,1
all s: Source, u: User | all id1, id2: ((source.s) & u.profile).ids | id1 != id2
-- div,1
all u1 : User , w1,w2 :u1.profile | w1.source = w2.source implies no (w1.ids & w2.ids)
-- div,1
all u:User | all id1,id2 : Id | id1 in u.profile.ids implies id2 not in u.profile.ids
-- div,1
all u1 : User , w1,w2 :u1.profile | one (w1.source & w2.source) implies no (w1.ids & w2.ids)
-- div,1
all u1 : User , w1,w2 :u1.profile | some (w1.source & w2.source) implies no (w1.ids & w2.ids)
-- div,1
all u:User | all w1,w2 : Work | (w1 in u.profile and w2 in u.profile) implies w1.ids != w2.ids
-- div,2
all u:User , disj w1,w2:(u.profile) | (w1.ids = w1.ids-w2.ids) and (w2.ids = w2.ids-w1.ids)
-- div,1
all id1,id2 : Id | all u:User | (id1.ids in u.profile and id2.ids in u.profile) implies id1!=id2
-- div,1
all u1 : (User + Institution) , w1,w2 :u1.profile | some (w1.source & w2.source) implies no (w1.ids & w2.ids)
-- div,1
