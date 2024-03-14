all u : User | u in u.profile.source
-- div,1
all u:User ,i:Institution | u.profile.source = u
-- div,1
all u : User | some (Work<:source).u or some (Work<:source).Institution
-- div,1
all u:User , w:Work | w in u.profile && one w.source
-- div,1
all u:User , w:Work, i:Institution | w in u.profile && (w.source = u)
-- div,1
all u:User ,i:Institution | u.profile.source = u || u.profile.source = i
-- div,1
all w : Work, u : User, i : Institution | w in u.profile implies (w.source = u or w.source = i)
-- div,1
all u:User , w:Work, i:Institution | w in u.profile && w.source = u || w.source = i
-- div,1
all u:User , w:Work, i:Institution | w in u.profile && (w.source = u || w.source = i)
-- div,1
all u:User, w:Work, i:Institution | w in u.profile implies (u in w.source or i in w.source)
-- div,3
all u:User, w:Work, i:Institution | w in u.profile implies u in w.source or i in w.source
-- div,1
all u : User | some w : Work | u->w in profile implies (w.source in Institution or w.source in User)
-- div,1
all u : User| some w : Work | u->w in profile implies (w.source in User or w.source in Institution)
-- div,1
all u : User | some w : Work | u->w in profile implies (Institution in w.source or User in w.source)
-- div,1
all u : User | some w : Work | u->w in profile implies some (w<:source).Institution or some (w<:source).User
-- div,1
all u:User | all i:Institution | all w:Work | w in u.profile implies u in w.source or i in w.source
-- div,1
