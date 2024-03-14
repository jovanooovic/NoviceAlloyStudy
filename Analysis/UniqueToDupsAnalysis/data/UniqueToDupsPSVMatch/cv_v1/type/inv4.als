ids
-- div,1
lone (User->Work) in visible
-- div,1
all u:User | (u.visible.ids)
-- div,3
one User.visible in User.profile
-- div,1
all w:Work | one w in Source.visible
-- div,1
all u:User, w:Work | lone w in u.visible
-- div,1
all id:Id,u:User | lone ~(u.visible.ids.id)
-- div,1
all u:User, v:u.visible | one v in u.profile
-- div,1
all u : User, w : Work | one (u.profile.w.id)
-- div,7
all u:User, v:u.visible | one (v in u.profile)
-- div,1
all u:User, w1,w2:Work | lone u->w1 in visible
-- div,1
all u:User | one ids . (u . visible . ids) = Work
-- div,1
all u:User| all v:u.visible | one (v in u.profile)
-- div,1
all u : User, w : u.profile | lone u->w & u.visible
-- div,1
all u:User| all v:u.visible | one (v.^ids in u.profile)
-- div,1
all u: User | none ^((u.visible<:ids).~(u.visible<:ids))
-- div,1
all w1, w2: Work | one User.profile.ids = User.visible.ids
-- div,1
all u:User | all w:(u.visible) | lone w.ids in (u.visible)
-- div,1
all u:User | all w:(u.visible) | lone w.ids in (u.visible).ids
-- div,1
all u:User, w1,w2:Work | w1.visible and w2.visible implies w1!=w2
-- div,1
all u:User, w:Work | w in u.profile implies lone (w in u.visible)
-- div,2
all a,b:Work | a.visible.a = b.visible.b implies a.profile = b.profile
-- div,1
all u : User, w : Work {
    (w in u.profile) implies one (one w.ids)
  }
-- div,1
all u:User, w1,w2:Work | (w1 and w2 in u.visible) implies w1.ids != w2.ids
-- div,1
all u:User, w1,w2:Work | (w1=w2) implies no (w1 in u.visible & w2 in u.visible)
-- div,1
all u:User, w1,w2:Work, i:Id | w1 = w2 implies (w1 in u.visible or w2 in visible)
-- div,1
all w : Work | some (visible.w in User and ~ids.ids in iden and ids.~ids in iden)
-- div,1
all u:User , i:Id, i1:Id | i in u.visible.ids & i1 in u.visible.ids implies i != i1
-- div,1
all u : User | all w1,w2 : Work | w1 in u.profile and w2 in u.profile implies w1 not w2
-- div,1
all u: User, disj w1, w2: u.visible | w1.ids = w2.ids => w1.ids not in u.profile.Work.ids
-- div,1
all u : User, id : u.profile.ids, w1, w2 : Work | w1->id + w2->id in u.visible => w1 = w2
-- div,1
all u : User | some w1,  w2 : Work | some (u<:visible).w1 and (u<:visible).w1 implies w1=w2
-- div,1
all u:User, w1,w2:Work, i:Id | (w1 in u.visible and w2 in u.visible) implies (w1.i != w2.i)
-- div,2
all u : User, w : Work {
    (w in u.profile) implies one (one w.ids.(~ids) & u.profile)
  }
-- div,1
all u:User, w1,w2:Work, i:Id | (w1 in u.visible and w2 in u.visible) implies no (w1.i & w2.i)
-- div,1
all u : User | some w1,  w2 : Work | some (u<:visible).w1 and (u<:visible).w1 implies w1 = w2
-- div,1
all u : User | some w1,  w2 : Work | (some (u<:visible).w1 and (u<:visible).w1) implies w1 = w2
-- div,1
all u: User | no u.visible & same
}

fun same : Work -> Work {
  { disj w1, w2 : Work | w1.ids = w2.ids }
-- div,1
all u : User | all w1, w2: u.profile | (no (w1.ids <: w2.ids) && w1 in u.visible) implies not w2 u.visible
-- div,1
all u : User | all w1, w2 : Work | (w1 != w2 and (w1 + w2) in u.visible) implies no w1.source != w2.source
-- div,1
all u : User | all disj w1, w2: u.profile | (no (w1.ids <: w2.ids) && w1 in u.visible) implies not w2 u.visible
-- div,3
all w1, w2 : Work | all u : User | w1 = w2 and (w1 + w2) in u.profile  implies (w1 in u.visible iff no w2 in u.visible)
-- div,1
all w1, w2 : Work | all u : User |  some (w1.ids & w2.ids)  and (w1 + w2) in u.profile implies no (w1 + w2) in u.visible
-- div,1
all u : User, w1, w2 : Work | ((w1 in (u.profile)) & (w2 in (u.profile)) & (w1.source = w2.source)) implies (w1.ids != w2.ids)
-- div,1
all w1, w2 : Work | all u : User | (w1.ids & w2.ids) and (w1 + w2) in u.visible and (w1 + w2) in u.profile implies w1.source = w2.source
-- div,1
