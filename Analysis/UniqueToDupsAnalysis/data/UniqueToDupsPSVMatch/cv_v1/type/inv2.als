all u:User | profile.u
-- div,1
all w:Work | source.w = w.profile + w.Institution
-- div,1
all u : User | u.profile.Source in u + Institution
-- div,2
all u:User | u.profile implies (u.source in Institution)
-- div,1
all u : User | (u->profile)->source in (u + Institution)
-- div,1
all u : User | u->(profile->source) in (u + Institution)
-- div,1
all u : User | ((u->profile).source) in (Institution & u)
-- div,1
all u : User | ((u->profile).source) in (Institution + u)
-- div,1
all u : User | ((u->profile)->source) in (Institution & u)
-- div,1
all u : User | ((u->profile)->source) in (Institution + u)
-- div,1
all u : User, w : Work | u.profile.w.source in (u + Insitution)
-- div,2
all u : User, w : Work | u->profile.w.source in (u + Institution)
-- div,1
all u : User | some (Work<:source).u or (Work<:source).Institution
-- div,1
all u : User, w : Work | (u->profile).w.source in (u + Institution)
-- div,1
all u:User | u.profile implies (u.source in Institution or u.source in User)
-- div,1
all w:Work,u:User | some u.profile:>w implies (w.source:>u or w.source:>Source)
-- div,1
all u : User | ((u->profile).source = u) or ((u->profile).source in Institution)
-- div,1
all u : User | ((u->profile)->source = u) or ((u->profile)->source = Institution)
-- div,1
all w:Work,u:User | w in u.profile implies (w.source:>u or w.source:>Institution)
-- div,4
all u : User | ((u->profile).source in u) or ((u->profile).source in Institution)
-- div,1
all w:Work,u:User | u->w in profile implies (w.source:>u or w.source:>Institution)
-- div,1
all u : User | ((u->profile)->source = u) or ((u->profile)->source in Institution)
-- div,1
all w:Work,u:User | some u.profile:>w implies (w.source:>u or w.source:>Institution)
-- div,2
all u : User | some (u<:profile).Work in (Work<:source).u & (Work<:source).Institution
-- div,1
all u: User | all w: Work | u.profile implies w.source in u or  w.source in Institution
-- div,1
all u: User | all w: Work | u.profile.w implies w.source in u or  w.source in Institution
-- div,1
all u:User, w:Work |  w in u.profile implies (u in w.source or some Institution in w.source)
-- div,1
all u:User, w:Work | w in u.profile implies (u in w.source or (some Institution in w.source))
-- div,1
all u:User, w:Work | w in u.profile implies (u in w.source) or (some Institution in w.source)
-- div,3
all u : User | some (u<:profile).Work implies some (Work<:source).u  (Work<:source).Institution
-- div,1
all u : User, w : Work | u->w in profile implies (w<:source in User or w<:source in Institution)
-- div,1
all u : User, w : Work | u->w in profile implies (u<:source in User or u<:source in Institution)
-- div,1
all u : User | some w : Work | u->w in profile implies some (w.source).Institution or (w.source).User
-- div,1
all u : User | some w : Work | u->w in profile implies (w->source in Institution or w->source in User)
-- div,1
all u : User | some w : Work | u->w in profile implies some ((w.source).Institution or (w.source).User)
-- div,1
all u : User | some w : Work | u->w in profile implies some (w.source in Institution or w.source in User)
-- div,1
all u : User | some w : Work | u->w in profile implies some ((w<:source).Institution or (w<:source).User)
-- div,1
