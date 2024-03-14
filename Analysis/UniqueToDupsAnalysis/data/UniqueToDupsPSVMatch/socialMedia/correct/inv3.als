sees in (follows.posts + User->Ad)
-- div,9
sees:>(Photo - Ad) in follows.posts:>(Photo - Ad)
-- div,1
all x: User | x.sees-Ad in x.follows.posts
-- div,19
all p : User | p.sees in p.follows.posts + Ad
-- div,1
all u:User | u.sees in u.follows.posts+Ad
-- div,24
all u : User | u.sees in Ad+u.follows.posts
-- div,4
all u:User | u.sees - u.follows.posts in Ad
-- div,5
all x : User | x.sees in (x.follows.posts+Ad)
-- div,21
all u:User |u.sees-Ad in u.follows.posts
-- div,154
all p: Photo-Ad | sees.p in follows.posts.p
-- div,3
all u : User | no u.sees - (Ad + u.follows.posts)
-- div,1
all u : User | u.sees-Ad in u.follows.posts-Ad
-- div,2
all u : User | u.sees in (u.follows.posts-Ad)+Ad
-- div,1
all u:User |u.sees&(Photo-Ad) in u.follows.posts
-- div,2
all u : User, p : u.sees | p in Ad+u.follows.posts
-- div,1
all x : User | x.sees in (x.follows.posts + x.follows + Ad )
-- div,1
all u:User, p:u.sees | p in u.follows.posts or p in Ad
-- div,5
all u:User, p:u.sees| p not in Ad implies p in u.follows.posts
-- div,1
all x : User | all y : x.sees-Ad | y in x.follows.posts
-- div,1
all u : User | all p : u.sees - Ad | p in u.follows.posts
-- div,1
all p: Photo-Ad | all u: sees.p | u in follows.posts.p
-- div,1
all u:User | all p:u.sees | p in u.follows.posts or p in Ad
-- div,6
all u:User | all p: u.sees | p in Ad or p in u.follows.posts
-- div,2
all u: User | all s: u.sees | (s in u.follows.posts) or s in Ad
-- div,1
all p : Photo - Ad, u : User | p in u.sees implies p in u.follows.posts
-- div,1
all x : User | all p : x.sees | p in x.follows.posts or p in Ad
-- div,1
all x : User |all p : x.sees | p in Ad or p in x.follows.posts
-- div,1
all x:User | all y:x.sees| y in Ad or y in x.follows.posts
-- div,7
all x : User, p : Photo-Ad | p in x.sees implies p in x.follows.posts
-- div,1
all u : User, p : Photo - Ad| p in u.sees => p in u.follows.posts
-- div,9
all u: User, p: Photo | p in u.sees-Ad implies p in u.follows.posts
-- div,2
all u: User, p: Photo | u in sees.p => p in Ad+u.follows.posts
-- div,1
all u : User | all x : u.sees | x not in Ad => x in u.follows.posts
-- div,1
all u : User | all p : u.sees | p not in Ad => p in u.follows.posts
-- div,1
all u : User, p : Photo | u->p in sees => p in Ad+u.follows.posts
-- div,5
all u : User | all p: Photo - Ad | u.sees-Ad in u.follows.posts
-- div,1
all u: User, p: Photo - Ad | u in p.~sees => p in u.follows.posts
-- div,4
all u:User | all us:u.sees | us in u.follows.posts or us in Ad
-- div,2
all u:User, p:Photo-Ad | p in u.sees implies p in u.follows.posts+Ad
-- div,2
all x: User, y: Photo | y in x.sees implies y in Ad or y in x.follows.posts
-- div,2
all u: User, p: Photo | p in u.sees implies (p in u.follows.posts or p in Ad)
-- div,3
all u:User, p:Photo | p in u.sees => p in u.follows.posts or p in Ad
-- div,51
all u:User, p:Photo | p in u.sees implies (p in Ad or p in u.follows.posts)
-- div,3
all x:User, p:Photo | p in x.sees implies p in Ad or p in x.follows.posts
-- div,3
all u : User, p : Photo | p in u.sees implies (p in Ad or (u in follows.posts.p))
-- div,6
all p:Photo, u:User | p in u.sees => p in Ad or p in u.follows.posts
-- div,1
all u:User,p:Photo | p in u.sees => p in Ad or p in u.follows.posts
-- div,10
all p: Photo, u: User | p in u.sees => p in u.follows.posts or p in Ad
-- div,2
all x : User, y : Photo | y in x.sees implies (y in Ad or y in x.follows.posts)
-- div,1
all p : Photo, u : User | p in u.sees => (p in Ad || p in u.follows.posts)
-- div,1
all u: User, p: Photo | p not in Ad && p in u.sees => p in u.follows.posts
-- div,1
all u : User, p : Photo | p in u.sees and p not in Ad implies p in u.follows.posts
-- div,2
all u : User, p : Photo | u->p in sees =>
p in Ad || p in u.follows.posts
-- div,1
all x:Photo,y:User| x not in Ad and x in y.sees implies x in y.follows.posts
-- div,1
all u : User, y : Photo| y in u.sees and y not in Ad implies y in u.follows.posts
-- div,1
all u: User, i: Photo | i in u.sees && i not in Ad => i in u.follows.posts
-- div,1
all x : Photo - Ad | all u : User | x in u.sees implies x in u.follows.posts
-- div,1
all u:User | all p: Photo-Ad | p in u.sees implies p in u.follows.posts
-- div,10
all x: User | all y: Photo-Ad | (y in x.sees) implies x in follows.posts.y
-- div,2
all p : Photo - Ad | all u : User | p in u.sees implies p in u.follows.posts
-- div,1
all x : User | all y : Photo-Ad |  y in x.sees implies y in x.follows.posts
-- div,6
all u : User | all p : Photo-Ad | u->p in sees implies p in u.follows.posts
-- div,1
all u:User, p:Photo | u->p in sees and p not in Ad implies u->p in follows.posts
-- div,1
all na : Photo - Ad | all u : User | na in u.sees implies na  in u.follows.posts
-- div,1
all u : User | all ph : Photo - Ad | ph in u.sees implies ph in u.follows.posts
-- div,1
all x : User | all y : x.sees - Ad | (some u : x.follows  | y in u.posts)
-- div,1
all u : User | all p : u.sees | p not in Ad and p in u.follows.posts or p in Ad
-- div,1
all user : User , p : Photo | p in user.sees => p in user.follows.posts

