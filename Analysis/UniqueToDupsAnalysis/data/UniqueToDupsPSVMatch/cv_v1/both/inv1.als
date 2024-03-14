some User.visible
-- div,1
Work in User.profile
-- div,2
User.visible = User.profile
-- div,3
all w : Work | some visible.w
-- div,2
Work in User.profile & User.visible
-- div,1
Work in User.profile + User.visible
-- div,1
all w:Work | w.source = visible.w
-- div,1
all w:Work | visible.w = w.source
-- div,2
all w:Work | visible.w in w.source
-- div,2
all w:Work | w.source in visible.w
-- div,1
all u : User | some profile.(u.visible)
-- div,1
some pub: User.visible | pub in User.profile
-- div,1
some w: Work | w in User.visible implies w in User.profile
-- div,1
some w: Work | all u: User| w in u.visible implies w in u.profile
-- div,1
