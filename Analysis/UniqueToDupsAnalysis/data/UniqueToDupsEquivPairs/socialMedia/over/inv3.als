-- equiv pair start,1
User.sees = Ad
-- div,1
-- equiv pair end
-- equiv pair start,92
sees in follows.posts
-- div,4
all x: User | x.sees in x.follows.posts
-- div,12
all u:User | u.sees in u.follows.posts
-- div,37
all u:User-Ad | u.sees in u.follows.posts
-- div,2
all user : User | user.sees in user.follows.posts
-- div,1
all u:User , p:u.sees | p in u.follows.posts
-- div,1
all u : User | u.sees in u.follows.posts + posts.Ad
-- div,1
all x:Photo,y:User| y.sees in y.follows.posts
-- div,1
all x : User | x.sees in (x.follows.posts + x.follows )
-- div,1
all u: User | all s: u.sees | s in u.follows.posts
-- div,1
all u:User | all p:u.sees | p in u.follows.posts
-- div,1
all u:User, p:Photo| p in u.sees => p in u.follows.posts
-- div,7
all u: User, p: Photo | u in p.~sees => p in u.follows.posts
-- div,1
all x : User | x.sees in x.follows.posts and x.sees in (Photo + Ad)
-- div,1
all x : User | all p : Photo | p in x.sees implies p in x.follows.posts
-- div,1
all u : User | all p : Photo | p in u.sees implies p in u.follows.posts
-- div,1
all x : User | all y : Photo |  y in x.sees implies y in x.follows.posts
-- div,2
all u : User | all p : Photo | u->p in sees implies p in u.follows.posts
-- div,1
all x : User | all p : Photo | x -> p in sees implies p in x.follows.posts
-- div,1
all x : User | all y : Photo | y not in x.follows.posts implies y not in x.sees
-- div,1
all u: User | all p: u.sees | some f: u.follows | p in f.posts
-- div,1
all u: User, p: Photo | p in u.sees implies (some f: u.follows | p in f.posts)
-- div,1
all x : User, z : Photo | x in sees.z implies (some y : User | y in x.follows and y in posts.z)
-- div,1
all u : User, p : Photo | p in u.sees implies some z: User | p in z.posts and z in u.follows
-- div,1
all p:Photo,u:User| p in u.sees =>  (some z: User | z in u.follows and p in z.posts)
-- div,1
all u:User,p:Photo | u->p in sees implies (some u2:User | u2->p in posts and u->u2 in follows)
-- div,1
all u:User,p:Photo | u -> p in sees implies (some u2:User | u->u2 in follows and u2->p in posts)
-- div,2
all p:Photo,u:User | u -> p in sees implies (some u2:User | u -> u2 in follows and u2 -> p in posts)
-- div,2
all u1:User,p:Photo | u1 -> p in sees implies (some u2:User | u2 -> p in posts and u1 -> u2 in follows)
-- div,1
all u:User | all p:Photo | p in u.sees implies some v:User | p in v.posts and v in u.follows
-- div,1
all u1 : User | all ph : Photo |
ph in u1.sees implies (some u2:User | ph in u2.posts and u2 in u1.follows)
-- div,1
all u:User | all p:Photo - Ad | p in u.sees implies some v:User | p in v.posts and v in u.follows

all u:User | all p:Photo | p in u.sees implies some v:User | p in v.posts and v in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all u:User | u.sees = Ad
-- div,1
all u, j : User | all p : Photo-Ad | u -> p in sees implies u -> j in follows and j -> u in posts




all u : User | all  a : Ad | u -> a in sees
-- div,1
all x: User, y: Photo| y not in Ad and x->y in sees implies (some z: User | z->y in posts and x->y in follows)
all x: User, y: Ad | x->y in sees
-- div,1
-- equiv pair end
-- equiv pair start,21
all x : User | x in x.sees
-- div,2
all u:User | u in u.follows.posts
-- div,3
all u: User | u in (u - Influencer).sees
-- div,1
all u: User | some u.sees.follows.posts
-- div,2
all u : User | not Ad.sees in u.follows.posts
-- div,3
all u : User | one p : Photo | u -> p in follows
-- div,1
all x : User | some y : User | y in x.follows and y in x.sees
-- div,1
all x : User | some y : User | y in x.follows and y in sees.x
-- div,1
all u1,u2 : User | u2 in u1.follows and u1.sees in u2.posts and u1 != u2
-- div,1
all x : User | all y : User | x.sees in y.posts && not x.sees in x.posts
-- div,1
all u1,u2 : User | u1.sees in u2.posts
all u : User | u.sees not in u.posts
-- div,4
all u1,u2 : User | u1.sees in u2.posts-Ad
all u : User | u.sees not in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,33
all x : User | x.sees in Ad
-- div,1
all x : User | x.sees in x.follows + Ad
-- div,1
all u:User | u.sees - Ad in u.follows
-- div,1
all u: User | all p: u.sees | p in Ad
-- div,1
all x : Photo - Ad, y : User | y not in sees.x
-- div,2
all p:Photo, u:User | u -> p in sees implies p in Ad
-- div,1
all u: User, p: Photo-Ad | sees.p in u.follows.posts
-- div,1
all u:User | all p: u.sees | p in u.follows or p in Ad
-- div,1
all p : Photo - Ad, u : User | p in u.sees implies p in u.follows
-- div,1
all p : Photo - Ad, u : User | p in u.sees implies p in follows.u
-- div,1
all p : Photo - Ad, u : User | p in u.sees implies p in follows.User
-- div,1
all u : User | (u.sees - Ad) in u.follows.posts
User.sees in Ad
-- div,1
all u : User | all p : u.sees | p not in Ad => p in u.sees.posts
-- div,1
all u: User,o, p: Photo - Ad | u not in o.follows => u not in p.~sees
-- div,1
all p : Photo | all u1: User | p in u1.sees implies ( p in Ad or p in posts.p)
-- div,1
all x: User | all y: Photo-Ad | (y in x.sees) implies y in follows.posts.y
-- div,1
all p: Photo | all u: User | p in u.sees implies (p in u.follows or p in Ad)
-- div,4
all p : Photo | all u1,u2 : User | p in u1.sees implies ( p in Ad or p in posts.p)
-- div,2
all u,x:User, p:Photo-Ad| u->p in sees implies x->p in posts and u->x in follows and u!=x
-- div,1
all u : User, p : Photo | p in u.sees and p not in Ad implies some z: User | p in u.posts.posts
-- div,1
all x : User | all y : x.sees | y not in Ad => (some u : User | u in x.follows  && y in posts.u)
-- div,1
all p:Photo-Ad, u1,u2:User | p in u1.sees implies p in u2.posts and u2 in u1.follows and p not in u2.sees
-- div,1
all x:Photo,y:User| x not in Ad and x in y.sees implies some z:User| x in z.posts and z in x.follows
-- div,1
all u:User | all p:Photo - Ad | p in u.sees implies some v:User | p in v.posts and p in u.follows
-- div,1
all u: User | all p: Photo-Ad | u->p in sees implies (some y: User | y in u.follows and y in p.posts)
-- div,1
all x: User | all y: Photo | y in x.sees implies ((some z: User | z in y.posts and z in x.follows) or y in Ad)
-- div,1
(all u:User | all p: Photo-Ad | p in u.sees implies p in u.follows.posts)
(all u:User | all p:Photo | p in u.sees implies p in Ad)
-- div,2
-- equiv pair end
-- equiv pair start,24
all u:User | u.sees in follows.u
-- div,1
all x : User | x.sees in x.follows
-- div,4
all x: Photo | sees.x in follows.x
-- div,1
all x : Photo, y : User | y not in sees.x
-- div,1
all u:User | sees.Photo in follows.Photo
-- div,1
sees.Photo in User.follows.posts + Influencer.posts
-- div,1
all u: User | all p: u.sees | p not in Photo
-- div,1
all u: User, p: Photo | u.sees in (u.posts.follows)
-- div,1
all x : User |  all y : Photo | x.sees in x.follows
-- div,1
all x : User |  all y : Photo | x.sees in follows.x
-- div,1
all x : User |  all y : Photo | x.sees in y.follows
-- div,1
all u : User | all p : u.sees | p not in Ad and p in u.sees.posts
-- div,1
all x,y,z : univ | x->y in sees implies z->y in posts and x->z in follows
-- div,1
all x,y,z : univ | x->y in sees implies y not in Ad and z->y in posts and x->z in follows
-- div,2
all x: User, y: User, z : Photo | y in follows.x and z in posts.y iff x in sees.z
-- div,2
all u1,u2 : User | u1.sees in u2.posts
all u : User, p : u.posts | p not in u.sees
-- div,1
all u:User | u.sees in u.follows.posts & (Photo-Ad)

