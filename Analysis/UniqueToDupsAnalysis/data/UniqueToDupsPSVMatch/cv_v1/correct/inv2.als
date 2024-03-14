(profile.source :> User) in iden
-- div,1
(User <: profile.source :> User) in iden
-- div,1
all u:User | u.profile.source in u+Institution
-- div,16
all x : User | x.profile.source in Institution + x
-- div,2
all u:User | u.profile.source in (Institution+u)
-- div,11
all u : User | u.profile in (source.Institution + source.u)
-- div,1
all u : User | (u.profile) in (source.u + source.Institution)
-- div,3
all u:User | all w:(u.profile) | (w.source) in (u + Institution)
-- div,1
all u: User, w: u.profile | w.source = u or w.source in Institution
-- div,2
all u : User, w : Work | w in u.profile => w.source in Institution + u
-- div,1
all u:User | all w:u.profile | w.source = u or w.source in Institution
-- div,1
all u : User | all w : u.profile | w.source in u or w.source in Institution
-- div,1
all u:User, s:Source, w:u.profile | (w.source in Institution) or (w.source = u)
-- div,1
all u:User, w:Work | w in u.profile implies (u in w.source or w.source in Institution)
-- div,1
all w:Work,u:User | w in u.profile implies u in w.source or w.source in Institution
-- div,1
all w:Work,u:User | w in u.profile implies (u in w.source or w.source in Institution)
-- div,1
all w:Work,u:User | u->w in profile implies one (w.source:>u + w.source:>Institution)
-- div,1
all u : User | all w : Work | (w in u.profile) implies (w.source=u or w.source in Institution)
-- div,1
all u:User, w:Work | w in u.profile implies (u in w.source or some i:Institution | i in w.source)
-- div,3