or p in Ad
-- div,1
all u:User | all p: Photo-Ad | p in u.sees implies p in u.follows.posts + Ad
-- div,8
all u: User | all p: Photo | p in Ad or p in u.follows.posts or p not in u.sees
-- div,1
all u : User | all p : Photo | p in sees[u] => p in posts[follows[u]] or p in Ad
-- div,10
all x : User | all p : Photo | x in sees.p => (p in x.follows.posts || p in Ad)
-- div,7
all x : User | all y : Photo |  y in x.sees implies y in x.follows.posts or y in Ad
-- div,2
all x : User | all y : Photo | y in x.sees implies y in Ad or y in x.follows.posts
-- div,1
all u:User, p:Photo - Ad | some v:User | u.sees-Ad in u.follows.posts
-- div,1
all a:User | all p:Photo | p in a.sees => p in a.follows.posts or p in Ad
-- div,2
all u : User | all p : Photo | p in u.sees implies (p in Ad or u in follows.posts.p)
-- div,1
all p : Photo | all u : User | p in u.sees => p in u.follows.posts or p in Ad
-- div,1
all u: User | all p: Photo | p in u.sees implies (p in u.follows.posts or p in Ad)
-- div,1
all u : User | all p: Photo | p in u.sees implies (p in Ad or p in u.follows.posts)
-- div,4
all x : User | all p : Photo | x -> p in sees implies p in x.follows.posts or (p in Ad)
-- div,1
all u : User | all p : Photo | (p in u.sees and p not in Ad) implies (p in u.follows.posts)
-- div,1
all x, z: User | all p: Photo | x in sees.p => (p in (x.follows).posts || p in Ad)
-- div,1
all u : User | all p : Photo | u->p in sees and p not in Ad implies u in follows.(posts.p)
-- div,2
all x : User | all y : Photo | y not in Ad and y not in x.follows.posts implies y not in x.sees
-- div,2
all u: User | all p: u.sees | (some f: u.follows | p in f.posts) or p in Ad
-- div,2
all x : User | all y : x.sees | (y in Ad) or (some k : x.follows | y in k.posts)
-- div,2
all x : User | all y : x.sees | y not in Ad => (some f : x.follows | y in f.posts)
-- div,1
all u:User, p:Photo | p in u.sees implies (p not in Ad) implies p in u.follows.posts or p in Ad
-- div,5
all u : User, f : Photo | (f in u.sees) implies (f not in Ad and f in u.follows.posts) or (f in Ad)
-- div,1
all u:User, p:Photo | p in u.sees => (p not in Ad) => (p in u.follows.posts || p in Ad)
-- div,1
all u : User, p : Photo| (p in u.sees) implies ((p in u.follows.posts and p not in Ad) or (p in Ad))
-- div,1
all u:User, p:Photo | p in u.sees implies (p not in Ad and p in u.follows.posts) or (p in Ad)
-- div,1
all u : User, p : Photo | (p in u.sees) implies (p in u.follows.posts and p not in Ad) or (p in Ad)
-- div,1
all u:User | u.sees-Ad in u.follows.posts




