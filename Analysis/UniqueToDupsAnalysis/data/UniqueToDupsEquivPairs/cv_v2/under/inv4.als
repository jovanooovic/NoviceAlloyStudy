-- equiv pair start,11

-- div,1
all u:User | lone u.profile.visible
-- div,1
all u :User, disj v1,v2 : u.visible | v1 != v2
-- div,2
all u : User, id : u.visible.ids | one ((u.visible.ids) & id)
-- div,1
all w:Work | ((w in User.profile) and (w in User.visible)) implies ( w in User.visible)
-- div,1
always (all u : User | all disj vis : u.visible | no (vis.ids & (u.profile - vis)))
-- div,1
all u : User | all w1 : u.visible | all w2 : (u.visible - w1) {
    	w1 not in w2
    }
-- div,1
all w1,w2:Work | w1 in visible.(User.profile) and w2 in visible.(User.profile) implies w1=w2
-- div,1
all u :User, v1,v2 : u.visible | v1.source = v2.source implies no (v1.visible & v2.visible)
-- div,1
all u : User | all w1 : u.visible | all w2 : (u.visible - w1) {
    	w1 not in w2
      	w2 not in w1
    }
-- div,1
-- equiv pair end
-- equiv pair start,15
(all u : User | all disj v1, v2 : (u.profile & u.visible) | no (v1.ids & v2.ids))
-- div,1
all u : User, disj w1, w2 : u.visible | w1 + w2 in u.profile => no w1.ids & w2.ids
-- div,2
always (all u : User | all disj v1, v2 : (u.profile & u.visible) | no (v1.ids & v2.ids))
-- div,4
all u : User | ^(((u.profile&u.visible)<:ids).~((u.profile&u.visible)<:ids)) in iden
-- div,1
all u:User | all disj  w1, w2 :u.profile | w1+w2 in u.visible  implies no (w1.ids & w2.ids)
-- div,1
all u:User | all disj  w1, w2 :u.profile | some (w1.ids & w2.ids) implies lone((w1 + w2)& u.visible)
-- div,4
always (all u : User | all disj v1, v2 : u.profile | some (v1.ids & v2.ids) implies ((v1 + v2) not in u.visible))
-- div,1
always (all u : User | all disj v1, v2 : (u.visible & u.profile) | (no (v1.ids & v2.ids)) and all v : (u.profile - v1 - v2) | not (v1.ids = v.ids and v2.ids = v.ids))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all u : User | all disj v1, v2 : u.profile | v1.ids = v2.ids implies ((v1 + v2) not in u.visible))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all u : User | all disj v1, v2 : (u.visible & u.profile) | (no (v1.ids & v2.ids)) and all v : (u.profile - v1 - v2) | not (v1.ids in v.ids and v2.ids in v.ids))
-- div,1
-- equiv pair end
