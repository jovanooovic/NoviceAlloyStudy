all
-- div,13
all x : User
-- div,1
all x : User |
-- div,1
all u.User | u
-- div,1
all u:User | u.sees =
-- div,1
all u1, u2, u3: User |
-- div,2
Ad = followed + suggested
-- div,4
all x : User | all y : Ad |
-- div,1
}


run pred inv4


pred inv4{
-- div,1
all u: User |all ad: u.sees.Ad |
-- div,1
}


run pred inv4 for 4


pred inv4{
-- div,1
all u : User, a : Ad | u in sees.a =>
-- div,1
all u : User | sees.s in follows.posts.u
-- div,1
all u:User,a:Ad | a in u.sees implies (a
-- div,1
all u:User,a:Ad | u->a in sees implies (
-- div,4
all u:User,a:Ad | u->a in sees implies ()
-- div,1
all u : User | all f : Photos | f in u.sees and Ad
-- div,1
all u: User | all p: Photo | p in Ad and u.sees.p =>
-- div,1
all u : User | all f : Photo | f in u.sees&Ad implies
-- div,1
all u:User | u.sees&Ad in u.(followed+suggested).posts
-- div,1
all u : user | u.sees & Ad in u.follows and u.suggested
-- div,1
all u : User | u.sees & Ad in (u.follows or u.suggested)
-- div,1
/all u:User | u.sees & Ad implies u.follows or u.sugested
-- div,1
all u : User |  no u.sees = Ads in u.follows or u.suggested
-- div,1
all u : User | all ad: Ad | u->ad in sees and u2->ad in posts
-- div,1
all u : User, a : u.sees&Ad | a in u.(follow+suggested).posts
-- div,1
all u : User | u.sees in (u.follow.posts + u.suggested.posts)
-- div,1
all u : User | posts.(u.sees & Add) in u.follows + u.suggested
-- div,1
all u:User | u.sees in (u1.follows.posts + u1.suggested.posts)
-- div,1
all u : User | sees.s in follows.posts.u or in suggested.posts.u
-- div,1
all u : User | (u.sees & Ad) in (u.followed + u.suggested).posts
-- div,1
all u : User | sees.u in follows.posts.u or in suggested.posts.u
-- div,1
all u: User | u.sees&Ad = (u.follows.posts + u.sugested.posts)&Ad
-- div,1
all u: User | a: (u.follows+ u.suggested).posts & Ads | a in u.sees
-- div,1
all x : User, y : Ad | y in x.sees => y.posts in x.follows + x.user
-- div,1
all u : User | (u.sees & Ad) in u.followes.posts + u.suggested.posts
-- div,1
all u : User | u->(posts.((u.sees) & Ad)) in follows or in suggested
-- div,1
/all u:User | all a:Ad | a in u.sees implies u.follows or u.sugested
-- div,1
all u : User | u.sees & Ad in (u.follows.posts or u.suggested.posts)
-- div,1
all u : User | (u.sees & Ad) in (u.follows.posts +  u.sugested.posts)
-- div,1
all u : User | a : u.sees & Ad | posts.a in (u.follows + u.suggested)
-- div,1
all u : User, s : sees | s in follows.posts.u or in suggested.posts.u
-- div,1
all u: User | u.followd.posts + u.suggested.posts & Ad in u.sees & Ad
-- div,1
all x: User | (x.sees & Ads) in (x.follows.posts + x.suggested.posts)
-- div,1
all u : User | u->(posts.((u.sees) & Ad)) (in follows or in suggested)
-- div,1
all u: User | u.followed.posts + u.suggested.posts & Ad in u.sees & Ad
-- div,1
all u : User, a : Ad | a in u.follows.posts and a in u.suggestes.posts
-- div,1
all u : User | u.seed in u.follows.posts or sees.u in u.suggested.posts
-- div,1
all user : User |
user.ads in user.follows.posts + user.suggested.posts
-- div,1
all u: User, a: Ad in u.seed | a in u.follows.posts + u.suggested.posts
-- div,1
all u:User, a:Ad | a in u.sees iff ( a in u.follows.post + u.suggested)
-- div,1
all u: User |  u.sees&Ad = some (u.follows.posts + u.suggested.posts)&Ad
-- div,1
all u : User, p : u.sees | p in u.follow.posts or p in u.suggested.posts
-- div,1
all u: User | a: (u.follows.posts + u.suggested.posts) & Ads | a in u.sees
-- div,1
all u : User | all ad : u.posts & Ad | posts.add in u.follows + u.suggested
-- div,2
all x,y: User  | all a : Ad | x sees.a implies ( y posts.a and x follows.y)
-- div,1
all u : User | all a : u.sees & Ad | all User.a in (u.follows + u.suggested)
-- div,2
all user, ad : univ | user in User and ad in Ad and user->ad in sees implies
-- div,1
all x : User, y : Ad | y in x.sees.isAd => y.posts in x.follows + x.suggested
-- div,1
all u : User | all ad : u.posts & Ad | posts.add in (u.follows + u.suggested)
-- div,1
all u: User, a : Ad |a in u.sees => a in u.followed.posts + u.suggested.posts
-- div,1
all u: User, all a : Ad | a in u.sees => u.follows.posts or u.suggested.posts
-- div,1
all x,y: User  | all a : Ad | (x sees.a) implies ( y posts.a and x follows.y)
-- div,1
all u: User |  u.sees&Ad = (some u.follows.posts + some u.suggested.posts)&Ad
-- div,1
all u: User | all a: (u.follows.posts + u.suggested.posts) & Ads | a in u.sees
-- div,1
all user : User |
user.sees & Ads in user.follows.posts + user.suggested.posts
-- div,1
all u : User | a : u.sees & Ad | posts.a in u.follows or posts.a in u.suggested
-- div,1
all u: User | all u.sees & Ad in u.follows.posts & Ad || u.suggested.posts & Ad
-- div,2
all u : User,a : Ad |  a in u.sees => a in u.follows.photos or a in u.suggested
-- div,1
all user : User |
user.sees & Adds in user.follows.posts + user.suggested.posts
-- div,1
all ad:Ad,u:User| ad in u.sees implies ad in (u.follows.posts + u.suggested.pots
-- div,1
all u: User, a: Ad | ad in u.sees implies ad.~posts in (u.follows + u.suggested)
-- div,1
all v, u : User, a : Ad | v->a in sees => (v->u in follows or v->s in suggested)
-- div,1
all u User | all p : u.sees & Ad | posts.p in u.follows or posts.p in u.suggested
-- div,1
all ad:Ad,u:User| ad in u.sees implies ad in (u.follows.posts + u.suggested.pots)
-- div,1
all ad:Ad,u:User| ad in u.sees implies ad in (u.follows.posts + u.suggested.posts
-- div,1
all u: User| a: Add| a in u.sees implies a in u.follows.posts or u.suggested.posts
-- div,1
all u: User, all a : Ad | a in u.sees => u.follows.posts or a in u.suggested.posts
-- div,1
all u: User, a: Add| a in u.sees implies a in u.follows.posts or u.suggested.posts
-- div,1
all p:Photo | u:User | p in u.sees and p in Ad implies some u2:User | a in u2.posts
-- div,1
all u : User |all p : Ad| u->p in sees implies u->i in follows or i->u in suggested
-- div,1
all u: User | (all a: u.sees & Ad | (one f: User | f in u.sees or f in u.suggested)
-- div,1
all u : User | u->p in sees implies p in Ad and u->i in follows or i->u in suggested
-- div,1
all u: User , a: Ad | a in u.sees => a in u.followed.posts && a in u.suggested.posts
-- div,1
all u: User| a: Add| a in user.sees implies a in u.follows.posts or u.suggested.posts
-- div,1
all u1: User, a: Ad | a in u1.sees implies a in (u1.follows.posts + u1.sugested.posts
-- div,1
all u:User, p:Ad | p in u.sees implies posts.a in u.follows or posts.p in u.suggested
-- div,1
all u : User | all a : Ad | some a & u.sees implies posts.a in (u.follows|u.suggested)
-- div,1
all u1: User, a: Ad | a in u1.sees implies a in (u1.follows.posts + u1.sugested.posts)
-- div,1
all u: User | (all a: u.sees & Ad | (one f: User | (f in u.sees) or (f in u.suggested)
-- div,1
all u: User, all a : Ad | a in u.sees => a in u.follows.posts or a in u.suggested.posts
-- div,1
all u: User | (all a: u.sees & Ad | (one f: User | (f in u.sees) or (f in u.suggested))
-- div,1
all u:User, p:Photo | p in u.sees and posts.p in u.follows or u.sugested implies p in Ad
-- div,1
all x : User | all a : x.sees | a in Ad => a in x.follows.posts or a in x.suggested.post
-- div,1
all u:User | all a:Ad | a in u.sees implies a in u.follows.posts or a in u.sugested.posts
-- div,2
all u : User | all p in Ad | (p in u.sees) implies (posts.p in (u.follows + u.suggested))
-- div,1
all a:Ad | u:User | a in u.sees implies some u2:User | a in u.posts and u2 in u.suggested
-- div,1
all u : User, a : Ad | u.sees = a => (u in a.poster.follows) or (u in a.poster.suggested)
-- div,1
all u : User, ad Ad |  u.sees.ad in u.follows.posts  or  u.sees.ad in u.follows.suggested
-- div,2
all u : User | (u.sees & Ad) in (u.follows.posts + u.suggested.posts)
-- div,1
all u : User | all a : Ad | u->a in sees implies a in ( (u.followed + u.suggested).posts )
-- div,1
all u : User | all post : u.sees | posts.post in u.follows || posts.post in u.suggested
asd
-- div,1
some a: Add | all u: User | a in u.sees implies a in (u.follows.posts or u.suggested.posts)
-- div,1
all u:User, a:Ad | u -> Ad in sees implies (u1:User | u -> u1 follows or u -> u1 suggested)
-- div,1
all u,u2:User , a:Ad | u-> a in sees iff u2-> in posts && u2 in (u.follows || u.suggested )
-- div,1
all x,y : User, a : Ad,  | x != y and (a in y.posts and a in x.sees implies y in x.follows)
-- div,1
all u1,u2 : User, a : Ad | a in u.sees => a in u2.posts and u2 in (u1.follows + u1.suggests)
-- div,1
all u: User, a: Add | a in u.sees implies (a in u.follows.posts) or (a in u.suggested.posts)
-- div,1
all u : User | a : Ad | a in u.sees implies (a in u.follows.posts or a in u.suggested.posts)
-- div,1
all ad : Ad | all u,u2 : User | ad in u.sees implies (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all u:User | all a:Ad | a in u1.sees implies (a in u.follows.posts or a in u.suggested.posts)
-- div,1
all user : User | all ad : Ad | ad in user.sees implies ad in (user.follows or user.suggested
-- div,1
all u1,u2 : User | all ad : AD | ad in u1.sees implies u2 in  u1.follow or u2 in u1.suggested
-- div,1
all u1,u2 : User, a : Ad | a in u1.sees => a in u2.posts and u2 in (u1.follows + u1.suggests)
-- div,1
all u: User, a: Ad | u->a in sees implies (all f: User | x->f in follows or x->f in suggested)
-- div,1
all user : User | all ad : Ad | ad in user.sees implies ad in (user.follows or user.suggested9
-- div,1
all a : Ad | all u : User | u in sees.a implies u in follows.posts.a or posts.a in u.suggested)
-- div,2
all u:User, a:Ad | u -> Ad in sees implies (all u1:User | u -> u1 follows or u -> u1 suggested)
-- div,1
all u: User| all a: Ad | u -> ad in sees implies a in u.follows.posts or a in u.suggested.posts
-- div,1
all u,y:User, a:Ad| u->a in sees and y->a in posts implies x->y in follows or y->x in suggested
-- div,1
all u : User | u->(posts.((u.sees) & Ad)) in follows or u->(posts.((u.sees) & Ad)) in suggested)
-- div,1
all u : User, ad : Ad | ad in u.sees = (u.follows.pots + (u.follows.follows - (u.follows + u)) )
-- div,1
all u1, u2: User | all a: Add | u1->a in posts implies (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all u: User, a: Add | u->a in sees => (some u1,u2: User | u->u1 in follows or u->u2 in suggested)
-- div,1
all a:Ad,u1,u2:User | a in u1.posts and a in u2.sees implies u1 in u2.follows or u1 in u2.suggeted
-- div,1
all u:User, a:Ad|u->a in sees => (some u2:User | u2->a in posts and u1->u2 in follows + suggested)
-- div,1
all, v, u:User, a:Ad | v->a in sees and u->a in posts implies v->u in follows or v->u in suggested
-- div,1
all ad : Ad | all u : User | add in u.sees implies ad in u.follows.posts or ad in u.suggested.posts
-- div,2
all a: Add, u,x: User | u->a in sees and x->a in posts implies u->x in follows or u->x in suggested
-- div,1
all u:User | all a : u.seess & Ad | some p : User | a in p.posts and p in (u.follows + u.suggested)
-- div,1
all u:User,a:Ad | u->a in sees implies (some u1:User | u1->a in posts and u->u1 in follows+suggested
-- div,1
all u : User| all ad : Ad| ad in user.sees implies (ad in u.follows.posts or ad in u.suggested.posts)
-- div,1
all ad : Ad | all u : User | add in u.sees implies (ad in u.follows.posts or ad in u.suggested.posts)
-- div,1
all u1: User | all a: Ad | u1->a in sees & u2->a in posts => u1->u2 in follows or u1->u2 in suggested
-- div,1
all u:User | #(u.sees & Ad) != 0 implies some p:User | a in p.posts and p in (u.follows + u.suggested)
-- div,1
all u,u2:User , a:Ad | u -> a in sees implies ( u2 -> a in posts && (u2 in (u.follows || u.suggested))
-- div,1
all u1,u2:User,a:Ad | v -> a in sees and u>a in posts implies u1->u2 in follows or u1->u2 in suggested
-- div,1
all u1:User , a:Ad | u1->a in sees and u2->a in posts implies u1->u2 in follows or u1->u2 in suggested
-- div,1
all x:User, a:Ad|some y:User| y->a in posts x->a in sees implies (x->y in follows or y->x in suggested)
-- div,1
all u1,u2:User,a:Ad | u1 -> a in sees and u>a in posts implies u1->u2 in follows or u1->u2 in suggested
-- div,1
all u,u2 :User | some p:u2.posts |  p in a and a in u.sees implies  u2 in u.follows or u2 in u.suggested
-- div,1
all u1:User , a:Ad | u1->a in sees and u2->a in posts implies (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all x : User | all a: Add | a in x.sees implies p.User | a in p.posts and p in (x.follows + x.suggested)
-- div,1
all u : User,a : Ad |  a in u.sees => a in u.follows.photos or a in u.suggested => a in u.follows.photos
-- div,1
all u : User | all ad : Ad | all u_ad in u.sees.ad | u_ad.posts in u.follows || u_ad.posts in u.suggested
-- div,1
all p:Photo | u:User | p in u.sees and p in Ad implies some u2:User | a in u2.posts and u2 in u.suggested
-- div,1
all u1, u2 : User, a : Ad | (u1 in posts.a && u2 in sees.a) implies (u2 follows.u1 || u2 in suggested.u1)
-- div,1
all u1, u2: User, a: Ad | u1->a in sees => (u2->a in posts and u1->u2 in follows or u1->u2 in sugggested)
-- div,1
all x,y,z : univ | (x->y in sees and y in Ad) implies z->y posts and (x->z infollows or y->x in suggested)
-- div,1
all u1:User | all a:Ad | u1->a in sees and u2->a in posts implies u1->u2 in follows or u1->u2 in suggested
-- div,1
all u:User | all a:Ad | a in u.sees implies some p:User | p in (u.follows + u.sugessted) and  a in p.posts
-- div,1
all u1, u2: User, a: Ad | u1->a in sees => (u2->a in posts and (u1->u2 in follows or u1->u2 in sugggested))
-- div,1
all u1, u2 : User | (u1.post in Ad and u1.post in u2.sees) implies (u1 in u2.follows or u1 in u2.suggested)
-- div,1
all x : User | all a:Ad | a in x.sees implies some p.User | a in p.posts and p in (x.follows + x.suggested)
-- div,1
all u1: User, u2: User, a: Ad | a in u.sees and a in u2.posts implies u2 in u1.follows or u2 in u1.suggested
-- div,1
all a:Ad | u:User | a in u.sees implies some u2:User | a in u.posts and u2 in u.suggested or u2 in u.follows
-- div,1
all x : User | all a: Ad | a in x.sees implies some p.User | a in p.posts and p in (x.follows + x.suggested)
-- div,1
all a:Ad | u:User | a in u.sees implies some u2:User | a in u2.posts and u2 in u.suggested or u2 in u.follows
-- div,1
all x : User | all a: Add | a in x.sees implies some p.User | a in p.posts and p in (x.follows + x.suggested)
-- div,2
all u: User, u2: User, a: Ad | u->a in sees and u2->a in posts implies (u->f in follows or u->f in suggested)
-- div,1
all p:Photo | all u:User | p in u.sees and p in Ad implies some u2:User | a in u2.posts and u2 in u.suggested
-- div,1
all a : Ad | all u,y : User | u in sees.a implies ((a in posts.y) and ((y in follows.u) or (y in suggested.x))
-- div,1
all a : Ad | all y,u : User | u in sees.a implies ((a in posts.y) and ((y in follows.u) or (y in suggested.x)))
-- div,1
all u,u2:User , a:Ad | u -> a in sees implies ((u2 -> a in posts) && (u->u1 in follows || u->u1 in suggested)))
-- div,1
all u1,u2:User a:Ad | u1->a in sees and u2->a in posts and u2!=u1 => (u1->u2 in suggested or u1->u2 in follows)
-- div,1
all u1,u2 : User | all ad : Ad | ad in u2.posts and ad in u1.sees implies u2 in  u1.follow or u2 in u1.suggested
-- div,1
all u: User | all p: Photo | p in u.sees implies (p in Ad or (exists x: User | x in u.follows and p in x.posts))
-- div,1
all u1,u2 : User | all ad : AD | ad in u2.posts and ad in u1.sees implies u2 in  u1.follow or u2 in u1.suggested
-- div,1
all u1 : User, a : Ad | u1 in sees.a implies some u2 : User | u2 in posts.a and u1 in follows.u2 + suggested.u2)
-- div,1
all x,y: User  | all a : Ad | (x in sees.a) implies ((y in posts.a) and ((y in follows.x) or (y in suggested.x))
-- div,1
all ad : Add | all u1, u2: User | ad in u1.posts and ad in u2.sees implies u1 in u2.follows or u1 in u2.suggested
-- div,1
all x : User, a : Ad | a in x.sees implies (soma y: User | a in y.posts and (y in x.follows or y in x.suggested))
-- div,1
all u1:User, a:Ad | u->a in sees => (some u2:User | u2->a in posts and (u1->u2 in follows or u1->u2 in suggested))
-- div,1
all a:Ad | some u:User | s in u.sees implies one u1:User | (u1 in u.follows or u1 in u.suggested) and a in u1.posts
-- div,1
all u:User , a:Ad | u -> a in sees implies (some u2: User (u2 -> a in posts) && (u2 in (u.follows || u.suggested)))
-- div,1
all u:User, ad:Ad | s->p sees implies ((f->p in posts and u->f in follows) or (s->p in posts and u->s in suggested))
-- div,1
all u:User, a: Ad | u->a in sees implies (some u1: User | u1->a in posts and (u->u1 in follows or u->u1 in suggest))
-- div,1
all x : User | all a : Ad | (a in x.sees) implies a in x.follows.posts | (a in x.sees) implies a in x.suggested.posts
-- div,1
all u:User, a:Ad, | u->a in sees implies (some u2:User | u2->a in posts and (u->u2 in follows or u->u2 in suggested))
-- div,1
all x, y : univ | x in User and y in Ad and x->y in sees and z->y in posts implies x->z in follows or x->z in suggested
-- div,1
all u : User, ad : Ad | ad in u.sees implies (some u2 : User | ad in u2.posts && (u2 in u.follows or u2 in u.suggested)
-- div,1
all x:User | x.sees in Ad implies x.sees in x.follows.posts or x.sees in x.suggested.posts
-- div,1
all x: User, a: Ad | x -> a in sees implies all z: User | z -> a in posts implies x -> z in follows or x -> z in suggsted
-- div,1
all u : User, a : Ad, us : User | u -> a in sees and us -> a in posts implies (u -> us in follow or u -> us in suggested)
-- div,1
all u:User | all a:Add| u->a in sees implies (some u2:User | u2->a in posts and (u->u2 in follows or u->u2 in suggested))
-- div,1
all x : User | all x2 : User | all p : Photo | (p in x.sees and ((x2 in x.follows) or (x2 in x.suggested)) implies p in Ad
-- div,1
all u:User , a:Ad | u -> a in sees implies (some u2: User | u2 -> a in posts && (u->u2 in follows || u->u2 in suggested)) )
-- div,1
all u : User | all a : Ad | u in sees.a implies
( one y : User | y in posts.a and
(u in follows.y ) or
(y in suggested.x)
)
-- div,1
all u : User | all a : ads | u in sees.a implies
( one y : User | y in posts.a and
(u in follows.y ) or
(y in suggested.x)
)
-- div,1
all u : User | all p : Photo | some v : User p in u.sees and p in Ad and v->p in posts implies v in u.suggested or u.follows
-- div,1
all p:Photo | u:User | p in u.sees and p in Ad implies some u2:User | a in u2.posts and u2 in u.suggested or u2 in u.follows
-- div,1
all u:User, poster:User, a:Ad | u->a in sees and poster->a in posts implies (u->poster in follows or u->posted in suggested)
-- div,1
all u : User | all a : Ad | u->a in sees implies ((one v : User | v->a in posts and (u->v in follows) or (u->v in suggested))
-- div,1
all u : User | all a : Ad | a in u.sees implies some u2 : User | a in u2.posts and (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all u1 : User | all ad : Ad | ad in u1.sees | all u2 : User | ad in u2.posts
implies (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all u : User | (some a : Ad, u2 : User | u -> a in sees and u2 -> a in posts) => (u -> u2 in follows or u -> u2 in suggested)
-- div,1
all u : User , ad : Ad| ad in u.sees implies (some u2 : User | u2 != u && ad in u2.posts && (u2 in u.follows or u2 in u.suggested)
-- div,1
all u: User, ad : Ad |
some f, s : User |
u->ad in sees
=> (f->ad in posts && u->f in follows)
(s->ad in posts && u->s in suggested)
-- div,1
all u : User | some u.sees.ad

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
}

run {
inv1,
inv2
}


pred inv2{

all user: User | user not in user.follows
}

pred inv1{

all p: Photo | one u: User | p in u.posts
-- div,1
all u : User | some ad : Ad, i : User | ad in u.sees implies (i in u.follows and ad in i.posts) or (i in u.sugested and ad in i.posts)
-- div,1
all u : User | all ad : u.sees - Photo | all f : u.follows | all s : u.suggested | ad not in u.posts ad in f.posts or ad in s.posts and
-- div,1
all u : User | some ad.(u.sees)

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
all u:User, ad:Ad, f:Influencer, s:User | u->p sees implies ((f->p in posts and u->f in follows) or (s->p in posts and u->s in suggested))
-- div,1
all ad: Ad | all user1, user2: User |  (ad in user2.posts and (user2 in user1.follows or user2 in user1.suggested) implies ad in user1.sees
-- div,1
all user : User | all ad in user.sees | ad in Ad implies ((some following : user.follows | following->ad in posts) or some suggested : user.suggested | suggested->ad in posts)
-- div,1
all u1,u2:User | u1 != u2 and u2 not in u1.follows   implies u2.posts:>Ad not in u1.sees
all u1,u2:User | u1 != u2 andu2 not in u1.suggested implies u2.posts:>Ad not in u1.sees
-- div,2
all p:Photo | all u:User | p in u.sees and p in Ad implies some u2:User | p in u2.posts and u2 in u.suggested or u2 in u.follows
all u:User | p:Photo | p in u.sees implies p not in u.posts
-- div,1
all u : User | all a : Ad | a in u.sees implies some followed, suggest : univ | (followed->ad in posts and user->followed in follows) or (suggest->ad in posts and user->suggest in suggested)
-- div,2
