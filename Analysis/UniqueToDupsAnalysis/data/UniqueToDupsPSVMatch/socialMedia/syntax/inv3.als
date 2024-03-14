all
-- div,5
all u
-- div,1
sees.ads
-- div,1
all  i:In
-- div,5
all u:User
-- div,2
all u : User |
-- div,8
in sees.~posts
-- div,1
all p:Photo-Ad
-- div,1
Ad in User.see
-- div,1
all u: User  |
-- div,2
all x : User |
-- div,6
Ad in Users.sees
-- div,1
all p:Photo - Ad
-- div,1
all p:Photo - Ad |
-- div,1
all u : User | some
-- div,2
all u : User | sees.
-- div,1
(u.follows).(Photo-Ad)
-- div,1
all a : Ad | all sees.a
-- div,2
all x : Ad | all sees.x
-- div,2
all x : User | x.sees.ad
-- div,4
some x : User | x.Photo->
-- div,1
all u:User | Ads in u.sees
-- div,1
Ad + sees & follows.posts)
-- div,1
all u : User | u.sees.user
-- div,1
all p:Photo-Ad | all p.sees
-- div,1
all u, User | u.sees in sees
-- div,1
all u:User in u.follows.posts
-- div,1
all x : User | y in x.follows
-- div,1
all u:User | sees in follows.p
-- div,1
all u:User |  in u.follow.post
-- div,1
all a:User | a.follows & not Ad
-- div,1
all x : Photo.not Ad | x.follows
-- div,1
all u:User | all u.follows.posts
-- div,1
all x : Photo not Ad | x.follows
-- div,1
all x : Photo not Ad | y.follows
-- div,1
all u: User | in u.follows.posts
-- div,1
all u: User |  in u.follows.posts
-- div,1
all x : posts.x | x not in sees.x
-- div,1
all u:User |sees in u.follow.post
-- div,1
all x:User | all p:Photo not Ad |
-- div,1
all p : Photo - Ad | all u : User
-- div,1
all x : User | x.sees | x.follows
-- div,1
all u : User |  in u.follows.post
-- div,1
all x: suggested | all x.suggested
-- div,1
all x: suggested | all suggested.x
-- div,1
all a: Add, u: User | u->a in sees
-- div,1
all x:User | all p:Photo not in Ad
-- div,1
all x : Ad and y : User | y sees.x
-- div,1
all u:User |   Ad in u.follow.posts
-- div,1
all x:User | some y:Photo | y in ad
-- div,1
all u:User | sees in follows.Photos
-- div,1
some x: Influencer|all y :User x!=y
-- div,7
all u: User, all p: Photo-Ad | some
-- div,1
all p : Photo | all u1, u2 : User |
-- div,4
all p:Photo - Ad | some ua | all ub
-- div,1
all x : User | x.sees in x.follows |
-- div,1
all x:User, all p:Photo| x in sees.p
-- div,1
one a: Ad, all u: User | a in u.sees
-- div,1
all u:User | not Ad in u.follow.post
-- div,1
all u:User | u.sees in u.follow.post
-- div,1
all x:User | some y:Photo | y in add
-- div,1
all u : User | univ in u.follow.post
-- div,1
all x : Ad and y : User | y in sees.x
-- div,1
all x : User | all y : Photo | posts.
-- div,1
all x : User | all y Ad | y in x.sees
-- div,3
one a: A | all u: User | u->a in sees
-- div,1
all u:User | u.sees in u.follows.post
-- div,1
one a: Ad, all u: User | u->a in sees
-- div,1
all u : User | not Ad in u.follow.post
-- div,1
all sees :> (follows.posts.Photo + Ad)
-- div,1
all x : Ad and y : User | all y sees.x
-- div,1
all x:User | all p:Photo not in set Ad
-- div,1
all u:Useru.sees-Ad in u.follows.posts
-- div,1
all x : User | x.sees in p: Photo - Ad
-- div,1
all u : User | u.sees in u.follows.post
-- div,1
all p.Photo, u.User | u.follows.posts.p
-- div,2
all u: User | u.sees in 'u.follows.sees
-- div,1
all u : User | not Ad in u.follows.post
-- div,1
all u: User, all s: Photo | s in u.sees
-- div,1
all x: User | all y: Add | x->y in sees
-- div,1
all p : Photo - Ad | u : User, u.follows
-- div,1
all u : User u.sees.Ad in u.follows.post
-- div,1
all x : User | x.sees in , p: Photo - Ad
-- div,1
all x : User | all p : Photo | x.sees in
-- div,1
all u:User | u.sees-Ad in u.follows.post
-- div,1
all User:u | u.sees-U in u.follows.posts
-- div,1
&& all a: Ad | all x: User | x in sees.a
-- div,1
all x : Users | x.sees = follows.x.posts
-- div,1
all a : Add | all u : User | a in u.sees
-- div,1
all u:User | u.sees-U in u.follows.posts
-- div,1
all u:User | u.sees -Ad in u.follws.post
-- div,1
all u: user | u in (u - Influencer).sees
-- div,1
all x : Users | x.sees = x.follows.posts
-- div,2
all u:User | u.sees-M in u.follows.posts
-- div,1
all user:u | u.sees-U in u.follows.posts
-- div,1
all u:User | u.sees-ad in u.follows.posts
-- div,4
all x : User | some y : User in x.follows
-- div,1
all u:Users, p:Photo| p in u.follows.sees
-- div,1
x : User | x.sees - Ad in x.follows.posts
-- div,1
all x : User | x in x.sees one  x.follows
-- div,1
all u:User | u.sees -Ad in u.follows.post
-- div,1
all u : User | sees.u-ad in u.follow.post
-- div,1
all u:User | u.sees.ad in u.follows.posts
-- div,1
all u: User | sees.u-Ad in u.follows.post
-- div,1
some x: Influencer|User-x in Useer.sees.x
-- div,1
all x,y: User,Photo | sees.y in follows.x
-- div,1
all User:u | u.sees-Ad in u.follows.posts
-- div,3
all x : Ad and all y : User | all y sees.x
-- div,1
all u:User p:u.sees | p in u.follows.posts
-- div,2
all p:Photos | all u:User | p -> u in sees
-- div,1
all u : User | u.follows.posts in followed
-- div,1
all: u:User | u.sees-Ad in u.follows.posts
-- div,2
all: u:User | u.sees-Ad in follows.posts.u
-- div,1
all u: User | u.sees-ad in u.follows.posts
-- div,1
all u : User | sees & ad in u.follows.post
-- div,1
all u: User | x.sees-Ad in x.follows.posts
-- div,3
all x:User, all p:Photo| x.sees in p.posts
-- div,1
all u: User | x.sees-Ad in u.follows.posts
-- div,1
all p.Photo-Ad, u.User | u.follows.posts.p
-- div,1
all u:User | u.sees - Ad in u.follows.post
-- div,1
all u : User | (sees.u-Ad) in u.follow.post
-- div,1
all u : User | (sees.u-ad) in u.follow.post
-- div,1
all p:Photo| some (sees.p & post.p).follows
-- div,1
all u : User | not in Ad in u.follows.posts
-- div,2
all u : User | u.sees not in u.follows.post
-- div,1
all u: User | one u.post in u.follows.posts
-- div,1
all x,y : User | x in x.sees one  y.follows
-- div,1
all p:Photo-Ad | u:User | u.follows.posts.p
-- div,1
all u : User,p : Photos | p in Ad -> u.sees
-- div,1
all u: User, all s: suggested | s in u.sees
-- div,1
all x : User | all follows.x.posts | sees.x
-- div,1
all: u:User | u.sees - Ad in u.follows.posts
-- div,1
all u : User | all x.sees in x.follows.posts
-- div,1
all u : User | Ad != Root in u.follows.posts
-- div,1
all u:User | all p:Photos |  u.follows.posts
-- div,1
all u : User | all x.sees in u.follows.posts
-- div,1
all x:User, all p:Photo| x.sees in follows.p
-- div,1
all u: User | all (u.sees & u.follows.posts)
-- div,1
all u : User | u.post != Ad in u.follow.post
-- div,1
all u in User | u.sees in Ad+u.follows.posts
-- div,1
all x : User, all y : Photo | x -> follows.x
-- div,1
all p : Photo - Ad | all u : User, u.follows
-- div,1
all u : User | u.sees - Ad in u.follows.post
-- div,1
all u : User | not in Ad. in u.follows.posts
-- div,1
all x : User | y in x.follows | z in y.posts
-- div,2
all x : User | all follows.x.posts in sees.x
-- div,2
all u:Users | u.sees = u.follows.posts +  Ad
-- div,1
all x:User, all p:Photo| x.sees.p in follows
-- div,1
all x:User, all p:Photo| x in sees.p.follows
-- div,1
all u : User | u.(sees-Ad) in u.follows.posts
-- div,1
all x : User | all follows.x.posts->x in sees
-- div,1
all p:Photo-Ad | follows.posts.p
all u:User |
-- div,1
all p:Photo-Ad | u.follows.posts
all u:User |
-- div,1
all p: Photo | p.posts - Ad in u.follows.posts
-- div,1
all x : User | x.sees in (x.follws.posts + Ad)
-- div,2
all u : User | u.sees - Ad in (u.follows).post
-- div,1
all u : User, | u.sees in u.follows.posts + Ad
-- div,1
all x : User | y in x.follows | z in y.posts |
-- div,1
all u : User, s : u.sees | s.user in u.follows
-- div,1
all p: Posts | p.Photo - Ad in u.follows.posts
-- div,1
all u : User | no object.Ad in u.follows.posts
-- div,1
all u : User | post.(sees.u - Ad) in u.follows
-- div,1
all x : User | x.sees y: User | y in x.follows
-- div,1
all u: User | u.sees.ad not in u.follows.posts
-- div,1
all x : User, all y : Photo | x,y->follows.x.y
-- div,1
all uu2 : User | all p : Photo | p in u2.posts
-- div,1
all u:User | (u.posts - Ad) in u1.follows.posts
-- div,1
all x : User | x.sees in (x.follows.posts - ad)
-- div,1
all u : User | all p: Photo - Ads | u.follows.p
-- div,1
all u: User | u.sees in u.posts
-- div,1
all x : User | x.sees in (x.foll0ws.posts + Ad)
-- div,1
no (follows & iden) | u.follows.posts not in Ad
-- div,1
all u: User | u.sees & no Ad in u.follows.posts
-- div,1
all x,y : User | x.follows.y | x.sees.(y.posts)
-- div,1
all u : User | all p : Photos | u -> p in posts
-- div,1
all u : User | not in Ad.sees in u.follows.posts
-- div,1
all u: User | u.follows.posts in u.sees & no Ads
-- div,1
all x:User | all p:Photo in set Ad | x in sees.p
-- div,1
all x:User | x.sees = x.follows.posts + all y:Ad
-- div,1
all u : User, p : (u.posts Ad) | p not in u.sees
-- div,1
all u : User | u.sees in u.follows.(posts no Ad)
-- div,1
all u : User,p : Photos | p in Ad -> p in u.sees
-- div,1
all u : User | no u.sees - (Ad + u.follows.post)
-- div,1
all u1:User | (u.posts - Ad) in u1.follows.posts
-- div,1
all u:User | (u.follows.posts in u.sees) implies
-- div,2
all p: Photo-Ad | sees.p in u in follows.posts.p
-- div,1
all x:User | all p:Photo not  Ad | p in follows.x
-- div,1
all u : User | all p : Photos | u -> p in follows
-- div,2
all x : User, all y : Photo | x,y all follows.x.y
-- div,1
all u:User | p in u.follows.posts or u.sees in Ad
-- div,1
all u : User | u.sees in u.follows.(posts not Ad)
-- div,1
all x : User | all follows.x.posts implies sees.x
-- div,1
all user: User | all ad : Ad | all photo: Photo |
-- div,1
all u: User | u.follows.posts in (u.sees & no Ad)
-- div,2
all x : User, y x.follows.posts - Ad | x.sees = y
-- div,1
User.sees = User.follows.posts + Ad + User.posts)
-- div,1
all u : User | all u.sees - Ad in u.follows.posts
-- div,2
all a,b : User | all c : Photos | b -> c in posts
-- div,1
all x: User | y in follows.x
x sees.z
z in posts.y
-- div,1
all p,x : Photo-Ad,User | p in sees.x -> follows.x
-- div,1
sees.Photo in User.follows.posts + Influecer.posts
-- div,1
all u : User | u.sees.Photos-Ad in u.follows.posts
-- div,1
all x : User | all follows.x.posts not Ad in sees.x
-- div,1
all x:User, all p:Photo| x in sees.p.follows not Ad
-- div,1
sees.Photo in follows.posts.Photo + Influecer.posts
-- div,1
all u:User |  (u.follows.posts + some Ad) in u.sees
-- div,1
all disj u1: User, u2: User | some u1.sees u2.posts
-- div,1
all u -> s : sees |
one f : u.follows |
s in f.posts
-- div,1
all x:User | all p:Photo not Ad | p not in follows.x
-- div,1
all x : User | Add(x.sees) or follows.posts.(x.sees)
-- div,1
all u : User | all p : Photo - Ad  u.sees  u.follows
-- div,3
all u:User | u not u.sees
all u:User | a:Ad | a.sees
-- div,1
all x : User | x in posts.x implies x in all posts.x
-- div,9
all u: User | u.follows.post.ad not in u.follows.post
-- div,1
all p:Photo, u:user | u -> p in seeds implies p in Ad
-- div,1
all x:User, all p:Photo| x.sees-Ad in x.follows.posts
-- div,1
all u: User | u.sees in u.follows.posts and not in Ad
-- div,1
all x, y : User |  y in x.follows | x.sees in y.posts
-- div,1
all x, y : User |  y in x.follows | posts.y in x.sees
-- div,1
all x, y : User |  y in x.follows | y.posts in x.sees
-- div,1
all x: User | y in follows.x , x sees.z, z in posts.y
-- div,2
all p: Photo-Ad | all u: see.p | u in follows.posts.p
-- div,1
all x: User | y in follows.y , x sees.z, z in posts.y
-- div,1
all p:Photo, u:User | u -> p in seeds implies p in Ad
-- div,1
all x: User y in follows.x | z in posts.y iff x sees.z
-- div,1
all x: User | y in follows.x z in posts.y iff x sees.z
-- div,1
all u: User | u.follows.posts not in Ad | u.sees in Ad
-- div,1
all u:User | all p:u.sees | f:u.follows | p in f.posts
-- div,1
all x : User | x.sees implies y: User | y in x.follows
-- div,1
all p,x,u : Photo-Ad,User,follows.x | p in sees.x -> u
-- div,1
all u:User | u not u.sees
all u:User | a:Ad | u sees a
-- div,1
all x : User | x.sees in x.follows.posts and not in Ad
-- div,2
all u:User, p:u.sees : p in u.follows.posts or p in Ad
-- div,1
user : User | ad : user.sees | ad in user.follows.posts
-- div,1
all u: User | u.sees in (u.follows.posts) and not in Ad
-- div,1
all p: Photo | u:User | p.posts - Ad in u.follows.posts
-- div,1
all x:User | all p:Photo not in sig Ad | p in follows.x
-- div,1
all u: User | u.follows.post.ads not in u.follows.posts
-- div,1
all x : User | x.sees in Ad or  or follows.posts.x.sees
-- div,1
User.sees not in User.posts
All y : User | Ad in y.sees
-- div,1
all u : User, p : Photo-Ad | posts.p & u.follows.posts)
-- div,1
all x:User | all p:Photo not in set Ad | p in follows.x
-- div,1
all u : User | all p : Photos-Ad | p in u.follows.posts
-- div,2
all x:User | all y:Ad| let x.sees = x.follows.posts + y
-- div,1
all x: User | y in follows.x, z in posts.y iff x sees.z
-- div,2
all u:User, p:Photo | lone (follows.posts.u & not Ad.p)
-- div,1
all x : User | x.sees in Ad or x.sees in x.follows.post
-- div,1
all u: User | u.follows.posts.ad not in u.follows.posts
-- div,1
all u:User | all p:Photos | u -> p in sees iff p not add
-- div,1
all x:User,y:Photo | sees.y in follows.x && posts.y == x
-- div,1
all x:User, all p:Photo| x.sees.p in follows && p not Ad
-- div,1
all x : User | all x.sees-Ad implies one x.follows.posts
-- div,1
all x : User | x.sees in x.follows.posts or x.sees == Ad
-- div,1
all u:User | p:Photo | p in u.sees implies (p in Ad or )
-- div,1
all u : User |p in Photos and p != Ad in u.follows.posts
-- div,1
all x : User & all y : Photo | y.follows.posts not in Ad
-- div,1
all u : User | u.follows.posts in (u.sees and not in Ad)
-- div,1
all x : User | some y : User | y in x.follows
y in sees.x
-- div,1
all x,y: User,Photo | sees.y in follows.x && posts.y == x
-- div,3
all u: User | all p: u.sees | p in Ad or p in u.follows.*
-- div,1
all u:User | u not u.sees
all u:User | a:Ad | u -> a.sees
-- div,1
all x : User |all p : Photo | p not in Ad| p in x.follows
-- div,1
all u : User | all p : Photo | u->p in sees and not in Ad
-- div,1
all u:User | all p:u.sees | p in u.follows.posts
all a:Ad
-- div,1
all u :User | u.sees not in Ad |u.sees in u.follows.posts
-- div,1
all x: User | y in follows.x and z in posts.y iff x sees.z
-- div,1
all x : User | x.sees in Ad or post.x.sees in x.follows

