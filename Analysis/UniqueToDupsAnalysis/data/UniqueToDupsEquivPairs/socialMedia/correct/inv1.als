-- equiv pair start,1259
}

check Injectividade {
(all p:Photo, u1,u2:User | u1->p in posts and u2->p in posts => u1 = u2)
iff
(posts in User lone -> Photo)
-- div,2
posts in User one->Photo
-- div,81
~posts in Photo -> one  User
-- div,6
all e : Photo | one posts.e
-- div,1
all p:Photo| one posts.p
-- div,271
all i: Photo| one posts.i
-- div,7
all d : Photo | one posts.d
-- div,1
all u:Photo| one posts.u
-- div,4
all y : Photo | one posts.y
-- div,2
all x:Photo|one posts.x
-- div,266
all x : Photo | #(posts.x)=1
-- div,3
all i: Photo | one i.~posts
-- div,2
all i : Photo | #(posts.i)=1
-- div,2
all p: Photo | one p.~posts
-- div,10
all p:Photo | #posts.p=1
-- div,5
all x: Photo | one x.~posts
-- div,1
all img:Photo | one posts.img
-- div,6
all ph : Photo | #(posts.ph) = 1
-- div,2
all x: Photo | #(x.~posts) = 1
-- div,1
all p: Photo | #p.~posts = 1
-- div,1
all img : Photo | one (img.~posts)
-- div,1
User.posts = Photo

posts.~posts in iden
-- div,1
posts.~posts in iden and Photo in User.posts
-- div,1
posts in User lone -> Photo
posts in User some -> Photo
-- div,7
all i:Photo | one u:User | i in u.posts
-- div,18
all x:Photo | one u:User | x in u.posts
-- div,7
all p :Photo|one u:User| p in u.posts
-- div,215
all p:Photo| one u:User | u in posts.p
-- div,11
all a : Photo | one b : User | a in b.posts
-- div,1
all i : Photo | one u : User | u in posts.i
-- div,5
all p: Photo | one i: User | p in i.posts
-- div,1
all x : Photo | one y : User | y in posts.x
-- div,1
all f : Photo | one u : User | f in u.posts
-- div,2
all x:Photo | one y:User | x in y.posts
-- div,9
all y:Photo | one u:User| y in u.posts
-- div,8
all p:Photo | one x:User | p in x.posts
-- div,3
all p:Photo| one x:User| x->p in posts
-- div,8
all x: Photo | one u: User | u->x in posts
-- div,1
all i : Photo | one u : User | u -> i in posts
-- div,1
all p : Photo | one y : User | y->p in posts
-- div,1
all y : Photo | one x : User | x->y in posts
-- div,1
all p:Photo| one u:User| u->p in posts
-- div,109
all x: Photo|one y:User| y-> x in posts
-- div,21
all ph: Photo | one u: User | ph in u.posts
-- div,2
all im : Photo | one u : User| im in u.posts
-- div,1
all i: Photo | one u: User | u in i.~posts
-- div,1
all p:Photo | one u1:User | u1->p in posts
-- div,3
User.posts = Photo
all p : Photo | lone posts.p
-- div,5
Photo in User.posts
all p : Photo | one posts.p
-- div,1
all img:Photo | one u:User | u->img in posts
-- div,4
all p : Photo | one user : User | p in user.posts
-- div,1
all img : Photo | one u : User | u in img.~(posts)
-- div,1
all image : Photo | one u : User | image in u.posts
-- div,1
all x : Photo | one posts.x
posts in User one -> set Photo
-- div,1
all photo : Photo |
one user : User | photo in user.posts
-- div,1
all x : univ | x in Photo implies one u : univ | u->x in posts
-- div,2
all x : Photo | one posts.x
all x : Photo | one posts.x
-- div,1
all x : Photo | some posts.x
all x : Photo | one posts.x
-- div,4
all p: Photo | lone posts.p
all p: Photo | p in User.posts
-- div,1
all p: Photo | p in User.posts

all p: Photo | lone posts.p
-- div,4
posts in User lone -> Photo
posts in User some -> Photo

posts in User one -> Photo
}

