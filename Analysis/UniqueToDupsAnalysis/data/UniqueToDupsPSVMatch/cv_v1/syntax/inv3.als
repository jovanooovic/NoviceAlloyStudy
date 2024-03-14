all w : Work |
-- div,1
no Work.id = Work.id
-- div,1
all x, y : Work | no x.ids == y.ids
-- div,1
~(profile.ids).(profiles.ids) in iden
-- div,1
all w:User.profile, s:Source | lone w.id
-- div,1
all w:User.profile | some s:Source implies lone w.id
-- div,1
all s: Source, u: User | w: u.profile | w.source = s
-- div,1
all u:USer | all disj w1,w2: u.profile | no (w1.ids & w2.ids)
-- div,1
all s: Source, u: User, w: u.profile | w.source = s | #(w.ids)
-- div,1
all s: Source, u: User | w: u.profile | w.source = s | #(w.ids) = #w
-- div,2
all s: Source, u: User, w: u.profile | w.source = s | #(w.ids) = #(w)
-- div,1
all s: Source, u: User | w: u.profile | w.source = s | #(w.ids) = #(w)
-- div,1
all u:User, w:Work, w1:Work | w,w1 in u.profile implies w.ids != w1.ids
-- div,1
all s1, s2: Source | s1 == s2 implies  s1.profile.Id not in s2.profile.Id
-- div,1
all u: User, w1, w2: u.profile | not w1.ids = w2.ids
-- div,2
all s: Source, u: User, w: u.profile | w.source = s | #(w.source.ids) = #(w)
-- div,1
let s = {u : User, w : Work, s : source | u -> w -> -> s in profile . source}
-- div,1
let s = {u : User, w : Work, s : source | u -> w -> -> s in profile . source} |
-- div,2
let aux = {u, User, w : Work, s : Source | u -> w in profile and w -> s in source}
-- div,1
all u: User, w: Work | w in u.profile => w.ids.isDisjoint[w'.ids | w' in u.profile]
-- div,1
all u: User | all w1, w2: u.profile | not w1.ids = w2.ids
-- div,1
all w:Work, w1:Work | w in User.profile && w1 in User.profile -> no (w.ids & w1.ids)
-- div,1
all u: User, w: Work | w in u.profile implies w.ids.isDisjoint[w'.ids | w' in u.profile]
-- div,1
all u: User, all disj w1, w2: u.profile | w1.source = w2.source implies no w1.ids & w2.ids
-- div,1
all u: User | all disj w1, w2: a.profile | (w1.source = w2.source) implies no (w1.ids & w2.ids)
-- div,1
all w: Work | all disj i1,i2: Id | all disj s1, s2: Source | profile.w and w.s1 and w.i1 implies
-- div,1
all u : User | ~allIds[u].allIds[u] in iden
}

fun allIds(u : User) : set Id {
	u.profile.Work.ids
-- div,1
all u : User | ~allIds[u].allIds[u] in iden
}

fun allIds[u : User] : set Id {
	u.profile.Work.ids
-- div,2
all u : User, some id1, id2 : Id | some u.profile.Work.id1 and u.profile.Work.id2 implies id1 != id2
-- div,2
let aux = {u, User, w : Work, s : Source | u -> w in profile and w -> s in source} | all s : Source |
-- div,1
all id1:Id, w1,w2:Work | (w1 in Source.profile and w2 in Source.profile and id in w1.ids) implies id not in w2.ids
-- div,1
all id1:Id, w1,w2:Work | (w1 in Source.profile and w2 in Source.profile and id in w1.ids) implies id1 not in w2.ids
-- div,1
all w1, w2:Work, u:User | ((w1 in u.profile and w2 in u.profile) and (w1.source = w2.source)) implies no (w.ids & w1.ids)
-- div,1
all u:User | all w:u.profile, w1:u.profile | w.source in Institution and w1.source in Institution and w.source.id != w1.source.id
-- div,1
let aux = {u, User, w : Work, s : Source | u -> w in profile and w -> s in source} | all s : Source | 
  		all disj u1, w1, (u2, w2) : aux.s | no w1.ids & w2.ids
-- div,1
let aux = {u, User, w : Work, s : Source | u -> w in profile and w -> s in source} | all s : Source 
  		| all disj [u1, w1], [u2, w2] : aux.s | no w1.ids & w2.ids
-- div,1
let aux = {u, User, w : Work, s : Source | u -> w in profile and w -> s in source} | all s : Source | 
  		all disj (u1, w1), (u2, w2) : aux.s | no w1.ids & w2.ids
-- div,1
let aux = {u, User, w : Work, s : Source | u -> w in profile and w -> s in source} | all s : Source 
  		| all disj (u1, w1), (u2, w2) : aux.s | no w1.ids & w2.ids
-- div,1
let aux = {u, User, w : Work, s : Source | u -> w in profile and w -> s in source} | all s : Source | 
  		all disj (u1, w1) , (u2, w2) : aux.s | no w1.ids & w2.ids
-- div,1