-
-- div,1
some u1 : univ | u1 in User and all p, u2: univ | p->u1 in
-- div,3
all u:User, all p:u.sees : p in u.follows.posts or p in Ad
-- div,1
all u : User | all y : x.sees | y in Ad or x.follows.posts
-- div,1
all x: User | x.sees = x.follows.posts | all x.posts != Ad
-- div,1
all u : User | u.sees not in Ad and not in u.follows.posts
-- div,1
all u: User, all p: Photo-Ad | some u.sees.follows.posts.p
-- div,1
all u:User | all u.sees in u.follows.posts or u.sees in Ad
-- div,1
one user : User | ad : user.sees | ad in user.follows.posts
-- div,1
all x : User | sees.x not in Ad | sees.x in follows.x.posts
-- div,1
all u : User, f : Photo | f!=Ad implies f in u.follows.post
-- div,1
all x : User, all y : Photo | y in x.sees implies (y in Ad)
-- div,1
all u: User | all p: u.sees | some f: in u.follows | f -> p
-- div,1
all x : User | x.sees in Ad or x.sees in x.follows.posts

-
-- div,1
all x:User, all p:Photo| x.sees.p in follows && p not in Ad
-- div,1
all x : User | x.sees in x.follows.posts or in (Photo + Ad)
-- div,1
all u : User | all p : Photo | (u->p in sees and not in Ad)
-- div,1
all u:User | all p:u.sees : p in u.follows.posts or p in Ad
-- div,1
all x:User | some y:Photo | y in posts.follow.x or y in add
-- div,1
x: User | x.sees not in x.posts
all y : User | Ad in y.sees
-- div,1
all x : User | x.sees in Ad or posts.x.sees in x.follows

