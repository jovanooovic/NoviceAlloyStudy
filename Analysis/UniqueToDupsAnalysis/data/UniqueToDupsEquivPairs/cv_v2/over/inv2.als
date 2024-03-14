-- equiv pair start,2
profile.source in iden:>(User + Institution)
-- div,1
all u:User, p:u.profile | p.source in u
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User| u.profile.source = u + Institution
-- div,1
-- equiv pair end
-- equiv pair start,1
profile.~profile in iden and profile.Work in Institution
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Work | w.source = User or w.source = Institution
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User| some i:Institution | u.profile.source = u + i
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | Work.source = u or Work.source = Institution
-- div,1
-- equiv pair end
-- equiv pair start,4
all u : User , s : u.profile | s.source = u or s.source = Institution
-- div,1
all u : User , w : Work | w in u.profile implies (w.source = u or w.source = Institution)
-- div,1
all w : Work , u : User | w in u.profile implies always (w.source = u or w.source = Institution)
-- div,2
-- equiv pair end
-- equiv pair start,3
all u: User | u.profile.source in u or u.profile.source in Institution
-- div,3
-- equiv pair end