all u:User | u.sees<:Ad in Ad
-- div,1
all x:User, p:Photo | p in x.sees implies p in Ad or some y:User | p in x.follows.posts
-- div,1
all user : User, photo : Photo | photo in user.sees => photo in user.follows.posts
or photo in Ad
-- div,1
all u:User| all p:Photo | (p in u.sees ) implies (p in Ad or (p not in Ad and  p in u.follows.posts))
-- div,2
all u : User, p : Photo | p in u.sees and p not in Ad implies some z: User | p in u.follows.posts
-- div,1
all u:User, p:Photo - Ad | u in sees.p implies some v:User | v in posts.p and u in follows.v
-- div,1
all u:User, p:Photo - Ad | some v:User |u in sees.p implies v in posts.p and u in follows.v
-- div,5
all x : User, z : Photo-Ad | x in sees.z implies (some y : User | y in x.follows and y in posts.z)
-- div,1
all u : User | all ph : Photo  | ph in u.sees implies
( ph not in Ad and ph in u.follows.posts) or ph in Ad
-- div,1
all x : User | all y : x.sees | y not in Ad => (some u : User | u in x.follows  && y in u.posts)
-- div,1
all p : Photo - Ad, u : User | p in u.sees implies ( some u2 : User | u2 in u.follows && p in u2.posts)
-- div,1
all u:User, p:Photo-Ad| some x:User| u->p in sees implies x->p in posts and u->x in follows
-- div,1
all x:User, y: Photo-Ad|  x-> y in sees implies ( some z:User| x->z in follows and z-> y in posts)
-- div,1
all u : User, seenPhotos : u.sees | seenPhotos in Ad || (seenPhotos not in Ad && seenPhotos in u.follows.posts)
-- div,1
all x:User, p:Photo-Ad| x->p in sees implies (some u:User| x->u in follows and u->p in posts)
-- div,1
all u : User, p : Photo-Ad | p in u.sees implies (some u2 : User | p in u2.posts and u2 in u.follows)
-- div,2
all x: User, z:Photo-Ad | x-> z in sees implies (some y: User| x-> y in follows and y->z in posts)
-- div,3
all u:User,p:Photo-Ad | (u->p in sees) => some u2:User | u->u2 in follows and u2->p in posts
-- div,1
all x:User, p:Photo | p in x.sees implies p in Ad or some y:User | y in x.follows and p in y.posts
-- div,1
all p:Photo,u:User| p in u.sees =>  (some z: User | z in u.follows and p in z.posts or (p in Ad))
-- div,1
all p : Photo, u : User | p in u.sees implies ((some v : User | p in v.posts and v in u.follows) or p in Ad)
-- div,3
all x: User, y: Photo | y in x.sees implies y in Ad or some z: User | z in x.follows and y in z.posts
-- div,1
all p:Photo-Ad, u1:User | u1->p in sees => (some u2:User | u1->u2 in follows and u2->p in posts)
-- div,2
all u : User, p : Photo | p in u.sees and p not in Ad implies some z: User | p in z.posts and z in u.follows
-- div,1
all p: Photo - Ad, u1: User | u1->p in sees => some u2: User | u2->p in posts and u1->u2 in follows
-- div,7
all x:Photo,y:User| x not in Ad and x in y.sees implies some z:User| x in z.posts and z in y.follows
-- div,1
all x: User, y: Photo | x -> y in sees implies y in Ad or some z: User | z in x.follows and y in z.posts
-- div,1
all u:User, p:Photo | u in sees.p and p not in Ad implies some v:User | v in posts.p and u in follows.v
-- div,1
all p: Photo - Ad, u1: User | some u2: User | u1->p in sees => u2->p in posts and u1->u2 in follows
-- div,2
all x : User, z : Photo | z not in Ad and x in sees.z implies (some y : User | y in x.follows and y in posts.z)
-- div,1
all p : Photo-Ad | all u : User | u in sees.p implies some v : User | v in posts.p and u in follows.v
-- div,1
all x : Photo-Ad | all y : User | y in sees.x implies some z : User | z in posts.x and y in follows.z
-- div,4
all x: Photo - Ad | all u:User | x in u.sees implies some p:User | (p in u.follows) and (x in p.posts)
-- div,1
all u: User | all p: Photo-Ad | p in u.sees implies (some y: User | y in u.follows and p in y.posts)
-- div,2
all u:User | all p:Photo - Ad | p in u.sees implies some v:User | p in v.posts and v in u.follows
-- div,3
all x: User, y: Photo |  x -> y in sees implies y in Ad or some z: User | x -> z in follows and z -> y in posts
-- div,1
all x: User, z:Photo | x-> z in sees implies( (some y: User| x-> y in follows and y->z in posts) or z in Ad)
-- div,1
all u:User,p:Photo | p in u.sees implies (some u2:User | u2 in u.follows and p in u2.posts) or p in Ad
-- div,1
all u : User, p : Photo | u->p in sees =>
p in Ad || some f : User | u->f in follows && f->p in posts
-- div,3
all u: User | all p: Photo-Ad | u->p in sees implies (some y: User | y in u.follows and p in y.posts)
-- div,1
all u:User, p:Photo | u in sees.p and p not in Ad implies some v:User | v->p in posts and u->v in follows
-- div,1
all u : User, p : Photo | u->p in sees => p in Ad || (some f : User | f->p in posts && u->f in follows)
-- div,1
all u : User, x : Photo | u->x in sees and x not in Ad implies(some v: User | u->v in follows and v->x in posts)
-- div,1
all u: User | all p: Photo-Ad | u->p in sees implies (some y: User | y in u.follows and y->p in posts)
-- div,1
all p : Photo-Ad | all u : User | u->p in sees implies some v : User | v->p in posts && u->v in follows
-- div,4
all p : Photo - Ad | all u : User | some u2 : User | p in u.sees implies (p in u2.posts and u2 in u.follows)
-- div,1
all u: User | all p: Photo-Ad | u->p in sees implies (some y: User | u->y in follows and y->p in posts)
-- div,2
all u:User,p:Photo | u -> p in sees implies ((some u2:User | u->u2 in follows and u2->p in posts) or p in Ad)
-- div,2
all u : User, p:Photo | u -> p in sees implies (some u2:User | u->u2 in follows and u2->p in posts) or p in Ad
-- div,1
all u:User, p:Photo| u -> p in sees implies ((p in Ad) or (some u2:User |  u -> u2 in follows and u2 -> p in posts))
-- div,1
all u:User, p:Photo | u -> p in sees implies (some u2:User | u -> u2 in follows and u2 -> p in posts or p in Ad)
-- div,1
all u:User,p:Photo | u->p in sees implies (some u2:User | u2->p in posts and u->u2 in follows) or p in Ad
-- div,4
all p:Photo,u:User | u -> p in sees implies (some u2:User | u -> u2 in follows and u2 -> p in posts) or p in Ad
-- div,1
all u1 : User, i : Photo | (i not in Ad and u1 in sees.i) implies (some u2 : User | u1 in follows.u2 and u2 in posts.i)
-- div,3
all p: Photo , u: User |some  u1 : User | p not in Ad and u->p in sees implies(u->u1 in follows and u1->p in posts)
-- div,1
all u:User | all p:Photo-Ad | u->p in sees implies (some u2:User| u2->p in posts and u->u2 in follows)
-- div,1
all u1 : User , p : Photo | u1->p in sees implies p in Ad or some u2 : User | u1->u2 in follows and u2->p in posts
-- div,1
all u1 : User, i : Photo | (i not in Ad and u1 in sees.i) implies (some u2 : User | u1->u2 in follows and u2->i in posts)
-- div,1
all u1:User, p:Photo | (u1->p in sees and p not in Ad) => (some u2:User | u1->u2 in follows and u2->p in posts)
-- div,2
all p:Photo, u1: User | p not in Ad and u1-> p in sees => (some u2:User | u2->p in posts  and u1->u2 in follows)
-- div,7
all u:User | all p:Photo | p in u.sees implies some v:User | p in v.posts and v in u.follows or p in Ad
-- div,1
all x: User | all y: Photo | y in x.sees implies ((some z: User | z in posts.y and z in x.follows) or y in Ad)
-- div,1
all x : User | all p : Photo | p in x.sees implies ((some y : User | p in y.posts and x->y in follows) or (p in Ad))
-- div,1
all x : User | all p : Photo | some y : User | p in x.sees implies ((p in y.posts and x->y in follows) or (p in Ad))
-- div,1
all u : User | all p : Photo | p in u.sees implies p in Ad or some u1 : User | p in u1.posts and u1 in u.follows
-- div,2
all u : User | all p : Photo | u -> p in sees implies ((some u2 : User | u -> u2 in follows and u2 -> p in posts) or p in Ad)
-- div,1
all u1:User | all p:Photo | u1->p in sees implies((some u2:User | u2 -> p in posts and u1 -> u2 in follows) or p in Ad)
-- div,1
all u1 : User | all ph : Photo |
ph in u1.sees implies (some u2:User | ph in u2.posts and u2 in u1.follows) or ph in Ad
-- div,1
all u1: User | all ph: Photo | ph in u1.sees  implies ((some u2: User | ph in u2.posts and u2 in u1.follows ) or ph  in Ad)
-- div,14
all p : Photo | (all u1 : User | u1->p in sees and p not in Ad implies (some u2:User | u2->p in posts and u1->u2 in follows))
-- div,1
all u1: User, p: Photo | p in u1.sees implies (some u2: User | u2 in u1.follows and p in u2.posts and p not in Ad) or p in Ad
-- div,1
all u1:User| all p:Photo | u1->p in sees and p not in Ad implies(some u2:User| u1->u2 in follows and u2->p in posts)
-- div,3
all u1 : User | all ph : Photo |
u1->ph in sees implies ((some u2 : User | ph in u2.posts and u2 in u1.follows ) or ph  in Ad)
-- div,1
all u1 : User | all ph : Photo |
u1 -> ph in sees implies ((some u2 : User | ph in u2.posts and u1 -> u2 in follows ) or ph in Ad)
-- div,2
all u1 : User | all ph : Photo |
u1->ph in sees implies ((some u2 : User | u2->ph in posts and u2 in u1.follows ) or ph  in Ad)
-- div,1
all u1 : User | all ph : Photo |
u1->ph in sees implies ((some u2 : User | u2->ph in posts and u1-> u2 in follows ) or ph  in Ad)
-- div,1
all u1 : User | all p : Photo | p in u1.sees implies ((some u2 : User | u2 in posts.p and p not in Ad and u2 in u1.follows) or p in Ad)
-- div,2
all u1: User | all p: Photo | p in u1.sees implies (some u2: User | u2 in u1.follows and p in u2.posts and p not in Ad) or p in Ad
-- div,1
all u: User, p : Photo | u -> p in sees =>
p in Ad || some f : User | u->f in follows && f->p in posts

all u: User, p: Photo | u -> p in sees => p in Ad+u.follows.posts
-- div,2