all u:User | u.sees in Ad
-- div,1
all u1,u2 : User, p : Photo | p in u1.sees implies p in u2.posts and u2 in u1.follows and u1 != u2
-- div,1
all x : User | all y : Photo | all u : User | u not in x.follows.posts implies y not in x.sees
-- div,1
-- equiv pair end
-- equiv pair start,14
sees in (follows.posts - User -> Ad)
-- div,1
all x : User | x.sees in (x.follows.posts - Ad)
-- div,5
all u : User | u.sees in u.follows.posts-Ad
-- div,4
all u:User | u.sees in u.follows.posts & (Photo-Ad)
-- div,1
all u : User | all p : u.sees | p not in Ad and p in u.follows.posts
-- div,1
all x : User | all y : Photo |  y in x.sees implies y in x.follows.posts and y not in Ad
-- div,1
all p: Photo | (all u: User | u->p in sees implies p not in Ad and (some u1: User | u1->p in posts and u->u1 in follows))
-- div,1
-- equiv pair end
-- equiv pair start,5
all u:User | u.sees = u.follows.posts
-- div,3
all x:User | x.sees = x.follows.posts
-- div,2
-- equiv pair end
-- equiv pair start,19
all x: User | all p: Photo | x in x.sees
-- div,1
all p:Photo | all u:User | p -> u in sees
-- div,1
all u : User | all p : Photo | u -> p in follows
-- div,1
all x : User | all y : Photo | (x -> y in follows)
-- div,1
all p: Photo | all u: User | p in u.follows and
all a: Ad | a in u.sees
-- div,1
all x: User, y: User, z : Photo | y in follows.x and z in posts.y and  x in sees.z
-- div,1
all x : User | all y : Photo | some z : User | y in z.posts and y in x.follows
-- div,1
all x: User, y: User, p : Photo | y in follows.x and p in posts.y and  x in sees.p and p  not in Ad
-- div,1
all x: User, y: User, z : Photo | y in follows.x and z in posts.y and  x in sees.z and z  not in Ad
-- div,2
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts and x in sees.y
-- div,3
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts and x in y.sees
-- div,2
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts and x in sees.y and p not in Ad
-- div,1
all u1, u2 : User, p : Photo | (u1 in sees.p && u2 in posts.p && u1 in follows.u2 && u1 != u2)

all u : User, a : Ad | u in sees.a
-- div,2
all u1, u2 : User, p : Photo | (u1 in posts.p && u2 in sees.p && u2 in follows.u1 && u1 != u2)

