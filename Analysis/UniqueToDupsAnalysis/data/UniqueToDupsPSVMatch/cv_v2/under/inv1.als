visible.Work in profile.Work
-- div,1
User.visible in User.profile
-- div,1
all w:Work | w.visible in w.profile
-- div,1
all u:User | User.visible in User.profile
-- div,1
all w : Work | some visible.w implies some profile.w
-- div,1
all w : Work | w in User.visible implies w in User.profile
-- div,2
