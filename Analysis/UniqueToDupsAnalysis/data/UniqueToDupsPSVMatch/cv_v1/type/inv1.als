Work in User<:profile
-- div,1
some User.visible.Work
-- div,1
all w : Work | visible.w
-- div,1
(User.visible).profile
-- div,1
profile.(User.visible)
-- div,1
all w : Work | source.profile
-- div,1
Work.visible in source.profile
-- div,2
all w:Work | w.source.visible.w
-- div,1
User.visible implies User.profile
-- div,1
all w: Work | visible.w profile.w
-- div,1
visible.Work implies User.profile
-- div,1
profile.source and source.visible
-- div,2
some User.visible in User.profile
-- div,1
User.visible implies profile.User
-- div,1
source.profile and source.visible
-- div,1
some User.profile in User.visible
-- div,1
all u : User |  profile.(u.visible)
-- div,1
all w : Work | some User.(visible.w)
-- div,1
some pub: User.visible | profile.pub
-- div,1
all w : Work | visible.w => profile.w
-- div,1
all u : User | u.visible :> u.profile
-- div,1
no Work in User.profile & User.visible
-- div,1
all w:Work | some visible.w in w.source
-- div,1
all w:Work | visible.w implies w in profile
-- div,1
some w: Work | w in User.visible in User.profile
-- div,1
all w:Work | User.visible:>w and User.profile:>w
-- div,1
profile.source & visible.Work implies User.profile
-- div,1
profile.source and visible.Work implies User.profile
-- div,1
all u:User | u.visible implies u.visible in u.profile
-- div,1
profile.source and source.visible implies User.profile
-- div,2
all w : Work | some (User<:visible).w in (User<:profile).w
-- div,1
all w : Work, u : User | some u.visible[w] => some u.profile[w]
-- div,1