all u : User, a : Ad | u in sees.a
-- div,1
-- equiv pair end
-- equiv pair start,13
some sees :> (follows.posts.(Photo + Ad))
-- div,1
some sees :> (follows.posts.Photo + posts.Ad)
-- div,2
all x,y,z : univ | x->y in sees implies z->y in posts and x->z in follows else y in Ad
-- div,2
all user : univ | user in User and some photo : univ | user->photo in posts implies (photo in Ad)
-- div,1
all x,y,z : univ | x->y in sees implies y not in Ad and z->y in posts and x->z in follows else y in Ad
-- div,1
all ad: univ | ad in User.sees
all photo: Photo | all user1, user2: User | photo in user1.sees and photo in user2.posts implies user2 in user1.follows
-- div,1
all user : univ | user in User and all photo : univ | user->photo in posts implies
(some follower : univ | follower->photo in posts and user->follower in follows)
-- div,1
all user : univ | user in User and all photo : univ | user->photo in posts implies (photo in Ad) or
(some follower : univ | follower->photo in posts and user->follower in follows)
-- div,2
all user : univ | user in User and some photo : univ | user->photo in posts implies (photo in Ad) or
(some follower : univ | follower->photo in posts and user->follower in follows)
-- div,1
all user : univ | user in User and all photo : univ | user->photo in sees implies (photo in Ad) or
(some follower : univ | follower in User and follower->photo in posts and user->follower in follows)
-- div,1
-- equiv pair end
-- equiv pair start,12
all u:User | u.sees = u.follows.posts + Ad
-- div,6
all u : User | u.sees = Ad + u.follows.posts
-- div,1
all u : User | all p : Photo | p in u.sees iff (p in Ad or p in u.follows.posts)
-- div,3
all u : User | u.sees - Ad = u.follows.posts - Ad
all a : Ad, u : User | a in u.sees
-- div,1
all u : User | u.sees = u.follows.posts + Ad
all a : Ad | all u : User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,7
all u:User | u.sees in u.follows.posts & Ad
-- div,1
all p : User | p.sees in p.follows.posts & Ad
-- div,1
all u : User | u.sees in Ad and u.sees in u.follows.posts
-- div,1
all u: User | u.sees in u.follows.posts && u.sees in Ad
-- div,2
all x:User | all y:x.sees| y in Ad and y in x.follows.posts
-- div,1
all x:Photo,y:User| y.sees in y.follows.posts and y.sees in Ad
-- div,1
-- equiv pair end
-- equiv pair start,4
all u: User | u.sees - Ad = u.follows.posts
-- div,2
all x : User |all p : Photo | p not in Ad and p in x.sees iff p in (x.follows).posts
-- div,2
-- equiv pair end
-- equiv pair start,23
all x : User , y : User , z : Photo | z in Ad
-- div,1
all u:User | all p:Photo-Ad |u in u.follows.posts
-- div,1
all u : User, p : Photo - Ad | one (sees.p & u.follows.sees)
-- div,1
all u : User, p : Photo - Ad | one (sees.p & u.follows.posts)
-- div,1
all u : User, p : Photo - Ad | some (u.follows.posts & p.sees)
-- div,2
all u : User, p : Photo - Ad | some (u.follows.posts & sees.p)
-- div,2
all u : User, p : Photo - Ad | one (posts.p & u.follows.posts)
-- div,1
all u : User, p : Photo - Ad | some(p.posts & u.follows.posts)
-- div,2
all u : User, p : Photo-Ad | some posts.p & u.follows.posts
-- div,6
all u : User, p : Photo - Ad | some (u.follows.posts.sees & sees.p)
-- div,1
all u : User, p : Photo - Ad | some(posts.p & sees.u.follows.posts)
-- div,1
all u : User, p : Photo - Ad | some(p.posts & sees.u.follows.posts)
-- div,1
all u : User, p : Photo - Ad | some (u.follows.posts & p.sees.posts)
-- div,1
all u:User, p:Photo - Ad | some v:User | u in u.follows.posts
-- div,1
all x : User | all y : User |all p : Photo - Ad|  x not in follows.x and y in x.follows and p in y.posts and x in sees.p
-- div,1
-- equiv pair end
-- equiv pair start,2
all v: User | v.sees = (v.follows.posts - Ad)
-- div,1
all u:User | u.sees = u.follows.posts & (Photo-Ad)
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User | u.sees in u.follows.posts no Ad
-- div,1
all x : User | x.sees in Ad or x.sees in x.follows.posts no Ad
-- div,1
all x : User | x.sees in x.follows.posts

all y : Ad | y in y.sees
-- div,1
-- equiv pair end
-- equiv pair start,3
all x : Photo | x not in posts.x iff x in sees.x
-- div,1
all x : Photo | x not in sees.x iff x in posts.x
-- div,1
all u : User, p : Photo | p in u.sees implies (p in u.follows.posts and p not in Ad)
all p : Photo | p in sees.p
-- div,1
-- equiv pair end
-- equiv pair start,5
all u : User | u.sees - Ad = u.follows.posts - Ad
-- div,1
all u: User, p: Photo | p in u.sees <=> p in u.follows.posts or p in Ad
-- div,4
-- equiv pair end
-- equiv pair start,1
all u : User, p : Photo - Ad | p = u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | u.sees in u.follows
Ad in User.sees
-- div,1
-- equiv pair end
-- equiv pair start,19
all u:User | u.sees in u.follows.posts or u.sees in Ad
-- div,4
all x:User |  x.sees in Ad or x.sees in x.follows.posts
-- div,5
all x : User | x.sees in x.follows.posts or x.sees in Ad
-- div,3
all u : User | u.sees in Ad or u.sees in u.follows.posts
-- div,1
all u : User | (u.sees not in Ad) implies (u.sees in (u.follows).posts)
-- div,3
all x:Photo,y:User| y.sees in y.follows.posts or y.sees in Ad
-- div,1
all u:User, p: Photo | p in u.sees => p in u.follows.posts or u.sees in Ad
-- div,1
all x : User | x.sees in Ad or x.sees in x.follows.posts

all x : User | x.sees in (x.follows.posts + Ad)
-- div,1
-- equiv pair end
-- equiv pair start,7
all x, y : User | y in x.follows and x.sees in y.posts
-- div,2
all x,y: User | x.sees in y.posts && y in x.follows
-- div,3
all u1,u2 : User | u2 in u1.follows and u1.sees in u2.posts
-- div,1
all x, y : User | x.sees in y.posts and y in x.follows

