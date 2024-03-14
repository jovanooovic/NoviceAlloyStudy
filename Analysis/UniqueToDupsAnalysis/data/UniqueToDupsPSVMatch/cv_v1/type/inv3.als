ids-profile
-- div,3
all u : User | none
-- div,1
no Work.ids = Work.ids
-- div,1
lone Work.(User.profile)
-- div,1
all u : User | u.profile
-- div,1
no Work<:ids = Work<:ids
-- div,1
all w : source.Source | w
-- div,1
all u : User | (u.profile)
-- div,1
Work.(User.profile) in iden
-- div,1
lone Work.Id<:(User.profile)
-- div,1
lone Id.Work<:(User.profile)
-- div,1
all w : source.Source | w.ids
-- div,1
all w : source.Source | w->ids
-- div,1
lone Id in Work<:(User.profile)
-- div,1
all u : User | source.(u.profile)
-- div,1
all x, y : Work | no x.ids = y.ids
-- div,2
all x, y : Work | no x<:ids = y<:ids
-- div,1
all s1, s2: Source | Work.s1 != Work.s2
-- div,1
all s:Source,u:User | lone (u.profile).s
-- div,1
all s:Source,u:User | lone ((u.profile).s).id
-- div,1
all w: Work | some s: Source | profile.w in w.s
-- div,1
all u : User, s : Source |  u.profile & source.s
-- div,1
all s:Source,u:User | ((u.profile) & (source.s)).ids
-- div,2
all u:User, w1, w2:Work in u.profile | w1.ids!=w2.ids
-- div,1
all w : source.Source, disj w1,w2 : w.ids | no w1 = w2
-- div,1
all u : User | ~(u.profile.ids).(u.profile.ids) in iden
-- div,2
all u: User, s: Source, id: Id | lone (s.(u.profile).ids & id)
-- div,1
all w: Work | some s: Source | profile.w in w.s implies one w.ids
-- div,2
all w: Work | some s: Source | profile.w and w.s implies one w.ids
-- div,2
all s1, s2: Source | s1= s2 implies  s1.profile.Id != s2.profile.Id
-- div,1
all w1 : Work, w2 : Work  | some (w1.ids && w2.ids) implies w1 = w2
-- div,2
all s1, s2: Source | s1 = s2 implies  s1.profile.Id != s2.profile.Id
-- div,1
all s1, s2: Source | s1 = s2 implies  s1.profile.Id no s2.profile.Id
-- div,1
all w: Work | some s: Source | User.profile in w.s implies one w.ids
-- div,1
all w1 : Work, w2 : Work  | some (w1.ids and w2.ids) implies w1 = w2
-- div,1
all w: Work | some s: Source | profile.w in w.Source implies one w.ids
-- div,1
all s1, s2: Source | s1= s2 implies  s1.profile.Id not in s2.profile.Id
-- div,1
all disj w1,w2:Work, u:User | w1 and w2 in u.profile implies no (w1.ids & w2.ids)
-- div,1
all u: User | all disj w1, w2: u.profile | w1.Source = w2.Source => no (w1.ids & w2.ids)
-- div,1
all s: Source, u: User| ((source.s & u.profile).ids).~((source.s & u.profile).ids) in iden
-- div,1
all w:Work, w1:Work | (w in User.profile && w1 in User.profile) implies no (w.ids = w1.ids)
-- div,1
all u : User | some id1, id2 : Id | some u.profile.ids.id1 and u.profile.ids.id2 implies id1 != id2
-- div,2
all u : User | some id1, id2 : Id | some u.profile.Work.id1 and u.profile.Work.id2 implies id1 != id2
-- div,1
all u : User | ~allIds[u].allIds[u] in iden
}

fun allIds[u : User] : one User -> set Id {
	profile.Work.ids
-- div,1
all s1, s2: Source | all w1, w2: Work| s1.profile.w1 and s2.profile.w2 and s1= s2 implies  w1.ids not in w2.ids
-- div,1
all u : User | ~allIds[u].allIds[u] in iden
}

fun allIds[u : User] : one User -> set Id {
	u <: profile.Work.ids
-- div,1
all w: Work | all disj i1,i2: Id | all disj s1, s2: Source | profile.w and w.s1 and w.i1 implies no w.s2 and no w.i2
-- div,1
all w1, w2:Work, u:User, i:Id | ((w1 in u.profile and w2 in u.profile) and (w1.source = w2.source)) implies (w1.i != w2.i)
-- div,2
all u : User, w1, w2 : Work | ((w1 in (u.profile)) & (w2 in (u.profile)) & (w1.source = w2.source)) implies (w1.ids != w2.ids)
-- div,1
all u:User | all w:u.profile, w1:u.profile | w.source in Institution and w1.source in Institution and w.source.Id != w1.source.Id
-- div,1
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.ids & w2.ids) and (w1.source = w2.source)) implies (w1=w2)
-- div,1
all w: Work | all disj i1,i2: Id | all disj s1, s2: Source | profile.w and s1 in w.source and i1 in w.ids implies no w.s2 and no w.i2
-- div,1
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.ids = w2.ids) and (w1.source = w2.source)) implies (w1.ids & w2.ids)
-- div,3
all w: Work | all disj i1,i2: Id | all disj s1, s2: Source | profile.w and s1 in w.source and i1 in w.ids implies no s2 in w.source and no i2 in w.ids
-- div,1
let aux = {u, User, w : Work, s : Source | u -> w in profile and w -> s in source} | all s : Source 
  		| all disj p1, p2 : aux.s | no User.p1.ids
-- div,1
