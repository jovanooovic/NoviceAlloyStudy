-- equiv pair start,6
lone ids.Id
-- div,2
all i : Id | lone ids.Id
-- div,4
-- equiv pair end
-- equiv pair start,4
ids.~ids in iden
-- div,2
all w1 : Work, w2 : Work  | some (w1.ids & w2.ids) implies w1 = w2
-- div,2
-- equiv pair end
-- equiv pair start,46
profile.ids in iden
-- div,1
all u: User, w1, w2: u.profile | w1.ids != w2.ids
-- div,3
all u : User, s : Source | no u.profile & source.s
-- div,2
all u: User | all w1, w2: u.profile | not w1.ids = w2.ids
-- div,1
all u: User, w1, w2: u.profile, i: w1.ids | i not in w2.ids
-- div,1
all u: User, w1, w2: u.profile | all i: w1.ids | i not in w2.ids
-- div,1
all  w1,w2:Work, u:User | (w1+w2) in u.profile implies no (w1.ids & w2.ids)
-- div,1
all u : User, w1,w2 : u.profile | w1.ids not in w2.ids and w2.ids not in w1.ids
-- div,2
all w1,w2:Work | (w1 in User.profile and w2 in User.profile) implies w1.ids != w2.ids
-- div,1
all w1,w2:Work | (w1 in User.profile and w2 in User.profile) implies w1.ids not in w2.ids
-- div,1
all u: User, w1, w2: u.profile | w1.source = w2.source => no w1.ids & w2.ids
-- div,1
all w1,w2:Work | (w1 in Source.profile and w2 in Source.profile) implies w1.ids not in w2.ids
-- div,1
all w1, w2:Work, u:User | (w1 in u.profile and w2 in u.profile) implies w1.ids!=w2.ids
-- div,3
all u:User, w1, w2:Work | w1 in u.profile and w2 in u.profile implies w1.ids not in w2.ids
-- div,2
all w1, w2:Work, u:User | (w1 in u.profile and w2 in u.profile) implies no (w1.ids & w2.ids)
-- div,1
all w:Work, w1:Work | w in User.profile && w1 in User.profile implies no (w.ids & w1.ids)
-- div,5
all u:User, w:Work, w1:Work | w1 in u.profile && w in u.profile implies w.ids != w1.ids
-- div,1
all w1, w2 : Work, u : User {
    (((w1 + w2) in u.profile) and w1.source = w2.source) implies no (w1.ids & w2.ids)
  }
-- div,1
all id1:Id, w1,w2:Work | (w1 in Source.profile and w2 in Source.profile and id1 in w1.ids) implies id1 not in w2.ids
-- div,1
all u:User, w1, w2:Work | w1 in u.profile and w2 in u.profile implies w1.ids not in w2.ids and w2.ids not in w1.ids
-- div,1
all w1, w2:Work, u:User | (w1 in u.profile and w2 in u.profile) implies  (w1.ids not in w2.ids and w2.ids not in w1.ids)
-- div,1
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.source = w2.source)) implies (w1.ids != w2.ids)
-- div,3
all u : User, w1, w2 : Work | ((w1 in (u.profile)) and (w2 in (u.profile)) and (w1.source = w2.source)) implies (w1.ids != w2.ids)
-- div,1
all u : User, w1, w2 : Work | ((w1 in (u.profile)) and (w2 in (u.profile)) and (w1.source = w2.source)) implies (w1.ids not in w2.ids)
-- div,1
all w1, w2:Work, u:User | (w1 in u.profile and w2 in u.profile) and (w1.source=w2.source) implies no (w1.ids & w2.ids)
-- div,3
all u:User, w:Work, w1:Work | w.source = w1.source && w1 in u.profile && w in u.profile implies w.ids != w1.ids
-- div,1
all w1, w2:Work, u:User, i:Id | ((w1 in u.profile and w2 in u.profile) and (w1.source = w2.source)) implies (w1.ids != w2.ids)
-- div,2
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.ids = w2.ids) and (w1.source = w2.source)) implies no (w1.ids & w2.ids)
-- div,1
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.source = w2.source)) implies  (w1.ids not in w2.ids and w2.ids not in w1.ids)
-- div,1
all w1 : Work | all w2 : Work | all u : User | (w1 in u.profile and w2 in u.profile and w1.source=w2.source) implies (w1.ids & w2.ids)=none
-- div,1
-- equiv pair end
-- equiv pair start,9
Work<:ids != Work<:ids
-- div,3
one ids.(~source.ids)
-- div,2
iden in (profile.ids).~(profile.ids)
-- div,3
iden in ~(profile.ids).(profile.ids)
-- div,1
-- equiv pair end
-- equiv pair start,1
lone Work<:(User.profile)
-- div,1
-- equiv pair end
-- equiv pair start,4
all x, y : Work | x.ids != y.ids
-- div,1
all x, y : Work | no x.ids & y.ids
-- div,1
all x, y : Work | x<:ids != y<:ids
-- div,1
all w:Work, w1:Work | no (w.ids & w1.ids)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Source | one ids.(s.(~source.ids))
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Source,u:User | lone ((u.profile)&(source.s))
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, s : Source | one u.profile & source.s
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Source | (source.s<:ids).~(source.s<:ids) in iden
-- div,1
-- equiv pair end
-- equiv pair start,4
all s1,s2 : Source | s1.profile.ids not in s2.profile.ids
-- div,1
all s1, s2: Source | s1 = s2 implies  s1.profile.ids != s2.profile.ids
-- div,1
all s1, s2: Source | s1 = s2 implies s1.profile.ids not in s2.profile.ids
-- div,2
-- equiv pair end
-- equiv pair start,4
all s: Source | ((s.profile)<:ids).~((s.profile)<:ids) in iden
-- div,1
all u:User | all disj w1,w2: u.profile | no (w1.ids & w2.ids)
-- div,1
all disj w1,w2:Work, u:User | (w1+w2) in u.profile implies no (w1.ids & w2.ids)
-- div,2
-- equiv pair end
-- equiv pair start,1
all s: Source | ((source.s & User.profile)<:ids).~((source.s & User.profile)<:ids) in iden
-- div,1
-- equiv pair end
-- equiv pair start,1
let aux = {u, User, w : Work, s : Source | u -> w in profile and w -> s in source} | all s : Source | s in Institution
-- div,1
-- equiv pair end
