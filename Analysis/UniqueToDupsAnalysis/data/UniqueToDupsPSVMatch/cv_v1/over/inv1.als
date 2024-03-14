no User
-- div,1
User.visible in User.profile & User
-- div,2
all w1, w2 : Work | w1->w2 in profile
-- div,1
all w:Work | w.visible = w.source
-- div,3
all u:User | u.visible=u.profile
-- div,3
all w:Work | visible.w = profile.w
-- div,2
all w: User.visible | w in profile.w
-- div,1
all w: Work | visible.w in User.profile
-- div,1
all u : User, w : Work | u->w in profile
-- div,1
all w : Work | some (User<:visible).w implies some w.(User<:profile)
-- div,4
all w1, w2 : Work | w1->w2 in visible and w1->w2 in profile
-- div,1
all w : Work, u : User | w in u.visible => u in u.profile
-- div,1
all u : User, w : Work | u->w in visible and u->w in profile
-- div,2
