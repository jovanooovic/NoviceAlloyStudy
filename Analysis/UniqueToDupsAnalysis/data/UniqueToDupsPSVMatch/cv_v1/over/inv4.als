~visible.visible in iden
-- div,3
visible in User -> lone Work
-- div,1
lone (User->Work) & visible
-- div,1
User.visible != User.visible
-- div,2
all id: Id | lone ids :> id
-- div,1
User.visible.ids != User.visible.ids
-- div,1
~(visible.ids).(visible.ids) in (User -> Id)
-- div,1
all u:User | one ids . (u . visible . ids)
-- div,2
all u:User | u.visible.ids != u.visible.ids
-- div,1
all w : Work |  visible.w in User and ids.~ids in iden
-- div,2
all u : User | iden in (u.visible <: ids).~(u.visible <: ids)
-- div,1
all u : User | iden in ~(u.visible <: ids).(u.visible <: ids)
-- div,1
all u : User | all w1, w2 : Work | (w1 + w2) in u.visible implies w1 != w2
-- div,1
all u:User, w1:Work | w1 in u.visible implies no (u.visible.ids & w1.ids)
-- div,1
all u : User | u.visible in Work and ~ids.ids in iden and ids.~ids in iden
-- div,1
all w : Work |  visible.w in User and ~ids.ids in iden and ids.~ids in iden
-- div,2
all u:User, i:Id, w:Work | lone (u.visible & ids.i) and lone (w.ids)
-- div,1
some u : User | u.visible in Work and ~ids.ids in iden and ids.~ids in iden
-- div,2
all w1,w2:Work, u:User | w1 in u.visible and w2 in u.visible implies w1=w2
-- div,1
all u:User, w1,w2:Work | (w1 in u.visible and w2 in u.visible) implies w1!=w2
-- div,2
all u:User, w1,w2:Work | (w1=w2) and (w1 in u.visible) implies w2 not in u.visible
-- div,8
all u:User, w1,w2:Work | (w1=w2) implies (w1 not in u.visible or w2 not in u.visible)
-- div,1
all u:User, w1,w2:Work | u->w1 in visible and u->w2 in visible implies w1!=w2
-- div,2
all u:User, w1,w2:Work | ((w1=w2) implies not ((w1 in u.visible)) and (w2 in u.visible))
-- div,1
all u : User | all w1, w2 : Work | (w1 + w2) in u.visible implies w1.ids != w2.ids
-- div,1
some u : User | u.visible in u.profile and ~ids.ids in iden and ids.~ids in iden
-- div,1
all u: User | no u.visible.same
}

fun same : Work -> Work {
  { disj w1, w2 : Work | some w1.ids & w2.ids }
-- div,1
all u:User , w:Work, w1:Work | w in u.visible && w1 in u.visible implies w != w1
-- div,2
all u : User | all w1,w2 : Work | w1 in u.visible and w2 in u.visible implies w1 != w2
-- div,1
all u:User, w1, w2:Work | (w1 in u.visible and w2 in u.visible) implies w1.ids!=w2.ids
-- div,1
all u:User, w1,w2:Work | ((w1.ids=w2.ids) and (w1 in u.visible)) implies w2 not in u.visible
-- div,1
all u:User, w1,w2:Work | (w1.ids=w2.ids) implies (w1 not in u.visible or w2 not in u.visible)
-- div,1
all u:User, w1,w2:Work | u->w1 in visible and u->w2 in visible implies w1.ids!=w2.ids
-- div,1
all u:User, w1,w2:Work | ((w1.ids=w2.ids) implies not ((w1 in u.visible)) and (w2 in u.visible))
-- div,2
all u:User , i:Id, i1:Id | i in u.visible.ids && i1 in u.visible.ids && i != i1
-- div,1
all u:User, w1,w2:Work | (w1 in u.visible and w2 in u.visible) implies no (w1.ids & w2.ids)
-- div,3
all u:User , i:Id, i1:Id | i in u.visible.ids && i1 in u.visible.ids implies i != i1
-- div,2
all u: User, w1, w2: Work | (some (w1.ids & w2.ids) and w1 in u.visible) implies w2 not in u.visible
-- div,1
all w : Work | some u : User | visible.w in User and ~ids.ids in iden and ids.~ids in iden
-- div,1
all u:User, w1,w2:Work, i:Id | (w1 in u.visible and w2 in u.visible) implies (w1->i != w2->i)
-- div,1
all u: User, w1, w2: Work | ((some id: w1.ids | id in w2.ids) and w1 in u.visible) implies w2 not in u.visible
-- div,1
all u : User | all w1, w2 : Work | (w1 + w2) in u.visible implies (w1.ids != w2.ids and w1.source != w2.source)
-- div,1
all u:User, w1,w2:Work | ((w1.ids in w2.ids or w2.ids in w1.ids) and (w1 in u.visible)) implies w2 not in u.visible
-- div,1
all u:User, w1,w2:Work | (w1.ids=w2.ids and w1.source = w2.source) implies (w1 not in u.visible or w2 not in u.visible)
-- div,1
all w : Work | some u : User | visible.w in User and ~ids.ids in iden and ids.~ids in iden and u.visible in Work
-- div,1
all u:User, w1,w2:Work | (w1 in u.visible and w2 in u.visible) and
  							 (w1.source = w2.source or w1.source != w2.source)
                             implies no (w1.ids & w2.ids)
-- div,2
all u:User, w1,w2:Work | (w1 in u.visible and w2 in u.visible) implies no (w1.ids & w2.ids) and (w1.source = w2.source or w1.source != w2.source)
-- div,2