all x : Ad | all y : User | sees.x in univ
-- div,1
-- equiv pair end
-- equiv pair start,4
all u : User | all p : Photo-Ad | p in u.follows.posts
-- div,1
all x : User | all p : Photo | (p in x.follows.posts) or (p in Ad)
-- div,1
all u: User | all p: Photo | p in Ad or p in u.follows.posts
-- div,1
all x:User | all y:Photo | y in Ad or y in x.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | u.sees in Ad or u.sees = u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,3
all u : User | u.sees in u.follows.posts
Ad in User.sees
-- div,1
all user : User | user.sees in user.follows.posts
all ad : Ad | ad in User.sees
-- div,1
all user : User , p : Photo | p in user.sees => p in user.follows.posts
all ad : Ad | ad in User.sees
-- div,1
-- equiv pair end
-- equiv pair start,7
all u:User | u.sees - Ad in u.follows.posts
Ad in User.sees
-- div,2
all u:User, p:Photo-Ad| p in u.sees implies p in u.follows.posts
all a :Ad| a in User.sees
-- div,1
all u:User, p:Photo-Ad| p in u.sees implies p in u.follows.^posts
all a :Ad| a in User.sees
-- div,2
all u : User, p : Photo | p not in Ad and p in u.sees implies some x : User | p in x.posts and x in u.follows
all a : Ad | a in User.sees
-- div,2
-- equiv pair end
-- equiv pair start,3
all y : Photo-Ad | all x : User | x.sees in x.follows.posts
-- div,1
all user : User, photo : Photo | user.sees in user.follows.posts
or photo in Ad
-- div,1
all user : User | all photo : Photo | user.sees in user.follows.posts
or photo in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, f : Photo | f!=Ad implies f in u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | u.sees not in Ad and u.sees in u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | (u.sees - Ad) = u.follows.posts
User.sees in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User |  all y : Photo | x.sees in x.follows and y != Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | x.sees in (x.follows.posts - Ad) or x.sees in Ad
-- div,1
-- equiv pair end
-- equiv pair start,26
all u : User | (u.sees - Ad) in u.follows.posts and Ad in u.sees
-- div,1
all u : User | (u.sees - Ad) in(u.follows.posts - Ad) && Ad in u.sees
-- div,1
all u:User | u.sees-Ad in u.follows.posts




all u:User | u.sees<:Ad = Ad
-- div,1
all u : User | u.sees - Ad in u.follows.posts - Ad
all a : Ad, u : User | a in u.sees
-- div,1
all x: User | x.sees - Ad in x.follows.posts
all x : User | all y : Ad | y in x.sees
-- div,6
all u : User | Ad in u.sees
all u : User | all p : u.sees - Ad | p in u.follows.posts
-- div,2
all u : User, p : Photo-Ad | p in u.sees implies p in u.follows.posts
all u : User, ad : Ad | ad in u.sees
-- div,1
all u : User | Ad in u.sees
all u : User | all p : u.sees - Ad | some u : u.follows | p in u.posts
-- div,1
all u : User | Ad in u.sees
all u : User | all p : u.sees - Ad | some f : u.follows | p in f.posts
-- div,2
all u:User, p:Photo | (p in u.sees and p not in Ad implies p in u.follows.posts) and
(all p1:Photo | p1 in Ad implies p1 in u.sees)
-- div,1
(all u:User | all p: Photo-Ad | p in u.sees implies p in u.follows.posts)
and
(all u:User | all a:Ad | a in u.sees)
-- div,1
all u: User, p: Photo | p in u.sees && p not in Ad => (some f: u.follows | p in f.posts)
all a: Ad, u: User | a in u.sees
-- div,2
all p: Ad, u: User | p in u.sees
all p: Photo - Ad, u: User | p in u.sees =>
some u2: User | p in u2.posts and u2 in u.follows
-- div,1
all u : User, p : Photo | p not in Ad and p in u.sees implies some x : User | p in x.posts and x in u.follows
all a : Ad, u : User | a in u.sees
-- div,1
all x: Photo - Ad | all u:User | x in u.sees implies some p:User | p in u.follows and x in p.posts
all a: Ad | all u: User | a in u.sees
-- div,3
all u1:User| all p:Photo | u1->p in sees and p not in Ad implies(some u2:User| u1->u2 in follows and u2->p in posts)
all a:Ad , u1:User | u1->a in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | u.sees = u.follows.posts


