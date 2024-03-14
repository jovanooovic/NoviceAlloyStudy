all u : User |
-- div,1
disj (User.visible)
-- div,1
all u :User, disj v1,v2 : u.visible
-- div,1
all u : User | all disj w1, w2 : (u.visible) | w1.id != w2.id
-- div,1
all u:user | all disj w1,w2 : u.profile | no (w1.ids & w2.ids)
-- div,1
all u:User | all  w :u.profile |lone (ids.(w.ids)) & u.visible)
-- div,1
all u:User | all  w :u.profile |lone (ids^.(w.ids) & u.visible)
-- div,1
always all u : User, disj v1 v2 : u.visible | not v1.id = v2.id
-- div,1
all w1,w2 : User.profile | visible.w1 = visible.s2 implies w1=w2
-- div,1
always all u : User, disj v1 v2 : u.visible | not v1.ids & v2.ids
-- div,1
always all u : User, disj v1 v2 : u.visible | not (v1.ids & v2.ids)
-- div,1
always all u : User, all  disj v1 v2 : u.visible | not v1.id = v2.id
-- div,1
always (all u : User, disj v1 v2 : u.visible | not (v1.ids & v2.ids))
-- div,1
always all u : User | all disj v1 v2 : u.visible | not v1.ids & v2.ids
-- div,1
always (all u : User | all  disj v1 v2 : u.visible | not v1.id = v2.id)
-- div,1
always all u : User | all disj v1 v2 : u.visible | not (v1.ids & v2.ids)
-- div,1
all u :User, v1,v2 : u.visible | no (v1.ids & v2.ids) and v1.source != v2.source)
-- div,1
always (all u : User | all disj v1, v2 : u.visible | implies no (v1.ids & v2.ids))
-- div,1
always (all u : User, vis : u.visible, v : (u.profile - vis)| no (vis.ids & v.ids)
-- div,1
all u: User | (u.visible->u.visible) & ^((u.profile<:ids).~(u.profile<:ids))) in iden
-- div,1
all u:User, x, y:Work | (x in u.visible and y in u.visible) implies not (x.id = y.id)
-- div,1
all w1,w2:Work | w1 in visible.(u.profile) and w2 in visible.(u.profile) implies w1=w2
-- div,1
all u: User, w1, w2 : u.visible | (w1->w2) & ^((u.profile<:ids).~(u.profile<:ids))) in iden
-- div,2
all u: User | all w1, w2 : u.visible | (w1->w2) & ^((u.profile<:ids).~(u.profile<:ids))) in iden
-- div,1
always (all u : User | all disj v1, v2 : u.visible | all v : (u.profile - (v1 + v2) | (no v1.ids & v2.ids) and (v1.ids + v2.ids in v.ids)
-- div,1
always (all u : User | all disj v1, v2 : u.visible | all v : (u.profile - (v1 + v2) | (no v1.ids & v2.ids) and (v1.ids + v2.ids in v.ids))
-- div,1
always (all u : User | all disj v1, v2 : u.visible | all v : (u.profile - v1 - v2)) | (no v1.ids & v2.ids) and (v1.ids + v2.ids in v.ids))
-- div,1
always (all u : User, disj v1, v2 : u.visible | (no (v1.ids & v2.ids)) | all v : (u.profile - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids))
-- div,1
always (all u : User, disj v1, v2 : u.visible | (no (v1.ids & v2.ids)) | all v : (u.profile - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids)))
-- div,1
always (all u : User, disj v1, v2 : u.visible | (no (v1.ids & v2.ids)) and all v : (u.profile - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids))
-- div,1
always (all u : User | all disj v1, v2 : (u.visible & u.profile) | (no (v1.ids & v2.ids)) and all v : (u.profile - v1 - v2) | not (v1.ids = v.ids and v2.ids = v.ids)
-- div,1
always (all u : User | all disj v1, v2 : (u.visible & u.profile) | (no (v1.ids & v2.ids)) and all v : (u.profile - v1 - v2) | (no v1.ids & v.ids) and (no v2.ids & v.ids)
-- div,1
always (all u : User | all disj v1, v2 : (u.vsibile & u.profile) | (no (v1.ids & v2.ids)) and (all v : (Work - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids))))
-- div,1
always (all u : User | all disj v1, v2 : (u.visibile & u.profile) | (no (v1.ids & v2.ids)) and (all v : (Work - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids))))
-- div,1
