all u : User | u
-- div,1
all p: Ad | posts.p
-- div,1
all p:Photo | posts.p
-- div,1
posts :> Ad = posts.Ad
-- div,1
all u : User | u.posts
-- div,3
all u:User | u.posts.Ad
-- div,1
(posts :> Ad) = posts.Ad
-- div,1
some u:User| u.posts & Ad
-- div,1
all p: Photo&Ad | posts.p
-- div,1
all u : User | u.posts.Ad
-- div,2
all u : User | u.posts&Ad
-- div,1
all u:User, a:Ad | u.posts
-- div,1
all u : User | Ad & u.posts
-- div,2
all u : User | u.posts & Ad
-- div,1
all x : User | x.posts is Ad
-- div,1
all u: User | some u.posts.Ad
-- div,1
all u:User, a:Ad| u.posts & a
-- div,1
all u : User | u.posts Ad & Ad
-- div,1
all u : User | some u.posts.Ad
-- div,1
all x : Ad | Ad(x.posts.posts)
-- div,1
all u : User | u.posts.Ad in Ad
-- div,1
all x : Ad | x.posts.posts € Ad
-- div,1
all u:User, a:Ad| (u.posts & a)
-- div,1
all u:User, a:Ad| u.posts.a in a
-- div,1
all x : User | one x.posts in Ad
-- div,4
all x : Ad | x.posts.posts is Ad
-- div,1
all u: User | some u.posts in Ad
-- div,3
all x : Ad | x.posts.posts -> Ad
-- div,1
all x : User | some x.posts in Ad
-- div,3
all u : User | u.posts.Ad in univ
-- div,1
all u : User | some u.posts in Ad
-- div,2
all u:User,a:Ad|u.posts -> a.posts
-- div,1
all u: User | some (u.posts in Ad)
-- div,1
all x : User | (one x.posts) in Ad
-- div,1
(posts in Ad) or (posts in Photo-Ad)
-- div,1
no (posts.Ad and posts.(Photo - Ad))
-- div,1
all u:User,a:Ad | u.posts -> a.posts
-- div,1
all u: User | no u.posts in Photo-Ad
-- div,1
all u: User, a: Ad, p: Photo | one p.a
-- div,1
all u: User, a: Ad, p: Photo | one u.a
-- div,1
all a: Ad, u: User | some a in u.posts
-- div,3
all u : User | u.posts & (u.posts & Ad)
-- div,1
all u: User, a: Ad, p: Photo | one u.p=a
-- div,1
all u:User, a:Ad| (u.posts & a) in posts
-- div,1
all u : User, a : Ad | some u.posts in a
-- div,1
all u:User, a: Ad | a in u.posts implies a
-- div,1
all u:User | all p:Photo | p.posts in p.Ad
-- div,1
all u: User | all ad: Ad | some u.posts.ad
-- div,1
all x : Day | some p : Photo | x is p.date
-- div,1
all u: User, a: Ad, p: Photo | one u.Photo
-- div,3
all u: User, a: Ad, p: Photo | one Photo=a
-- div,1
all u:User | u.posts.Ad implies u.posts.Ads
-- div,1
all u:User | (u.posts & Ad) -> u.posts = Ad
-- div,1
all u: User | all p: Photo | some u.posts.p
-- div,1
all x : User | all y : Ad | one x.posts = y
-- div,1
all u: User | u.posts in Ad implies u.posts
-- div,1
all p:Photo|all a:Ad| p in a implies posts.p
-- div,1
all x : User | x.posts in (Photo - Ad) or Ad
-- div,1
all u : User | u.posts in Ad or u.posts & Ad
-- div,1
all x : User | x.posts in Ad -> x.posts = Ad
-- div,1
all u: User, a: Ad, p: Photo | one u.posts.a
-- div,1
all u : User | u.posts implies u.posts in Ad
-- div,1
all u:User | (u.posts & Ad) -> u.posts in Ad
-- div,1
all u:User | all p:Photo | u.posts.p in p.Ad
-- div,3
all u: User, a: Ad, p: Photo | one u.posts=a
-- div,1
all u: User, a: Ad, p: Photo | one u.Photo=a
-- div,1
all u: User | all ad: Ad | some u.posts in Ad
-- div,1
some u : User | u.posts implies u.posts in Ad
-- div,1
all u: User, a: Ad, p: Photo | one u.posts =a
-- div,1
all u:User | (u.posts & Ad) -> (u.posts = Ad)
-- div,1
all x : User | x.posts in Ad -> x.posts in Ad
-- div,1
all u: User, a: Ad, p: Photo | one u. Photo=a
-- div,1
all u : User | (u.posts - Ad) + (u.posts - Ad)
-- div,1
all u:User | (u.posts & Ad) -> (u.posts -> Ad)
-- div,1
all u:User| one u.posts in Ad => u.posts in Ad
-- div,3
all u: User, a: Ad, p: Photo | one u.posts = a
-- div,2
all x :  User | all y : Ad | x.posts implies y
-- div,1
all u: User, a: Ad, p: Photo | one u.posts  =a
-- div,1
some a: Ad| posts.a implies all p: Ad| posts.p
-- div,1
all u : User | u.posts+Ad implies u.posts in Ad
-- div,1
all u:User | one u.posts in Ad => u.posts in Ad
-- div,1
all u : User | u.posts&Ad implies u.posts in Ad
-- div,1
all u:User | u.posts & Ad implies u.posts in Ad
-- div,3
all u:User | some u.posts in Ad => u.posts in Ad
-- div,1
all u:User | some Ad in u.posts => u.posts in Ad
-- div,1
all u:User, a:Ad | a in u.posts -> u.posts in Ad
-- div,2
all u:User, p:Ad | u->p in posts implies posts.p
-- div,1
all x : Day | all p : Photo | #(x in p.date) = 1
-- div,1
all u : User | u.posts in Ad or not u.posts & Ad
-- div,1
some a: Ad| posts.a implies (all p: Ad| posts.p)
-- div,1
all u : User | u.posts & Ad implies u.posts in Ad
-- div,3
all u : User | (u.posts & Ad) + (no u.posts & Ad)
-- div,1
all u : User | one u.posts in Ad => u.posts in Ad
-- div,3
all u:User| one u.posts in Ad implies u.posts= Ad
-- div,2
all u : User | u.posts in Ad or none u.posts - Ad
-- div,1
all u : User | (u.posts - Ad) + (no u.posts - Ad)
-- div,2
all u : User | one Ad in u.posts => u.posts in Ad
-- div,1
all u : User | u.posts in Ad or no u.posts and Ad
-- div,1
all u: User | some u.posts in Ad => u.posts in Ad
-- div,1
all x : User | one x.posts in Ad => x.posts in Ad
-- div,1
all u:User | (u.posts & Ad) implies u.posts in Ad
-- div,2
all u:User | (u.posts & Ad) implies u.posts -> Ad
-- div,2
all u : User | u.posts in Ad or not u.posts and Ad
-- div,1
all ad : Ad , user : User | ad in user.posts in Ad
-- div,1
all u:User, a: Ad | a in u.posts implies u.posts.a
-- div,1
all x : User | x.posts in Ad implies posts(x) = Ad
-- div,1
all u: User | no u.posts&Ad and u.posts&(Photo-Ad)
-- div,1
all u : User | (u.posts - Ad) or (no u.posts - Ad)
-- div,1
all u:User | some p:Photo | no p in (u.posts - Ad)
-- div,1
all u : User |  u.posts & Ad implies u.posts in Ad
-- div,1
all u : User | some u.posts in Ad => u.posts in Ad
-- div,1
all u : User | some u.posts in Ad iff u.posts in Ad
-- div,3
all u:User | some u.posts & Ad implies u.posts + Ad
-- div,2
all u:User, p:Photo | u->p in posts implies posts.p
-- div,1
all x: User | (some x.posts in Ad => x.posts in Ad)
-- div,1
all u : User, a: Ad | a in u.posts -> u.posts in Ad
-- div,1
all u : User, y : Photo | y in u.Ad implies y in Ad
-- div,1
all u : User | all a : Ad | a in u.posts implies Ad
-- div,1
all u:User | some u.posts & Ad implies u.posts & Ad
-- div,2
all u:User| some u.posts & Ad implies(u.posts & Ad)
-- div,1
all u : User | u.posts&Ad implies u.posts-Ad = none
-- div,1
all u: User | some u.posts.Ad implies u.posts in Ad
-- div,1
all u : User | Ad & u.posts implies no u.posts - Ad
-- div,3
all x: User | (some x.posts in Ad) => x.posts in Ad
-- div,1
all u : User | lone u.posts.Ad implies u.posts in Ad
-- div,1
all u : User | all p : Photo | u.posts.p and p in Ad
-- div,2
all u:User | some p:Photo | none p in (u.posts - Ad)
-- div,1
all u:User | some u.posts = Ad implies u.posts in Ad
-- div,1
all u: User | some u.posts in Ad => none u.post - Ad
-- div,1
all u:User | one Ad in u.posts implies u.posts in Ad
-- div,1
all u : User | Ad in u.posts -> Photo not in u.posts
-- div,1
all x : User | some x.posts.Ad implies no x.posts-Ad
-- div,2
some u : User | (u.posts & Ad) implies u.posts in Ad
-- div,1
all u : User | some u.posts.Ad implies u.posts in Ad
-- div,1
all u:User | u.posts.Ad implies all p:Photo | p in Ad
-- div,1
all u: User, d: Ad | d in u.posts > 0 => u.posts in d
-- div,1
all u:User | some u.posts in Ad implies u.posts in Ad
-- div,8
all u:User | some Ad in u.posts implies u.posts in Ad
-- div,1
all u:User | some Ad && u.posts implies u.posts in Ad
-- div,2
all u : User | some u.posts & Ad implies u.posts + Ad
-- div,1
all u:User | u.posts.Ad implies all p:Photo | p is Ad
-- div,1
all x : User | some x.posts & Ad implies x.posts & Ad
-- div,1
all u : User | some (Ad&u.posts) => none (u.posts-Ad)
-- div,1
all u:User| some (u.posts & Ad) implies(u.posts & Ad)
-- div,1
all u:User | some u.posts && Ad implies u.posts in Ad
-- div,2
all u: User | one u.posts in Ad implies u.posts in Ad
-- div,1
all x: User | (some (x.posts in Ad)) => x.posts in Ad
-- div,5
all u : User | some u.posts & Ad implies u.posts & Ad
-- div,1
all u:User | some p:u.posts | p in Ad -> u.posts in Ad
-- div,1
all u : User | one u.posts in Ad implies u.posts in Ad
-- div,3
all u: User | lone u.posts in Ad implies u.posts in Ad
-- div,1
all u: User | some u.posts in Ad implies u.posts in Ad
-- div,3
all x : User | (some x.posts in Ad -> (x.posts in Ad))
-- div,1
all u: User | some u.posts in ad implies u.posts in ad
-- div,1
all x : User | some x.posts.Ad implies x.posts-Ad=none
-- div,1
all u: User | one Ad in u.posts => no Photo in u.posts
-- div,1
all u: User | u.posts&Ad implies no u.posts&(Photo-Ad)
-- div,1
all u : User | u.posts in Photo-Ad or no u.posts in Ad
-- div,2
all u: User | some u.posts && Ad implies u.posts in Ad
-- div,1
all u : User | some u.posts in Ad implies u.post in Ad
-- div,1
all u : User | (some u.posts.Ad) implies u.posts in Ad
-- div,4
all x : User | (some x.posts in Ad) -> (x.posts in Ad)
-- div,2
all u: User | Ad in u.posts implies no Photo in u.posts
-- div,1
all u : User | some u.posts in Ad implies u.posts in Ad
-- div,8
all x : User | all y : Ad | x.posts = y  -> x.posts = y
-- div,1
all u: User | some u.posts in Ad implies no u.post - Ad
-- div,1
some u : User | one u.posts in Ad implies u.posts in Ad
-- div,1
all x : User | some x.posts in Ad implies no x.posts-Ad
-- div,1
all u:User| (some u.posts in Ad) implies(no u.posts-Ad)
-- div,1
all u:User | all p:u.posts | all x:p.Ad | u.posts in Ad
-- div,1
all u:User | (some Ad in u.posts) implies u.posts in Ad
-- div,1
all u:User| (some u.posts) in Ad implies(no u.posts-Ad)
-- div,1
all u:User | some (u.posts in Ad) implies u.posts in Ad
-- div,4
all u : User | Ad in u.posts implies u.posts.Photo in Ad
-- div,5
all u: User | some u.posts&Ad implies u.posts&(Photo-Ad)
-- div,1
all u : User | (one u.posts in Ad) implies u.posts in Ad
-- div,1
all u: User | some u.posts & Ad implies no u.posts in Ad
-- div,1
all u: User | some u.posts&Ad implies u.posts-(Photo-Ad)
-- div,1
all x:univ | x in Ad implies posts.Photo and Photo is Ad
-- div,1
all u: User | all p : u.posts | some p in Ad iff p in Ad
-- div,1
all u:User| u.posts in Ad implies all x:User| x.posts.Ad
-- div,1
all u : User | (some u.posts) in Ad implies u.posts in Ad
-- div,1
all u: User | some u.posts in Ad implies none u.post - Ad
-- div,2
all x : User | some x.posts in Ad implies x.posts-Ad=none
-- div,1
all u:User | u.posts&Ad in iden implies u.posts-Ad = none
-- div,1
all u : User, y : Photo | y in u.posts.Ad implies y in Ad
-- div,1
all x:User | (lone Ad in x.posts) implies (x.posts in Ad)
-- div,1
all u:User | (some Ad in u.posts) implies (u.posts in Ad)
-- div,1
all u: User, d: Ad | #(u in d.~posts) > 0 => u.posts in d
-- div,1
all u : User | (some u.posts in Ad) implies u.posts in Ad
-- div,4
all u:User | (some u.posts in Ad) implies (u.posts in Ad)
-- div,16
all x : User | some x.posts in Ad implies (x.posts in Ad)
-- div,1
all u: User | one a: Ad | one u.posts = a => u.posts in Ad
-- div,1
all x : User | some y : Ad | y in x.posts -> x.posts in Ad
-- div,2
all u : User | (some u.posts.Ad) implies (no (u.posts)-Ad)
-- div,2
all u : User | (no iden & posts - Ad) or (no u.posts - Ad)
-- div,1
all u:User | some (u.posts-(not Ad)) implies u.posts in Ad
-- div,1
all u : User | (u.posts in Photo-Ad) or (no u.posts in Ad)
-- div,1
all u : User | (one u.posts in Ad) implies (u.posts in Ad)
-- div,2
all u : User | some (u.posts & Ad) implies none u.posts-Ad
-- div,1
all u:User| one u.posts in Ad implies u.follows.sees in Ad
-- div,1
all u : User, p : Photo | u.posts.p in Ad => u.posts in Ad
-- div,1
all u: User, a: Ad, p: Photo | u.posts = a => no u.posts=p
-- div,2
all x :User | (some x.posts in Ad) implies (x.posts in Ad)
-- div,1
all x : User | one a : x.posts | a in Ad  -> x.posts in Ad
-- div,1
all u: User, a: Ad, p: Photo | u.posts = a => no(u.posts=p)
-- div,1
all u: User | some u.posts & Ad implies no Photo in x.posts
-- div,1
all u: User, a: Ad | a in u.posts => no Photo-Ad in u.posts
-- div,1
all x : User | (one x.posts in Ad) implies ( x.posts in Ad)
-- div,1
all u : User , a : Ad | one u.posts.a implies u.posts in Ad
-- div,1
some u : User |  (some u.posts in Ad) implies u.posts in Ad
-- div,1
all u:User | u.posts.Ad implies u.posts.photo in u.posts.Ad
-- div,1
some u : User |  ((one u.posts )& Ad) implies u.posts in Ad
-- div,1
all x : User | some y : Photo | y->x in Ad -> x.posts in Ad
-- div,1
all x : User | all y : Ad | one x.posts = y  -> x.posts = y
-- div,1
all u : User | (some (u.posts in Ad)) implies u.posts in Ad
-- div,1
some u:User| one u.posts in Ad implies u.follows.sees in Ad
-- div,1
all u : User , a : Ad | one a.posts.u implies u.posts in Ad
-- div,1
all u: User | (u.posts in Ad) implies (no u.posts in Photo)
-- div,1
all u : User | u.posts = (u.posts - Ad) or none u.posts - Ad
-- div,1
all u : User | all p : Photo | some p in u.posts and p in Ad
-- div,1
all x : User | some y : Ad | (y in x.posts) -> x.posts in Ad
-- div,1
all u:User, ad:Ad | some u.posts in Ad implies u.posts in Ad
-- div,1
all u:User, ad:Ad | some u.posts in ad implies u.posts in ad
-- div,4
all u : User | some (u.posts & Ad) implies none (u.posts-Ad)
-- div,1
all u: User | all p : u.posts | (some p in Ad) iff (p in Ad)
-- div,1
all x : User | all p : x.posts |( p in Ad) iff (one p in Ad)
-- div,1
all u : User | one u.posts in Ad and no (u.posts & Photo-Ad)
-- div,1
all u: User | one a: Ad | one (u.posts = a) => u.posts in Ad
-- div,1
all u: User, a: Ad, p: Photo | u.posts = a => no(u.posts = p)
-- div,1
all x : User |  all y : x.posts | one y in Ad implies y in Ad
-- div,1
all u : User | all p : u.posts | p in Ad implies some p in Ad
-- div,1
all u: User, a: Ad, p: Photo | one u.posts = a =>   u.posts=a
-- div,1
all x : User | all p : x.posts |( p in Ad) iff (some p in Ad)
-- div,1
all u:User | some a:Ad | (Ad & u.posts) implies u.posts in Ad
-- div,1
all u : User | some u.posts in Ad => all p : u.posts | p in Ad
-- div,2
all x : User | some y : Ad | (y in x.posts) -> (x.posts in Ad)
-- div,2
all x : User | some x.posts in Ad => all y : x.posts | y in Ad
-- div,1
all u: User, a: Ad, p = Photo | u.posts = a => no(u.posts = p)
-- div,1
all x : User | some y : Photo | (x.y in Ad -> (x.posts in Ad))
-- div,1
all x : User | (some y : x.posts | y in Ad) -> (x.posts in Ad)
-- div,3
all u: User, a: Ad, p : Photo | u.posts = a => no(u.posts = p)
-- div,1
all u : User | one a : Ad | a in u.posts implies u.posts is Ad
-- div,2
all u : User | some Ad in u.posts => all p : u.posts | p in Ad
-- div,1
all x:User | one y:x.posts | all z:x.posts | y in Ad implies z
-- div,1
all u:User | all p:u.posts | some u.posts in Ad implies p in Ad
-- div,1
all u: User | one Ad in u.posts implies u.posts not in Photo-Ad
-- div,2
all u : User | one u.posts in Ad implies no u.posts in Photo-Ad
-- div,2
all u:User| one u.posts in Ad implies all x:User| x.posts in Ad
-- div,1
all u : User | one a : Ad | u -> a in posts  implies u.posts Ad
-- div,1
all u : User | one u.posts in Ad => (all p : u.posts | p in Ad)
-- div,1
all x : User | some y : Photo | (y->x in Ad -> (x.posts in Ad))
-- div,2
all x:univ and p in Photo | x in Ad implies posts.p and p is Ad
-- div,1
all u:User | all ad:Ad | u->ad in u.posts implies u.posts in Ad
-- div,1
all u : User | (some u.posts in Ad) => all p : u.posts | p in Ad
-- div,1
all u : User | one u.posts in Ad implies no (u.posts & Photo-Ad)
-- div,1
all x : User | one x.posts in Ad => ( all p : x.posts | p in Ad)
-- div,2
all x : User | one x.posts in Ad => (all y : x.posts | y in Add)
-- div,1
all x : User | one a : x.posts | a iff Ad  implies x.posts in Ad
-- div,1
all u: User | all p : u.posts | (some p in Ad) implies (p in Ad)
-- div,1
all u : User | one a : Ad | u -> a in posts implies u.posts & Ad
-- div,1
all x : User | some y : Ad | ((y in x.posts) -> (x.posts in Ad))
-- div,1
all u:User | all ad:Ad | u->ad in u.posts implies u.^posts in Ad
-- div,1
all x : User | all y : Ad | one x.posts = y  implies x.posts = y
-- div,1
all u:User | some a:Ad | some (u.posts.Ad) implies u.posts in Ad
-- div,1
all p : Photo | all u : User | all ad : Ad |
(some ad in u.posts)
-- div,1
all u:User,p:Ad,r:Photo | u.posts implies u.posts implies r in Ad
-- div,1
all x : User | some x.posts in Ad => (all y : x.posts | y in Add)
-- div,1
all u: User | all a : Ad | one a in u.posts implies u.posts in Ad
-- div,1
all u:User | u.posts.Photo.Ad implies u.posts.photo in u.posts.Ad
-- div,1
all u : User | one u.posts in Ad implies (no u.posts in Photo-Ad)
-- div,1
all x : User | one x.posts in Ad and ( all p : x.posts | p in Ad)
-- div,1
all x : User | some a : Ad | a in x.posts implies none x.posts-Ad
-- div,1
all x : User | some y : Photo | ((y->x in Ad) -> (x.posts in Ad))
-- div,1
all x : User | x.posts in Ad-> all y : Photo | y in x.posts in Ad
-- div,1
all u:User, a:Ad,p:Photo-Ad | a in u.posts implies u.posts none p
-- div,1
all u : User | one a : Ad | a in u.posts implies no u.posts.Photo
-- div,1
all u : User | (some u.posts in Ad) => (all p : u.posts | p in Ad)
-- div,1
all u: User, a: Ad, p: Photo | one u.posts = a =>  no (u.posts= p)
-- div,1
all x : User | one a : x.posts | (a iff Ad)  implies x.posts in Ad
-- div,1
all u : User, uPosts : u.posts | some uPosts in Ad => uPosts in Ad
-- div,1
all u:User, p:Photo | (u->p in posts and p in Ad) -> posts.p in Ad
-- div,1
all u:User | some p:Photo | p in u.posts & Ad implies u.posts - Ad
-- div,1
all u1 : User | u1.posts in Ad implies (all f: Photo | u1.f in Ad)
-- div,2
all u: User, a: Ad, p: Photo | u.posts = a implies no(u.posts = p)
-- div,1
all x : User | x.posts in Ad -> all y : Photo | y in x.posts in Ad
-- div,1
all u: User, a: Ad, p: Photo | one a in u.posts => not p in u.posts
-- div,2
all u : User | one u.posts in Ad implies #(u.posts in Photo-Ad) = 0
-- div,1
all u:User,p:Ad,r:Photo | u.posts implies u.posts.r implies r in Ad
-- div,1
all u: User | all p:Photo | u.posts in Ad implies u.posts = p in Ad
-- div,1
all u : User | all p : u.posts.Photo | p in Ad implies u.posts in Ad
-- div,1
all u:User | some a:Ad | a in u.posts implies all x:u.posts | x is Ad
-- div,2
all u: User | all p: Photo | some u.posts in Ad implies u.posts in Ad
-- div,1
all u:User, p:Photo | u->p in posts and p in Ad => (u->p => p in Ads)
-- div,1
all u : User | some u.posts in Ad implies (all p : u.posts | p in Ad)
-- div,1
all u: User | all ad : Ad | one u.posts in ad implies (u.posts in ad)
-- div,1
all u:User | some a:Ad | a in u.posts implies all x: u.posts | x is Ad
-- div,1
all x : User, a : Ad, p : Photo | a in x.posts implies no p in x.posts
-- div,1
all u: User | all ad : Ad | some u.posts in ad implies (u.posts in ad)
-- div,1
all u: User, p: Photo | p in Ad & u.posts implies u.posts & (Photo-Ad)
-- div,1
all u:User | all p:Photo | u->p in u.posts and p in Ad implies p in Ad
-- div,1
all u: User | all p : u.posts | (some p in Ad) implies (u.posts in Ad)
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph : Photo | ph in Ad)
-- div,3
all u: User, a: Ad, p: Photo | one (a in u.posts) => (not p in u.posts)
-- div,1
all u: User, a: Ad, p: Photo | one u.posts = a implies  no (u.posts= p)
-- div,1
all u:User, a:Ad,p:Photo-Ad | a in u.posts implies posts in u none -> p
-- div,1
all u:User | some p:Photo | p in u.posts & Ad implies none u.posts - Ad
-- div,1
all user : User  | all ad : Ad | ad in user.posts implies user.^(posts)
-- div,1
all u:User | u.posts.Photo.Ad implies u.posts.Photo in u.posts.Photo.Ad
-- div,3
all x : User | x.posts in Ad implies all y : Photo | y in x.posts in Ad
-- div,1
all u:User,p:Ad,r:Photo | u.posts.p implies u in posts.r implies r in Ad
-- div,1
all x : User, p : Photo-Ad | some Ad in x.posts implies p not in x.posts
-- div,1
all u: User | some l : u.posts | lone u.posts in Ad implies u.posts in Ad
-- div,1
all u:User | some p:Photo | p in u.posts & Ad implies none (u.posts - Ad)
-- div,1
all u:User | all p:Photo | u->p in u.posts and p in Ad implies u->p in Ad
-- div,1
all ad: Ad | all user: User | ad in user.posts implies user.^(posts = Ad)
-- div,1
all u:User | (some u.posts in Ad) implies ( all p : Photo | posts.p in Ad)
-- div,1
all x : User | one y : posts.x | y is Ad implies all z : posts.x | z is Ad
-- div,1
all u:User | (some u.posts in Ad) implies ( all p : Photo | u.posts in Ad)
-- div,1
all x : User | (some y : x.posts | y in Ad) -> (all y : x.posts | y in Ad)
-- div,1
all x : User | (some y : x.posts | y in Ad) -> (all z : x.posts | z in Ad)
-- div,2
all u:User, a:Ad,p:Photo-Ad | a in u.posts implies posts in u none -> Photo
-- div,1
all u: User | all p: u.posts | some e : u.posts | p in Ad iff (one e in Ad)
-- div,1
all u: User | all p: u.posts | some e : u.posts | p in Ad iff (one p in Ad)
-- div,1
all u : User | some a : Ad | a in u.posts implies all a : u.posts | a is Ad
-- div,3
all user : User  | all ad : Ad | ad in user.posts implies user.^(posts = Ad)
-- div,3
all u:User | all p:Photo | u->p in u.posts and p in Ad implies (u->p in Ad )
-- div,1
all x : User | some x.posts in Ad implies all y : Photo | y in x.posts in Ad
-- div,1
all user : User  | all ad : Ad | ad in user.posts implies user.^(posts -> Ad)
-- div,1
all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts in Ad)
-- div,1
all u : User, ad : Ad, p : Photo | ad in u.posts implies (p in u.posts) in Ad
-- div,1
some p : Photo, u : User | p in u.posts and p = Ad implies none (u.posts - Ad)
-- div,1
all u : User, a : Ad | some u->a in posts implies (all p : Post | u->p in Ad )
-- div,1
all u:User, a:Ad,p:Photo-Ad | a in u.posts implies posts in User none -> Photo
-- div,2
all u : User, uPosts : u.posts | some uPosts in Ad => all p : uPosts | p in Ad
-- div,1
all u : User | all f : Photo | f in Ad and f in u->posts implies u.posts in Ad
-- div,2
all u:User | (some u.posts in Ad) implies ( all p : Photo | some u.posts in Ad)
-- div,1
all p : Photo | all u : User | all p1 : Photo |
(some p1 in u.posts and p1 in Ad)
-- div,1
all u : User | some u.posts in Ad => (all ph : Photo | ph in u.posts => ph in Ad)
-- div,2
all u : User| all p : Photo-Ad | all a : Ad| a in u.posts implies no p in x.posts
-- div,2
all u : User, a: Ad, p : Photo | a in u.posts -> p not in Ad and p not in u.posts
-- div,1
all u:User | some u.posts in Ad implies (all p:Photo | p in u1.posts and p in Ad)
-- div,1
all u:User | (some u.posts in Ad) implies ( all p : Photo | some posts.p in Photo)
-- div,1
all u:User | (u.posts & Ad) implies (all p: Photo | u->p in posts implies p in Ad)
-- div,1
all x: User | some x.posts in Ad implies (all p: Photo | p in x.posts and p in Ad)
-- div,6
all u:User | (some u.posts in Ad) implies ( all p : Photo | some u.posts in Photo)
-- div,1
all u: User | some u.posts in Ad implies (all p: Photo | p in u.posts and p in Ad)
-- div,1
all u : User| all p : Photo-Ad | all a : Ad | a in u.posts implies no p in u.posts
-- div,1
all u: User | all p : u.posts | all p2: u.posts| (some p in Ad) implies (p2 in Ad)
-- div,1
all u : User | one u.posts in Ad implies (all p : Photo | p in u.posts and p in Ad)
-- div,4
all u : User, a: Ad, p : Photo | a in u.posts -> (p not in Ad) and (p not in u.posts)
-- div,1
all u1: User | some u1.posts in Ad implies (all p: Photo | p in u1.posts and p in Ad)
-- div,2
all u:User | some u.posts in Ad implies (all p:Photo | p in u1.posts implies p in Ad)
-- div,2
all u : User | one pa : Photo-Ad | all up : u.posts| (pa in u.posts) -> u.posts in Ad
-- div,1
all user: User | all ad: Ad | ad in user.posts implies user.^(posts in Photo+Ad-Photo)
-- div,1
all x : User | some y : Photo | (Ad in x.posts) implies (all z : x.sees | z implies Ad)
-- div,3
all p : Photo | all u : User |
one (u.posts in Ad) implies (p in u.posts implies p in Ad)
-- div,2
all u1 : User | all ph : Photo | one u1.posts in Ad implies
(ph in u1.posts and ph in Ad)
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph : Photo | ph in u1.posts and ph in Ad)
-- div,2
all u1 : User | all ph : Photo | some u1.posts in Ad implies
(ph in u1.posts and ph in Ad)
-- div,2
all p : Photo | all u : User |
some (u.posts in Ad) implies (p in u.posts implies p in Ad)
-- div,1
all p : Photo | all u : User |
(some u.posts in Ad) implies (p in u.posts implies p in Ad)
-- div,1
some u1 : User | all ph : Photo | some u1.posts in Ad implies
(ph in u1.posts and ph in Ad)
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts and ph in Ad)
-- div,6
all u:User | (u.posts & Ad) in posts implies (all p: Photo | u->p in posts implies p in Ad)
-- div,2
all u1 : User | some u1.posts in Ad implies ((all ph : Photo |  ph in u1.posts) implies ph->Ad)
-- div,1
all u:User,p:Photo | Ad.p and u->p in posts implies all r:Photo | u->r in posts implies r in Ad
-- div,1
all u : User, a : Ad | some u->a in posts implies (all p : Post | u->p in posts implies p in Ad)
-- div,1
all x: User, a: Ad | x ->a in posts implies ( all p : Photo | x -> p in posts implies p in a.Ad)
-- div,1
all u: User, p : Photo | u->p in Ad implies (all photo : Photo | u->p in photos implies p in Ad)
-- div,1
all u1 : User | some u1.posts in Ad implies (all ph : Photo |  ph in u1.posts implies (ph in Ad))
-- div,1
all p : Photo | all u : User | all ad : Ad |
(one ad in u.posts) implies (p in u.posts and p in Ad)
-- div,1
all p : Photo | one u : User | all ad : Ad |
(one ad in u.posts) implies (p in u.posts and p in Ad)
-- div,1
all u: User, p : Photo | u->p in Ad implies (all photo : Photo | u->photo in photos implies p in Ad)
-- div,1
all p : Photo | all u : User | all ad : Ad |
(some ad in u.posts) implies (p in u.posts and p in Ad)
-- div,1
all u:User, p : Photo | u->p in posts and p in Ad implies (all ph : Photo | u.posts implies ph in Ad)
-- div,1
all u:User | u.posts.Ad implies all p:Photo | p in Ad
all x:univ | x in Ad implies posts.p and p is Ad
-- div,1
all p : Photo | all u : User | all ad : Ad |
(some ad in u.posts) implies (p in u.posts implies p in Ad)
-- div,1
all u: User, p : Photo | u->p in Ad implies (all photo : Photo | u->photo in photos implies photo in Ad)
-- div,1
all u:User | some a:Ad | a in u.posts implies u.posts in Ad
all u:User | u is Influencer implies u.posts in Ad
-- div,1
all user : User | some ad : Ad | user->ad in posts implies all post : univ | user->post in posts and posts in Ad
-- div,1
all p : Photo | all u : User | all p1 : Photo |
(some p1 in u.posts and p1 in Ad) implies (p in u.posts implies p in Ad)
-- div,1
all u:User, p:Photo | (u->p in posts and p in Ad) -> posts.p in Ad
all u:User, a:Ad | u->a in posts implies (all p:Photo | u->p in posts implies p in Ad)
-- div,1
all u:User, p : Photo | p in Ad and u->p in posts implies (all ph : Photo | u->ph in posts implies ph in Ad)


all u:User| one u.posts in Ad implies (all p : Photo | posts.p in Ad)
-- div,1
all u:User, p : Photo | p in Ad and u->p in posts implies (all ph : Photo | u->ph in posts implies ph in Ad)


all u:User| one u.posts in Ad implies (all p : Photo | u.posts.p in Ad)
-- div,1
