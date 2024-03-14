-- equiv pair start,8
one posts.User
-- div,1
one Photo.posts
-- div,1
one Photo & User
-- div,1
iden in posts.~posts
-- div,1
one u: User| u in u.posts
-- div,1
some u:User| u in Photo.posts
-- div,1
all i1, i2 : univ | some u : univ | i1 -> u in posts and i2 -> u in posts
-- div,2
-- equiv pair end
-- equiv pair start,94
Photo in posts.Photo
-- div,1
posts in Photo -> one User
-- div,3
all p:Photo| one p.posts
-- div,13
all x:Photo | one x.posts
-- div,12
all u:Photo| one u.posts
-- div,1
all p:Photo| some p.posts
-- div,2
all p: Photo| p in posts.p
-- div,3
all p: Photo| p in p.posts
-- div,2
all p: Photo | one sees.User
-- div,1
all x : Photo | #x.posts = 1
-- div,2
all p:Photo | one ~posts.p
-- div,1
all p : Photo | p in posts.User
-- div,1
all p:Photo | some posts.User
-- div,1
all img : Photo | one posts.User
-- div,1
all p: Photo | p in posts.Photo
-- div,1
all img:Photo | sum posts.img != 0
-- div,2
all img : Photo | img in posts.User
-- div,2
all x: Photo | x in (one posts.User)
-- div,1
all i : univ | i in  Photo implies i in User
-- div,1
all i : Photo | one u : User | i in u
-- div,2
all p: Photo | one u: User | u in p.posts
-- div,1
all p:Photo|one u: User| u in u.posts
-- div,3
all p: Photo| one u :User| p in posts.u
-- div,3
all x: Photo | one y: User | y in x.posts
-- div,1
all x : Photo | some y: User | one posts.y
-- div,1
all i: Photo | one u: User | u in  u.posts
-- div,1
all image : Photo | one u : User | image in u
-- div,1
all p:Photo | one u:User | p->u in posts
-- div,3
all u:Photo | one p:Photo | p in u.posts
-- div,1
all i : Photo | one u : User | i -> u in posts
-- div,1
all p:Photo | some u:User | p in posts.u
-- div,1
all i : Photo | some u : User | u in i.posts
-- div,1
all x : Photo | some u : User | x->u in posts
-- div,2
all x : Photo | some y : User | x->y in posts
-- div,3
all p : Photo | one u : User | u->p in follows
-- div,1
all p : Photo | some u : User | u->p in follows
-- div,2
all x,y : univ | x in Photo implies y in User and y->x in posts
-- div,1
all i1, i2 : Photo | some u : User | i1 -> u in posts and i2 -> u in posts
-- div,4
all x,y,z : univ | x in Photo implies y->x in posts and z->x in posts and z = y
-- div,2
all x,y,z : univ | x in Photo implies y in User and z in User and y->x in posts and z->x in posts and z=y
-- div,5
all p:Photo | some u:User | p in u.posts and all u2:User | u2 != u and p not in u.posts
-- div,1
all p:Photo | some u:User | p in u.posts and all u2:User | u2 != u and p not in u2.posts
-- div,1
all p:Photo | some u:User | p-> u in posts
all p:Photo,u1:User,u2:User | u1 -> p in posts and u2 -> p in posts implies u1=u2
-- div,1
-- equiv pair end
-- equiv pair start,3
posts in User one -> one Photo
-- div,3
-- equiv pair end
-- equiv pair start,2
posts in User one -> lone Photo
-- div,1
all y : univ | y in Photo implies some x : User | x.posts=y
all x,y,z : univ | x in User and z in User and y in Photo and x->y in posts and z->y in posts implies x=z
-- div,1
-- equiv pair end
-- equiv pair start,3
one posts.Photo
Photo in User.posts
-- div,3
-- equiv pair end
-- equiv pair start,3
one u:User| all p:Photo| one posts.p
-- div,1
one u: User | all p: Photo | some p.~posts
-- div,2
-- equiv pair end
-- equiv pair start,3
one u: User | all p: Photo | p.~posts = u
-- div,1
one x:User | all p:Photo | x->p in posts
all x,y:User| all p:Photo | x->p in posts and y->p in posts implies x=y
-- div,1
one x:User | all p:Photo | x->p in posts
all x,y:User| all p:Photo | x->p in posts and y->p in posts implies x=y

all p : Photo | one u:User | u->p in posts
all p: Photo | all u,v: User |u->p in posts and v->p in posts implies u=v
-- div,1
-- equiv pair end
-- equiv pair start,4
User.posts = Photo
all p1,p2 : User | p1.posts != p2.posts
-- div,2
User.posts = Photo
all p1,p2 : User | p1.posts != p2.posts or p1!=p2
-- div,1
User.posts = Photo
all p1,p2 : User | p1.posts != p2.posts && p1!=p2
-- div,1
-- equiv pair end
-- equiv pair start,1
one posts.Photo
Photo in User.posts

all u : User | u not in u.follows
-- div,1
-- equiv pair end
-- equiv pair start,3
all p:Photo | one u:User | u -> p in posts
all u:User | u -> u not in follows
-- div,3
-- equiv pair end
-- equiv pair start,2
all u : User | all p : Photo | p in u.posts
all p : Photo | one u : User | p in u.posts
-- div,1
all f : Photo | f in User.posts
all f : Photo | all u1, u2 : User | f in u1.posts+u2.posts implies u1 = u2
-- div,1
-- equiv pair end
-- equiv pair start,1
User.posts = Photo
all p1,p2 : User | p1.posts != p2.posts or p1=p2
all p : Photo | lone posts.p
-- div,1
-- equiv pair end
-- equiv pair start,1
posts in User one -> Photo
not some p:Photo | all disj u1, u2:User | u1->p in posts and u2->p in posts
-- div,1
-- equiv pair end
-- equiv pair start,2
(all p : Photo | some u : User | p in u.posts) &&
all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
-- div,1
(all p : Photo | some u : User | u->p in posts) &&
all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
-- div,1
-- equiv pair end
