Profile.ids in User -> lone Id
-- div,1
~(visible.ids) in Id -> lone User and
-- div,1
all u.User, i:Id | lone (u.visible & ids.i)
-- div,1
all p: Profile | (p.~visible).(~(p.~visible)) in iden
-- div,1
all u : User, w: Work | w in u.visible implies lone w.ids )
-- div,1
all u : User, w: Work | w in u.profile implies lone u.visible )
-- div,1
all u : User | all disj w1, w2: u.profile | no(w1.ids & w2.ids)
-- div,1
some ID
  all u: User, disj w1, w2: u.visible | no w1.ids & w2.ids
-- div,1
all u:User, i:Id, w:Work | lone (u.visible & ids.i) & lone (w.ids)
-- div,1
all u:User, w1:Work | w1 in u.visible implies no (u.visible.ids & w.ids)
-- div,1
all u: User| ((source.s & u.profile)<:ids).~((source.s & u.profile)<:ids) in iden
-- div,1
all u: User, w1, w2: Work | w1 = w2 && w1 in u.visible) implies w2 not in u.visible
-- div,1
all u: User, w1, w2: Work | (w1 = w2 && w1 in u.visible) implies w2 not in u.visible
-- div,1
all u: User, w1, w2: Work |  w1 = w2 && w1 in u.visible) implies w2 not in u.visible
-- div,1
all u : User, w1, w2 : Work | u.profile & visible.w1 & not visible.w2 implies w1 = w2
-- div,2
all u:User, w1,w2:Work | w1 in u.visible and w2 in u.visilbe implies w1.ids != w2.ids
-- div,1
all w : Work, u : User |  ~(visible.((u.profile)<:ids).(visible.((u.profile)<:ids) in iden
-- div,1
all w : Work, u : User |  ~(visible.((u.profile)<:ids).(visible.((u.profile)<:ids)) in iden
-- div,1
all u: User, all disj w1, w2: u.profile | some (w1.ids & w2.ids) => no (w1.ids & w2.ids & User.visible)
-- div,1
all u : User | all w1, w2: u.profile | (no (w1.ids <: w2.ids) && w1 in u.visible) implies not w2 u.visible
-- div,1
all u: User, w1, w2: Work | ((some id: w1.ids | id in w2.ids) and w1 in u.visible) implies w2 not in u.visible
-- div,1
all u : User, w1, w2 : Work | w1 != w2 and (w1 + w2) in u.visible and (w1.source != w2.source) implies w1.ids != w2.ids)
-- div,1
all w1, w2 : Work | all u : User | w1.ids == w2.ids and (w1 + w2) in u.visible and (w1 + w2) in u.profile implies w1.source = w2.source
-- div,1
all w1, w2 : Work | all u : User | (w1.ids & w2.ids) and (w1 + w2) in u.visible and (w1 + w2) in u.profile )implies w1.source = w2.source
-- div,1
all u: User, disj w1, w2 : u.profile | (some (w1.ids & w2.ids) && (w1.source != w2.souce) )implies not (w1 in u.visible && w2 in u.visible)
-- div,1