check Injetivicade {
(all p:Photo, u1,u2: User | u1 -> p in posts and u2->p in posts => u1 = u2)
iff
(posts in User lone -> Photo)
-- div,1
posts in User one -> set Photo

all x : Photo | one y : User | y->x in posts
-- div,1
posts in User one -> set Photo

all x : Photo | some y : User | y->x in posts
-- div,1
all image : univ | image in Photo implies one user : univ | user->image in posts
-- div,6
posts in User lone -> Photo
all p:Photo | some u:User | u->p in posts
-- div,2
all p: Photo | one u: User | u in posts.p
all p: Photo | one posts.p
-- div,1
all i : Photo | one u : User | u -> i in posts
all x : Photo | one posts.x
-- div,1
all p:Photo | one u:User | u->p in posts
all p:Photo | one posts.p
-- div,5
all x : Photo | some y : User | y->x in posts

all x : Photo | one posts.x
-- div,2
all p : Photo | p in User.posts
all p : Photo | one u : User | p in u.posts
-- div,11
all f : Photo | f in User.posts
all f : Photo | one u : User | f in u.posts
-- div,2
all p:Photo | some u:User | (p in u.posts and (all u2:(User-u) | p not in u2.posts))
-- div,2
all x,y : User, n : Photo | x->n in posts and y->n in posts implies x=y
all i : Photo |i in User.posts
-- div,1
posts in User some -> Photo
all u1,u2:User | (some p:Photo | u1->p in posts and u2->p in posts) implies u1 = u2
-- div,1
all x : Photo | some z : User | x in z.posts and all y, z : User | x in y.posts and x in z.posts implies y = z
-- div,1
all u,y : User | all p : Photo | (p in u.posts and p in y.posts) implies u = y
all p : Photo | p in User.posts
-- div,2
all ph:Photo, u1,u2:User | ph in u1.posts and ph in u2.posts implies u1 = u2


all ph:Photo | ph in User.posts
-- div,1
all p : Photo | p in User.posts
all p : Photo | all u1,u2 : User | p in u1.posts and p in u2.posts implies u1=u2
-- div,4
all f : Photo | f in User.posts
all f : Photo | all u1, u2 : User | f in u1.posts and f in u2.posts implies u1 = u2
-- div,2
all x : Photo | some y : User | y -> x in posts




all x : Photo | some posts.x

all x : Photo | one posts.x
-- div,2
all x,y : User, p : Photo | p in x.posts and p in y.posts implies x = y
all p : Photo | some x : User | p in x.posts
-- div,1
all p: Photo | some u : User | u->p in posts
all x: Photo, y,z: User | y->x in posts and z->x in posts implies y=z
-- div,2
all u:User,u2:User | all p:Photo | p in u.posts and p in u2.posts implies u = u2
all p:Photo | p in User.posts
-- div,2
all i : Photo | one u : User | u->i in posts

all u1,u2 : User, p : Photo | p in u1.posts and p in u2.posts implies u1 = u2
-- div,1
(all x : univ | x in Photo implies some y: univ | y->x in posts) and (all x, y, z: univ| x->y in posts and z->y in posts implies x=z)
-- div,1
all i : Photo | one u : User | u->i in posts
all i : Photo, u1, u2 : User | u1->i in posts and u2->i in posts implies u1 = u2
-- div,1
all p:Photo | some u:User | u->p in posts
all p:Photo, u1,u2:User | u1->p in posts and u2->p in posts implies u1 = u2
-- div,1
all u1,u2:User, p:Photo | u1->p in posts and u2->p in posts implies u1=u2
all p:Photo | some u:User | u->p in posts
-- div,4
all p:Photo, u1,u2:User | u1->p in posts and u2->p in posts => u1=u2
all p:Photo | some u:User | u->p in posts
-- div,8
all u1, u2: User, p1 : Photo | u1->p1 in posts and u2->p1 in posts implies u1=u2
all p: Photo | some u:User | u->p in posts
-- div,2
all p : Photo | one u:User | u->p in posts
all p: Photo | all u,v: User |u->p in posts and v->p in posts implies u=v
-- div,6
all p : Photo | p in User.posts
all p : Photo | all user1, user2: User | (p in user1.posts and p in user2.posts) implies user1=user2
-- div,3
all y : Photo | some x : User | x->y in posts
all p : Photo | all x, y : User | x->p in posts and y->p in posts implies x = y
-- div,1
all x : Photo | some y : User | y->x in posts
all p : Photo | all y,z: User | y->p in posts and z->p in posts implies y=z
-- div,1
all x : Photo | some u : User | u->x in posts
all p : Photo | all u,v: User | u->p in posts and v->p in posts implies u = v
-- div,1
all x: Photo | some y : User | y->x in posts
all x: Photo | all y,z : User | y->x in posts and z->x in posts implies y=z
-- div,14
all p:Photo | not some disj u1, u2: User | u1->p in posts and u2->p in posts
all p:Photo | some u:User | u->p in posts
-- div,1
all p : Photo | some u : User | u->p in posts
all p : Photo | all u1,u2 : User | u1->p in posts and u2->p in posts implies u1=u2
-- div,1
all u1,u2:User | all p:Photo | (u1->p in posts and u2->p in posts) implies u1=u2
all x:Photo | some y:User | y->x in posts
-- div,5
all u1,u2:User | (some p:Photo | u1->p in posts and u2->p in posts) implies u1 = u2
all p:Photo | some u:User | u->p in posts
-- div,1
all p:Photo | some u:User | u -> p in posts
all p:Photo,u1:User,u2:User | u1 -> p in posts and u2 -> p in posts implies u1=u2
-- div,2
all y : univ | y in Photo implies some x : User | x->y in posts
all p : Photo | all x, y : User | x->p in posts and y->p in posts implies x = y
-- div,1
all photo: Photo | photo in User.posts
all photo: Photo | all user1, user2: User | photo in user1.posts and photo in user2.posts implies user1 = user2
-- div,5
all p : Photo | some u : User | p in u.posts
all p : Photo | all user1, user2: User | (p in user1.posts and p in user2.posts) implies user1=user2
-- div,1
all y : univ | y in Photo implies some x : User | x->y in posts
all x,y,z : univ | x in User and z in User and y in Photo and x->y in posts and z->y in posts implies x=z
-- div,2
all x : Photo | some y : User | y->x in posts
all x : Photo | all y,z : User | y->x in posts and z->x in posts implies y=z

all x : Photo | one posts.x
-- div,1
-- equiv pair end
