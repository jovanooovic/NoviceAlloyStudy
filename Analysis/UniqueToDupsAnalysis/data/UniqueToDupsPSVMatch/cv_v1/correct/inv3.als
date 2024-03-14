all s:Source, u:User | (u.profile & source.s) <: ids in Work lone -> Id
-- div,1
all u:User,s:Source,i:Id | lone (u.profile & source.s & ids.i)
-- div,1
all s:Source, u:User, i : Id | lone (u.profile & source.s & ids.i)
-- div,1
all s:Source, u:User, disj w1, w2 : (u.profile & source.s) | no w1.ids & w2.ids
-- div,1
all u: User, disj w1, w2: u.profile | w1.source = w2.source => no w1.ids & w2.ids
-- div,2
all s:Source, u:User | all disj w1, w2 : (u.profile & source.s) | no w1.ids & w2.ids
-- div,1
all u: User | all disj w1, w2: u.profile | w1.source = w2.source => no (w1.ids & w2.ids)
-- div,3
all s: Source, u:User| ((source.s & u.profile)<:ids).~((source.s & u.profile)<:ids) in iden
-- div,6
all w1, w2 : Work, u : User | w1 != w2 and (w1 + w2) in u.profile and (w1.source = w2.source) implies no w1.ids & w2.ids
-- div,8
all w1, w2 : Work | all u : User | w1 != w2 and (w1 + w2) in u.profile and (w1.source = w2.source) implies no w1.ids & w2.ids
-- div,2
