Work.visible = Work.profile
-- div,1
profile.User = profile.User
-- div,1
User.visible in User.profile
-- div,15
(User<:visible).Work in (User<:profile).Work
-- div,1
Work.visible in Source.profile
-- div,1
some (User<:visible).Work implies some (User<:profile).Work
-- div,1
all w:Work | w.visible = source.w
-- div,1
all w:Work | w.visible in source.w
-- div,2
all w:Work | w.visible = w.profile
-- div,1
all w:Work | w.visible in w.source
-- div,1
all w : Work.visible | one source.profile
-- div,1
all w : Work | some w.(User<:visible) implies some w.(User<:profile)
-- div,1
all w : Work | some (User<:visible).w implies some (User<:profile).w
-- div,2
all w : Work | w in User.visible => w in User.profile
-- div,3
all w:Work | w in User.visible:>Work implies w in User.profile:>Work
-- div,1