-
-- div,1
all u:User | u.sees - Ad in u.follows.posts
Ads in User.sees
-- div,2
all x:User | some y:Photo | y in x.follows.posts or y in add
-- div,1
all u:User | u.follows.posts
all u:User | a:Ad | u.sees -> a
-- div,1
all u: User | u.follows.posts not in Ad | u.sees.posts in Ad
-- div,1
all x : Users | all p : x.sees | p not in Ad => x.sees.posts
-- div,1
user : User | ad : user.sees | ad in lone user.follows.posts
-- div,1
all u: User | u not in u.follows | u.follows.posts not in Ad
-- div,1
all u: User, p: Photo-Ad | (u.follows.posts & not iden) in p
-- div,1
all x: User | all y : Photo - Add | x.sees = x.follows.posts
-- div,1
all u: User | u.follows.posts not in Ad | no (follows & iden)
-- div,1
all x: Influencer|some y: User| x!=y  one (sees.x in posts.y)
-- div,1
all u: User |  u not in u.follows | u.follows.posts not in Ad
-- div,1
all x: Influencer|some y: User| x!=y  one (posts.y in sees.x)
-- div,1
all x : User | all y: x.sees | y in x.follows.posts or y : Ad
-- div,1
all u : User, p : Photo - Ad | all (posts.p & u.follows.posts)
-- div,1
all x : User | all y : x.sees | (y not Ad) -> (y in x.follows)
-- div,1
all x: Influencer|some y: User : x!=y  one (sees.x in posts.y)
-- div,1
all u : User | u.sees implies u.follows.posts | u.sees some Ad
-- div,1
all u : User | all p : Photos - Ad | u.follows.posts in u.sees
-- div,1
all x: User | all y: User | x.sees in y.post -> y in x.follows
-- div,1
all x : User | x.sees in x.follows.posts

all y : Ads | y.sees
-- div,1
one u : User | all p : Photo | u -> p in sees | u -> p follows
-- div,1
all u: User | all p: Photo | u.follows.see.posts in p.Photo-Ad
-- div,1
all x : User | all p : u.sees | p in x.follows.posts or p in Ad
-- div,1
all a,b:User | some p:Photo|b in a.follows  implies AD not in p
-- div,1
all a,b:User | some p:Photo|b in u.follows  implies AD not in p
-- div,1
all u:User | (u.follows.posts in u.sees) implies all p.Photo-Ad
-- div,1
all u: User | all p: u.sees | p in Ad or p in u.follows.*.posts
-- div,1
all x : User |all p : Photo | p not in Ad| p in x.follows.posts
-- div,1
all x : User | (x.sees in Ad) or (x.sees in x.follows.posts)

-
-- div,1
all x,y : User | x != y and y in x.follows => x.sees == y.posts
-- div,3
all x : User | all p : x.sees | p not in Ad => p in u.sees.posts
-- div,1
all x:User | some y:Photo| y in Ad| x.sees = x.follows.posts + y
-- div,1
all x : User | x.sees - Ad in x.follows.posts
-- div,1
all u : User | some p : Photo | p in u.sees iff p.post.follows.u
-- div,1
all u : User | u.sees-Ad in u.follows.posts
-- div,6
all x : User & all y : Photo | x.follows.posts not in x.Photo.Ad
-- div,2
all u : User | all p : u.sees | p in u.follows.posts or p in Ad|
-- div,4
all u : User | u.sees in u.follows.posts | u.sees not in u.posts
-- div,1
all x : User & all y : Photo | x.follows.posts not in x.Photos.Ad
-- div,1
all x : User |all p : Photo | p not in Ad| p in (x.follows).posts
-- div,1
some x : User | all y : User | y in x.follows | x.sees in y.posts
-- div,2
all u : User | u.sees in u.follows.posts | u.sees implies some Ad
-- div,1
all u : User | all p : Photo | u -> p in follows | u -> p in sees
-- div,2
all u:User | u.sees in u.follows.posts & (Photo-Ad)

all u:User |
-- div,1
all u: User | all p: u.sees | some f: in u.follows | p in f.posts
-- div,1
User, p: Photo | (p in u.sees) => (p in follows.posts || p in Ad)
-- div,1
User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
-- div,2
all x : User | all y : User |  y in x.follows | x.sees in y.posts
-- div,1
all x : Users | all p : x.sees | p not in Ad => p in u.sees.posts
-- div,1
all u:User, p:Photo | p in u.sees => p in Ad p.posts in u.follows
-- div,1
all u: User | all p: u.sees | some f: in u.follows -> p in f.posts
-- div,1
all x: User y: User | y in follows.x and z in posts.y iff x sees.z
-- div,1
all x, z: User, y: Photo | y.ad or z in x.follows and y in z.posts
-- div,2
all x : User | x.sees in x.follows.posts or x.sees = (Photo + Add)
-- div,1
some x : User | all y : User |  y in x.follows | x.sees in y.posts
-- div,1
all p:Photo - Ad | some a | all b | (p in a.posts and p in b.sees)
-- div,1
all u:User | p:Photo-Ad | p in u.sees implies p in u.follows.posts
-- div,4
all u : User | x in sees.u and x not in Ad => x in follows.u.posts
-- div,1
all x : User | all y : x.sees | (y not iff Ad) -> (y in x.follows)
-- div,1
all u: User, p: Photo - Ad | u not in o.follows => u not in p.~sees
-- div,1
all y : Ad | all x : User | x.sees in x.follows.posts | x in y.sees
-- div,1
all y : Ad | all x : User | x.sees in x.follows.posts | y in x.sees
-- div,1
all u1, u2 : User | u2 in u1.follows | p in u2.posts | p in u1.sees
-- div,1
all x: User, y: User | y in follows.x and z in posts.y iff x sees.z
-- div,1
all x : User | all follows.x.posts : Photo and not Ad implies sees.x
-- div,1
all x,y: User | x.sees in y.posts && y in x.follows && y.post not Ad
-- div,1
all y : Photo-Ad | all x : User | y in x.sees | y in x.follows.posts
-- div,1
all y : Photo-Ad | all x : User | x.sees in y | y in x.follows.posts
-- div,2
all u : User | all p: Photo | all u2 : | posts.(u.sees) in u.follows
-- div,1
all u:user, p:Photo | p in u.sees => p in u.follows.posts or p in Ad
-- div,1
all u: User, p: Photo-Ad | (u.follows.posts) in p and not in u.posts
-- div,1
all u: User | all p: u.sees | (some f: in u.follows -> p in f.posts)
-- div,1
all p:Photo, u1, u2:User | p -> u1 in sees and implies u2 in follows
-- div,1
all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows)
-- div,1
all x : User | all p : follows.x.posts not in Ad implies x->p in sees
-- div,1
all u : User | u.sees in u.follows | u.sees not in Ad
Ad in User.sees
-- div,2
all User, p: Photo | (p in u.sees) -> (p in follows.posts || p in Ad)
-- div,1
all a,b : User | all c : Photo | b -> c in posts implies c not in ads
-- div,1
all u : User, a : Add | u.follows.posts - a in u.sees and a in u.sees
-- div,1
all u:User | (u.follows.posts in u.sees) implies u.follows.post != Ad
-- div,1
all x : User ! x.sees in x.follows.posts or all x: User | x.sees in Ad
-- div,1
all y : Photo-Ad | all x : User | y in x.sees | y in (x.follows).posts
-- div,1
all Photo: p, u: User | p in u.sees => p in u.follows.posts or p in Ad
-- div,1
all u : User | u.sees implies u.follows.posts | u.sees implies some Ad
-- div,1
all x : User | all y : Photos | (x -> y in sees) -> (x -> y in follows)
-- div,1
all u:User | p:Photo-Ad | p in u.sees implies p in u.follows.posts + Ad
-- div,2
all u : User | (u.sees not in ad) implies (u.sees in (u.follows).posts)
-- div,1
all u : User | all p : Photos not in Ad | u.sees not in p and u.follows
-- div,1
all u : User | u.sees in u.follows.posts | u.sees in Ad
Ad in User.sees
-- div,1
all x : User | all y : User | x.sees in y.posts | not x.sees in x.posts
-- div,1
all u:User | u.sees = u.follows.posts & (Photo-Ad) and Ad

all u:User |
-- div,1
all x : User, p : Photos-Ad | x->p in sees implies p in x.follows.posts
-- div,1
all u: User | all p: u.sees | p in Ad or (some f: in u.follows | f -> p)
-- div,1
all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
-- div,10
all u: User, p: Photo | (p in u.sees) => (p in (u.follows.<.posts + Ad))
-- div,3
all p: Photo | all u: User | p in u.follows and
all a: Add | a in u.sees
-- div,1
all x : User | all y : x.sees | y not in User.posts and y not extends Ad
-- div,1
all u : User| all p : Photo - Ad | p in u.sees then p in u.follows.posts
-- div,1
all ad : Ad | all u: User | ad in user.sees implies ad not in user.posts
-- div,1
all u : User | all p : Photo | (u->p in sees and not in Ad) implies true
-- div,1
all u : User, Photo : p | p in u.sees => p in Ad or p in u.follows.posts
-- div,1
all user : User | user.sees in user.follows.posts
or p : Photo | p in Ad
-- div,1
all x : User | all y : x sees - Ad | (some u: x.follows) | y in u.posts)
-- div,1
all ad:Ad, p:Photo, u:User | p not in Ad implies posts.p in user.follows
-- div,1
all u : User | all p : Photos | p in u.sees implies p in u.follows.posts
-- div,1
all u : User | all p : Photo | (u->p in sees and not in Ad) implies True
-- div,1
all x : User | all y : Photos |  y in x.sees implies y in x.follows.posts
-- div,1
all ad:Ad, p:Photo, u:User | p not in Add implies posts.p in user.follows
-- div,1
all a:User | all p:Photo | p in a.sees => p in u.follows.posts or p in Ad
-- div,1
all u : User, p : Photos | p in u.sees => p in u.follows.posts or p in Ad
-- div,1
all u:User | u.sees.-Ad = u.follows.posts




