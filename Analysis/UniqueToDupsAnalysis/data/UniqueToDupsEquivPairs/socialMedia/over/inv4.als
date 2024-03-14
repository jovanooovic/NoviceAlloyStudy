-- equiv pair start,38
all u:User| u.posts in Ad
-- div,8
all x: User | x.posts in Ad
-- div,3
all user : User | (user.posts in Ad)
-- div,1
all u : User | u.posts in Ad & Ad
-- div,1
all u : User | u.posts = (u.posts & Ad)
-- div,1
all u:User, p:Photo| u.posts in Ad
-- div,1
all u: User | no (u.posts & u.posts-Ad)
-- div,2
all u: User, a: u.posts |   u.posts in Ad
-- div,1
all u:User, p:Photo| (u.posts & p) in Ad
-- div,1
all x:User | all y:x.posts | y in Ad
-- div,2
all u:User | all p:u.posts | p in Ad
-- div,3
all u:User | (u.posts in Ad) or (no u.posts-Ad)
-- div,2
all u:User | some (u.posts-Ad) implies u.posts in Ad
-- div,1
all p:Photo, u:User | u -> p in posts implies p in Ad
-- div,1
all u : User | u.posts in Ad or u.posts - Ad = none
-- div,2
all u : User | u.posts in Ad or u.posts - Ad in none
-- div,1
all u: User | (u.posts - Ad != none) implies u.posts in Ad
-- div,1
all u:User | (u.posts & Ad) in Photo implies u.posts in Ad
-- div,1
all u:User | (u.posts & Ad) in u.posts implies u.posts in Ad
-- div,1
all u: User | all p: Photo | p in u.posts implies p in Ad
-- div,1
all u1: User | all p: Photo | u1-> p in posts and p not in Ad implies p in Ad
-- div,1
all u:User | u-> (u.posts & Ad) in posts implies (all p: Photo | u->p in posts implies p in Ad)
-- div,2
-- equiv pair end
-- equiv pair start,2
all u:User | u.posts = Ad
-- div,1
all u:User | (u.posts-Ad)!= 0 implies u.posts=Ad
-- div,1
-- equiv pair end
-- equiv pair start,3
all u:User, a:Ad | u.posts in a
-- div,2
all u: User, a: Ad, p: Photo | no(u.posts - a)
-- div,1
-- equiv pair end
-- equiv pair start,4
all u: User, a: Ad | u.posts = a
-- div,1
all x : User | all y : Ad | x.posts = y
-- div,2
all a : Ad | all u:User | a in u.posts and u.posts in a
-- div,1
-- equiv pair end
-- equiv pair start,2
all x: User | x.posts in posts.Ad
-- div,1
all u : User | no((u.posts & Ad) + (u.posts & Photo-Ad))
-- div,1
-- equiv pair end
-- equiv pair start,12
all u:User, p:Ad | u->p not in posts
-- div,1
all u : User | some u.posts & Ad implies no u.posts & Photo
-- div,1
all u : User | u.posts in Photo-Ad || u.posts in Ad-Photo
-- div,1
all u : User | all p : Ad | p in u.posts implies p.posts = Ad
-- div,1
all u:User | all a:Ad | a in u.posts implies a in posts.u
-- div,1
all u :User, a : Ad, p:Photo | a in u.posts =>  p not in u.posts
-- div,1
all u: User, a: Ad, p: Photo | a in u.posts => not p in u.posts
-- div,1
all u1: User | all p: Photo | u1 -> p in posts and p in Ad implies p not in Ad
-- div,1
all p: Photo, u: User | p in u.posts and p in Ad implies u.posts&Ad = univ
-- div,1
all u : User, uPosts : u.posts | uPosts in Ad-Photo || uPosts in Photo-Ad
-- div,1
all u : User, a: Ad, p : Photo | a in u.posts implies (p not in Ad) and (p not in u.posts)
-- div,1
all x : User | all p : Photo | all  a : Ad | a in x.posts implies p not in x.posts
-- div,1
-- equiv pair end
-- equiv pair start,9
all u: User | all ad: Ad | u.posts in Ad
-- div,1
all u:User | some (u.posts -> Ad) implies u.posts in Ad
-- div,2
all u : User, p : Photo | p in Ad => u.posts in Ad
-- div,2
all u : User, y : Photo | y in Ad implies u.posts in Ad
-- div,1
all u : User, p : Photo | p in Ad => (posts in User set -> Ad)
-- div,1
all u: User | all p: Photo |  p in Ad implies (u.posts in Ad)
-- div,1
all x : User | (some y : Photo | y in Ad) implies (x.posts in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,4
some posts.Ad and after (no posts.Photo)
-- div,1
(posts - User->Ad) != (posts :> (Photo - Ad))
-- div,1
all x,y : univ | x in User and y in Ad and x->y in posts
-- div,1
all user : univ | user in User and some ad : univ | user->ad in posts and (ad in Ad) implies all photo : univ | photo in Photo and user->photo in posts and photo in Ad
-- div,1
-- equiv pair end
-- equiv pair start,4
all u: User, a: Ad, p: Photo | one u.posts
-- div,4
-- equiv pair end
-- equiv pair start,1
all u: User | some p: Photo-Ad| u.posts in p
-- div,1
-- equiv pair end
-- equiv pair start,26
all u: User, a: Ad | a in u.posts => u.posts = a
-- div,2
all u: User, a: Ad | a in u.posts => u.posts in a
-- div,5
all u: User, d: Ad | d in u.posts => u.posts in d
-- div,1
all u: User, d: Ad | u in d.~posts => u.posts in d
-- div,1
all u: User, a: Ad | u in a.~posts => u.posts in a
-- div,3
all u : User , ad : Ad | ad in u.posts implies u.posts in ad
-- div,1
all u : User , ad : Ad | ad in u.posts implies u.^posts in ad
-- div,1
all u:User | all a:Ad | a in u.posts implies u.posts in a
-- div,2
all u : User | all ad : Ad | ad in u.posts implies u.posts in ad
-- div,2
all u1 : User | all ad : Ad  | ad in u1.posts implies u1.posts in ad
-- div,1
all u: User, a: Ad | all p: u.posts | p in a => u.posts = a
-- div,1
all u1 : User | all p1 : Photo | all ad : Ad  | p1 = ad and p1 in u1.posts implies u1.posts = ad
-- div,3
all u1 : User | all p1 : Photo | all ad : Ad  | p1 = ad and p1 in u1.posts implies u1.^posts = ad
-- div,1
all p1,p2 : Photo | all ad : Ad  | all x : User | p1 = ad and p1 in x.posts and p2 in x.posts implies p2 = ad
-- div,2
-- equiv pair end
-- equiv pair start,2
all u: User, p: Photo | u->p in posts and p in Ad
-- div,1
all u : User | all p : Photo | p in u.posts and p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User, p : Photo | p in u.posts and Ad in p
-- div,1
all u : User | all p : Photo | p in u.posts and all a : Ad | a in u.posts implies p-a = none
-- div,1
-- equiv pair end
-- equiv pair start,2
all x :  User | all y : Ad | x.posts -> y in posts
-- div,2
-- equiv pair end
-- equiv pair start,7
all u:User | some u.posts & Ad implies u.posts = Ad
-- div,1
all u:User | some u.posts<:Ad implies u.posts = Ad
-- div,2
all u : User | u.posts & Ad != none implies u.posts = Ad
-- div,1
all u:User, a: Ad | a in u.posts implies u.posts = Ad
-- div,1
all u : User, a: Ad | u in a.~posts => u.posts = Ad
-- div,1
all u:User | some u.posts<:Ad implies u.posts in Ad and Ad in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | some y : x.posts & Ad | x.posts in Ad
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User, a : Ad | a in u.posts <=> u.posts in Ad
-- div,1
all u : User | all a : Ad | (a in u.posts) iff (u.posts in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u: User | one a: Ad | u.posts in a && #u.posts = 1
-- div,1
all x : User | one z: x.posts | z in Ad and ( all p : x.posts | p in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u: User, p: Photo, a: Ad | p in u.posts and p not in Ad
-- div,1
all u: User | all ad :Ad,p:Photo | ad in u.posts && p not in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | some Ad : u.posts | all p : u.posts | p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
one u : User | one p : Photo | p in Ad implies posts.u in Ad
-- div,1
-- equiv pair end
-- equiv pair start,20
all u: User, a: Ad | a in u.posts => no (Photo-Ad & u.posts)
-- div,1
all u1: User | some u1.posts & Ad implies (all p: Photo | p in u1.posts and p in Ad)
-- div,1
all u:User, a:Ad | a in u.posts implies (all p:Photo | p in u.posts and p in Ad)
-- div,2
all u : User, a : Ad | u -> a in posts implies all p : Photo | u -> p in posts and p in Ad
-- div,1
all u: User | all p1, p2: Photo | p1 in u.posts and p1 in Ad implies p2 in u.posts and p2 in Ad
-- div,1
all u:User | all a:Ad | u->a in posts => all p:Photo | u->p in posts and p in Ad
-- div,2
all p : Photo | all u : User | all ad : Ad |
(ad in u.posts) implies (p in u.posts and p in Ad)
-- div,2
all u : User | (some p : Ad | (u -> p in posts)) => all p1 : Photo | u -> p1 in posts and p1 in Ad
-- div,2
all u : User, p : Photo | p in Ad and u->p in posts implies (all p2 : Photo | u->p2 in posts and p2 in Ad )
-- div,1
all u : User, p : Photo | (u -> p in posts and p in Ad) => all p1 : Photo | u -> p1 in posts and p1 in Ad
-- div,1
all u : User | all p : Photo | p in u.posts and p in Ad implies all p1 : Photo| p1 in Ad and p1 in u.posts
-- div,1
all u: User | all p: Photo | p in u.posts and p in Ad implies all p1: Photo | p1 in u.posts and p1 in Ad
-- div,1
all u : User | all p : Photo | (p in u.posts and p in Ad) implies (all p2: Photo | p2 in u.posts and p2 in Ad)
-- div,1
all u: User | all p1, p2: Photo | (p1 in u.posts and p1 in Ad implies p2 in u.posts and p2 in Ad) or p1 not in u.posts
-- div,3
-- equiv pair end
-- equiv pair start,2
all u : User | one p : Photo | p in Ad implies posts.u in Ad
-- div,1
all u: User | one p1, p2: Photo | p1 in u.posts and p1 in Ad implies p2 in u.posts and p2 in Ad
-- div,1
-- equiv pair end
-- equiv pair start,4
all u: User, a: Ad | a in u.posts => (all d: Ad | u.posts in d)
-- div,1
all p : Photo & Ad | all u1 : posts.p | all p2 : u1.posts | p2 = Ad
-- div,1
all u: User, p1: Photo, a1: Ad | u->p1 in posts and p1=a1 implies all p2: Photo, a2: Ad | u->p2 in posts implies p2 = a2
-- div,2
-- equiv pair end
-- equiv pair start,1
all u: User, a: Ad | a in u.posts => (all p: User.posts | p = a)
-- div,1
-- equiv pair end
-- equiv pair start,1
all a:Ad, p:Photo-Ad, u:User | u->a in posts and not u->p in posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | some a:Ad | some (u.posts -> Ad) implies u.posts in Ad
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | one a : Ad | some u.posts & Ad implies u.posts in Ad
-- div,1
all u: User, d: Ad | d in u.posts => u.posts in d
all u : User | one a : Ad | a in u.posts => u.posts in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:User | all y:x.posts | one z:x.posts | z in Ad implies y in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | all p1, p2: Photo | (p1 != p2 and p1 in Ad) implies p2 in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | all p:Photo | ((p in u.posts) and (p in Ad)) iff u.posts in Ad
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User | all a : Ad | u->a in posts implies ( all p : Photo | p in Ad)
-- div,2
all u : User, p : Photo, p2 : Photo | p in Ad and u->p in posts implies p2 in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, p:Photo| one a:Ad| u->a in posts and u ->p in posts implies p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, p : Photo | (p in Ad and u -> p in posts) => (posts in User set -> Ad)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Photo | one u : User |
(some Ad & u.posts) implies (p in u.posts and p in Ad)
-- div,1
all p : Photo | one u : User | all ad : Ad |
(ad in u.posts) implies (p in u.posts and p in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ph : Photo | ph in Ad implies (all u1 : User | u1 -> ph in posts and u1.posts in Ad )
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Photo | one u : User |
(some Ad & u.posts) implies (p in u.posts implies p in Ad)
-- div,2
all p : Photo | one u : User |
((some Ad & u.posts) implies (p in u.posts implies p in Ad))
or
(no Ad & u.posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all p : Photo | p in posts.u and some a : Ad | a in posts.u implies p-a = none
-- div,1
-- equiv pair end
-- equiv pair start,1
all ph : Photo | ph in Ad implies (all u1 : User | all ph2 : Photo | u1 -> ph in posts and u1 -> ph2 in posts and ph2 in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, p : Photo | p in Ad and u->p in posts implies (all ph : Photo | u->ph in posts implies ph in Ad)


all u:User| u.posts in Ad implies (all p : Photo | posts.p in Ad)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2 : Photo | all ad : Ad  | all x : User | p1 = ad and p1 in x.posts and p2 in x.posts implies p2 = ad
all u1 : User | all p1 : Photo | p1 in u1.posts implies p1 not in u1.sees
-- div,1
all p1,p2 : Photo | all ad : Ad  | all x : User | p1 = ad and p1 in x.posts and p2 in x.posts implies p2 = ad
all u1 : User | all p1 : Photo | p1 in u1.posts implies p1 not in u1.sees
all u1 : Influencer | all p1 : Photo | p1 in u1.posts implies p1 not in u1.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Photo | all ad : Ad  | all x : User | p1 = ad and p1 in x.posts and p2 in x.posts implies p2 = ad
all u1 : User | all p1 : Photo | p1 in u1.posts implies p1 not in u1.sees
all u1 : Influencer | all p1 : Photo | p1 in u1.posts implies p1 not in u1.sees
all x : Day | some p : Photo | x = p.date
-- div,1
-- equiv pair end
