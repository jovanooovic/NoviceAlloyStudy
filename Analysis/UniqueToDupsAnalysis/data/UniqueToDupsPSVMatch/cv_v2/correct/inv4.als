all u:User | all  w :u.profile | lone ((w.^((ids.~ids) :> u.profile)) & u.visible)
-- div,2
all u: User | (u.visible->u.visible) & *((u.profile<:ids).~(u.profile<:ids)) in iden
-- div,1
all u: User | u.visible->u.visible & ^((u.profile<:ids).~(u.profile<:ids)) in iden
-- div,5
all u: User | u.visible<:^((u.profile<:ids).~(u.profile<:ids)):>u.visible in iden
-- div,4
all u: User, disj w1, w2 : u.visible | no w1->w2 & ^((u.profile<:ids).~(u.profile<:ids))
-- div,3
all u: User, w1, w2 : u.visible | (w1->w2) & ^((u.profile<:ids).~(u.profile<:ids)) in iden
-- div,1
all u: User | u.visible<:^((u.profile<:ids).~(u.profile<:ids)).~(u.visible<:^((u.profile<:ids).~(u.profile<:ids))) in iden
-- div,1