all u:User | u.sees.Ad = Ad
-- div,1
all Photo: p, all u: User| p in u.sees => p in u.follows.posts or p in Ad
-- div,2
all x : Photo, y : User | x in sees.x iff x in follows.y.posts and x : Ad
-- div,1
all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts ++ Ad))
-- div,1
all p:Photos - Ad | all u:User | p in u.sees impliesmp in u.follows.posts
-- div,1
all u1,u2 : User, p : Photo - Ad | u->p in sees implies u1->u2 in follows
-- div,1
all y : Photo-Ad | all x : User | x.sees in x.follows.posts | y in x.sees
-- div,1
all (u: User, p: Photo) | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
-- div,1
all u:User | all p: Post - Ad | p in u.sees implies p in (u.follows).posts
-- div,1
all Photo: p, all u: User | p in u.sees => p in u.follows.posts or p in Ad
-- div,1
all u : User, y : Photo| y in u.sees not & Ad implies y in u.follows.posts
-- div,1
all u: User | all p: u.sees | p in Ad or some f: in u.follows -> f.posts.p
-- div,1
all x: User, y: User, z : Photo | y in follows.x z in posts.y iff x sees.z
-- div,1
all u:User | u.sees-Ad in du.follows.posts
all u:User | all  a:Ad | u.sees
-- div,1
all u:User | u.follows.posts in u.sees and u.sees - u.follows.posts in add
-- div,1
all u : User, all p : Photo | p in u.sees implies some u.follows in posts.p
-- div,1
all u:User | all p: Posts - Ad | p in u.sees implies p in (u.follows).posts
-- div,1
all u : User | all p : Photo | p not in Ad | u.sees implies u.follows.posts
-- div,1
all u : User | u.sees in u.follows.posts | u.sees not in Ad
Ad in User.sees
-- div,1
all x : User, all y : Photo | y in x.sees implies (y in Ad or y in follows)
-- div,1
all u1, u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
-- div,9
all x: User, y: User, z : Photo | y in follows.x, z in posts.y iff x sees.z
-- div,1
all u:User | u.sees == u.follows.posts.~Ad




all u:User | u.sees.Ad == Ad
-- div,1
all u : User | all p : Photo - Ad | p in u.sees implies p in u.follows.post
-- div,2
all u : User, all p : Photo - Ad | p in u.sees implies u.follows in posts.p
-- div,1
all u: User, p: Photo | (p in u.sees) => (p in u.posts)
-- div,3
all p:Photo - Ad | all u:User | p in u.sees implies p in one u.follows.posts
-- div,1
all x : User | all y : User |all p : Photos| y in x.follows and p in y.posts
-- div,1
all u: User, all p: Photo | (p in u.sees) -> (p in (u.follows.<.posts + Ad))
-- div,1
all u1,u2 : User, p : Photo | p in u.sees => p in u.follows.posts or p in Ad
-- div,1
all u: User, p: Photos | p not in Ad && p in u.sees => p.~posts in u.follows
-- div,1
all u : User, p: Photo| p in u.sees implies (p in Ad | p in u.follows.posts)
-- div,1
all u: User, p: Photo | (p in u.sees) -> (p in (u.follows.<.posts union Ad))
-- div,4
all u: User, p: Photo | p in u.sees implies p in Ad or p.~posts in x.follows
-- div,1
all p:Photo - Ad | all u:User | p in u.sees impliesmp in one u.follows.posts
-- div,1
all p:Photos - Ad | all u:User | p in u.sees impliesmp in one u.follows.posts
-- div,1
all x : User, all y : Photo | y in x.sees implies (y in Ad or y in x.follows)
-- div,1
all u: User | all p: u.sees | { some f: in u.follows | f.posts.p } or p in Ad
-- div,1
all x : User, all y : Photo | y in x.sees implies (y in Ad or y in y.follows)
-- div,2
all u: User | some y: User | all p: Photo | u.follows.posts | u->y in follows
-- div,1
all p: Photo | all u: user |  p in u.sees implies (p in u.follows or p in Ad)
-- div,1
all u: User | all p: u.sees | (some f: in u.follows -> f.posts(p)) || p in Ad
-- div,1
all u: User, p: Photo | (p in u.sees) implies (p in (u.follows.<.posts + Ad))
-- div,1
all u:User | not some p:Photo-Ad | u->p in sees and posts . p not in u.folows
-- div,1
all x : User, all y : Photo | y in x.sees implies (y in Ad or y in follows.y)
-- div,2
all x : User, all y : Photo | y in x.sees implies (y in Ad or y in follows.x)
-- div,1
all u : User | all p : Photos-Ad | p in u.sees implies (p in u.follows.posts)
-- div,1
all x,y,z : univ | x->y in sees implies z->y in posts and x->z in follows and
-- div,1
all u : User | all p : Photo | p not in Ad | u.sees not in p & u.follows.posts
-- div,1
all x,y : User | all p in x.sees | (p in y.posts & x->y in follows) or p in Ad
-- div,1
all x, y, f : User, User, Photo | y in follows.x -> f in posts.y and in sees.x
-- div,1
all x : User |all p : Photo | p not in Ad| p in (x.follows).posts| p in sees.x
-- div,1
all u:User | some p:Photo-AD | u.follows.posts
all u:User | all  a:Ad | u.sees
-- div,1
all x, y : User, z : Photo | Ad.z and follows.x => some sees.y else all sees.y
-- div,1
all u : User | p : Photo | p in u.sees and p not in Ad implies u.follows.posts
-- div,1
all u : User | all ph : Photo - Ad | ph in u.sees implies ph in u.follows.post
-- div,1
all x : User |all p : Photo | p not in Ad| p in (x.follows).posts| p in x.sees
-- div,1
all x : User | All a : Ad | x -> x.follows.posts - Ad in sees & x -> a in sees
-- div,1
all u: User, p: Photo - Ad | u in u.follows.posts.~sees => ( or u in Ad.~sees)
-- div,1
all u: User | all a: Ad | all p: Photo-Ad | u.follows.posts in p | u.sees in a
-- div,1
all u:User | u.sees = u.follows.posts.Photo-Ad