all u:User | Ad in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Photo,y:User| y.sees in y.follows.posts and y.sees not in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | u.sees in u.follows.posts and u.sees not in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | all p : Photo | p in x.follows.posts and p not in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y: User | x.sees in y.posts && y in x.follows && y.posts != Ad
-- div,1
-- equiv pair end
-- equiv pair start,3
all u1,u2 : User | all p : Photo | p in u2.posts and u1 in u2.follows
-- div,2
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User| one u1 : u.follows | u.sees in Ad or u.sees in u1.posts
-- div,1
-- equiv pair end
-- equiv pair start,5
all x, z: User, y: Photo | y in Ad or z in x.follows and y in z.posts
-- div,1
all u1,u2 : User | all p : Photo - Ad | p in u2.posts && u2 in u1.follows
-- div,2
(all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u2->p in posts))
-- div,1
all p : Photo | all u1 : User | all u2 : User |
((p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad))
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, y : Photo| y in u.sees + Ad implies y in u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | x.sees in x.follows.posts or all x: User | x.sees in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y : User | x.sees in y.posts and x.sees in Ad and y in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Photo,y:User| x!= Ad and x in y.sees implies x in y.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u: User | u.sees in u.follows.posts
all i: Ad, u: User | u.sees in i
-- div,1
-- equiv pair end
-- equiv pair start,1
all user : User |
all s : user.sees |
one f : user.follows | s in f.posts
-- div,1
-- equiv pair end
-- equiv pair start,2
all u:User | u.follows.posts in u.sees and u.sees - u.follows.posts in Ad
-- div,2
-- equiv pair end
-- equiv pair start,2
all x,y : User, p : Photo | p in x.sees => y in follows.x && p in y.posts
-- div,2
-- equiv pair end
-- equiv pair start,4
all u : User | u.sees in u.follows.posts
all a : Ad, u : User | a in u.sees
-- div,1
all u:User, p:Photo | p in u.sees implies p in u.follows.posts
all u:User, a: Ad  | a in u.sees
-- div,1
all x : User | all p : Photo | x -> p in sees implies p in x.follows.posts
all a : Ad | all x : User | x -> a in sees
-- div,1
all u: User, p: Photo | p in u.sees implies (some f: u.follows | p in f.posts)
all a: Ad, u: User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y : User | x.sees in y.posts and x.sees not in Ad and y in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | x.follows.posts in (Photo - Ad) and x.sees in x.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | u.sees - Ad in u.follows.posts
Ad in User.sees
no User.posts&Ad
-- div,1
-- equiv pair end
-- equiv pair start,9
all x,u:User, p:Photo| x->p in sees implies x->u in follows and u->p in posts
-- div,1
all u,x:User, p:Photo| u->p in sees implies x->p in posts and u->x in follows
-- div,1
all p:Photo, u1,u2:User | p in u1.sees implies p in u2.posts and u2 in u1.follows
-- div,2
all u1,u2 : User, p : Photo | p in u1.sees => u2 in u1.follows and p in u2.posts
-- div,1
all u1,u2 : User, p : Photo | p in u1.sees implies p in u2.posts and u2 in u1.follows
-- div,1
all p:Photo,u1:User | u1 -> p in sees implies (all u2:User | u2 -> p in posts and u1 -> u2 in follows)
-- div,1
all user1, user2 : User | all p : Photo | p in user1.sees implies (p in user2.posts and user2 in user1.follows)
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u1,u2 : User | ad in u1.sees implies ad in u2.posts and u2 in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,13
all user : User |
all s : user.sees - Ad |
one f : user.follows | s in f.posts
-- div,1
all p : Photo, u : User | p in u.sees implies (p in Ad or one u1 : u.follows | p in u1.posts)
-- div,1
all u : User, p : Photo | p in u.sees implies (p in Ad or one u1 : u.follows | p in u1.posts)
-- div,1
all u : User | all ph : Photo | ph in u.sees implies (ph in Ad or (one u2 : u.follows | ph in u2.posts))
-- div,1
all u:User, p:Photo | u->p in sees implies ((one u2:User | u->u2 in follows and u2->p in posts) or (p in Ad))
-- div,2
all u : User | all p : Photo | u->p in sees implies ((one v : User | u->v in follows and v->p in posts) or (p in Ad))
-- div,1
all u : User | all p : Photo | p in u.sees implies p in Ad or one u1 : User | p in u1.posts and
u1 in u.follows
-- div,2
all p : Photo | all u : User | p in u.sees implies p in Ad or one u1 : User | p in u1.posts and u1 in u.follows
-- div,1
all u : User | all p : Photo | u->p in sees implies ((one v : User | v->p in posts and u->v in follows) or (p in Ad))
-- div,3
-- equiv pair end
-- equiv pair start,1
all u : User | all p : Photo | p in u.sees iff p in Ad or p in u.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | u.sees-Ad in u.follows.posts
all u:User, p:Photo-Ad | u->p in sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | u.sees in u.follows
all a : Photo-Ad | all u: User | a in u.sees
-- div,1
all u : User | all l : u.sees |l in u.follows
all a : Photo-Ad | all u: User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,5
all u1,u2:User, p:Photo | u1->p in sees and u2->p in posts and u1->u2 in follows
-- div,1
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts and x in sees.p
-- div,1
all x : User | all y : User | all p : Photo | y in follows.x and p in y.posts and x in sees.p
-- div,1
all u1, u2 : User, p : Photo | (u1 in posts.p && u2 in sees.p && u2 in follows.u1)

