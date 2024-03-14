posts.Photo
-- div,1
one Photo.User
-- div,1
Photo in posts
-- div,1
User.Photo.posts
-- div,1
one ~Photo.posts
-- div,1
all u:User| u.posts
-- div,1
Photo in User.Photo
-- div,2
one u:User | u.posts
-- div,3
all u:User | u.posts
-- div,1
Photo in User->posts
-- div,1
Photo one User.posts
-- div,1
Photo in User->Photo
-- div,1
one User.Photo.posts
-- div,1
posts.~Photo in univ
-- div,2
one u: User | u.posts
-- div,1
some u:User | u.posts
-- div,1
all x:Photo | posts.x
-- div,1
some User.Photo.posts
-- div,1
all u: User | u.posts
-- div,1
all p: Photo| posts.p
-- div,1
all p:Photo | posts.p
-- div,2
all x: User | x.posts
-- div,2
all x: User | posts.x
-- div,1
all u : User | Photo.u
-- div,1
Photo & User.posts
-- div,1
all u : User | u.posts
-- div,1
all x : User | Photo.x
-- div,1
all x : User | x.posts
-- div,2
all u:User| posts.u >=1
-- div,1
one User in posts.Photo
-- div,1
all x,y: User | x.posts
-- div,1
all p : Photo | p.posts
-- div,2
all u:User| u.posts >=1
-- div,1
all x : Photo | x.posts
-- div,1
all x : Photo | posts.x
-- div,3
all p : Photo | posts.p
-- div,9
no User->Photo in posts
-- div,1
all x:Photo | one x.User
-- div,2
all p:Photo | one User.p
-- div,3
all p:Photo | p in posts
-- div,2
some User in posts.Photo
-- div,1
lone Photo in User.posts
-- div,1
all p: Photo| p in posts
-- div,1
all p:Photo | one p.User
-- div,2
all x: Photo | one User.x
-- div,3
all p: Photo | p in posts
-- div,7
all p: Photo | one User.p
-- div,3
all p:Photo| User.posts.p
-- div,1
all x : Photo | x -> User
-- div,1
all x : User | one Photo.x
-- div,1
all p : Photo | one User.p
-- div,2
all p : Photo | p in posts
-- div,2
all u:User,f:Photo|posts.u
-- div,1
all x : Photo | one User.x
-- div,1
all p : Photo | one p.User
-- div,1
all x : User | Photo.x = 1
-- div,1
all p: Photo | lone User.p
-- div,3
all x: Photo | x in User.x
-- div,1
all x : Photo | x in posts
-- div,1
one u : User | set u.posts
-- div,1
all p : Photo | some User.p
-- div,2
all p:Photo | one p in User
-- div,1
all p : Photo | p in p.User
-- div,1
all o : Photo | some o.User
-- div,1
all o : Photo | some User.o
-- div,1
all i : Photo | i lone User
-- div,1
all o : Photo | lone User.o
-- div,1
all p:Photo, x:User| x.posts
-- div,1
all p : Photo | User.posts.p
-- div,1
posts in (one User -> Photo)
-- div,2
all u:User| one u.posts in p
-- div,1
all x : Photo| x one x.posts
-- div,1
all p:Photo| one User.posts.p
-- div,4
all p: Photo | one p in Posts
-- div,1
posts in User on -> set Photo
-- div,2
all x: Photo | one x in posts
-- div,1
some Photo in (one User.posts)
-- div,1
all x : Photo|User one x.posts
-- div,1
one u : User | iden in u.posts
-- div,1
all p:Photo | one u:User | u.p
-- div,2
all p : Photo | one p in posts
-- div,2
all p: Photo, u: User| one u.p
-- div,1
all x: Photo |User one posts.x
-- div,1
all p:Photo| one p->p in posts
-- div,1
all p : Photo | one p & User.p
-- div,1
all p:Photo | one User.posts.p
-- div,1
all p: Photo, u: User| one p.u
-- div,1
User.posts or Influencer.posts
-- div,1
all p : Photo | p in User.Photo
-- div,1
all i: Photo | i in posts.posts
-- div,2
all p:Photo|all u:User|p.~posts
-- div,1
all x: User | posts one Photo.x
-- div,1
all x: User | some x in x.posts
-- div,2
some u: User | u->posts = Photo
-- div,2
all p:Photo | User one -> Photo
-- div,1
all p:Photo| some u: User | u.p
-- div,1
all x: User | Photo one posts.x
-- div,3
all x : Photo | User.x in posts
-- div,1
lone (Photo + Ad) in User.posts
-- div,1
all x: Photo | User one posts.x
-- div,1
all p : Photo | p in Photo.User
-- div,1
all p:Photo | one p in  u.posts
-- div,1
all i: Photo |some User.posts.i
-- div,1
all x: User | some x in x.Photo
-- div,1
all x : Photo | x -> User.posts
-- div,1
all p: Photo | one User.posts.p
-- div,2
all i : Photo | i in User.Photo
-- div,1
all u: User, p: Photo | u.posts
-- div,1
all x : User | Photo one posts.x
-- div,1
all p : Photo | p.posts in posts
-- div,1
all p: Photo | lone User.posts.p
-- div,3
all p:Photo| one User in posts.p
-- div,1
all x: User | lone Photo.posts.x
-- div,1
all x : Photo | x in User->posts
-- div,1
all p:Photo| one User.p in posts
-- div,1
all p:Photo| one User.posts in p
-- div,1
all p:Photo , u : User| lone u.p
-- div,1
all p:Photo| one p in User.posts
-- div,1
all p : Photo | posts.p in posts
-- div,1
all p: Photo | one u:User | p->u
-- div,1
all x: User | some x Photo.posts
-- div,1
all x: User | lone x.posts.Photo
-- div,1
all p:Photo| one User in p.posts
-- div,1
all p : Photo | one p in posts.p
-- div,1
all p:Photo | one User.posts = p
-- div,1
posts in (one User -> set Photo)
-- div,1
all x: Photo | User.x one posts.x
-- div,1
all u: User, p: Photo | u.posts.p
-- div,1
all p : Photo, u : User | one u.p
-- div,1
all p: Photo, u: User | u.posts.p
-- div,2
all p : Photo | lone User.posts.p
-- div,1
all p,u : univ | lone (u.posts.p)
-- div,1
all u:User | some Photo = u.posts
-- div,1
all i : Photo | i lone User.posts
-- div,1
some u:User| one u in Photo.posts
-- div,1
all p: Photo | one User.posts = p
-- div,1
all p:Photo | one p in User.posts
-- div,1
all i : Photo | lone User.posts.i
-- div,1
all p: Photo | one p.User in posts
-- div,1
all p:Photo| one (p && User.posts)
-- div,1
all p : posts | one posts.p
-- div,1
all p:Photo | one u:User| lone u.p
-- div,1
all x: User | x.posts & User.posts
-- div,1
all p: Photo | one User.p in posts
-- div,1
all x: User | one x.Photo in posts
-- div,1
all p: Photo | one p in User.posts
-- div,2
all p:Photo | one u:User | one u.p
-- div,1
all i : Photo, u: User | u posts i
-- div,1
all p: Photo, u: User | u.posts(p)
-- div,1
all i:Photo | some u:User | u -> i
-- div,1
all p:Photo, u:User | p -> u.posts
-- div,1
all p: Photo, u: User | p->u->posts
-- div,1
all x: User | some x in posts.Photo
-- div,1
all i : Photo | one i in User.posts
-- div,2
all p:Photo | all u:User | p in u.p
-- div,2
all p:Photo | one (p && User.posts)
-- div,1
all p:posts | lone u :User | p -> u
-- div,1
all p :posts | lone posts.p
-- div,1
all p: Photo | #(p in User.posts)=1
-- div,1
all x : User | Photo.x  one posts.x
-- div,2
all p : Photo | one p in User.posts
-- div,4
some User.posts or Influencer.posts
-- div,1
all p:posts | lone u :User | p in u
-- div,1
all p: Photo + Ad, u: User | one p.u
-- div,1
all x : Photo | some y : User | y->x
-- div,2
all p:Photo | all u:User | p in u->p
-- div,2
all x: User | x.posts & posts[Photo]
-- div,1
all p : Photo | some u : User | u->p
-- div,1
all p:Photo  |one u:User | u.p.posts
-- div,1
some u:User| one u->u in Photo.posts
-- div,1
one (User.posts or Influencer.posts)
-- div,1
all p: Photo | all u: User | one u.p
-- div,1
all  p : Photo | one u : User | u->p
-- div,1
all p: Photo | one (p in User.posts)
-- div,2
all p : Photo | one p in User->posts
-- div,1
all x: Photo | one (x in User.posts)
-- div,1
all p:Photo | p in Photo iff posts.p
-- div,2
all p:Photo | all u:User | p in p->u
-- div,1
all u : User | u in User.posts.Photo
-- div,1
all p:Photo | one u:User | u.posts.p
-- div,1
all x: Photo | x in #(posts.User) = 1
-- div,1
all p:Photo|some u: User | u.posts->p
-- div,1
all p : Photo | #(p.(User.posts)) = 1
-- div,1
all p : Photo | one (p in User.posts)
-- div,1
all x: User | x.posts & User.posts[2]
-- div,1
all x: Photo | #(x in User.posts) = 1
-- div,1
all p : univ | lone (posts.p || ad.p)
-- div,1
all x: User | some x in x.posts.Photo
-- div,1
all photo : Photo | User.photo = photo
-- div,1
User.posts and Influencer.post != none
-- div,1
all p:Photo| some u: User | u.posts->p
-- div,1
all p : Photo | one u : User | u.posts
-- div,2
all p:Photo | lone u:User | u in posts
-- div,1
all p : Photo | lone (p in User.posts)
-- div,1
all p : Photo | one u : User | p.posts
-- div,1
all p: Photo | one u: User | u.posts.p
-- div,1
all i : Photo, u: User | one u posts i
-- div,2
all img : Photo | one img in posts.User
-- div,1
all i : univ | i in  Photo -> i in User
-- div,1
all x: Photo | (x in #(posts.User)) = 1
-- div,1
all p:Photo | one u:User | u -> posts.p
-- div,1
all p: Photo, u: User| one p in u.posts
-- div,1
all p:Photo | one u : User | u.posts(p)
-- div,1
all img : Photo | one img in User.posts
-- div,1
all p:Photo | one u:User | u -> p.posts
-- div,1
all i : univ | i->Photo implies i->User
-- div,1
all p: Photo | one u: User | u.posts ->p
-- div,1
all p : Photo | one u : User | u.posts.p
-- div,1
all p : Photo, u : User | lone u.posts.p
-- div,1
all p:Photo, u: User | p.Photo in u.post
-- div,1
all p : Photo | one u : User | u.p.posts
-- div,1
all p:Photo, u:User | lone(p in u.posts)
-- div,1
all p : Photo | one u : User | p.posts.u
-- div,1
all p:Photo | all u:User | p in u->Photo
-- div,1
all p:Photo | one u:User | u in u.posts.p
-- div,1
all y : Photo | one u : User | u.posts(y)
-- div,1
all p:Photo, u: User | p.Photo in u.posts
-- div,1
all u: User, p:Photo | one (u.posts in p)
-- div,1
all x : User, p:Photo | lone p in x.posts
-- div,2
all p:Photo, u: User | u.posts in p.Photo
-- div,1
all img : Photo | #(img.(User.posts)) = 1
-- div,1
all i : Photo, u: User | one u in i.posts
-- div,1
all  p : Photo, u: User | one u.posts = p
-- div,1
some p:Photo, u:User | p in u one -> User
-- div,1
all u:User->Photo | one posts.u
-- div,1
all y : Photo | one u : User | y implies u
-- div,1
all p:Photo | one u : User | p in u->posts
-- div,1
some p:Photo, u:User | p in u one -> posts
-- div,1
all p : Photo, u : User | one p in u.posts
-- div,1
all p: Photo | one u: User | one u.posts.p
-- div,2
all p:Photo | one u : User |
p in u->posts
-- div,1
all x : Photo | some y : User | y.posts->x
-- div,1
all i : Photo | all u : User | u.posts -> i
-- div,1
all i:Photo | some u:User | i in u -> posts
-- div,1
all p : univ | lone (posts.p) || lone (Ad.p)
-- div,1
all y:Photo | one u:User|  u.posts implies y
-- div,1
all p:Photo | all u:User | lone p in u.posts
-- div,1
all x : Photo | sum y : User | y->x in posts
-- div,1
all p:Photo, u:User | p in Photo iff u.posts
-- div,1
all p : Photo | one u : User | p in u->posts
-- div,1
all p:Photo | (one u : User | p in u->posts)
-- div,1
all x : Photo | some y : User | y=>x in Photo
-- div,1
all p : Photo | one u : User | lone u.posts.p
-- div,1
all p: Photo | all u: User |one p in posts[u]
-- div,1
all x: User | lone x.posts & x not in follows
-- div,2
all x : Photo | some y : User | y->x in Photo
-- div,1
all x : Photo | sum y : User | y -> x in posts
-- div,1
all p: Photo, u: User | p in Photo iff u.posts
-- div,1
all p: Photo | one u: User | u -> p in u.posts
-- div,2
all p : Photo | one u : User | one p = u.posts
-- div,1
all p : Photo | one u : User | lone(u.p.posts)
-- div,1
all p:Photo | all u:User | lone (p in u.posts)
-- div,1
all p:Photo | all u:User | some (p in u.posts)
-- div,1
all x,y : univ | x in Photo implies y->x posts
-- div,2
all p: Photo | one u:User | p in posts -> one u
-- div,1
all x: User | lone x.posts & x not in follows.x
-- div,1
all x : Photo | some y : User | y->(x in posts)
-- div,1
all p:Photo | one u:User | u implies p in posts
-- div,1
all p: Photo | all u: User |one (p in posts[u])
-- div,1
all x: User | lone x.posts & x not in x.follows
-- div,1
all p: Photo | all u: User | #(p in u.posts)<=1
-- div,1
all p: Photo | one u:User | u implies p in posts
-- div,1
all p: Photo | all u: User | one (p in posts[u])
-- div,1
all y : Photo | one u : User | y implies u.posts
-- div,1
all p : Photo | some u : User | u->p in User - u
-- div,1
all p:Photo,x:User | p.posts(x) implies x in User
-- div,1
all p : Photo | one post: User.posts | p in posts
-- div,1
all p:Photo,x:User | x.posts(p) implies x in User
-- div,1
all x : Photo | some y : User | y.posts implies x
-- div,1
all i: Photo | i in (some u: User | i in u.posts)
-- div,1
all p: Photo | one u: User | u implies p in posts
-- div,1
all p : Photo | one post: User->posts | p in post
-- div,1
one u: User | Photo in u.posts or Influencer.posts
-- div,1
all p : Photo | one post: User->posts | p in posts
-- div,3
all p: Photo | some u:User | p in Photo -> one User
-- div,1
all x : Photo | (some y : User | y.posts implies x)
-- div,1
all p:Photo,x:User | x.posts(p) implies (x in User)
-- div,1
all x : Photo | some y : User | y->x in posts -> one y
-- div,1
all p: Photo, u: User.posts | p in Photo => one (p = u)
-- div,1
all x,y,z : univ | x in Photo implies lone y->x in posts
-- div,1
all x,y : univ | x in Photo implies y in User and y->x posts
-- div,1
all p : Photo | some u : User | p in Photo implies u->p in User
-- div,1
all p : Photo, u1, u2 : User | p -> u1 and p -> u2 implies u1 = u2
-- div,1
User.posts = Photo
all p1,p2 : User | p1.posts != p2.posts & p1!=p2
-- div,2
all p : Photo | one post: User.posts or Infliencer.posts | p in post
-- div,1
all x : Photo | some y : User | y->x in posts
all x : Photo | posts.x
-- div,1
all u1,u2:User | all p:Photo | u1->p in posts and u2->p implies u1=u2
-- div,1
all p : Photo | User.posts
all p : Photo | one u : User | p in u.posts
-- div,1
all x : Photo | some y : User  | y->x in posts
all x : Photo | posts.x
-- div,1
all u1,u2 : User | all p : Photo | u1->p in User implies u2->p not in User
-- div,1
all p : Photo | some disj u1,u2 : User | p in u1.posts -> p not in u2.posts
-- div,2
all p: Photo | one u: User | u->p in posts
all u: User | u->u nor in follows
-- div,1
all u1,u2 : User |all  p : Photo | u1->p in u1->posts implies p not in pontos.u2
-- div,1
all u1,u2 : User |all  p : Photo | u1->p in u1->posts implies p not in u2.pontos
-- div,1
all u1,u2 : User |all  p : Photo | u1->p in u1->posts implies p not in u2->pontos
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts and x not Ad
-- div,1
all u1,u2 : User |all  p : Photo | u1->p in u1.posts implies u1->p not in u2.pontos
-- div,1
all u1,u2 : User |all  p : Photo | u1->p in posts.u2 implies u1->p not in pontos.u2
-- div,1
all u:User |  all p:Photo | p in u.posts implies none all u2:User | p not in u2.posts
-- div,1
all u1,u2 : User |all  p : Photo | u1->p in u1->posts implies u1->p not in u2->pontos
-- div,1
all u1, u2: User, p1 : Photo | u1->p1 in (posts or sees) and u2->p1 in posts implies u1=u2
-- div,1
all x : Photo |all ad : Ad | all y,z : User | x in y.posts implies x not in z.posts and x not ad
-- div,1
all u:User,u2:User | all p:Photo | p in u.posts and p in u2.posts implies u = u2
all u:User | all p:Photo | lone p in u.posts
-- div,1
all x : Photo | all y,z : User | x in y.posts implies x not in z.posts
all ad : Ad | all x : User | ad implies ad not in x.posts
-- div,1
(all p : Photo | some u : User | u->p in posts) &&
all u1,u2 : User | one p : Photo| p in u1->posts and p in u2.posts implies u1 = u2
-- div,1
(all p : Photo | some u : User | u->p in u.posts) &&
all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
-- div,1
(all p : Photo | some u : User | u->p in posts) &&
all u1,u2 : User | one p : Photo| u1->p in u1.posts and u2->p in u2.posts implies u1 = u2
-- div,2
(all p : Photo | some u : User | u->p in posts) &&
all u1,u2 : User | one p : Photo| u1->p in u1->posts and u2->p in u2.posts implies u1 = u2
-- div,1
(all p : Photo | some u : User | u->p implies p in u.posts) &&
all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
-- div,2
(all p : Photo | some u : User | p in u.posts implies u->p) &&
all u1,u2 : User | one p : Photo| p in u1.posts and p in u2.posts implies u1 = u2
-- div,2
