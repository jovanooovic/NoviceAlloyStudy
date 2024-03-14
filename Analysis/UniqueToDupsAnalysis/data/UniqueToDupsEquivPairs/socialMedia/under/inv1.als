-- equiv pair start,281
User.posts = Photo
-- div,2
Photo = User.posts
-- div,2
Photo in User.posts
-- div,14
posts in User some -> Photo
-- div,1
User.posts = Photo + Ad
-- div,1
Photo+Ad = User.posts
-- div,1
(Photo + Ad) in User.posts
-- div,2
all x:Photo | some posts.x
-- div,12
all p: Photo | some posts.p
-- div,8
all p: Photo | some p.~posts
-- div,1
all i: Photo |i in  User.posts
-- div,7
all f : Photo | f in User.posts
-- div,1
all x: Photo | x in User.posts
-- div,4
all p:Photo| p in User.posts
-- div,40
all img:Photo | posts.img != none
-- div,1
all x: Photo | Photo in User.posts
-- div,1
all p:Photo| one (p & User.posts)
-- div,4
all i : Photo | one i & User.posts
-- div,1
all x: Photo | x in (one User.posts)
-- div,1
all p:Photo|  #(p & User.posts) =1
-- div,1
all photo: Photo | photo in User.posts
-- div,2
Photo+Ad = User.posts + Influencer.posts
-- div,1
all p : Photo | one u : User.posts | p = u
-- div,1
all x: Photo | (some u: User | x in u.posts)
-- div,2
all i:Photo | some u:User | i in u.posts
-- div,8
all x : Photo | some y : User | x in y.posts
-- div,1
all p:Photo |some u:User | p in u.posts
-- div,36
all i : Photo | some u : User | u in posts.i
-- div,2
all p:Photo|  one (p & Photo) and p in User.posts
-- div,1
all x : Photo | some u : User | u->x in posts
-- div,1
all x:Photo | some y:User | y->x in posts
-- div,66
all p:Photo | some u:User | u->p in posts
-- div,18
all p: Photo | some x : User | x -> p in posts
-- div,1
all p : Photo | one post: User.posts | p in post
-- div,1
all p:Photo|  one (p & (User.posts+Influencer.posts))
-- div,1
all x : Photo | some user : User | x in user.posts
-- div,1
all p : Photo | some post: User.posts | p in post
-- div,1
all x : Photo | some user : User | user->x in posts
-- div,1
all p:Photo | p in User.posts or p in Influencer.posts
-- div,4
all photo : Photo |
some user : User | photo in user.posts
-- div,1
all p: Photo | one u: User.posts | p in Photo => (p = u)
-- div,1
all x : univ | x in Photo implies some y: univ | y->x in posts
-- div,1
all x : univ | x in Photo implies some u : univ | u->x in posts
-- div,1
all i : univ | i in  Photo implies some x : univ | x->i in posts
-- div,1
all p : Photo | one post: User.posts + Influencer.posts | p in post
-- div,1
all p : Photo | some post: User.posts + Influencer.posts | p in post
-- div,1
all p:Photo|  one (p & Photo) and (p in User.posts or p in Influencer.posts)
-- div,1
all p : univ | p in Photo implies some u : univ | u in User and u in posts.p
-- div,2
all p : univ | p in Photo implies some u : univ | u in User and u->p in posts
-- div,1
all x : Photo | some y,z : User | y->x in posts and z->x in posts and z=y
-- div,1
all x : Photo | some y : User | y->x in posts