all u : User, a : Ad | u in sees.a
-- div,1
all u:User | all p:Photo,follow:User | p in u.sees and follow in u.follows and p in follow.posts
all u:User | all ad:Ad | ad in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | all y : x.sees | some k : x.follows | (y in Ad) or (y in k.posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | x.sees in x.follows.posts or x.sees in Ad and  x not in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,43
all u1, u2 : User, s : u1.sees | (s in u2.posts and u2 in u1.follows) or (s in Ad)
-- div,1
all u,i:User, p:Photo-Ad| p in u.sees implies p in i.posts and i in u.follows
-- div,1
all x,u:User, p:Photo-Ad| x->p in sees implies x->u in follows and u->p in posts
-- div,1
all u,x:User, p:Photo-Ad| u->p in sees implies x->p in posts and u->x in follows
-- div,1
all p:Photo-Ad, u1,u2:User | p in u1.sees implies p in u2.posts and u2 in u1.follows
-- div,4
all x, z : User, y : Photo | y in x.sees implies (y in Ad or z in x.follows and y in z.posts)
-- div,2
all p: Photo - Ad, u1,u2: User | u1->p in sees => u2->p in posts and u1->u2 in follows
-- div,2
all x,y: User, f: Photo | f in x.sees and f not in Ad implies f in y.posts and y in x.follows
-- div,1
all x, z: User, y: Photo | x -> y in sees implies y in Ad or z in x.follows and y in z.posts
-- div,1
all u,u2:User, p:Photo | u->p in sees implies ((u->u2 in follows and u2->p in posts) or (p in Ad))
-- div,1
all u1,u2 : User, p : Photo | p in u1.sees => u2 in u1.follows and p in u2.posts or p in Ad
-- div,2
all p : Photo, u1,u2 : User | (p not in Ad and p in u1.sees) implies (p in u2.posts and u2 in u1.follows)
-- div,1
all u1,u2 : User, p: Photo | ((p in u1.sees) and (p not in Ad)) implies ((p in u2.posts) and (u2 in u1.follows))
-- div,1
all p : Photo, u1,u2 : User | (p not in Ad and u1->p in sees) implies (p in u2.posts and u2 in u1.follows)
-- div,1
all u1,u2:User, p:Photo | u1->p in sees implies  (u2->p in posts and u1->u2 in follows) or p in Ad
-- div,1
all u1,u2: User | all p: Photo | p in u1.sees implies (u2 in u1.follows and p in u2.posts) or p in Ad
-- div,1
all u1,u2: User | all p: Photo | p in u1.sees implies (p in Ad) or (u2 in u1.follows and p in u2.posts)
-- div,1
all u, f : User, p : Photo {
u -> p in sees => (p in Ad) || (p not in Ad && u -> f in follows && f -> p in posts)
}
-- div,1
all u1,u2 : User | all p : Photo | u1->p in sees implies ((u2->p in posts and u1->u2 in follows) or (p in Ad))
-- div,1
all p: Photo , u: User , u1 : User | p not in Ad and u->p in sees implies(u->u1 in follows and u1->p in posts)
-- div,1
all p: Photo, u1,u2: User| p in u1.sees implies ((p not in Ad and p in u2.posts and u2 in u1.follows) or (p in Ad))
-- div,1
all u,u2:User, p:Photo | u->p in sees implies ((u->u2 in follows and p not in Ad and u2->p in posts) or (p in Ad))
-- div,1
all u1,u2:User | all p:Photo | (p not in Ad) implies (u1->p in sees implies (u1->u2 in follows and u2->p in posts))
-- div,1
all u1,u2:User| all p:Photo | u1->p in sees and p not in Ad implies u1->u2 in follows and u2->p in posts
-- div,1
all p : Photo, u : User | p in u.sees implies ((all v : User | p in v.posts and v in u.follows) or p in Ad)
-- div,1
all a : User, b : Photo | b in a.sees implies b in Ad or (all c : User | b in c.posts and c in a.follows)
-- div,1
all u:User | all z:User |all p:Photo - Ad | p in u.sees implies p in z.posts and z in u.follows
-- div,3
all x : User, y: Photo | x -> y in sees implies (y in Ad or all v: User | v -> y in posts and x -> v in follows)
-- div,1
all user1, user2 : User | all p : Photo - Ad | p in user1.sees implies (p in user2.posts and user2 in user1.follows)
-- div,1
all u1,u2: User | all p: Photo | p in u1.sees implies (u2 in u1.follows and p in u2.posts and p not in Ad) or p in Ad
-- div,2
all p : Photo | all u1 : User| all u2 : User |
(p in u1.sees implies ((p in u2.posts and u2 in u1.follows) or (p in Ad)))
-- div,2
all p : Photo | all u1 : User | all u2 : User |
p in u1.sees implies ((p in u2.posts and u2 in u1.follows and p not in Ad) or (p in Ad))
-- div,2
-- equiv pair end
-- equiv pair start,1
all u : User | all p : Photo | p in u.sees implies p in u.follows.posts else p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User |all p : Photo | p not in Ad and p in (x.follows).posts and p in x.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | u.posts not in Ad
all u:User | u.sees in u.follows.posts or u.sees in Ad
-- div,1
-- equiv pair end
-- equiv pair start,9
all u1,u2 : User, p : Photo - Ad | u1->p in sees and p in u2.posts and u2 in u1.follows
-- div,1
all u1, u2 : User, p : Photo | (p in u1.sees and p in u2.posts and u2 in u1.follows) or (p in Ad)
-- div,1
all u1,u2 : User | all p : Photo - Ad | p in u2.posts and p in u1.sees and u2 in u1.follows
-- div,1
all u1,u2:User, p:Photo | (u1->p in sees and u2->p in posts and u1->u2 in follows) or p in Ad
-- div,1
all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u1->p in sees and u2->p in posts)
-- div,2
all x : User | all y : User | all p : Photo - Ad | y in follows.x and p in y.posts and x in sees.p
-- div,1
all x : User | all y : User |all p : Photo - Ad| y in x.follows and p in y.posts and x in sees.p
-- div,1
all x : User | all y : User |all p : Photo - Ad| y in x.follows and p in y.posts and x in sees.p and p != Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, p : Photo | p in sees[u] <=> (p in posts[u] and u in follows[u]) or p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, p:Photo-Ad | p in u.sees implies some v:User-u | p in v.posts and v in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,6
all x: User, y: Photo| x->y in sees implies x->y in follows
all x: User, y: Ad | x->y in sees
-- div,1
all x : User, y: Ad | x -> y in sees
all x : User, y: Photo | x -> y in sees implies all v: User | v -> y in posts and x -> y in follows
-- div,1
all x : User, y: Photo | x -> y in sees implies all v: User | v -> y in posts and x -> y in follows
all x : User, y: Ad | x -> y in sees
-- div,1
all x: User, y: Photo| x->y in sees implies (some z: User | z->y in posts and x->y in follows)
all x: User, y: Ad | x->y in sees
-- div,1
all x: User | all y: Ad | x->y in sees
all x: User | all y: Photo | y in x.sees implies one z: User | z in y.posts and z in x.follows
-- div,1
all x,y:User | all a:Ad | x->a in sees implies x->y in follows and y->a in posts
all x:User | all a:Ad | x->a in sees
all x:User |all a:Ad| a not in x.follows.posts
all x:User | x.sees in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Photo,y:User| x!=Ad and x in y.sees implies some z:User| z.posts = x and z in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all u1:User | all p:u1.sees | one u2:u1.follows | (p not in Ad and p in u2.posts) or (p in Ad)
-- div,1
all u:User | all p:u.sees | one u1:u.follows | (p in Ad) or (p in u1.posts and u1 in u.follows)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y : User | x.sees in y.posts and y in x.follows

all x : Ad | all y : User | sees.x in y
-- div,1
-- equiv pair end
-- equiv pair start,5
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
-- div,3
all u,f : User, img : Photo | (img in u.sees) implies (img=Ad or (f in u.follows and img in f.posts))
-- div,2
-- equiv pair end
-- equiv pair start,5
all x: User, y: User, p : Photo | y in follows.x and p in y.posts and  x in sees.p and p  not in Ad
-- div,1
all x : User | all y : User | all p : Photo | y in follows.x and p in y.posts - Ad and x in sees.p
-- div,1
all x : User | all y : User | all p : Photo | y in follows.x and p in y.posts and p not in Ad and x in sees.p
-- div,3
-- equiv pair end
-- equiv pair start,1
all u : User | (u.sees not in Ad) implies (u.sees in (u.follows).posts)

all p : Ad | p in User.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all na : Photo - Ad | all u : User | na in u.follows.posts
all ad : Ad | all u : User | ad in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,4
all u1,u2 : User, p : Photo | p in u1.sees implies p in u2.posts and u2 in u1.follows and p not in Ad
-- div,1
(all u1,u2:User | all p:Photo | u1->p in sees implies (u1->u2 in follows and u2->p in posts and p not in Ad))
-- div,1
all u, f : User, p : Photo {
u -> p in sees => p not in Ad && u -> f in follows && f -> p in posts
}







all a: Ad, u1, u2 : User | u1 -> a in sees => u2 -> a in posts && u1 != u2
-- div,1
all u, f : User, p : Photo {
u -> p in sees => p not in Ad && u -> f in follows && f -> p in posts
}







