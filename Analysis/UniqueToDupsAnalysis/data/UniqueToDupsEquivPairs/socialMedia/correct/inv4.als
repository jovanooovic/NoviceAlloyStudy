-- equiv pair start,706
posts.Ad.posts in Ad
-- div,4
no (posts.Ad & posts.(Photo-Ad))
-- div,13
all x : Ad | (posts.x).posts in Ad
-- div,1
all p: Ad | (posts.p).posts in Ad
-- div,1
all u : posts.Ad | u.posts in Ad
-- div,4
no((posts :> Ad).Ad & posts.(Photo - Ad))
-- div,2
no(posts.(Photo - Ad) <: (posts :> Ad).Ad)
-- div,1
no((posts :> Ad).Ad & (posts :> (Photo - Ad)).Photo)
-- div,1
all u : User | u in posts.Ad implies u.posts in Ad
-- div,4
all p: Photo | p in Ad => (posts.p).posts in Ad
-- div,11
all u : User | no u.posts & Ad or u.posts in Ad
-- div,3
all u:User | (u.posts in Ad) or (no u.posts&Ad)
-- div,15
all x : User | some x.posts & Ad implies x.posts in Ad
-- div,9
all ad : Ad | all u : posts.ad | u.posts in Ad
-- div,1
all u: User | some Ad & u.posts implies u.posts in Ad
-- div,3
all u: User | some u.posts & Ad => u.posts in Ad
-- div,74
all u : User | u.posts in Ad or u.posts & Ad = none
-- div,3
all u:User | u.posts & Ad != none implies u.posts in Ad
-- div,5
all u1: User | some u1.posts & Ad implies u1.posts in Ad
-- div,2
all u : User | #(u.posts & Ad) != 0 implies u.posts in Ad
-- div,2
all u : User | some u.posts - Ad implies no u.posts & Ad
-- div,1
all u : User | u.posts in Photo-Ad or u.posts in Ad
-- div,9
all u:User | some u.posts & Ad => no u.posts - Ad
-- div,11
all x: User | x.posts in (Photo - Ad) or x.posts in Ad
-- div,4
all u : User | some (Ad&u.posts) => no (u.posts-Ad)
-- div,2
all u: User | u.posts in Ad or u.posts in Photo-Ad
-- div,14
all u: User, a: u.posts |  a in Ad => u.posts in Ad
-- div,1
all u:User, a:Ad | a in u.posts => u.posts in Ad
-- div,70
all x:User,y:Ad| y in x.posts implies x.posts in Ad
-- div,2
all x:User, a:Ad | a in x.posts implies x.posts in Ad
-- div,2
all p : Ad, u : User |  p in u.posts => u.posts in Ad
-- div,1
all u: User, p : u.posts |  p in Ad => u.posts in Ad
-- div,2
all u : User , a : Ad | u in posts.a implies u.posts in Ad
-- div,7
all a : Ad, u : User | a in u.posts implies u.posts in Ad
-- div,1
all u : User , p : Ad | p in u.posts implies u.posts in Ad
-- div,2
all x:User, a:Ad| x->a in posts implies x.posts in Ad
-- div,3
all u:User, p:Ad | u->p in posts => u.posts in Ad
-- div,2
all u: User, a : Ad | u->a in posts => u.posts in Ad
-- div,6
all x:User, y:Ad | x-> y in posts implies x.posts in Ad
-- div,4
all u : User, ad : Ad | ad in u.posts implies u.posts in Ad
-- div,8
all x : User | some x.posts & Ad implies x.posts-Ad=none
-- div,3
all u:User | some u.posts&Ad implies u.posts-Ad = none
-- div,4
all u: User, a: Ad | u in a.~posts => u.posts in Ad
-- div,6
all ad : Ad | all posts : posts.ad.posts | posts in Ad
-- div,1
all u:User | u.posts&Ad != none implies u.posts-Ad = none
-- div,3
all u : User | u.posts = u.posts - Ad or no u.posts - Ad
-- div,2
all u: User | no (u.posts & Ad) or (u.posts & Ad) = u.posts
-- div,1
all u : User | some u.posts & Ad implies u.posts = u.posts & Ad
-- div,2
all u : User | some u.posts & Ad => (u.posts & Ad = u.posts)
-- div,4
all u : User, y : Photo | y in u.posts & Ad implies u.posts in Ad
-- div,1
all u: User | (u.posts & Ad) = none or (u.posts & Ad) = u.posts
-- div,2
all u: User, p: Photo | p in (Ad & u.posts) implies u.posts in Ad
-- div,5
all u : User | all p: u.posts| p in Ad => u.posts in Ad
-- div,13
all x : User | all a : Ad | a in x.posts implies x.posts in Ad
-- div,2
all u:User |all a: Ad | a in u.posts => u.posts in Ad
-- div,31
all u:User |all p:Ad |p in u.posts implies u.posts in Ad
-- div,7
all u: User | (some p : u.posts | p in Ad) implies u.posts in Ad
-- div,1
all ad : Ad , user : User | ad in user.posts => user.posts in Ad
-- div,1
all x : User | (some y : x.posts | y in Ad) => x.posts in Ad
-- div,3
all u:User | (some p:Ad | p in u.posts ) implies u.posts in Ad
-- div,1
all x : User | (some y : Ad | y in x.posts) implies (x.posts in Ad)
-- div,1
all u:User | (some a:Ad | a in u.posts) => u.posts in Ad
-- div,11
all u : User | all p : Ad | u->p in posts implies u.posts in Ad
-- div,2
all u: User | all ad : Ad | ad in u.posts implies u.posts in Ad
-- div,8
all u:User | (some a:Ad | u->a in posts) implies u.posts in Ad
-- div,2
all u:User | (some p:Ad | u->p in posts) => u.posts in Ad
-- div,1
all u:User | all a:Ad | a in u.posts implies not (u.posts not in Ad)
-- div,1
all x : User | all a : Ad | a in x.posts implies no x.posts-Ad
-- div,1
all a : Ad | all u : posts.a | all p : u.posts | p in Ad
-- div,1
all u : User | all add : Ad | add in u.posts implies u.posts in Ad
-- div,1
all u1 : User | all ad : Ad | ad in u1.posts implies u1.posts in Ad
-- div,4
all u : User | some u.posts & Ad implies (all p : u.posts | p in Ad)
-- div,1
all u: User, a: Ad, ua: a.~posts | ua in u => u.posts in Ad
-- div,1
all u:User | #(u.posts & Ad) > 0 => #(u.posts & Ad) = #(u.posts)
-- div,1
all p: Photo, u: User | p in Ad and p in u.posts implies u.posts in Ad
-- div,2
all a : Ad | all u : User | a in u.posts implies #(u.posts-Ad) = 0
-- div,2
all x: User, y: Photo | y in Ad and y in x.posts implies x.posts in Ad
-- div,5
all u : User, p : Photo | u in posts.p && p in Ad => u.posts in Ad
-- div,1
all u:User,p:Photo| p in u.posts and p in Ad => u.posts in Ad
-- div,24
all u : User, y : Photo | y in u.posts and y in Ad implies u.posts in Ad
-- div,1
all x:User, p:Photo | p in Ad and p in x.posts implies x.posts in Ad
-- div,2
all x:User, y:Photo| x-> y in posts and y in Ad implies x.posts in Ad
-- div,1
all u : User, p : Photo | u->p in posts and p in Ad implies u.posts in Ad
-- div,1
all u : User | (some p : Ad | p in u.posts) => (u.posts - Ad) = none
-- div,1
all user : User |
(some user.posts & Ad) implies user.posts & Ad = user.posts
-- div,1
all u : User | all f : Photo | f in Ad&u.posts implies u.posts in Ad
-- div,1
all ad: Ad | all user: User | ad in user.posts implies user.posts in Ad
-- div,1
all user: User | all ad: Ad | ad in user.posts implies user.posts in Ad
-- div,4
all u: User | all a: Ad | u.posts in Ad or u.posts in Photo-Ad
-- div,1
all x : User | (some y : Photo | y in x.posts & Ad) implies (x.posts in Ad)
-- div,1
all user : User | all ad : Ad | user->ad in posts implies user.posts in Ad
-- div,3
all x : User, a : Ad, p : Photo-Ad | a in x.posts implies p not in x.posts
-- div,3
all u : User, p : Ad | p in u.posts => all po : u.posts | po in Ad
-- div,1
all u : User, p : u.posts | p in Ad => all po : u.posts | po in Ad
-- div,1
all u : User, p : u.posts | p in Ad implies all p1 : u.posts | p1 in Ad
-- div,1
all user: User | all ad: Ad | ad in user.posts implies user.^(posts) in Ad
-- div,1
all u: User, a: Ad, p: Photo - Ad | u->a in posts => u->p not in posts
-- div,2
all a: Ad, p:Photo-Ad, u:User | u->a in posts => u->p not in posts
-- div,7
all p: Photo, u: User | p in u.posts and p in Ad implies u.posts - Ad = none
-- div,2
not some a:Ad, p: Photo-Ad, u:User | u->a in posts and u->p in posts
-- div,3
all u : User | all p : Photo | p in u.posts and p in Ad implies u.posts in Ad
-- div,10
all x : User | all y : Photo | y in x.posts and y in Ad implies x.posts in Ad
-- div,1
all u : User | all y : Photo | y in u.posts and y in Ad implies u.posts in Ad
-- div,1
all u : User | all f : Photo | f in Ad and f in u.posts implies u.posts in Ad
-- div,2
all u:User | all p:Photo | p in Ad and p in u.posts implies u.posts in Ad
-- div,1
all u : User | (some p : Photo | p in u.posts and p in Ad) implies u.posts in Ad
-- div,2
all a:Ad,p:Photo,u:User | a in u.posts and p in u.posts implies p in Ad
-- div,1
all u: User, a: Ad, p: Photo | a in u.posts and p in u.posts implies p in Ad
-- div,3
all a:Ad,p:Photo,x:User | a in x.posts and p in x.posts implies p in Ad
-- div,2
all u:User,p:Ad,r:Photo | u in posts.p implies u in posts.r implies r in Ad
-- div,6
all u: User, a: Ad, p: Photo| u->a in posts  and p in u.posts implies p in Ad
-- div,1
all u:User, a:Ad, p:Photo | u->a in posts and u->p in posts implies p in Ad
-- div,2
all u1: User | all p: Photo | p in u1.posts and p in Ad implies u1.posts in Ad
-- div,1
all u: User, p: Photo, a: Ad | p in u.posts and p not in Ad implies a not in u.posts
-- div,2
all x : User | ( all p : x.posts | p in Ad) or (all p : x.posts | p not in Ad)
-- div,2
all x:User | (some z:x.posts | z in Ad) implies (all y:x.posts | y in Ad)
-- div,1
all x : User | (some p: x.posts | p in Ad) => (all z: x.posts | z in Ad)
-- div,6
all x : User | (all y : x.posts | y in Ad) or (all y : x.posts | y not in Ad)
-- div,2
all x:User | (some y:x.posts | y in Ad) implies (all z:x.posts | z in Ad)
-- div,1
all u : User | all p : u.posts | p in Ad => all po : u.posts | po in Ad
-- div,1
all u : User | all p : u.posts | p in Ad implies (all p2 : u.posts | p2 in Ad)
-- div,1
all u : User| all p : Ad|all p2 : u.posts| p in u.posts implies p2 in Ad
-- div,2
all u : User | all p1,p2 : Photo | (p1+p2) in u.posts and p1 in Ad implies p2 in Ad
-- div,1
not some a:Ad,p:Photo, u:User | p not in Ad and u->a in posts and u->p in posts
-- div,4
all u : User | (some ph : u.posts | ph in Ad) => (all p : u.posts | p in Ad)
-- div,1
all u1 : User | all ph : Photo |
ph in u1.posts and ph in Ad implies u1.posts in Ad
-- div,1
all u : User | (some pt : u.posts | pt in Ad) => (all p : u.posts | p in Ad)
-- div,3
all u1 : User , p : Photo, a : Ad | u1->a in posts and u1->p in posts implies p in Ad
-- div,1
all p : Photo| all u:User | (p in Ad and p in u.posts) implies ( #(u.posts - Ad)=0)
-- div,1
all u : User | all pos : u.posts | pos in Ad => (all ph : u.posts | ph in Ad)
-- div,1
all user : User | all p: Photo | p in user.posts and p in Ad implies user.posts in Ad
-- div,1
all p1,p2:Photo,u:User| p1 in Ad and p1 in u.posts and p2 in u.posts implies p2 in Ad
-- div,1
all u : User, p : Photo | p in u.posts and p in Ad implies (all p : u.posts | p in Ad)
-- div,1
all u : User, p : Photo | p in u.posts and p in Ad implies (all x : u.posts | x in Ad)
-- div,1
all u:User,p:Ad | u in posts.p implies all r:Photo | u in posts.r implies r in Ad
-- div,1
all u:User,p:Ad | all r:Photo | u in posts.p implies u in posts.r implies r in Ad
-- div,1
all p : Photo, u : User | p in u.posts and p in Ad implies (all p : u.posts | p in Ad)
-- div,1
all x : User, a : Ad | a in x.posts implies all z : Photo | z in x.posts implies z in Ad
-- div,1
all u:User, a:Ad | a in u.posts implies (all p:Photo | p in u.posts implies p in Ad)
-- div,3
all p1,p2 : Photo, u : User | p1 in u.posts and p1 in Ad => p2 in u.posts => p2 in Ad
-- div,1
all a : Ad | all u : User | no p : Photo - Ad | a in u.posts and p in u.posts
-- div,2
all  p1,p2: Photo, u:User | (p1 in Ad and u->p1 in posts and u->p2 in posts) => p2 in Ad
-- div,3
all u:User, y:Ad | u->y in posts implies (all p:Photo | u->p in posts implies p in Ad)
-- div,1
all x : User, a : Ad | x -> a in posts implies all z : Photo | x -> z in posts implies z in Ad
-- div,1
all u:User , a:Ad | u->a in posts implies all p:Photo | u->p in posts implies p in Ad
-- div,12
all u : User, ad : Ad | u in posts.ad implies all p : Photo | u in
posts.p implies p in Ad
-- div,1
all u : User , ad : Ad | ad in u.posts implies (all p : Photo | p in u.posts implies p in Ad)
-- div,1
all x: User, a: Ad | x ->a in posts implies ( all p : Photo | x -> p in posts implies p in Ad)
-- div,1
all a:Ad, u:User | u->a in posts implies (all p:Photo | u->p in posts implies p in Ad)
-- div,1
all u : User, ad : Ad | u in posts.ad implies all p : Photo | u -> p in
posts implies p in Ad
-- div,1
all x : User | all y: Ad | all z : Photo-Ad | x in posts.y implies (x not in posts.z)
-- div,3
all p : Ad | all f : Photo-Ad | all x : User | p in x.posts implies f not in x.posts
-- div,1
all p1,p2 : Photo, u : User | u->p1 in posts and p1 in Ad implies u->p2 in posts implies p2 in Ad
-- div,1
all u : User | all p : Photo - Ad | all a : Ad | (a in u.posts) implies (p not in u.posts)
-- div,1
all x : User | all p : Photo-Ad | all a : Ad | a in x.posts implies p not in x.posts
-- div,1
all p : Photo - Ad | all u : User | all a : Ad | a in u.posts implies p not in u.posts
-- div,1
all u: User | (some a: Ad | a in u.posts) => (all p: Photo - Ad | p not in u.posts)
-- div,1
all u : User, ad : Ad | u->ad in posts => all p : Photo | u->p in posts => p in Ad
-- div,9
all u : User| all p : Photo-Ad | all a : Ad | a in u.posts implies not p in u.posts
-- div,1
all u : User, p : Photo | p in u.posts and p in Ad implies (all p2: Photo | u.posts in Ad)
-- div,2
all u1:User , a:Ad | u1->a in posts implies(all p:Photo | u1->p in posts implies p in Ad)
-- div,1
all ad : Ad | all p: Photo - Ad |all u : User | ad in u.posts implies p not in u.posts
-- div,2
all u : User| all p : Photo-Ad | all a : Ad | a in u.posts implies no p & u.posts
-- div,1
all x, y : univ | x->y in posts and y in Ad implies (all z : univ | x->z in posts implies z in Ad)
-- div,2
all u : User | all p : Photo | all a : Ad | u->a + u->p in posts implies u.posts in Ad
-- div,1
all u: User | all p1, p2: Photo | (p1 != p2 and p1 in Ad and (p1+p2) in u.posts) implies p2 in Ad
-- div,1
all u : User | all a : Ad | a in u.posts implies (all p : Photo | p in u.posts implies p in Ad)
-- div,1
all u : User | all a : Ad | all p: Photo | a in u.posts and p in u.posts implies p in Ad
-- div,1
all u : User | all n : Photo | all a : Ad | a in u.posts and n in u.posts implies n in Ad
-- div,1
all u : User | all a : Ad | a in u.posts implies all n : Photo | n in u.posts implies n in Ad
-- div,1
all u : User | (some a : Ad | a in u.posts) implies all p : Photo | p in u.posts implies p in Ad
-- div,2
all u:User | (some p:Ad | p in u.posts) implies (all p:Photo | p in u.posts implies p in Ad)
-- div,1
all u: User | all a: Ad | u->a in posts implies (all p: Photo| u->p in posts implies p in Ad)
-- div,2
all x : User | all a : Ad | x -> a in posts implies all z : Photo | x -> z in posts implies z in Ad
-- div,2
all u:User | (some a:Ad | u->a in posts) implies (all p:Photo | u->p in posts implies p in Ad)
-- div,9
all u1:User | all a:Ad | u1->a in posts implies ( all p:Photo | u1->p in posts implies p in Ad)
-- div,2
all u:User | (some a:Ad | u -> a in posts) implies (all p2:Photo | u -> p2 in posts implies p2 in Ad)
-- div,1
all u : User | (some p : Ad | (u -> p in posts)) => all p1 : Photo | (u -> p1 in posts => p1 in Ad)
-- div,1
all u:User | (some a:Ad | u->a in posts) implies (all p1:Photo | u->p1 in posts implies p1 in Ad)
-- div,1
all u:User | all a:Ad | a in u.posts implies all p:Photo-a | p in u.posts implies p in Ad
-- div,1
all u : User | all p1 : Ad |all p2 : Photo| (u->p1 in posts and u->p2 in posts )implies p2 in Ad
-- div,2
all u:User,p:Photo | p in Ad and u in posts.p implies all r:Photo | u in posts.r implies r in Ad
-- div,1
all a : User, b : Photo | b in Ad and b in a.posts implies (all c : Photo | c in a.posts implies c in Ad)
-- div,1
all u1,u2:User | all a:Ad | u1->a in posts implies (all p:Photo | u1->p in posts implies p in Ad)
-- div,9
all p:Photo,p2:Photo | all u:User | p in u.posts and p in Ad and p2 in u.posts implies p2 in Ad
-- div,1
all u : User | all p : Photo | all a : Ad | u->a in posts and u->p in posts implies u.posts in Ad
-- div,1
all u:User, p:Photo | p in Ad and u in posts.p implies (all ph:Photo | u in posts.ph implies ph in Ad)
-- div,3
all u:User, p:Photo | p in u.posts and p in Ad implies (all p1:Photo | p1 in u.posts implies p1 in Ad)
-- div,2
all x,y : univ | x in User and y in Ad and x->y in posts implies all z : Photo | x->z in posts implies z in Ad
-- div,3
all u : User, p : Photo | p in Ad and u->p in posts implies (all p2 : Photo | u->p2 in posts implies p2 in Ad )
-- div,1
all u:User, p : Photo | p in Ad and u->p in posts implies (all ph : Photo | u->ph in posts implies ph in Ad)
-- div,1
all u:User, p:Photo | u->p in posts and p in Ad => (all p2:Photo | u->p2 in posts => p2 in Ad)
-- div,2
all u : User, p : Photo | p in u.posts && p in Ad implies (all post : Photo | post in u.posts implies post in Ad)
-- div,1
all u : User | all p : Photo | p in Ad and u->p in posts implies all v : Photo | u->v in posts implies v in Ad
-- div,1
all u: User | all p : Photo | ((u->p in posts and p in Ad) implies (all z: Photo | u-> z in posts implies z in Ad))
-- div,1
all u: User | all p: Photo | p in u.posts and p in Ad implies all p1: Photo | p1 in u.posts implies p1 in Ad
-- div,2
all u : User | all p : Photo | (p in u.posts and p in Ad) implies (all p2: Photo | p2 in u.posts implies p2 in Ad)
-- div,1
all u:User | (some p:Photo | u->p in posts and p in Ad) implies (all p:Photo | u->p in posts implies p in Ad)
-- div,1
all u:User | all p:Photo | p in Ad and u in posts.p implies (all ph : Photo | u->ph in posts implies ph in Ad)
-- div,1
all u : User | (all p : Photo | u->p in posts and p in Ad implies (all p1: Photo | u->p1 in posts implies p1 in Ad))
-- div,2
all u : User, ad : Ad | u ->ad in posts
=> all p : Photo | u->p in posts => p in Ad

all u: User | some (u.posts&Ad) => no (u.posts-Ad)
-- div,1
-- equiv pair end