all x : Photo | some posts.x
-- div,1
all p : univ | p in Photo implies some u : univ | (u in User or u in Influencer) and u in posts.p
-- div,1
all p: Photo | some u : User | p in u.posts
all a : Ad| some u : User | a in u.posts
-- div,1
all p: Photo | p in User.posts
all p: Photo| some u1, u2: User | p in u1.posts and p in u2.posts implies u1=u2
-- div,1
all i : univ | i in Photo implies some x : univ | x->i in posts
all p : univ | p in Photo implies some x : univ | x->p in posts
-- div,1
all x : Photo | some y : User | y->x in posts
all x : Photo | some y,z : User | y->x in posts and z->x in posts implies y = z
-- div,1
all p : Photo | some u : User | u->p in posts
all p : Photo | some u1,u2 : User | u1->p in posts and u2->p in posts implies u1=u2
-- div,1
all i : univ | i in Photo implies some x : univ | x->i in posts
all p : univ | p in Photo implies some x,y : univ | x->p in posts and y->p in posts
-- div,1
all i : univ | i in Photo implies some x : univ | x->i in posts
all p : univ | p in Photo implies some x,y : univ | x->p in posts and y->p in posts implies x=y
-- div,2
all p : univ | p in Photo implies some u : univ | u in User and u in posts.p
all p : Photo | some u1, u2 : univ | u1 in posts.p and u2 in posts.p implies u1 = u2
-- div,2
all p : univ | p in Photo implies some u : univ | u in User and u->p in posts
all p : Photo | some u1, u2 : univ | u1->p in posts and u2->p in posts implies u1 = u2
-- div,1
all p : univ | p in Photo implies some u : univ | u in User and u in posts.p
all p : univ | some u1, u2 : univ | p in Photo and u1 in posts.p and u2 in posts.p implies u1 = u2
-- div,1
all p : univ | p in Photo implies some u : univ | u in User and u->p in posts
all p : univ | some u1, u2 : univ | p in Photo and u1->p in posts and u2->p in posts implies u1 = u2
-- div,1
-- equiv pair end
-- equiv pair start,48
User.posts in Photo
-- div,1
posts in User->Photo
-- div,3
no (User->Photo).posts
-- div,1
no User->Photo.posts
-- div,1
~posts.~posts in iden
-- div,1
all i : Photo | one i
-- div,1
all p : Photo | one p.date
-- div,1
all x: User | lone posts.x
-- div,1
all u:User| lone posts.u
-- div,2
all p: Photo | lone p.posts
-- div,2
all u: Photo | lone u.posts
-- div,1
all p:Photo| #(p.date) >0
-- div,1
all u : User | posts.u in Photo
-- div,1
all u:User|u.posts in Photo
-- div,4
all p : User.posts | p in Photo
-- div,1
all p: Photo | lone User.posts & p
-- div,2
all p : Photo | lone p & User.posts
-- div,1
all u: User, p: Photo | one u->p
-- div,1
all u:User,f:Photo| posts.u in f
-- div,1
all p : Photo | one User.posts implies some p
-- div,1
posts.Photo in User or posts.Photo in Influencer
-- div,1
all p:Photo, u:User | u.posts in Photo
-- div,2
all p:Photo, u:User | u->p in posts implies one u
-- div,1
all p: Photo, u: User.posts | p = Photo => p = u
-- div,1
all p:Photo, u:User | p in Photo iff u.posts in Photo
-- div,1
all x,y,z : univ | y->z in posts and z->x in posts implies y = z
-- div,1
all p: Photo, u: User | p in u.posts => p not in User-u.posts
-- div,1
all d1,d2 : Day | d1.prev = d2 implies d2.next = d1
-- div,2
all x,y: User | all p: Photo | p in posts.x and p in posts.y implies x=y
-- div,2
all u1, u2: User, p1 : Photo | p1->u1 in posts and p1->u2 in posts implies u1=u2
-- div,1
all x,y: User | all p: Photo | p->x in posts and p->y in posts implies y=x
-- div,1
all u : User | all p : Photo | p in posts[u] => one d : Day | p.date = d
-- div,1
all x : Photo, u : User | some user : User | x in posts.user implies x not in posts.u
-- div,2
all x : Photo, u : User | some user : User | x in posts.user implies x not in posts.User
-- div,1
all x,y,z : univ | x in User and z in User and y in Photo and y->x in posts and y->z in posts implies x=z
-- div,1
all u1, u2: User, p1 : Photo | p1->u1 in posts and (u2->p1 in posts or u2->p1 in sees) implies u1=u2
-- div,1
-- equiv pair end
-- equiv pair start,136
posts.~posts in iden
-- div,4
posts in User lone -> Photo
-- div,4
all p : univ | lone (posts.p)
-- div,2
all p:Photo | lone posts.p
-- div,16
all u: Photo | lone posts.u
-- div,1
all p:Photo|#(p.~posts)<=1
-- div,4
all u:User , p: Photo| lone posts.p
-- div,1
all disj x,y:User | no x.posts & y.posts
-- div,1
all p:Photo,u:User|#(p.~posts)<=1
-- div,1
all p:Photo | lone u:User | p in u.posts
-- div,6
all p:Photo|all u:User|#(p.~posts)<=1
-- div,4
all x,y,z : univ | y->x in posts and z->x in posts implies y = z
-- div,1
all x,y,z : univ | x->y in posts and z->y in posts implies x=z
-- div,1
all p: Photo, u: User | p in u.posts => p not in (User-u).posts
-- div,3
all x,y : User, p : Photo | p in x.posts and p in y.posts implies x = y
-- div,3
all x,y: User, z: Photo | z in x.posts and z in y.posts implies x = y
-- div,2
all x,y : User, p : Photo | x->p in posts and y->p in posts implies x = y
-- div,2
all x,y : User, n : Photo | x->n in posts and y->n in posts implies x=y
-- div,1
all p:Photo,u1,u2:User | p in u1.posts and p in u2.posts implies u1=u2
-- div,2
all p:Photo,x1,x2:User | p in x1.posts and p in x2.posts implies x1=x2
-- div,1
all u1, u2: User, p : Photo | p in u1.posts and p in u2.posts implies u1=u2
-- div,5
all i : Photo, u1, u2 : User | u1->i in posts and u2->i in posts implies u1 = u2
-- div,1
all p:Photo, u1,u2:User | u1->p in posts and u2->p in posts => u1 = u2
-- div,4
all u1,u2:User, p:Photo | u1->p in posts and u2->p in posts implies u1=u2
-- div,4
all ph:Photo, u1,u2:User | ph in u1.posts and ph in u2.posts implies u1 = u2
-- div,2
all x : Photo | all y, z : User | x in y.posts and x in z.posts implies y = z
-- div,3
all u,y : User | all p : Photo | (p in u.posts and p in y.posts) implies u = y
-- div,1
all x,y: User | all p: Photo | p in x.posts and p in y.posts implies x=y
-- div,1
all u1, u2: User, p1 : Photo | u1->p1 in posts and u2->p1 in posts implies u1=u2
-- div,2
all x : Photo | all y,z : User | y->x in posts and z->x in posts implies y = z
-- div,1
all p : Photo | all y,z: User | y->p in posts and z->p in posts implies y=z
-- div,1
all x,y: User | all p: Photo | x->p in posts and y->p in posts implies y=x
-- div,2
all p : Photo | all x, y : User | x->p in posts and y->p in posts implies x=y
-- div,1
all p:Photo | not some disj u1, u2: User | u1->p in posts and u2->p in posts
-- div,1
all p : Photo | all u, v : User | u->p in posts and v->p in posts implies u=v
-- div,1
all f : Photo | all u1, u2 : User | f in u1.posts and f in u2.posts implies u1 = u2
-- div,1
all p : Photo | all u1,u2 : User | p in u1.posts and p in u2.posts implies u1=u2
-- div,8
all p: Photo, u: User | p in u.posts and p in u.posts implies p not in (User-u).posts
-- div,1
all u1,u2:User | all p:Photo | u1->p in posts and u2->p in posts implies u1=u2
-- div,11
all u1,u2:User | (some p:Photo | u1->p in posts and u2->p in posts) implies u1 = u2
-- div,1
all p:Photo,u1:User,u2:User | u1 -> p in posts and u2 -> p in posts implies u1=u2
-- div,7
all u1, u2:User | not some p:Photo | u1!=u2 and u1->p in posts and u2->p in posts
-- div,2
all p:Photo,x1,x2:User | p in x1.posts and p in x2.posts implies x1=x2 and x1 in User
-- div,1
all u:User,u2:User | all p:Photo | p in u.posts and p in u2.posts implies u = u2
-- div,1
all u:User,u2:User | all p:Photo | p in u.posts and u != u2 implies p not in u2.posts
-- div,1
all x,y,z : univ | x in User and z in User and y in Photo and x->y in posts and z->y in posts implies x=z
-- div,2
all u:User | all u2:User | all p:Photo | p in u.posts and u != u2 implies p not in u2.posts
-- div,1
all photo: Photo | all user1, user2: User | photo in user1.posts and photo in user2.posts implies user1=user2
-- div,3
all p1: Photo, p2: Photo, u1: User, u2: User | p1 = p2 and u1->p1 in posts and u2->p2 in posts implies u1 = u2
-- div,1
all u1, u2 : User | all p : Photo | (u1->p) in posts and (u2->p) in posts implies u1=u2
all p : Photo | lone posts.p
-- div,1
all photo: Photo | all user1, user2: User | photo in User.posts and photo in user1.posts and photo in user2.posts implies user1=user2
-- div,3
all i : Photo, u1, u2 : User | u1->i in posts and u2->i in posts implies u1 = u2
all u1,u2 : User, p : Photo | p in u1.posts and p in u2.posts implies u1 = u2
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo-Ad | lone posts.p
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Photo|all u:User|some p.~posts
-- div,1
all f : Photo | all u1, u2 : User | f in User.posts
-- div,1
-- equiv pair end
-- equiv pair start,8
all x : Photo | some y : User | one y
-- div,1
all p:Photo | some u:User | lone posts.u
-- div,1
all x : Photo | some y, z : User | x in y.posts and x in z.posts implies y = z
-- div,1
all x : Photo | some y,z : User | y->x in posts and z->x in posts implies y = z
-- div,1
all x : Photo | some y,z : User | y->x in posts and z->x in posts => z=y
-- div,1
all p: Photo| some u1, u2: User | p in u1.posts and p in u2.posts implies u1=u2
-- div,1
not some p:Photo | all  u1, u2:User | u1!=u2 and u1->p in posts and u2->p in posts
-- div,1
all p : univ | p in Photo implies some u : univ | u in User or u in Influencer and u in posts.p
-- div,1
-- equiv pair end
-- equiv pair start,4
all p : Photo, u : User | one posts.p
-- div,1
all p : Photo , u1, u2 : User | (p in u1.posts and p in u2.posts implies u1 = u2) and p in User.posts
-- div,1
all f : Photo | all u1, u2 : User | f in User.posts and (f in u1.posts and f in u2.posts implies u1 = u2)
-- div,1
all photo: Photo | all user1, user2: User | photo in User.posts and (photo in user1.posts and photo in user2.posts implies user1 = user2)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Photo | some u:User | lone posts.p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Photo | lone User.posts & p and some User.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Photo | all a : Ad| some u : User | p in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo | one u : User | p in User.posts implies p in u.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
Photo in User.posts or Ad in User.posts or Photo in Influencer.posts or Ad in Influencer.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y,z : univ | x in User and z in User and y in Photo and x.posts=y and z.posts=y implies x=z
-- div,1
-- equiv pair end
