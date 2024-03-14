Work.source = User or Work.source = Institution
-- div,1
profile.~profile in iden and User.profile.source in (User + Institution)
-- div,1
all u : User , w : Work, i : Institution | w in u.profile implies (w.source = u or w.source = i)
-- div,1
all w: Work | one u: User | w in u.profile implies w.source in u or w.source in Institution
-- div,1
all w: Work | some u: User | w in u.profile implies w.source in u or w.source in Institution
-- div,1
all u : User, i : Institution, w : u.profile | always( w.source =u or w.source = Institution)
-- div,1
all u : User , w : Work, i : Institution | always(w in u.profile implies (w.source = u or w.source = i))
-- div,1
one u : User | all i : Institution, w : u.profile | always( w.source =u or w.source = Institution)
-- div,1