all a: Ad, u1, u2 : User | u1 -> a in sees => u1 -> u2 in follows && u2 -> a in posts && u1 != u2
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts and x in sees.p and p = Ad
-- div,2
-- equiv pair end
-- equiv pair start,2
all u,i:User, p:Photo-Ad| p in u.sees implies p in i.posts and i in u.follows
all a:Ad| a in User.sees
-- div,1
all u : User, p : Photo | p not in Ad and p in u.sees implies all x : User | p in x.posts and x in u.follows
all a : Ad | a in User.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | x.sees - Ad in x.follows.posts
all x : User | all y : Ad | y in x.sees - x.follows.posts
-- div,1
-- equiv pair end
-- equiv pair start,5
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts and x in sees.p and p != Ad
-- div,2
all x : User | all y : User | all p : Photo | y in follows.x and p in y.posts and p != Ad and x in sees.p
-- div,2
all x : User | all y : User |all p : Photo| y in x.follows and p in y.posts and x in sees.p and not p = Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
inv2 and
all x : User | x.sees in (x.follows.posts - Ad)
}

pred inv2{

all x : User | x not in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,4
all x,y : User, p : Photo | ((p in x.sees && p not in Ad) => (y in follows.x && p in y.posts)) || p in Ad
-- div,1
all u1,u2: User | all p: Photo | p in u1.sees implies (u1 in u2.follows and p in u2.posts and p not in Ad) or p in Ad
-- div,1
all p : Photo | all u1 : User| all u2 : User |
(p in u1.sees implies ((p in u2.posts and u1 in u2.follows) or (p in Ad)))
-- div,1
all p : Photo | all u1 : User| all u2 : User |
(p in u1.sees implies ((p in u2.posts and u1 in u2.follows and p not in Ad) or (p in Ad)))
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | all y : User | all p : Photo - Ad | y not in follows.x and p in y.posts and x not in sees.p
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : User | x.sees - Ad in x.follows.posts
all x : User | all y : Ad | y in x.sees and y not in x.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | u.sees in u.follows.posts & (Photo-Ad)

all u:User | u.sees in Ad
all u:User |u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | u.follows.posts & (Photo-Ad) in u.sees

all u:User | u.sees in Ad
all u:User |u.posts in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all p : Photo | p in u.sees and p in Ad or some u1 : User | p in u1.posts and u1 in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | all l : u.sees |l in u.follows
all a : Photo-Ad | all u: User |all l : u.follows | l in u.sees
-- div,1
all u : User | all l : u.sees |l in u.follows
all a : Photo-Ad | all ua: User |all la : ua.follows | la in ua.sees
-- div,1
-- equiv pair end
-- equiv pair start,5
all u : User | some u2:User | all ph : Photo - Ad | ph in u.sees implies

(ph in u2.posts and u2 in u.follows)
-- div,1
all u1 : User| some u2 : User | all p : Photo | u1->p in sees implies p in Ad or p in u2.posts and u2 in u1.follows
-- div,2
all u : User | some u2:User | all ph : Photo | ph in u.sees implies
(
(ph not in Ad and (ph in u2.posts and u2 in u.follows))
or
(ph in Ad)
)
-- div,2
-- equiv pair end
-- equiv pair start,1
inv2 and
all x : User | x.sees in x.follows.posts or x.sees in Ad
}

pred inv2{

all x : User | x not in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1, u2:User, p:Photo | u1 -> p in sees and u2 -> p in posts and u1 -> u2 in follows
sees in User set ->  set Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1:User | all p:u1.sees | one u2:u1.follows | (p not in Ad and p in u2.posts) or (p in Ad and p not in u1.posts)
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | all p:u.sees | one u1:u.follows | (p in Ad and p not in u.posts) or (p in u1.posts and u1 in u.follows)
-- div,1
-- equiv pair end
-- equiv pair start,2
all u1, u2:User, p:Photo | u1 -> p in sees and u2 -> p in posts implies u1 -> u2 in follows
sees in User set -> set Ad
-- div,2
-- equiv pair end
-- equiv pair start,1
all u1: User | some u2: User | all p: Photo | u1->p in sees implies p not in Ad and u1->u2 in follows and u2->p in posts
-- div,1
-- equiv pair end
-- equiv pair start,6
all p:Photo,u1:User | p not in Ad and (u1 -> p in sees implies (all u2:User | u2 -> p in posts and u1 -> u2 in follows))
-- div,1
all u, f : User, p : Photo {
u -> p in sees => p not in Ad && u -> f in follows && f -> p in posts
}







all a: Ad, u : User | u -> a in sees
-- div,3
all x, y: User | all z:Photo | x-> z in sees implies x-> y in follows and y->z in posts and z not in Ad
all x: User| all y: Ad| x -> y in sees
-- div,1
all p:Photo,u1:User | p not in Ad and (u1 -> p in sees implies (all u2:User | u2 -> p in posts and u1 -> u2 in follows))
all p:Ad,u:User | u -> p in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User | all p:u.sees | one u1:u.follows | (p not in u.posts) and ((p in Ad) or (p in u1.posts and u1 in u.follows))
-- div,1
-- equiv pair end
-- equiv pair start,7
all p : Photo, u1,u2 : User | p in u1.sees implies p in u2.posts and u2 in u1.follows
all u : User, ad : Ad | ad in u.sees
-- div,3
all u1, u2 : User, p:Photo | u1 -> p  in sees implies (u2 -> p in posts and u1->u2 in follows)
all a : Ad, u:User | u->a in sees
-- div,1
all a : Ad, u:User | u->a in sees
all u1, u2 : User, p:Photo | u1 -> p  in sees implies (u2 -> p in posts and u1->u2 in follows)
-- div,1
all x : User, y: Ad | x -> y in sees
all x : User, y: Photo | x -> y in sees implies all v: User | v -> y in posts and x -> v in follows
-- div,1
all u1,u2 : User | all p : Photo | u1->p in sees implies p in u2.posts and u2 in u1.follows
all u : User | all a : Ad | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo | p in User.posts
all u1,u2 : User | all p : Photo - Ad | p in u2.posts and p in u1.sees implies u2 in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,5
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad | ad in User.sees
-- div,2
all ad : Ad | ad in User.*sees
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
all ad : Ad | ad in User.*sees
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : univ | ad in Ad implies ad in User.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, p:Photo | (p in u.sees and p not in Ad) implies p in u.follows.posts and
(all p1:Photo | p1 in Ad implies p1 in u.sees)
-- div,1
-- equiv pair end
-- equiv pair start,22
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u : User | ad in u.sees
-- div,12
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all u : User, ad : Ad | ad in u.sees
-- div,2
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u : User | ad in u.*sees
-- div,2
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all u : User, ad : Ad | ad in u.*sees
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.^sees implies p in u2.posts and u2 in u1.follows
all u : User, ad : Ad | ad in u.^sees
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
all u : User, ad : Ad | ad in u.*sees
-- div,2
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u : User | ad in u.*sees
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all d : Day, ad : Ad, u : User | ad in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo, u1,u2 : User | p in u1.sees implies p in u2.posts and u2 in u1.follows and p != Ad
all u : User, ad : Ad | ad in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User, p : Photo | p not in Ad and p in u.sees implies one x : User | p in x.posts and x in u.follows
all a : Ad | a in User.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
inv2
and
all x : User | all y : Photo | some z : User | y in z.posts and y in x.follows
}

