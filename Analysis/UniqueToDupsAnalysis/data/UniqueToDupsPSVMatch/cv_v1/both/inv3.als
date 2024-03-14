one Work.ids
-- div,1
one profile.ids
-- div,2
~ids.ids in iden
-- div,3
one User.profile.ids
-- div,1
lone User.profile.ids
-- div,1
Id in User.(profile.ids)
-- div,1
all w: Work | one w.ids
-- div,1
all w:Work | lone w.ids
-- div,1
all w: Work | #(w.ids) <= 1
-- div,1
~(profile.ids) . profile.ids in iden
-- div,1
~(profile.ids).(profile.ids) in iden
-- div,4
(profile.ids).~(profile.ids) in iden
-- div,6
all w:User.profile | one w.ids
-- div,2
all u: User | one u.profile.ids
-- div,2
all w:User.profile | lone w.ids
-- div,2
all s:Source | one (source . s) . ids
-- div,1
all s:Source | lone (source . s) . ids
-- div,1
iden & (Id->Id) in ~(profile.ids).(profile.ids)
-- div,1
all w1,w2:Work | w1.ids = w2.ids implies w1 = w2
-- div,1
all w:User.profile, s:Source | lone w.ids
-- div,1
all w : source.Source, w1,w2 : w.ids | w1 = w2
-- div,1
all s:User . profile . source | one (source . s) . ids
-- div,1
all s:User . profile . source | lone (source . s) . ids
-- div,1
all s : Source | (profile.ids).~(profile.ids) in iden
-- div,1
all w : source.Source, disj w1,w2 : w.ids | w1 = w2
-- div,1
User.profile.source in Institution implies lone User.profile.ids
-- div,2
all s:Source, w:Work | w in (source . s) => one w.ids
-- div,1
all s: Source, u: User, w: u.profile | w.source = s
-- div,1
all s:Source, w:Work | w in (source . s) <=> one w.ids
-- div,1
all s:Source,u:User | lone ((u.profile)&(source.s)).ids
-- div,3
all s1,s2 : Source | s1.profile.ids in s2.profile.ids implies s1 = s2
-- div,1
all u : User | all p : u.profile | p.ids not in (u.profile - p).ids
-- div,1
all u : User | all w : u.profile | w.ids not in (u.profile - w).ids
-- div,1
all u: User, w1, w2: u.profile | w1.source = w2.source => w1.ids = w2.ids
-- div,1
all s: Source | all w: s.profile, ww: Work | w.ids = ww.ids implies w = ww
-- div,1
all id1:Id, w1,w2:Work | (w1.source != w2.source and id1 in w1.ids) implies id1 not in w2.ids
-- div,1
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.ids = w2.ids)) implies w1=w2
-- div,2
all w1, w2 : Work | some u : User | w1 != w2 and (w1 + w2) in u.profile implies no w1.ids & w2.ids
-- div,1
all disj w1, w2: Work | profile.w1 = profile.w2 and w1.source = w2.source implies no w1.ids & w2.ids
-- div,1
all w1, w2 : Work, u : User | (w1 in u.profile && w2 in u.profile) => (w1.ids != w2.ids || w1 = w2)
-- div,1
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.^ids = w2.ids)) implies w1=w2
-- div,1
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.^ids = w2.^ids)) implies w1=w2
-- div,1
all w1, w2 : Work | some u : User | w1 != w2 and (w1 + w2) in u.profile and (w1.source = w2.source) implies no w1.ids & w2.ids
-- div,1
all s1, s2: Source| all u: User | s1 = s2 and u.profile.source = s1 or u.profile.source = s2 implies one u.profile.ids
-- div,5
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and no (w1.ids & w2.ids) and (w1.source = w2.source)) implies (w1=w2)
-- div,1
all w1, w2 : Work | some u : User, s : Source | w1 != w2 and (w1 + w2) in u.profile and (w1.source = w2.source) implies no w1.ids & w2.ids
-- div,1
all u: User, w: Work | w in u.profile => w.ids = w.ids && all u2: User, w2: Work | (w2 in u2.profile && u2.source = u.source) => w.ids = w2.ids
-- div,1