all u:User | u.sees.Ad == Ad
-- div,1
all x : User | x.sees in (x.follows.posts - Ad) or (x.sees not x.follows.posts)
-- div,1
all u: User | all p: u.sees | (some f: in u.follows -> p in f.posts) or p in Ad
-- div,1
all x : User | all y : Photos | some z : User | y in z.posts and y in x.follows
-- div,1
all u: User | all p: u.sees | (some f: in u.follows -> p in f.posts) || p in Ad
-- div,1
all u1 : User, p : Photo | p in u1.sees implies p in u.follows.posts or p in Ad
-- div,1
all u, v: User | u in v.follows => u.posts in v.sees and (u.posts & v.sees & Ad
-- div,1
all u : User | all p : Photo | p not in Ad | u.sees implies p & u.follows.posts
-- div,1
all x , y : User , z : Photo | Ad.z and follows.x => some sees.y else all sees.y
-- div,1
all u:User | u.sees == u.follows.posts.Photo-Ad




all u:User | u.sees.Ad == Ad
-- div,3
all u1, u2 : User | all p : Photo | u1 in sees.p | u2 in posts.p | u1 follows.u2
-- div,1
all user : User | photo : Photo | user.sees in user.follows.posts
or photo in Ad
-- div,1
all x, y, f : User, User, Photo | y in follows.x -> f in posts.y and f in sees.x
-- div,1
all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or p in Ad
-- div,1
all u1, u2 : User, p : Photo | p in u1.sees -> u2 in u1.follows /\ p in u2.posts
-- div,1
all x : User | (x.sees in (x.follows.posts - Ad)) or (x.sees not x.follows.posts)
-- div,1
all x : User | x.sees - Ad in x.follows.posts
all x : User | y : Ad | y in x.sees
-- div,1
all user : User | photo in Photo | user.sees in user.follows.posts
or photo in Ad
-- div,1
all u: User | all p: u.sees | (some f: in u.follows -> p in f.posts) disj p in Ad
-- div,1
all y : Photo-Ad | all x : Users | (x in sees.y) implies  ( y in x.follows.posts)
-- div,1
all u : User | u.follows.posts in u.sees
all a : Add | all u : User | a in u.sees
-- div,1
all user : User , photo in Photo | user.sees in user.follows.posts
or photo in Ad
-- div,1
all x: User | all y: Photos - Ad | x.sees = x.follows.posts | x.follows.posts = y
-- div,1
all u : User, p : Photo | p in user.sees implies ( p in Ad or p in follows.posts )
-- div,1
all y : Photos-Ad | all x : Users | (x in sees.y) implies  ( y in x.follows.posts)
-- div,3
all u: User, p: Photo | p.~sees in u.follows

all p: Photo | p = ad => p.sees in u
-- div,1
all x, z: User | all p: Photo | x in seen.p => (p in (x.follows).posts || p in Ad)
-- div,1
all p : Photo - Ad, u1,u2 in User | u1.sees.p and u2.posts.p implies u1.follows.u2
-- div,1
all u : User | all p : Photo | u->p in sees and not in Ad implies u not in posts.p
-- div,1
all x : User | all p : Photo | p in u.sees implies p in u.follows.posts or p in Ad
-- div,1
all u : User | some p : Photo | p in u.sees p not in ad iff u in (posts.p).follows
-- div,1
all x : User | x.sees - Ad in x.follows.posts
all x: User, y: Ad | all y in x.sees
-- div,1
all x,y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
-- div,2
all x : User | all y : x.sees | y not in Ad => (some f : x.follows && y in f.post)
-- div,1
all u:User, u1:User, p:Photo | u2 not in u.follows and p in u.sees implies p in Ad
-- div,1
all p:Photos, u1,u2:User | p in u1.posts and p in u2.sees implies u1 in u2.follows
-- div,1
all u : User | all p : Photo | p in u.sees implies (p in Ad or u in follow.posts.p)
-- div,1
all u: User, p: Photo | (p in u.sees) <=> (p in u.follows.posts or p instanceof Ad)
-- div,1
all u: User, p: Photo | p.~sees in u.follows

all p: Photo | p in ad => p.sees in u
-- div,1
all x : User | all y : x.sees | y not in Ad => (some f : x.follows && y in f.posts)
-- div,1
all u : User | p : Photo | p in u.sees and p not in Ad implies p in u.follows.posts
-- div,1
all x: User | all y: Photos - Ad | x.sees = x.follows.posts and x.follows.posts = y
-- div,1
all u1 : User | u2 : User | p : u2.posts | u1 -> p in sees implies u2 in u1.follows
-- div,1
all x : User | all y : follows.x | y in sees.x
all u : User | all a : Ad | x.sees.a
-- div,1
all x : User | all y : Photo | x.sees -> x.follows
all y : Photo | not in x.Photo.Ad
-- div,1
some x : User | all y : User | y in x.follows | x.sees not in Ad | x.sees in y.posts
-- div,2
all u,u1:Users | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows
-- div,1
all u1, u2 : User | all p : Photos | u2 in u1.follows | p in u2.posts | p in u1.sees
-- div,1
all x : User , y : Photo | y not in Ad and p in x.sees implies  p in x.follows.posts
-- div,4
all u : User | all p : Photo | (u->p in sees and not in Ad) implies u not in posts.p
-- div,1
all x : User | all p : Photo | all p in x.sees & (p in x.follows.posts) or (p in Ad)
-- div,2
all u,u1:Users | all p:Photo | p in u.posts and p in u1.sees
implies u in u1.follows
-- div,1
all u : User | all p : Photo | u->p in sees and not in Ad implies u not in (posts.p)
-- div,1
all u1,u2 : User, p : Photo | p in u1.seen implies p in u2.posts and u2 in u1.follows
-- div,1
all x : Users | all y : follows.x | y in sees.x
all u : Users | all a : Ad | x.sees.a
-- div,1
all u1,u2:User | p:Photo-Ad | p in u1.sees and p in u2.posts implies u2 in u1.follows
-- div,1
all x: User | all y: Photos - Ad | x.sees = x.follows.posts and x.follows.posts = x.y
-- div,1
all x,y,z : univ | x->y in sees if y not Ad implies z->y in posts and x->z in follows
-- div,1
all x : User, all y : Photo | y in x.sees implies (y in Ad or follows.x in follows.y)
-- div,1
all u : User | all p : u.sees - Ad | posts.p in u.follows
-- div,1
all x : User | all y : x.sees | (y not in Ad) -> (all z: (y in z.posts) in x.follows)
-- div,1
all p : Photos - Ad, u1,u2 : User | u1 in posts.p && u2 in sees.p => u2 in follows.u1
-- div,1
all u1,u2 : User | p : Photo | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,1
all u : User | Ad in u.sees
all u : User | all p : u.sees - Add | p in u.follows.posts
-- div,1
Some u1,u2: User | all p: Photo | p in u1.sees and p in u2.posts implies u1 follows u2
-- div,1
all u : User | some p : Photo | p in u.sees and p not in ad iff u in (posts.p).follows
-- div,1
all u : User | (u.sees not in Ad) implies ((p in u.sees) and (p in (u.follows).posts))
-- div,1
forall u: User, p: Photo |
(p in u.sees) <=> (p in u.follows.posts or p instanceof Ad)
-- div,1
forall u: User, p: Photo | (p in u.sees) <=> (p in u.follows.posts or p instanceof Ad)
-- div,1
all x : User , y : User , z : Photo | Ad.z and follows.x => some sees.y else all sees.y
-- div,1
all p : Photo, f : User | p in User.posts and f in User.follows
all p : Photo, f : User
-- div,2
all p : Photo - Ad | u1, u2 : User | u1 in sees.p and u2 in posts.p => u1 in follows.u2
-- div,1
all u : User | (u.sees not in Ad) implies ((p in u.sees) and (p in (u.follows).posts)))
-- div,1
all x,y : User | x.sees in y.posts implies x->y in follows
all x | (some y in x.sees) &
-- div,1
all x : User | all y : User | all p : Photos | y in follows.x, p in y.posts, x in sees.p
-- div,1
all x,y : x->y in sees implies Ad(y) or (some z : z->y in posts implies x->z in follows)
-- div,1
all x,y : User, p : Photo | ( p not Ad && p in x.sees && p in y.posts) => y in follows.x
-- div,1
all x,y : User, p : Photo | (not p.ads && p in x.sees && p in y.posts) => y in follows.x
-- div,1
all x : User | all y : User | y in x.follows | x.sees in y.posts & not x.sees in posts.x
-- div,4
all u : User | all p : Photo | p in u.sees implies ( p in Ad or p in user.follows.posts)
-- div,1
all u1,u2 : User | p: Photo-Ad | p in u1.sees and p in u2.posts implies u2 in u1.follows
-- div,3
all x,y,z : univ | x->y in sees if y not Ad implies z->y in posts and x->z in follows and
-- div,1
all x, z: User | all p: Photo | x in seen.p => (p in z.posts => x in follows.z) || p : Ad
-- div,1
all u : User | Ad in u.sees
all u : User | some p in u.sees - Add => p in u.follows.posts
-- div,1
all u : User, p : Photo | p in sees[u] <=> (p in posts[v] and v in follows[u]) or p in Ad
-- div,1
all p:Photo - Ad | some a | all b | (p in a.posts and p in b.sees) implies b in a.follows
-- div,1
all a:Ad, u, u2: User, p: Photo | a in u.sees and u2.posts in u1.sees => u2 in u1.follows
-- div,2
all x : User | all y : User | y in x.follows | x.sees in y.posts && not x.sees in posts.x
-- div,1
all u : User, p : Photo | u->p in sees -> some f : User | u->f in follows
User in sees.Ad
-- div,1
Some u1,u2: User | all p: Photo | p in u1.sees and p in u2.posts implies u2 in u1.follows
-- div,1
all x : User | all p : Photo | x -> p in sees implies p in x.follows.posts or (p in Ad)
«
-- div,1
all u,x:User, p:Photo-Ad| u->p in sees implies x->p in posts and u->x in follows and u!=z
-- div,1
all x,y: User, f:Photo | f in x.sees and f in y.posts implies (f not Ad && y in x.follows)
-- div,1
all u : User, p : Photo | p in u.sees implies u.follows in posts.p
all a : Ad | all sees.a
-- div,1
all a:Ad, u, u2: User, p: Photos | a in u.sees and u2.posts in u1.sees => u2 in u1.follows
-- div,1
all x,y : x -> y in sees implies Ad(y) or (some z : z->y in posts implies x->z in follows)
-- div,1
all u : User, p : Photo, ux : User | u->p in sees implies u->ux in follows, ux->p in posts
-- div,1
all a:Ads, u, u2: Users, p: Photos | a in u.sees | u2.posts in u1.sees => u2 in u1.follows
-- div,2
all x,y : x->y in sees implies (Ad(y) or (some z : z->y in posts implies x->z in follows))
-- div,2
all p : Photo - Ad | all x,y : User | (p in u.sees and p in y.posts) implies y in u.follows
-- div,1
all a:Ad, u, u2: Users, p: Photos | a in u.sees and u2.posts in u1.sees => u2 in u1.follows
-- div,2
all u1,u2 : User | p : (Photo-Ad) | p in u1.sees and p in u2.posts implies u2 in u1.follows
-- div,2
all u : User, p : Photo, ux : User | u->p in sees implies u->ux in follows | ux->p in posts
-- div,1
one a: Ad | all u: User | u->a in sees
one x: User | all p: x.follos.Photo-Ad | x->p in sees
-- div,1
all a:Ads, u, u2: Users, p: Photos | a in u.sees and u2.posts in u1.sees => u2 in u1.follows
-- div,1
all u1, u2 : User | all p : Photos | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,1
all u , y : User | all p: Photo - Ad | (y in posts.p and u in sees.p) implies x in follows.y
-- div,1
all u , y : User | all p: Photo - Ad | (y in posts.p and u in sees.p) implies x in follows.u
-- div,1
all x : User | all y : Photo | no(Ad y) and y not in x.follows.posts implies y not in x.sees
-- div,1
all u:User, p:Photo| u -> p in sees implies (some u2 |  u -> u2 in follows and u2-> in posts)
-- div,1
all u:User,p:Photo-Ad | (u->p in sees) => some u2:User | u->u2 in follows and u2->p in posts)
-- div,1
all p : Photos | some disj u1,u2 : User |  p in u1.sees and p in u2.posts -> u2 in u1.follows
-- div,1
all x,y: User | all p: Photo | p in x.sees | p in y.posts implies (y in x.follows or p in Ad)
-- div,1
all u1,u2 : User | u2.posts in u1.sees implies u2 in u1.follows

