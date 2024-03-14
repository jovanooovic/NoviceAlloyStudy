-- equiv pair start,30

-- div,9
Work.source in (User+Institution)
-- div,1
Work.~profile in User + Institution
-- div,1
all w : Work | w.source in Source
-- div,1
all u : User | u.profile in (source.Source)
-- div,1
User.profile in (source.Institution + source.User)
-- div,1
profile.User in profile.User + profile.Institution
-- div,1
profile.User = profile.User.source + profile.Institution.source
-- div,1
all w : Work | source.w = profile.User + profile.Institution
-- div,1
all u : User | Work.(u<:profile) in u.(Work<:source) + Institution.(Work<:source)
-- div,1
all u : User | Work.(u<:profile) in (Work<:source).u + (Work<:source).Institution
-- div,6
all u : User | Work.(u<:profile) in u.(Work<:source) + (Work<:source).Institution
-- div,1
all u : User | Work.(u<:profile) in (Work<:source).u & (Work<:source).Institution
-- div,1
all u:User, w:Work | w in u.profile implies (u.source in Institution or u.source in User)
-- div,1
all u : User, w : Work | u->w in profile implies (w.source in User or w.source in Institution)
-- div,1
all u : User, w : Work | u->w in profile implies (u.source in User or u.source in Institution)
-- div,1
all w:Work,u:User | u->w in profile implies lone (w.source:>u + w.source:>Institution)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | x.profile.source & x.visible.source in Institution + x
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | some (u<:profile).Work implies some (Work<:source).u + (Work<:source).Institution
-- div,1
all u : User | some (u<:profile).Work implies some (Work<:source).u or some (Work<:source).Institution
-- div,1
-- equiv pair end
