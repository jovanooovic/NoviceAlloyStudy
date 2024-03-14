-- equiv pair start,1
sees.Ad in (follows+suggested).posts.Ad
-- div,1
-- equiv pair end
-- equiv pair start,39
all u : User | sees.u in follows.posts.u
-- div,1
all x : User | (x.sees in Ad) implies (x.sees in Ad)
-- div,4
all u : User | posts.u.sees in (u.follows + u.suggested)
-- div,2
all u : User | posts.((u.sees)-Photo) in (u.follows + u.suggested)
-- div,3
all u : User | posts.((u.sees)-Photo) in (u.follows + u.suggested)+{u}
-- div,1
all u : User | sees.u in follows.posts.u or sees.u in suggested.posts.u
-- div,1
all u : User | sees.u in u.follows.posts or sees.u in u.suggested.posts
-- div,1
all u: User, p: Ad | p in u.sees => (p.posts in (u.follows + u.suggested))
-- div,1
all x : User, y : Ad | y in x.sees => y.posts in x.follows + x.suggested
-- div,1
all u: User, a: Ad | (a in u.follows or a in u.suggested) => (u in a.~sees)
-- div,1
all x : User, y : Ad | y in x.sees <: Ad => y.posts in x.follows + x.suggested
-- div,1
all u1,u2, a:Ad | u1->a in sees and u2->a in posts => (u2->u1 in suggested+follows)
-- div,1
all x : User | all y : sees.x | y in follows.x.posts and  y in suggested.x.posts
-- div,1
all u : User, a : Ad | a in u.sees implies a.posts in u.follows or a.posts in u.suggested
-- div,1
all u1,u2, a:Ad | u1->a in sees and u2->a in posts => (u2->u1 in suggested or u2->u1 in follows)
-- div,1
all p : Ad | all u : User | p in sees.u implies p in u.follows.posts or p in u.suggested.posts
-- div,1
all u : User | all ad : Ad | ad in sees.u => (posts.ad in suggested.u || posts.ad in follows.u)
-- div,1
all u : User | all ad : Ad | u in sees.ad => (ad.posts in u.follows || ad.posts in u.suggested)
-- div,1
all p : Ad | all u : User | p in sees.u implies (some x : User | u in follows.x and p in posts.x)
-- div,1
all u : User | all ad : u.sees | all ad_p : ad.posts | ad_p in follows.u || ad_p in suggested.u
-- div,1
all u : User | all ad : u.sees | all ad_p : ad.posts | ad_p in u.follows || ad_p in u.suggested
-- div,1
all u1,u2, a:Ad | u1->a in sees and u2->a in posts and u2!=u1 => (u1->u2 in suggested or u1->u2 in follows)
-- div,1
all u1,u2, a:Ad | u1->a in sees and u2->a in posts and u2!=u1 => (u2->u1 in suggested or u2->u1 in follows)
-- div,1
all p : Ad | all u : User | p in sees.u implies (some x : User | u in follows.x and p in posts.x and x!=u)
-- div,1
all x: User | all p: Photo | p in Ad && x in p.sees => some u: User | (u in x.suggested || u in x.follows) && p in u.posts
-- div,2
all x: User | all p: Photo | p in Ad && x in p.sees => some u: User | (u in x.suggested || u in x.follows) && p in u.posts && x != u
-- div,3
all u : User | all ad : u.sees - Photo | all f : u.follows | all s : u.suggested | ad in f.posts or ad in s.posts and ad not in u.posts
-- div,1
all u : User | all ad : u.sees - Photo | all f : u.follows | all s : u.suggested | ad not in u.posts implies (ad in f.posts or ad in s.posts)
-- div,1
all u : User | all ad : u.sees - Photo | all f : u.follows | all s : u.suggested | ad not in u.posts and (ad in f.posts or ad in s.posts)
-- div,1
all u : User | all ad : u.sees - Photo | all f : u.follows | all s : u.suggested | ad not in u.posts and ad in f.posts or ad in s.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all a : Ad, u : User | a in u.sees implies a in User.posts
-- div,1
-- equiv pair end
-- equiv pair start,4
all x : User | Ad in x.sees implies Ad in ((x.follows).posts + x.suggested.posts )
-- div,1
all u:User, a:Ad | u -> Ad in sees implies (some u1:User | u1 -> a in posts and (u -> u1 in follows or u -> u1 in suggested))
-- div,1
all u:User, a:Ad | u -> Ad in sees implies (some u2:User | u2 -> a in posts and (u -> u2 in follows or u -> u2 in suggested))
-- div,2
-- equiv pair end
-- equiv pair start,4
all u: User, a: Ad | a in u.sees implies (some u2: User | u2 in u.follows or u2 in u.suggested)
-- div,1
all u: User, a: Ad | u->a in sees => (some u1,u2: User | u->u1 in follows or u->u2 in suggested)
-- div,1
all x: User, y: Photo | y in x.sees and y in Ad implies some z: User | z in x.follows or z in x.suggested
-- div,1
all u : User | (all p : Photo | u->p in sees and p in Ad implies ( some u2:User | u->u2 in follows or u->u2 in suggested))
-- div,1
-- equiv pair end
-- equiv pair start,1
all a: Ad | all u: User | a in u.sees implies a in (u.follows.posts + u.suggested.posts + u.posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, a:Ad | u -> Ad in sees implies (some u1:User | u -> u1 in follows or u -> u1 in suggested)
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User, a: Ad | some u1: User| a in u.sees implies a in u1.posts and u1 in u.follows or u1 in u.suggested
-- div,2
all u : User | all a : Ad | u in sees.a implies
( some y : User | a in y.posts and
(y in u.follows ) or
(y in u.suggested)
)
-- div,1
-- equiv pair end
-- equiv pair start,4
all u: User | (all a: u.sees & Ad | (some f: User | a in f.posts implies (f in u.follows or f in u.suggested )))
-- div,1
all a:Ad,u:User | u -> a in sees implies (some p:User | p -> a in posts implies u -> p in follows or u -> p in suggested)
-- div,1
all a:Ad | all u:User | u -> a in sees implies (some p:User | p -> a in posts implies u -> p in follows or u -> p in suggested)
-- div,1
all u : User | all p : Photo | some v : User | p in u.sees and p in Ad and v->p in posts implies v in u.suggested or v in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,5
all p:Photo | all u:User | p in u.sees and p in Ad implies some u2:User | p in u2.posts and u2 in u.suggested or u2 in u.follows
-- div,3
all p:Photo | all u:User | p in u.sees and p in Ad implies some u2:User | p in u2.posts and u2 in u.suggested or u2 in u.follows
all u:User | u not in u.sees
-- div,2
-- equiv pair end