all a : Add | a in User.sees
-- div,1
all x, z: User, y: Photo | y in u.sees and y in z.posts and y not in Ad implies z in x.follows
-- div,1
all x: User, y: Photo| x->y in sees implies x->y in follows
all x: User, y: Add | x->y in sees
-- div,1
all u:User, p:Photos-Ad| p in u.sees implies p in u.follows.^(posts)
all a :Ad| a in User.sees
-- div,1
all p:Photo | all u:User | p in u.sees and p not in Ad implies one all u2:User | p in u2.posts
-- div,1
all x : User | all y : User | all p : Photos | y in follows.x and p in y.posts and x in sees.p
-- div,2
all u: User, p: Photo - Ad | u in u.follow.posts.~sees => (p in p.~posts.sees or u in Ad.~sees)
-- div,1
all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies ub in ua.follows
-- div,2
all x,y : User, p : Photo | (not p extends Ad && p in x.sees && p in y.posts) => y in follows.x
-- div,1
all u : User, p : Photo - Ad | p in u.sees implies u.follows in posts.p
all a : Ad | all sees.a
-- div,2
all p: Photo | all u: User | p in u.sees implies p in u.follows or p in u.sees implies p in Ad)
-- div,1
all p:Photo - Ad | some ua | all ub | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
-- div,1
all p:Photo - Ad | some u1 | all u2 | (p in u1.posts and p in u2.sees) implies u1 in u2.follows
-- div,1
all x,y : User, p : Photo | (not p extends ads && p in x.sees && p in y.posts) => y in follows.x
-- div,1
all x : User | some y : User | all p : in x.sees | (p in y.posts & x->y in follows) or (p in Ad)
-- div,1
all x : User | all p : in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
-- div,2
all u:User, p:Photo | u -> p in sees implies (( some u2:User | u->u2 in follows and u2->p in pos
-- div,1
all u: User | all p: Photo-Ad | p in u.sees implies (some y: User in u.follows and p in y.posts)
-- div,1
all u1,u2 : User | all p : photos-Ad | (p in u1.sees and p in u2.posts) implies u2 in u1.follows
-- div,1
all u:User, p:Photo ! u -> p in sees implies (( some u2:User | u->u2 in follows and u2->p in pos
-- div,1
all u1, u2 : User, p : Photo | (p in u1.sees and p in u2.posts and u2 in u1.follows) or (s in Ad)
-- div,1
all x,y : x->y in sees implies ((y in Photo) or (some z : z->y in posts implies x->z in follows))
-- div,1
All x:User, y: Photo-Ad|  x-> y in sees implies( some z:User| x->z in follows and z-> y in posts)
-- div,1
all x : User | all z: User |all y: Photo | x in follows.z |y not in Ad and y in z.posts|all see.y
-- div,1
all x,y : User, p : Photo, a : Ad | (not p == a && p in x.sees && p in y.posts) => y in follows.x
-- div,1
all u1, u2 : User | all p : Photo - Add | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,1
all u:User, p:Photo, ! u -> p in sees implies (( some u2:User | u->u2 in follows and u2->p in pos
-- div,1
all p : Photo - Ad | all u1, u2 : User | (p in u1.sees and p in u2.posts) implies u2 in u.follows
-- div,1
all u1, u2 : User, s : u.sees | (s in u1.sees and s in u2.posts and u2 in u1.follows) or (s in Ad)
-- div,2
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all a : Ad | all sees.a
-- div,2
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all a : Ad | all a.sees
-- div,1
all u:User, p:Photo| u -> p in sees implies (some u2:User |  u -> u2 in follows and u2-> in posts)
-- div,1
all p : Photos-Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows
-- div,1
All x:User, y: Photo-Ad|  x-> y in sees implies ( some z:User| x->z in follows and z-> y in posts)
-- div,1
all x: Photo - Ad | all u:User | x in u.sees implies some p.User | p in u.follows and x in p.posts
-- div,1
all u,u2:User , all p:Photo | u != u2 and u->u2 in follows and u->p in sees implies u2->p in posts
-- div,1
all u, f : User, p : Photo {
u -> p in sees => p not in Ad && u -> f in follows && f -> p in posts
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
some a : Ad | all sees.a
-- div,1
all x: User, y: User, p : Photo | y in follows.x and p in posts.y and  x in sees.p and z  not in Ad
-- div,1
all p:Photo | u1,u2:Photo | p in u2.posts and u2 in u1.follows implies p in u1.sees and Ad not in p
-- div,1
all u : User | Ad in u.sees
all u : User | all p : u.sees - Add | some u : u.follows | p in u.posts
-- div,1
all x: User, y: User, z : Photo | y in follows.x and p in posts.y and  x in sees.p and z  not in Ad
-- div,1
all u:User, p:Photo, ! u -> p in sees implies ( some u2:User | u->u2 in follows and u2->p in posts)
-- div,1
all u : User, f : Photo | (p in u.sees) implies (f not in Ad and f in u.follows.posts) or (f in Ad)
-- div,1
all u : User, all p : Photo | p in u.sees implies some u.follows in posts.p
all x : Ad | all sees.x
-- div,1
all x:User, x2:User, y:Photos | y in x.sees implies (y in Ad or  u->p in sees and u->u2 in follows)
-- div,1
all u1,u2 : User | p : Photo | (p in u1.posts and p in u2.sees and p!= Ad) implies u1 in u2.follows
-- div,1
all x:User | some y:User, p:photo | p in x.sees implies (p in y.posts and y in x.follows) or p in Ad
-- div,1
all u: User, u2: User, y: Photo | (y not in Ad and u->y in sees and u2->p) implies (x->y in follows)
-- div,1
all x : User | sees.x not in Ad | sees.x in follows.x.posts

all a : Ad | some x : User | x.sees = a
-- div,1
all u: User, u2: User, y: Photo | (y not in Ad and u->y in sees and u2->p) implies (u->y in follows)
-- div,1
all p : Photos - Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows
-- div,1
all x:Users | some y:User, p:photo | p in x.sees implies (p in y.posts and y in x.follows) or p in Ad
-- div,1
all u : User | (u.sees not in Ad) implies (u.sees in (u.follows).posts)

all p : Ad | p in Users.sees
-- div,1
all na : Photos - Ad | all u : User | na in u.follows.posts
all ad : Ad | all u : User | ad in u.sees
-- div,2
all x, z : User, y : Photo | no Ad.y in and (z in posts.y) and (x in sees.y) implies (x in follows.z)
-- div,1
all u : User, p : Photo | p in u.sees => p in u.follows.posts or p in Ad
-- div,4
all p : Photo-Ad | all u : User | u in sees.x implies some v : User | v in posts.p and u in follows.v
-- div,1
all u,u2:User , all p:Photo | u != u2 and u->u2 in follows and u->p in sees implies (u2->p in posts )
-- div,1
all x,y: User, f:Photo | f in x.sees and f in y.posts implies (f not Ad && y in x.follows) || f is Ad
-- div,1
all x, z : User, y : Photo | no y.Ad in and (z in posts.y) and (x in sees.y) implies (x in follows.z)
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows




one a : Ad | all sees.a
-- div,1
all u1:User,p:Photo | u -> p in sees implies (some u2:User | u2 -> p in posts and u1 -> u2 in follows)
-- div,1
all p : Photo - Ad, u : User | p in u.sees implies ( some u2 : User | u2 in u.follow && p in u2.posts)
-- div,1
all x, y : univ | x->y in sees implies y in Ad or All z : univ | z->y in posts implies x->z in follows
-- div,1
all u1, u2:User, p:Photos | u1 -> p in sees and u2 -> p posts and u1 -> u2
sees in User set ->  set Ad
-- div,1
all u:User | some p:Photo-Ad | u1->p in sees implies some u2:User| u2->p in posts and u1->u2 in follows
-- div,1
all u , y : User | all p : Photo | u in sees.p and y in posts.p and p not in add implies x in follows.y
-- div,1
all p : Photos-Ad | all u : User | u->p in sees implies some v : User | v->p in posts | u->v in follows
-- div,2
all add:Ad, all p:Photo, all u1,u2: User| p in u1.sees implies (p not in Ad p in u2.posts) else p in Ad
-- div,1
all add:Ad| all p:Photo| all u1,u2: User| p in u1.sees implies (p not in Ad p in u2.posts) else p in Ad
-- div,1
all u: User | all p: Photo-Ad | u->p in sees implies (some y: User | u->y in follows and y->x in posts)
-- div,1
all add:Ad, all p:Photo, all u1,u2: User| p in u1.sees implies ((p not in Ad p in u2.posts) or p in Ad)
-- div,1
all u1,u2 : User | p : Photo | (p in u1.posts and p in u2.sees and p not in Ad) implies u1 in u2.follows
-- div,1
all x,y: User, z:Photo-Ad | x-> z in sees and implies (some y: User| x-> y in follows and y->z in posts)
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all a : Ad | all sees.a.posts
-- div,1
all p : Photos-Ad | all u : User | u->p in sees implies some v : User | v->p in posts && u->v in follows
-- div,1
all u1,u2 : User | all p : Photo | u1->p in sees implies ((u2->p in posts u1->u2 in follows) or p in Ad)
-- div,1
all x : User | all z: User |all y: Photo | x in follows.z and y not in Ad and y in z.posts and all see.y
-- div,1
all x, y : univ | x->y in sees implies y in Ad or (All z : univ | z->y in posts implies x->z in follows)
-- div,1
all x,y: User, f:Photo | f in x.sees and f in y.posts implies (f not Ad && y in x.follows) || f not in Ad
-- div,1
all p : Photo, u1,u2 : User | (p not in Ad and u->p in sees) implies (p in u2.posts and u2 in u1.follows)
-- div,1
all p : Photos-Ad | all u : User | u->p in sees implies (some v : User | v->p in posts | u->v in follows)
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
some a : Ad | all sees.a.posts
-- div,1
all u : User | all p : Photo | P in u.sees | p in Ad or some u1 : User | p in u1.post and u1 in u.follows
-- div,1
all u1,u2 : User | p : Photo | (p in u1.posts and p in u2.posts and p not in Ad) implies u1 in u2.follows
-- div,1
all u1,u2:User | all p:Photo | p not in Ad | u1->p in sees implies (u1->u2 in follows and u2->p in posts)
-- div,1
all u : User | all p : Photo | p in u.sees | p in Ad or some u1 : User | p in u1.post and u1 in u.follows
-- div,1
all x,y: User, z:Photo-Ad | x-> z in sees and y->z in posts implies (some y: User| x-> y in follows and )
-- div,1
all p,p2 : Photo | lone u , u2 : Users | p in u.sees and (( u2 in u.follows and p in u2.posts) or p in Ad
-- div,1
all add: Ad, all p: Photo, all u1,u2: User| p in u1.sees implies ((p not in Ad p in u2.posts) or p in Ad)
-- div,1
all p,p2 : Photo | lone u , u2 : Users | p in u.sees and (( u2 in u.follows and p in u2.posts) or p in Ad)
-- div,1
all p,p2 : Photo | lone u , u2 : Users | p in u.sees and (( u2 in u.follows and p in u2.posts)) or p in Ad
-- div,1
all u1,u2 : User | all p : Photo | u1->p in sees implies ((u2->p in posts u1->u2 in follows) or (p in Ad))
-- div,1
all u:User | p:Photo-Ad | p in u.sees implies p in u.follows.posts     all a:Ad | all u:User | a in u.sees
-- div,1
all u : User | all p : Photo | p in user.sees && not ad.p => one u2 : User | p in p.posts | u2 in u.follows
-- div,1
all x,y : User, p : Photo, a : Ad | ((p in x.sees && p in y.posts && p != a) => (y in follows.x) || (p = a)
-- div,1
all x,y: User, f:Photo, a:Ad | f in x.sees and f in y.posts implies (f not Ad && y in x.follows) || (f = a)
-- div,1
all u : User | all p : Photo | p in u.sees and p in Ad or some u1 : User | p in u1.post and u1 in u.follows
-- div,1
all u:User, p:Photo | u->p in sees implies (some u2:User | u2->p in posts and u1->u2 in follows) or p in Ad
-- div,1
all disj u1,u2 : User, p:Photo | (p not in Ad and u->p in sees and u2->p in posts) implies u->u2 in follows
-- div,1
(all u1,u2:User | all p:Photo | p not in Ad | u1->p in sees implies (u1->u2 in follows and u2->p in posts))
-- div,1
all p : Photo | some u : User | p in u.sees and p in ad or one u1 : User | p in u1.posts and
u1 in u.follows
-- div,1
all u : User, seenPhotos : u.sees | seenPhotos in Ad || (seenPhotos not in Ad && seenPhotos u.follows.posts)
-- div,1
all x : User | all y : sees.x | (y not in Ad => (some u : User | (u in follows.x || u = x) && y in posts.u)(
-- div,1
all p : Photo | p in u.sees => (p in u.follows.posts and p not in Ad)
all u : User | all a :Ad | a in u.sees
-- div,1
all u : User | all p : Photo | p in user.sees && not ad.p => (one u2 : User | p in p.posts | u2 in u.follows)
-- div,2
all add: Ad, all p: Photo, all u1,u2: User| p in u1.sees implies ((p not in Ad and p in u2.posts) or p in Ad)
-- div,1
all u:User, p:Photo | u->p in sees implies ( some u2:Person | u2->p in posts and u->u2 in follows) or p in Ad
-- div,1
all p : Photos | p in u.sees => (p in u.follows.posts and p not in Ad)
all u : User | all a :Ad | a in u.sees
-- div,1
all u:User | not some p:Photo-Ad | u->p in sees and posts . p not in u.follows
-- div,1
all p : Photo - Add | all u : User | some u2 : User | p in u.sees implies (p in u2.posts and u2 in u.follows)
-- div,1
all u : User | all p : Photo | p in u.sees imples p in Ad or one u1 : User | p in u1.posts and
u1 in u.follows
-- div,1
all x : User | all p : Photo | all p in x.sees | some y : User | (p in y.posts & x->y in follows) or (p in Ad)
-- div,1
all x : User | all p : Photo | some y : User | all p in x.sees & (p in y.posts & x->y in follows) or (p in Ad)
-- div,1
all x,y,z : univ | x in User and x->y in sees implies z in User z->y in posts and x->z in follows else y in Ad
-- div,2
all u:User, p:Photo, ! u -> p in sees implies (( some u2:User | u->u2 in follows and u2->p in posts) or p in Ad)
-- div,1
all x,y : User | all p : Photo | p != Ad and x!=y implies (p in x.sees and p in y.posts) immplies y in x.follows
-- div,1
all u1: User, u2 : User, p : Photo | (p not in Ad and u1->p in sees and u2->p in posts) implies u->u2 in follows
-- div,1
all u1,u2 : User | all p : Photos | (u1->p in sees and u2->p in posts and p not in Ad) implies u1->u2 in follows
-- div,1
all x: User, y: Photo |  x -> y in sees implies y in Ad or | some z: User | x -> z in follows and z -> y in posts
-- div,3
all u : User, p : Photo, us : User | u -> p in sees implies (p in Ad || (us->p in posts implies u->us in follows)
-- div,3
all u1 : User | all ph : Photo |  some inf : Influencer |
u1 -> ph in sees implies (ph in inf.posts or ph in Add)
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
all follows.Ad
-- div,1
all x, y : User | x.sees in y.posts and y in x.follows and x.sees is not Ad

all x : Ad | all y : User | sees.x in
-- div,1
all user : User | all photo : Photo | (photo in user1.posts and photo in user2.sees implies user1 in user2.follows
-- div,6
all user : User | all photo : Photo | (photo in user1.posts and photo in user2.sees) implies user1 in user2.follows
-- div,1
all x,y : User | all a : Ad | x.sees in y.posts x.follows implies y.posts not in a
or  posts.x implies posts.x in a
-- div,1
all u1,u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 in follows.u2


all a : Ad , u : User | a in sees.u
-- div,1
all x : User , y : User , z : Photo | z not in Ad and z in y.posts and x in follows.y => z in x.sees else all sees.z
-- div,1
all u1:User | all p:Photo | u1->p in sees implies((some u2:User | u2->p in posts and u1->u2 in follows) or ph in Ad)
-- div,1
all u1:User | all p:Photo | u1->p in sees implies((some u2:User | u2->p in posts and u2->u1 in follows) or ph in Ad)
-- div,1
all u : User | x in sees.u and x not in Ad => some otherUser : User | x in otherUser.post and otherUser in follows.u
-- div,2
all u,f : User,p,s : Photos ,a : Ad | u -> s in sees implies u-> f in follows and f -> p in posts and s = p  or s = a
-- div,1
all u1:User | all p:Photo | u1->p in sees implies ((some u2:User | u2->p in posts and u1->u2 in follows) or ph in Ad)
-- div,1
all a : Ad | one u : Influencer | u->a in posts
all a,b : User | all p : Photos | a->b in follows implies a->p in sees
-- div,1
all u1:User | all p:Photo | u1->p in posts implies((some u2 | u2 -> p in sees implies u2 -> u1 in follows) or ph in Ad)
-- div,2
all u1:User | all p:u1.posts | one u2:u1.follows | p not in Ad and p in u2.posts
all a:Ad | all u in User | a in u.sees
-- div,1
all u1:User | all p:Photo | u1->p in sees implies((some u2 | u2 -> p in posts implies u1 -> u2 in follows) or ph in Ad)
-- div,1
all x,y : User, z : Photo | x->z in posts and y->z in sees implies x->y in follows
all x : User, y : Ads | x->y in sees
-- div,1
all x: User | all y: Ad | x->y in sees
all x: User | all y: Photo | y in x.sees implies z in y.posts and z in x.follows
-- div,1
all u,f : User ,p, s : Photo | u -> s in sees implies some p | u-> f in follows and f -> p in posts or some a : Ad s = a
-- div,1
all p: Photo | all u: User | u->p in sees implies (p not in Ad and (some u1: User | u1->p in posts and u->u1 in follows)
-- div,1
all u, j : User | all p : Photo-Ad | u -> p in sees implies u -> j in follows




all u : User | all  a : Ad | u -> a in
-- div,1
all u1:User | all p:Photo | u1->p in sees implies((some u2:User | u2 -> p in posts and u1 -> u2 in follows) or ph in Ad)
-- div,1
all x : Photos | all y : Users | all z : Ad | (x in sees.y) implies ((x in Ad) or (some z : User | y in z.follows.posts)
-- div,1
for all p : Photos | p in u.sees => (p in u.follows.posts and p not in Ad)
for all u : User | for all a :Ad | a in u.sees
-- div,1
all a : Ad, u:User | u->a in sees
all u1, u2 : User, p:Photo | u1 -> p in sees u2 -> p in posts implies u1->u2 in follows
-- div,1
all x : User | x.sees - Ad in x.follows.posts
all x : User, y : Ad | y in x.sees
-- div,2
all x : User , y : User , z : Photo | z not in Ad and z in y.posts and x in follows.y => z in x.sees else all x in sees.z
-- div,1
all u1:User | all p:Photo | (u1->p in sees and p not in Ad) implies (some u2:User | u1->u2 in follows and u2->x in posts)
-- div,2
all u1, u2:User, p:Photo | u1 -> p in sees and u2 -> p in posts implies all u1 -> u2 in follows
sees in User set -> set Ad
-- div,1
all u,f : User ,p, s : Photo | u -> s in sees implies some p | u-> f in follows and f -> p in posts or some a : Ad | s = a
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad in User.sees
-- div,1
all p: Photo | (all u: User | u->p in sees implies (p not in Ad and (some u1: User | u1->p in posts and u->u1 in follows))
-- div,1
some x : User | all y : User | y in x.follows | x.sees in y.posts

all j : User | all f : Ad | f in j.sees set -> set User
-- div,2
all x: User | all y: Ad | x->y in sees
all x: User | all y: Photo | y in x.sees implies one z in y.posts and z in x.follows
-- div,2
all u1,u2 : User | all p : Photo | (p in u1.sees and p in u2.posts) implies u2 in u1.follows
all u : User | all p : Photo |
-- div,1
all x : User , y : User , z : Photo | z not in Ad => ( z in y.posts and x in follows.y => x in sees.y ) else all x in sees.z
-- div,3
all u1:User | all p:Photo | u1->p in sees implies((some u2:User | u2 -> p in posts implies u1 -> u2 in follows) or ph in Ad)
-- div,1
all p : Photos-Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows | all a : Ad | u->a in sees
-- div,1
all x,y,z : univ | x in User and x->y in sees implies y not in Ad and z in User z->y in posts and x->z in follows else y in Ad
-- div,1
all ad: Ad | all ad in User.sees
all photo: Photo | all user1, user2: User | photo in user1.sees implies user2 in user1.follows
-- div,2
all u1: User | all p: Photo | p in u1.sees implies (some u2: User | in u1.follows and p in u2.posts and p not in Ad) or p in Ad
-- div,1
all u1 : User | all ph : Photo |
u1->ph in sees  implies ((some u2 : User | u2->p in posts and u2 in u1.follows ) or ph  in Ad)
-- div,1
all u: User | all a: Ad | a in u.sees
all u1, u2: User | all p: Photos | u2 in u1.follows and p i u2.posts implies p in u1.sees
-- div,1
all p : Photos - Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows | all a : Ad | u->a in sees
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad | and in User.sees
-- div,1
all u : User | all p : Photo | u -> p in sees implies (one a : Ad | a == p) or some f : User | u->f in follows and f->p in posts
-- div,2
all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows
all a : Ad | all u : User implies a in u.sees
-- div,1
all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows
all a : Ad | all u : User  implies a in u.sees
-- div,1
all u1, u2 : User, p : photo | not (u1 -> p in sees and u1 -> u2 in follows)
not some add : Ad | all u : User u -> add not in sees
-- div,1
all p : Photos - Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows | all a : Ad | u->a in sees
}
-- div,1
all a: Add | all u: User | u.a in sees
all p: Photo-Add | u1, u2: User | u1->p in sees and u2->p in posts implies u1-u2 in follows
-- div,1
all x : User | x.sees - Ad in x.follows.posts
all x : User | all y : Ad | y in x.sees
-- div,1
all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows
all a : Ad | all u : User|  implies a in u.sees
-- div,1
all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows
all a : Ad | all u : User , implies a in u.sees
-- div,1
all a: Add | all u: User | u.a in sees
all p: Photo-Add | u1, u2: User | u1->p in sees and u2->p in posts implies u1->u2 in follows
-- div,1
all u:User, p:Photo | (p in u.sees and p not in Ad) implies p in u.follows.posts and
(all p1:Photo | p1 in ad implies p1 in u.sees)
-- div,1
all u,u1:User | all p:Photo | p in u.posts and p in u1.sees implies u in u1.follows
all a : Ad | all u : User | implies a in u.sees
-- div,1
User.sees = User.follows.posts + Ad + User.posts - User.suggests
Influencer.sees = Influencer.follows.posts + Ad + Influencer.posts
-- div,1
all u1, u2 : User, p : photo | not (u1 -> p in sees and u1 -> u2 in follows)
not some add : Ad | all u : User | u -> add not in sees
-- div,1
all p : Photo, u1,u2 : User | p in u1.sees implies p in u2.posts and u2 in u1.follows | p != Ad
all u : User, ad : Ad | ad in u.sees
-- div,1
all a: Add | all u: User | u->a in sees
all p: Photo-Add | u1, u2: User | u1->p in sees and u2->p in posts implies u1->u2 in follows
-- div,1
all x, y: User, f: Photo | f in x.sees and f in y.posts implies y in x.follows


y in follows.x implies f in posts.y and f in sees.x
-- div,1
all x : Photos | all y : Users | all z : Ad | y in follows.y | z not in posts.y | x in sees.y
all x : Ad | all y : User | x in sees.y
-- div,2
all x : Ad | all y : User | x in sees.y
all x : Photos | all y : Users | all z : Ad | y in follows.y | z not in posts.y | x in sees.y
-- div,4
all p : Photo - Ad | all u : User | all f : User | f in u.follows | p in f.posts | p in u.sees
all x : Ad | all y : User | x in y.sees
-- div,2
all a: Add | all u: User | u->a in sees or
all p: Photo-Add | u1, u2: User | u1->p in sees and u2->p in posts implies u1->u2 in follows
-- div,1
all u:User | all p:Photos,follow:User | p in u.sees and follow in u.follows and p in follow.posts
all u:User | all ad:Ad | ad in u.sees
-- div,1
all x: Photo - Ad | all u:User | x in u.sees implies some p.User | p in u.follows and x in p.posts
all a: Ad | all u: User | a in u.sees
-- div,1
all x: Photo - Ad | one u:User | x in u.sees implies some p.User | p in u.follows and x in p.posts
all a: Ad | all u: User | a in u.sees
-- div,1
all u : User, p : Photo | p not in Ad and p in u.sees implies some x : User | p in x.posts and z in u.follows
all a : Ad | a in User.sees
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u : Users | ad in u.*sees
-- div,1
(all a: Add | all u: User | u->a in sees) and
(all p: Photo-Add | u1, u2: User | u1->p in sees and u2->p in posts implies u1->u2 in follows)
-- div,1
all x: Photo - Ad | all u:User | x in u.sees implies (some p:User) | (p in u.follows) and (x in p.posts)
all a: Ad | all u: User | a in u.sees
-- div,1
all p : Photos - Ad | some u : User | u->p in sees | some v : User | v->p in posts | u->v in follows

all a : Ad | all u : User | u->a in sees
-- div,2
(all a: Add | all u: User | u->a in sees) and (all p: Photo-Add | u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
-- div,1
(all a: Add | all u: User | u->a in sees) and
(all p: Photo-Add | u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
-- div,1
all u : User | some u2:User | all ph : Photo | ph in u.sees implies
(
(ph not in Ad and (ph in u2.posts and u2 in u1.follows))
or
(ph in Ad)
)
-- div,1
all x, y: User | all z:Photo | x-> z in sees implies x-> y in follows and y->z in posts and z not in Ad
all x: User| all y: Ads| x -> y in sees
-- div,1
all u: User, u2: User, y: Photo | (y not in Ad and u->y in sees and u2->y in posts) implies (u->u2 in follows)
all u: User, y: Ad | x->y in sees
-- div,1
(all a: Ad | all u: User | u->a in sees) and
(all p: Photo-Add | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
-- div,1
(all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u1->p in sees and u2->p in posts))
and
(p in Ad implies u1->p in sees)
-- div,1
all u: User, u2: User, y: Photo | (y not in Ad and u->y in sees and u2->y in posts) implies (u->u2 in follows)
all u: User, y: Add | x->y in sees
-- div,1
(all a: Add | all u: User | u->a in sees) and
(all p: Photo-Add | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
-- div,1
all x : User | all y : User | all p : Photo - Ad |((p in y.posts and p in x.sees) implies (y in x.follows)

all x : Ad | all y : User | x in y.sees
-- div,1
(all x, z: User | all p: Photo | p in z.posts and z in x.follows and => x in sees.p and z not in sees.p) && (all a: Ad | all y: User | y in sees.a)
-- div,2
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
all ad,u : univ | ad in Ad immplies ad in u.sees
-- div,1
all u1, u2 : User, p : Photo | not (u1 -> p in sees and u1 -> u2 in follows and p not in Add)
not some add : Ad | all u : User | u -> add not in sees
-- div,1
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts implies user2 in user1.follows
all ad : Ad | ad in User.sses
-- div,1
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
all ad : Ad | ad in User.sses
-- div,1
all user1, user2: User | all photo: Photo | (photo in user1.sees and photo in user2.posts) implies user2 in user1.follows
set ad : Ad | ad in User.sees
-- div,1
all x : User | all p : Photo | p not in Ad and p not in posts.x implies x->p in sees
all x : User | all p : follows.x.posts not in Ad implies x->p in sees
-- div,1
all u : User | all p : Photo-Ad | u->p in sees implies p in u.follows.posts
all u : User | all p : Photo | all a : Add | u->a + u->p in posts implies u in Add
-- div,1
all u1,u2 : User, p : Photo | u1 in sees.p | u2 in posts.p | u1 in follows.u2


all a : Ad , u : User | a in sees.u not implies u in follows.u2 | u2 in posts.a
-- div,3
all u: User, p : Photo | u -> p in sees p in Ad || some f : User | u->f in follows && f->p in posts

all u: User, p: Photo | u -> p in sees => p in Ad+u.follows.posts
-- div,1
all u: User, p : Photo | u -> p in sees =>
p in Ad || some f : User | u->f in follows && f->p in posts

all u: User, p: Photo | u -> p in sees => p in Ad+u.follows.pos
-- div,4
(all u1,u2 : User | all p : Photo | u1->u2 in follows | u1->p in sees | u2->p in posts | p not in Ad)
(all u3 : User | all p2 : Photo | p2 in Ad implies u3->p2 in sees)
-- div,2
all u : User | all p : Photo-Ad | u->p in sees implies p in u.follows.posts
all u : User | all p : Photo | all a : Add | u->a in posts and u->p in posts implies p in Ad
-- div,1
(all a: Ad | all u: User | u->p not in post implies u->a in sees) and (all p: Photo-Ad | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
-- div,1
(all a: Ad | all u: User | u->a not in post implies u->a in sees) and (all p: Photo-Ad | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
-- div,1
all u:User  | some p: Photo - Ad | some x:User | (p in x.posts and p in u.sees) implies x in u.follows
all u:User | all p: Photo | (p in u.posts and p in u.sees) => false
-- div,1
(all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u1->p in sees and u2->p in posts)) (all u3 : User | all p : Photo | p in Ad implies u3->p2 in sees)
-- div,1
(all u1,u2 : User | all p : Photo | u1->p in sees implies (u2->p in posts | p not in Ad|u1->u2 in follows))
(all u3 : User | all p2 : Photo | p2 in Ad implies u3->p2 in sees)
-- div,1
(all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u1->p in sees and u2->p in posts))
(all u3 : User | all p2 : Photo | p in Ad implies u3->p2 in sees)
-- div,1
(all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u1->p in sees and u2->p in posts)) (all u3 : User | all p2 : Photo | p in Ad implies u3->p2 in sees)
-- div,1
(all u1,u2 : User | all p : Photo | u1->p in sees implies (u2->p in posts | p not in Ad|u1->u2 in follows)) and (all u3 : User | all p2 : Photo | p2 in Ad implies u3->p2 in sees)
-- div,1
(all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u1->p in sees and u2->p in posts)) and (all u3 : User | all p2 : Photo | p in Ad implies u3->p2 in sees)
-- div,1
(all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u1->p in sees and u2->p in posts))
and
(all u3 : User | all p2 : Photo | p in Ad implies u3->p2 in sees)
-- div,1
all user : User, photo : Photo | (p in user.sees) implies (photo in Ad) or
(all followed : univ | (followed in User) and (followed->photo in posts) implies (user->followed in follows))
-- div,1
all p : Photo, u1,u2 : User : univ | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u : User | ad in u.sees
all p : Photo, u : User | p in u.posts implies p not in u.sees
-- div,1
all user, photo : univ | user in User and photo in Photo and user->photo in sees implies (photo in Ad) or
(all followed : univ | followed in User and followed->photo in posts implies user->followed in follows
-- div,1
(all a: Ad | all u: User | u->a in sees)
(all p: Photo-Ad | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows)
(all u : user | all p: Photo | u->p in posts implies u->p not in sees)
-- div,1
(all a: Ad | all u: User | u->a in sees) and
(all p: Photo-Ad | all u1, u2: User | (u1->p in sees and u2->p in posts) implies u1->u2 in follows) and
(all u : User | all p: Add | (u->p in posts implies u->p not in sees) and (u->p in sees implies u->p not in posts))
-- div,1
all u, j : User | all p : Photo | u -> p in sees implies u -> j in follows
all u : User| all i : Influencer| all p : Photo | u -> p in sees implies u -> i in follows



all u : User | all  a : Ad | u -> a in sees implies u -> a not in posts
all i : Influencer | all  a : Ad | i -> a in sees implies u -> a not in posts
-- div,1
