all disj w:Work | w in profile
-- div,1
all u:User, p: u.profile | lone p in u.visible
-- div,2
all u : User, id : u.visible.ids | one ((u.visible.ids).id)
-- div,1
all u : User, id : u.visible.ids | one (id.~(u.visible.ids))
-- div,1
all u:User | all  w :u.profile |   (w.^(ids.~ids) & u.visible)
-- div,1
all u:User | all  w :u.profile |lone (ids.^(w.ids) & u.visible)
-- div,1
always (all u : User | all disj v1, v2 : u.visible | not (v1.ids & v2.ids))
-- div,1
all u : User | ^((u.profile&u.visible<:ids).~(u.profile&u.visible<:ids)) in iden
-- div,1
all w:Work | (w in User.profile & w in User.visible) implies (one w in User.visible)
-- div,1
all u :User, v1,v2 : u.visible | no (v1.ids & v2.ids) and no (v1.source = v2.source)
-- div,1
all w:Work | ((w in User.profile) & (w in User.visible)) implies ( w in User.visible)
-- div,1
all w:Work | (w in User.profile and w in User.visible) implies (one w in User.visible)
-- div,1
all w:Work | ((w in User.profile) & (w in User.visible)) implies (one w in User.visible)
-- div,1
all u:User | all  w :u.profile |  lone ((w.^(ids.~ids) & u.visible).ids :> (w.^(ids.~ids) & u.visible).ids ) & iden
-- div,1
all u:User | all  w :u.profile |  lone ((w.^(ids.~ids) & u.visible).ids :> (w.^(ids.~ids) & u.visible).ids  in iden )
-- div,1
always (all u : User | all disj v1, v2 : (u.visible & u.profile) | (no (v1.ids & v2.ids)) and all v : (u.profile - v1 - v2) | not (v1.ids & v.ids or v2.ids & v.ids))
-- div,1
always (all u : User | all disj v1, v2 : (u.visible & u.profile) | (no (v1.ids = v2.ids)) and all v : (u.profile - v1 - v2) | (no v1.ids & v.ids) and (no v2.ids & v.ids))
-- div,1
