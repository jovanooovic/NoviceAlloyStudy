profile.~profile in iden + Institution
-- div,1
all u:User| no u.profile.source = u&Institution
-- div,1
all u:User| no u.profile.source in u&Institution
-- div,1
User.profile.source in iden:>(User + Institution)
-- div,1
all u:User| all i:Institution | no u.profile.source = u&i
-- div,1
all u:User| some i:Institution | no u.profile.source = u&i
-- div,1
all u : User, w: Work | u->w implies w->u or w-> Institution
-- div,1
all u:User| some i:Institution | no u.profile.source in u + i
-- div,1
all u:User| some i:Institution | no u.profile.source in u & i
-- div,1
all u : User, w: Work | w.source -> u or w.source -> Institution
-- div,2
all u : User, w : u.profile | w.source = u || some w.source.Institution
-- div,1
all u : User, w: Work | w.source -> u.profile or w.source -> Institution
-- div,1
all w: Work | some u: User | w in u.profile implies w.source in u or Institution
-- div,1
all w: Work | some u: User, s: Source | w in u.profile implies w.source in u or s
-- div,1
