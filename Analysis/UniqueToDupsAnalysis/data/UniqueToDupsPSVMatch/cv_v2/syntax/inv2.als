User.profile.source in (User + Instituition)
-- div,1
work.source = u or work.source = Institution
-- div,1
Work.source = u or Work.source = Institution
-- div,1
User.profile.sorce in iden:>(User + Institution)
-- div,1
all w : Work | w.source = u or w.source = Institution
-- div,1
all u:User, p:u.profile | p.source in (u+Institution)|
-- div,1
always (all u : User, p : u.profule | p.source in u+Institution)
-- div,1
all u: User | u.profile.source in u + Institution
-- div,2
all u : User | profile.u + some Work implies source in u+Institution
-- div,1
all u : User | u.profile + some Work implies source in u+Institution
-- div,1
all u : User, p : u.profile | w.source = u || w.source in Institution
-- div,1
all u : User , s : u.profile | s.source = u or s.source = one Institution
-- div,1
all u : User, i : Institution, w : u.profile | always( w.source =u or w.source = Institucion)
-- div,1
all u: User | u.profile.source in u or u.profile.source in Institution
-- div,1
