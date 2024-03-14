all u :User , v1,v2 : u.visible | v1 != v2
-- div,2
all u : User, id : u.visible.ids | one (id.~ids)
-- div,2
all u :User, v1,v2 : u.visible |  v1.ids not in v2.ids
-- div,1
all u :User, v1,v2 : u.visible | no (v1.ids & v2.ids)
-- div,3
all u : User | ^((u.profile<:ids).~(u.profile<:ids)) in iden
-- div,1
all u : User, w : u.visible | no (u.profile - w).ids & w.ids
-- div,2
all u : User, id : u.visible.ids | one (id.~ids & u.profile)
-- div,2
all u:User | all disj w1,w2 : u.profile | no (w1.ids & w2.ids)
-- div,3
all u:User | all  w :u.profile |one (ids.(w.ids) & u.visible)
-- div,1
all u:User | all  w :u.profile |lone (ids.(w.ids) & u.visible)
-- div,5
all u:User | all w1 :u.profile |lone ( (ids.(w1.^ids)) & u.visible)
-- div,1
all u:User | all  w :u.profile | lone (w.^(ids.~ids) & u.visible)
-- div,6
all u:User, x, y:Work | (x in u.visible and y in u.visible) implies not (x = y)
-- div,1
all u:User | all w1 :u.profile |lone ( w1.^(ids.~ids) & u.visible)
-- div,1
always (all u : User | all disj v1, v2 : u.profile | no (v1.ids & v2.ids))
-- div,1
always (all u : User | all disj v1, v2 : u.profile | (v1 + v2) not in u.visible)
-- div,1
all u : User, w : u.visible | no ((u.visible + u.profile) - w).ids & w.ids
-- div,1
all u:User | all disj w1,w2 : u.(visible + profile) | no (w1.ids & w2.ids)
-- div,1
all u :User, v1,v2 : u.visible |  v1.source = v2.source implies v1.ids not in v2.ids
-- div,2
all u :User, v1,v2 : u.visible | v1.source = v2.source implies no (v1.ids & v2.ids)
-- div,1
all u :User, v1,v2 : u.visible | no (v1.ids & v2.ids) and v1.source != v2.source
-- div,2
all u : User | all disj w1, w2 : (u.profile) {
      	all id : w1.ids | id not in w2.ids
    }
-- div,1
all u:User, x, y:Work | (x in u.visible and y in u.visible) implies not (x.ids = y.ids)
-- div,1
always (all u : User, vis : u.visible, v : (u.profile - vis) | no (vis.ids & v.ids))
-- div,1
all u:User, x, y:Work | (x in u.visible and y in u.visible) implies no (x.ids & y.ids)
-- div,1
all u : User, disj w1, w2 : u.profile | w1 + w2 in u.profile => no w1.ids & w2.ids
-- div,1
all u:User | all  w :u.profile | lone (w.^(ids.~ids) & u.profile) & u.visible
-- div,2
all u:User | all w1,w2 : u.profile | (w1 in u.visible and w2 in u.visible) implies w1=w2
-- div,1
all u : User, disj w1, w2 : u.visible + u.profile | w1 + w2 in u.profile => no w1.ids & w2.ids
-- div,1
all u:User | all disj  w1, w2 :u.profile | some (w1.ids & w2.ids) implies no((w1 + w2)& u.visible)
-- div,1
all u:User, x, y:Work | (x in u.visible and y in u.visible and x.source = y.source) implies no (x.ids & y.ids)
-- div,1
always (all u : User, disj v1, v2 : u.visible, v : u.profile | (no v1.ids & v2.ids) and (v1.ids + v2.ids in v.ids))
-- div,2
always (all u : User | all disj v1, v2 : u.visible | some (v1.ids + v2.ids) implies ((v1.ids + v2.ids) not in u.visible.ids))
-- div,1
all u : User | all disj w1, w2 : (u.profile) {
      	all id : w1.ids | id not in w2.ids
      	all id : w2.ids | id not in w1.ids
    }
-- div,2
always (all u : User, disj v1, v2 : u.visible | (no (v1.ids & v2.ids)) and (all v : (Work - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids))))
-- div,1
always (all u : User, disj v1, v2 : u.profile | (no (v1.ids & v2.ids)) and (all v : (Work - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids))))
-- div,1
always (all u : User, disj v1, v2 : u.visible | (no (v1.ids & v2.ids)) and (all v : (u.profile - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids))))
-- div,1
always (all u : User | all disj v1, v2 : (u.visible & u.profile) | (no (v1.ids & v2.ids)) and all v : (u.profile - v1 - v2) | no (v1.ids + v2.ids) & v.ids)
-- div,1
always (all u : User, disj v1, v2 : (u.visible & u.profile) | (no (v1.ids & v2.ids)) and (all v : (Work - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids))))
-- div,1
always (all u : User | all disj v1, v2 : (u.visible & u.profile) | (no (v1.ids & v2.ids)) and (all v : (Work - v1 - v2) | (no (v1.ids & v.ids)) and (no (v2.ids & v.ids))))
-- div,1
always (all u : User | all disj v1, v2 : (u.visible & u.profile) | (no (v1.ids & v2.ids)) and all v : (u.profile - v1 - v2) | (no v1.ids & v.ids) and (no v2.ids & v.ids))
-- div,2
