User.sees in User.follows.posts + Ad
-- div,1
User.sees - Ad in User.follows.posts
-- div,1
all u : User | sees.u - Ad in u
-- div,1
all x : User - Ad | x not in sees.x
-- div,1
all u : User | sees.u in posts.u
-- div,1
all u1,u2 : User | sees.u1 in posts.u2
-- div,1
all x : User, y : Ad | y not in follows.x
-- div,2
all x : User, y : Ad | y not in x.follows
-- div,1
all u : User | sees.u - Ad in u.follows
-- div,1
all u : User | sees.u - Ad in follows.u
-- div,1
all u : User | sees.u in posts.follows.u
-- div,1
all u : User | sees.u  in u.follows.posts
-- div,1
all x : Photo - Ad, y : User | x not in sees.y
-- div,1
all u : User | posts.(sees.u - Ad) in u.follows
-- div,2
all u: User | sees.u-Ad in u.follows.posts
-- div,9
all u: User | u.sees.posts in u.follows.posts
-- div,1
all u:User | User-u.follows.posts not in u.sees
-- div,1
all p:Photo, u:User | p -> u in sees implies p not in Ad
-- div,1
all u : User, a : Ad | u.sees in u.follows.posts + Ad
-- div,1
all u : User | u.sees in u.follows.posts + Ad + u.posts
-- div,1
all x : User | x.sees in (x.follows.posts + x.posts + Ad)
-- div,2
all x : User | some x.sees-Ad implies some x.follows.posts
-- div,2
all u : User | all p : sees.u | posts.p in follows.u
-- div,1
all p:Photo | all u:User | p -> u in sees implies p not in Ad
-- div,1
all u : User | all p : sees.u - Ad | posts.p in u.follows
-- div,2
all u : User | all p : sees.u - Ad | posts.p in follows.u
-- div,2
all u : User, p : Photo - Ad | lone (sees.p & u.follows.posts)
-- div,1
all u : User | (Photo-Ad) in u.sees implies posts.User in u.follows
-- div,1
all u:User, p:Photo | p in u.sees => p.posts in u.follows
-- div,1
all u: User, p: Photo | (p in u.sees implies u.~posts in u.follows)
-- div,1
all x : User | x.sees in x.follows.posts or x.sees in (Photo + Ad)
-- div,2
all u : User | all p : sees.u | p in posts.follows.u or p in Ad
-- div,2
all u : User | all x : sees.u | x not in Ad => x in follows.u.posts
-- div,2
all u:User, p:Photo | p in Ad implies p not in u.follows.posts or p in Ad
-- div,1
all u : User - Influencer | all p : sees.u - Ad | posts.p in follows.u
-- div,1
all u:User, p:Photo | p in u.sees => p in Ad or p.posts in u.follows
-- div,1
all u: User, p: Photo |
(p in u.sees && p !in Ad) => (p.posts in u.follows)
-- div,1
all u : User, p : Photo | u->p in sees =>
p in Ad || some u.follows.posts
-- div,1
all u: User, p: Photo | (p in u.sees implies u.~posts in u.follows) or p in Ad
-- div,1
all u:User, p:Photo - Ad | some v:User | sees.u in u.follows.posts
-- div,1
all u:User, uf: u.follows, p:Photo | (p in u.sees and p in Ad) implies p not in uf
-- div,2
all x : User | all y : User | all z : Photo | (x not in y.follows) implies (x not in y.sees)
-- div,1
all x : User | all y : User | all z : Photo | (x not in y.follows) implies (x not in z.sees)
-- div,1
all u1,u2:User, p:Photo-Ad | u1 in p.sees and p in u2.posts implies u1 in u2.follows
-- div,1
all x : User | all y : User | all z : Photo | (x -> y not in follows) implies (x -> y not in sees)
-- div,1
all u:User, p:Photo | p in u.sees implies p in u.follows.posts implies (p not in Ad) || p in Ad
-- div,1
all u : User, p : Photo | p in u.sees implies (p in Ad or (some u2 : User | p in u2.posts))
-- div,1
all x : Photo, y : User, z : Ad | x in sees.x iff x in follows.y.posts and z in sees.z
-- div,1
all u1 : User , p : Photo | u1->p in sees implies p in Ad or some u2 : User | u1->u2 in follows
-- div,1
all x : Photo | x not in Ad implies all y,z : User | y->x in posts and z->y in sees implies z->y in follows
-- div,2
all x : User | all y : sees.x | y not in Ad => some u : User | u in follows.x && y in posts.u
-- div,1
all x : User | all y : sees.x | y not in Ad => (some u : User | u in x.follows  && y in posts.u)
-- div,1
all u1: User, u2: User, p: Photo | p in u1.sees and u2 in u2.posts and u2 not in u1.follows implies p in Ad
-- div,1
all p:Photo |all u1,u2:Photo | p in u2.posts and u2 in u1.follows implies p in u1.sees and Ad not in p
-- div,1
all u : User, seenPhotos : u.sees | seenPhotos in Ad || (seenPhotos not in Ad && seenPhotos.posts in u.follows)
-- div,1
all x : User | all y : User | all z : Photo | y->x in follows && z->y in posts => z->x in sees
-- div,1
all u1 : User | all ph : Photo |  some inf : User |
u1 -> ph in sees implies (ph in inf.posts or ph in Ad)
-- div,1
all u : User | all seenPhotos : u.sees | seenPhotos in Ad || seenPhotos not in Ad && seenPhotos.posts in follows.u
-- div,1
all u : User | all seenPhotos : u.sees | seenPhotos in Ad || seenPhotos not in Ad && seenPhotos.posts in u.follows
-- div,2
all x : User | all y : sees.x | y not in Ad => some u : User | (u in follows.x || u = x) && y in posts.u
-- div,3
all ad : Ad - Photo | all user : User | all follow : user.follows | ad in user.sees implies ad in follow.posts
-- div,1
all u : User, p : Photo | some f : User | u->p in sees and f->p in posts and p not in Ad implies u->f in follows or u = f
-- div,2
all u1 : User | all p : Photo | some u2: User | u1->p in sees and p not in Ad and u2->p in posts implies u1->u2 in follows
-- div,3
