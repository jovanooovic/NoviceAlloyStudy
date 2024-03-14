-- equiv pair start,5
all u : User | u.profile.source in u
-- div,1
all u:User , w:Work | (w in u.profile) implies (w.source = u )
-- div,1
all u:User, w:Work | w in u.profile implies u in w.source
-- div,1
all w:Work,u:User | w in u.profile implies u in w.source
-- div,1
all u:User | all w:Work | w in u.profile implies u in w.source
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : User + Institution | some profile.w
-- div,1
-- equiv pair end
-- equiv pair start,14
all u : User | u.profile.ids in u + Institution
-- div,2
all u:User | (u.profile).source in (u&Institution)
-- div,1
all w:Work,u:User | w in u.profile implies u in w.ids
-- div,1
all u : User | (u<:profile).Work in (Work<:source).u + (Work<:source).Institution
-- div,4
all u : User | (u<:profile).Work in (Work<:source).u & (Work<:source).Institution
-- div,1
all u : User | (u<:profile).Work in u.(Work<:source) + Institution.(Work<:source)
-- div,1
all u : User | some (u<:profile).Work implies some u.(Work<:source) & Institution.(Work<:source)
-- div,2
all u : User | some (u<:profile).Work implies some (Work<:source).u & (Work<:source).Institution
-- div,2
-- equiv pair end
-- equiv pair start,1
all w:Work | (w in User.profile) && (User = w.source)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User, s:Source | (s in u.profile & u & Institution)
-- div,1
all u:User, s:Source | (s in u.profile & User & Institution)
-- div,1
-- equiv pair end
-- equiv pair start,2
all w:Work | (w in User.profile) implies (w.source = User )
-- div,1
all w:Work | (w in User.profile) implies (User = w.source)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User, w:(u.profile + u.visible) | w in (u+Institution)
-- div,2
-- equiv pair end
-- equiv pair start,1
all u : User | (u.profile) = (source.u + source.Institution)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | (Work<:source).u in (Work<:source).Institution
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User | Work = profile.u.source + profile.Institution.source
-- div,2
-- equiv pair end
-- equiv pair start,2
all u : User | (u.profile + u.visible).source in (u + Institution)
-- div,1
all x : User | x.profile.source + x.visible.source in Institution + x
-- div,1
-- equiv pair end
-- equiv pair start,2
all u: User | all w: Work | w.source in u or w.source in Institution
-- div,2
-- equiv pair end
-- equiv pair start,1
all u: User | u.profile.source in Institution or u.profile.source in u
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, w:Work | w in u.profile implies ( w.source in Institution)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Work, u:User, p : u + Institution |  w in u.profile implies w.source = p
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User , w:Work | (w in u.profile) implies (w.source = u || w.source = Institution)
-- div,1
-- equiv pair end
-- equiv pair start,8
all u:User,w:Work | some i:Institution | w in u.profile implies (w.source = i or w.source = u)
-- div,1
all u:User , w:Work |some i:Institution| (w in u.profile) implies (w.source = u || w.source = i)
-- div,1
all u:User, w:Work | some i:Institution | w in u.profile implies u in w.source or i in w.source
-- div,1
all u:User, w:Work | some i:Institution | w in u.profile implies (u in w.source or i in w.source)
-- div,5
-- equiv pair end
-- equiv pair start,1
all u:User, w:Work | w in u.profile implies (some i:Institution | u in w.source or i in w.source)
-- div,1
-- equiv pair end