pred inv2{

all x : User | x not in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
inv2
and
all x : User | all y : Photo | some z : User | y in z.posts and z in x.follows
}

pred inv2{

all x : User | x not in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Photo, u1,u2 : User | p not in Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u : User | ad in u.sees
-- div,1
all u, j : User | all p : Photo-Ad | u -> p in sees implies u -> j in follows and j -> p in posts




all u : User | all  a : Ad | u -> a in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1, u2 : User, p : Photo | (u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)

all u : User, p : Photo | u in sees.p && p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1 : User| some u2 : User | all p : Photo | u1->p in sees implies p in u2.posts and u2 in u1.follows
all u : User | all a : Ad | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad,u : univ | ad in Ad implies ad in u.sees
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.*sees implies p in u2.posts and u2 in u1.follows
all ad,u : univ | ad in Ad implies ad in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows and p in u2.sees
all ad : Ad, u : User | ad in u.sees
-- div,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows and p in u2.sees
all ad : Ad, u : User | ad in u.*sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | (u.sees not in Ad) implies (u.sees in (u.follows).posts)



all p : Photo - Ad | all u : User | p in u.sees implies posts.p in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
inv2
and
all x : User | all y : Photo | some z : User | y in z.posts and z in x.follows and y in x.sees
}

pred inv2{

all x : User | x not in x.follows
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows and p not in u2.sees
all ad : Ad, u : User | ad in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u : User | all p : Photo-Ad | u->p in sees implies p in u.follows.posts
all u : User | all p : Photo | all a : Ad | u->a + u->p in posts implies u in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u:User, u2:User, p:Photo-Ad | (u in sees.p and u2 in posts.p) implies u in follows.u2




all u : User | all p : u.sees | p in u.follows.posts or p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all u1, u2 : User, p : Photo , a : Ad | (p != a && u1 in posts.p && u2 in sees.p) implies (u2 in follows.u1)

all u : User, p : Photo | u in sees.p && p in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
inv1 and inv2 and
all x : User | x.sees in (x.follows.posts - Ad)
}

pred inv2{

all x : User | x not in x.follows

}

pred inv1{

all x : Photo | one posts.x
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo, u1,u2 : User | p in u1.sees implies (p in u2.posts and u2 in u1.follows)
all u : User, i : Influencer , ad : Ad | ad in u.sees and ad in i.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Photo, u1,u2: User| p in u1.sees implies ((p not in Ad and p in u2.posts and u2 in u1.follows) or (p in Ad and p in u2.posts and u2 not in u1.follows))
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all p : Photo, u : User | p in u.posts implies p not in u.sees
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Photo | p in User.posts
all u1,u2 : User | all p : Photo | p in u2.posts and p in u1.sees implies u2 in u1.follows
all a : Ad | all u : User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
(all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u2->p in posts))
and
(all u3 : User | all p2 : Photo | p2 in Ad implies u3->p2 in sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: User | no x.sees or x in x.follows
all u: User, p: Photo | p in u.sees && p not in Ad => (some f: u.follows | p in f.posts)
all a: Ad, u: User | a in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,2
all u : User | all p : Photo-Ad | u->p in sees implies p in u.follows.posts
all u : User | all p : Photo | all a : Ad | u->a in posts and u->p in posts implies p in Ad
-- div,1
all u : User | all p : Photo-Ad | u->p in sees implies p in u.follows.posts
all u : User | all p : Photo | all a : Ad | u->a in posts and u->p in posts implies u.posts in Ad
-- div,1
-- equiv pair end
-- equiv pair start,2
(all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u2->p in posts and u1->p in sees))
and
(all u3 : User | all p2 : Photo | p2 in Ad implies u3->p2 in sees)
-- div,1
(all u1,u2:User | all p:Photo | p not in Ad implies (u1->u2 in follows and u1->p in sees and u2->p in posts))
and
(all u3 : User | all p2 : Photo | p2 in Ad implies u3->p2 in sees)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y:User | all a:Ad | x->a in sees implies x->y in follows and y->a in posts
all x:User | all a:Ad | x->a in sees
all x:User | x.follows.posts not in Ad
all x:User | x.sees in Ad
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u1,u2 : User | ad in u1.sees implies ad in u2.posts and u2 not in u1.follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u : User | ad in u.sees
all p : Photo, u : User | p in u.posts implies p not in u.sees
-- div,2
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all p : Photo, u : User | p in u.posts implies p not in u.sees
all ad : Ad, u : User | ad in u.sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all u, f : User, p : Photo {
u -> p in sees => p not in Ad && u -> f in follows && f -> p in posts
}







all a: Ad, u1, u2 : User | u1 -> u2 in follows && u2 -> a in posts && u1 != u2 => u1 -> a in sees
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo, u1,u2 : User | p != Ad and p in u1.sees implies p in u2.posts and u2 in u1.follows
all ad : Ad, u1,u2 : User | ad in u1.sees implies ad in u2.posts and u2 not in u1.follows or u2 in u1.follows
-- div,1
-- equiv pair end
