all u : User |
-- div,1
all w:User.profile |
-- div,1
all u:User, w:Worker|
-- div,1
Work.source in (User+Instituition)
-- div,1
User <: profile.source :> User in id
-- div,1
(User <: profile.source :> User) in id
-- div,1
all u: user | u.profile.source in u + Institution
-- div,1
all u: User | u.profile.source in (u + Institution)
-- div,1
all u:User, s:Source | (s in u.profile & U & Institution)
-- div,1
all u : User | u.profile in (source.Instituion + source.u)
-- div,1
all x : x.profile.source & x.visible.source in Institution + x
-- div,1
all u:User, all w:(u.profile) | (w.source) in (u + Institution)
-- div,1
Profile.User = Profile.User.source + Profile.Institution.source
-- div,1
Profile.User = profile.User.source + profile.Institution.source
-- div,1
all u : User, w : Work | u->profile.w.source in (u + Insitution)
-- div,1
all u:User, w:(user.profile + user.visible) | w in (u+Institution)
-- div,1
all u : User | u.profile.source in Institution + u
-- div,1
all u:User, w:(user.profile + user.visible) | w.source in Institution
-- div,1
all u : User , w : u.profile | w.source = u || w.source in Instituition
-- div,1
all u: User | all work : u.profile | no (work.ids - user - Institution)
-- div,1
all w : Work, u : User | w in u.profile => w.source in {u, Institution}
-- div,1
all u:User| all w:(user.profile + user.visible) | w.source in Institution
-- div,1
all u:User, s:Source, w:u.profile | (w.source in Institucion) or (w.source = u)
-- div,1
all u:User , w:Work, i:Intitution | w in u.profile && w.source = u || w.source = i
-- div,1
all u:User , w:Work, i:Intitution | w in u.profile && w.source == u || w.source == i
-- div,1
all u : User | (u<:profile).Work in some (Work<:source).u & (Work<:source).Institution
-- div,1
all u:User, w:Work, i:Institution | w in u.profile implies (u in w.source | i in w.source)
-- div,3
all u:User, w:Work | w in u.profile implies (u in w.source or (some Intitution in w.source))
-- div,1
all u:User, w:Work, i:Institution | w in u.profile implies (u in w.source) | (i in w.source)
-- div,1
all u : User | (u<:profile).Work in some (Work<:source).u  or some (Work<:source).Institution
-- div,1
all u : Use | some w : Work | u->w in profile implies (Institution in w.source or User in w.source)
-- div,1
all w1, w2:Work, u:User, i:Institution | w1, w2 in u.profile implies (u in w1.source and i in w2.source)
-- div,1
all u : User | u.profile.source in Institution + u
}


aux = {u, User, w : Work, s : Source | u -> w in profile and w -> s in source
-- div,2
all u : User | u.profile.source in Institution + u
}


aux = {u, User -> w : Work -> s : Source | u -> w in profile and w -> s in source
-- div,1
