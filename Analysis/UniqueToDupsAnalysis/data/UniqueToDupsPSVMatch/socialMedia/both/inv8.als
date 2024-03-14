all x : User | x.sees in Ad
-- div,1
all u:User | u.sees in Ad
-- div,1
all u : User | some ((u.sees) & Ad)
-- div,1
all u : User | (u.sees & Ad) =  Ad
-- div,1
posts . (User . sees) in (User . follows + User . suggested)
-- div,1
all x : User | x.sees in Ad implies x.posts in Ad
-- div,3
all x : User | x.sees in Ad or x.posts in Ad
-- div,1
all x : User | x.posts in Ad implies x.sees in Ad
-- div,1
all u : User | all ad: Ad | u->ad in sees
-- div,1
all u : User | posts.(u.sees & Ad) in u.follows
-- div,1
all u : User | u->(posts.((u.sees) & Ad)) in follows
-- div,1
all u : User | no posts.(u.sees & Ad) - u.follows
-- div,1
all u : User | all f : Photo | f in u.sees&Ad
-- div,1
all u : User | all f : Photo | f in u.sees+Ad
-- div,1
all x : User | x.sees in Ad implies x.follows.posts in Ad
-- div,1
all u : User | posts.(u.sees) in (u.follows + u.suggested)
-- div,6
all u : User | u.sees.(~posts) in u.suggested + u.follows
-- div,1
all u:User | u.sees in Ad  implies u.sees in u.follows.posts
-- div,1
all u: User | posts.(u.sees & Ad) in u.follows + u.suggested
-- div,5
all x : User | x.follows.posts + x.suggested.posts in x.sees
-- div,1
all u:User | Ad-((u.follows+u.suggested).posts) not in u.sees
-- div,3
all u : User | (u.sees & Ad).~posts in u.follows + u.suggested
-- div,1
all u : User, p : u.sees | posts.p in u.follows+u.suggested
-- div,1
all x : User | Ad in follows.x.posts and  Ad in suggested.x.posts
-- div,1
all u:User | Ad-((u+u.follows+u.suggested).posts) not in u.sees
-- div,1
all u:User | Ad-((u.follows+u.suggested).posts&Ad) not in u.sees
-- div,4
all x : User, y : (x.sees&Ad) | posts.y in (x.follows + x.suggested)
-- div,2
all u:User | u.sees in (u.follows.posts + u.follows.suggested.posts)
-- div,1
all u : User, a : u.sees & Ad | posts.a in (u.follows + u.suggested)
-- div,1
all x : User | x.sees in Ad implies (x.follows.posts in Ad or x.posts in Ad)
-- div,2
all u:User | Ad-((u+u.follows+u.suggested).posts&Ad) not in u.sees
-- div,2
all x : User |  (x.follows.posts in Ad or x.posts in Ad) implies x.sees in Ad
-- div,1
all x : User | (x.sees in Ad) implies (x.posts in Ad  or x.follows.posts in Ad)
-- div,1
some u: User |  u.sees&Ad = (u.follows.posts + u.suggested.posts)&Ad
-- div,1
all u: User | u.follows.posts + u.suggested.posts & Ad in u.sees & Ad
-- div,1
all u : User | all ad: Ad | u->ad in sees and u->(posts.ad) in follows
-- div,1
all u: User , a: Ad | u.sees in a implies a = (u.follows + u.suggested).posts
-- div,1
all u: User , a: Ad | u.sees in a implies (u.follows + u.suggested).posts in a
-- div,1
all x : User, y : x.sees | y in Ad => posts.y in (x.follows + x.suggested)
-- div,1
all u: User, a: Ad| a in u.sees => u in u.follows or u in u.suggested
-- div,2
all u:User, p:Photo | p in u.sees and posts.p in u.follows implies p in Ad
-- div,1
all u : User, a : Ad | a in u.sees implies posts.a in (u.follows + u.suggested)
-- div,2
all u: User , a: Ad | u.sees in a implies a in (u.follows + u.suggested).posts
-- div,1
all u: User , a:Ad | u->a = sees implies (u.follows + u.suggested)-> a in posts
-- div,1
all u:User, a: Ad | a in u.posts => a in u.follows or a in u.suggested
-- div,1
all u : User, p : u.sees | posts.p in u.follows || posts.p in u.suggested
-- div,1
all u: User , a:Ad | u->a in sees implies (u.follows + u.suggested)-> a in posts
-- div,2
all u1 : User | u1.follows.posts+u1.follows.suggested.posts = u1.sees&Ad
-- div,1
all a, b : User, c : Ad | c in a.sees implies (b in a.follows or b in a.suggested)
-- div,1
all u: User | all a: (u.follows + u.suggested).posts & Ad | a in u.sees
-- div,1
all u: User | some a: (u.follows + u.suggested).posts & Ad | a in u.sees
-- div,1
all u:User | all a:(u.follows+u.suggested).posts | Ad-a not in u.sees
-- div,2
all u : User | all ad : u.sees & Ad | posts.ad in (u.follows + u.suggested)
-- div,1
all v, u : User, a : Ad | v->a in sees => (u->v in follows or v->u in suggested)
-- div,1
all v, u : User, a : Ad | v->a in sees => (v->u in follows or v->u in suggested)
-- div,3
all u: User, ad: Ad | ad in u.sees implies ad.~posts in (u.follows + u.suggested)
-- div,1
all u1 ,u3 : User | u3.posts in u1.sees => (u3 in u1.suggested) or(u3 in u1.follows)
-- div,1
all u1,u2:User, a:Ad | u1->a in sees and u2->a in posts => u1->u2 in follows
-- div,1
all u: User | u.sees in Ad implies u.follows.posts in Ad || u.suggested.posts in Ad
-- div,3
all u: User , a: Ad | u.sees in a implies (u.follows + u.suggested).posts & Ad in a
-- div,1
all u : User | all p : Ad | p in u.sees implies (posts.p in u.follows + u.follows)
-- div,3
all u1 : User | (u1.follows.posts+u1.follows.suggested.posts)&Ad = u1.sees&Ad
-- div,2
all x:User | all p: Ad | (p in x.sees) implies posts.p in (x.follows + x.suggested)
-- div,1
all u:User | all a:(u.follows+u.suggested).posts&Ad | Ad-a not in u.sees
-- div,1
all u : User | all p : Ad | (p in u.sees) implies (posts.p in (u.follows + u.suggested))
-- div,2
all u : User | all a : Ad | some (u.follows.posts + u.suggested.posts) & u.sees
-- div,1
all u1 : User | u1.sees&Ad in (u1.follows.posts+u1.follows.suggested.posts)&Ad
-- div,1
all u: User | all a: (u.follows.posts + u.suggested.posts) & Ad | a in u.sees
-- div,1
all u: User | all p: Ad | u in sees.p => posts.p in u.suggested + u.follows
-- div,1
all u,u1,u2: User, a: Ad | u->a in sees => (u->u1 in follows or u->u2 in suggested)
-- div,1
all u,u1,u2: User, a: Ad | u->a in sees and (u->u1 in follows or u->u2 in suggested)
-- div,2
all u1, u2: User, a: Ad | (u1->a in sees) => (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all x,y : User, a : Ad | x != y implies (a in y.posts and a in x.sees implies y in x.follows)
-- div,1
all a: Ad, u1, u2: User | a->u1 in sees <=> u1->u2 in follows or u1->u2 in suggested
-- div,1
all a: Ad, u1, u2: User | u1->a in sees <=> u1->u2 in follows or u1->u2 in suggested
-- div,2
all u : User | u->(posts.((u.sees) & Ad)) in follows and u->(posts.((u.sees) & Ad)) in suggested
-- div,1
all u : User | u->(posts.((u.sees) & Ad)) in follows or u->(posts.((u.sees) & Ad)) in suggested
-- div,2
all u, v:User, a:Ad  | u->a in sees and v->a in posts=> u->v in follows+suggested
-- div,1
all u:User | not some a:Ad | u->a in sees and posts . a not in u.follows+u.suggested
-- div,1
all a: Ad, x,y : User | a in x.sees and a in y.posts implies y in x.follows + x.suggested
-- div,1
all u : User, a : Ad | a in u.sees implies a in (u.follows.posts + u.follows.follows.posts)
-- div,1
all u:User, p:Ad | p in u.sees implies posts.p in u.follows or posts.p in u.suggested
-- div,1
all u : User | all a : Ad | some a & u.sees implies posts.a in (u.follows + u.suggested)
-- div,1
all u1,u2:User | u2 not in u1.follows and u2 not in u1.suggested implies u2.posts:>Ad not in u1.sees
-- div,1
all ad : Ad | all u,u2 : User | ad in u.sees implies (u2 in u.follows or u2 in u.suggested)
-- div,1
all u:User, a: Ad | a in u.posts => a in u.follows.posts or a in u.suggested.posts
-- div,1
all u:User | Ad-((u.follows+u.suggested).posts&Ad) not in u.sees and u.posts in u.sees
-- div,1
all u : User, ad : Ad | ad in u.sees implies (ad in u.follows.sees or ad in u.suggested.sees)
-- div,1
all u: User | all p: u.posts |
(Ad in p implies (Ad in u.sees or Ad in u.suggested.posts))
-- div,1
all u : User | all p : u.sees & Ad | posts.p in u.follows or posts.p in u.suggested
-- div,3
some a: Ad | all u: User | a in u.sees implies a in (u.follows.posts + u.suggested.posts)
-- div,1
all u:User | Ad-((u.follows+u.suggested).posts&Ad) not in u.sees and u.posts not in u.sees
-- div,1
all u: User, a: Ad | (a in u.follows.posts or a in u.suggested.posts) => (u in a.~sees)
-- div,1
all u: User | u.sees in Ad implies some u.follows.posts & Ad || some u.suggested.posts & Ad
-- div,1
all x:User | x.sees in Ad implies x.sees in x.follows.posts or x.sees in x.suggested.posts
-- div,5
all a : Ad | all u1,u2 : User | u1 in sees.a implies (u2 in u1.follows or u2 in u1.suggested)
-- div,2
all u : User |  u.sees in Ad implies u.sees in u.follows.posts or  u.sees in u.suggested.posts
-- div,1
all u : User | all post : u.sees | posts.post in u.follows || posts.post in u.suggested
-- div,3
all u1, u2: User, a: Ad | u1->a in sees and u2->a in posts => u1->u2 in follows+suggested
-- div,1
some a: Photo | all u: User | a in u.sees implies a in (u.follows.posts + u.suggested.posts)
-- div,1
all u: User, a: Ad | a in u.sees => a.~posts in u.follows or a.~posts in u.suggested
-- div,2
all disj u1,u2:User | u2 not in u1.follows and u2 not in u1.suggested implies u2.posts:>Ad not in u1.sees
-- div,1
all x : User | some ad : Ad | ad in x.sees implies ad in x.follows.posts + x.suggested.posts
-- div,1
all u: User, a: Ad | u.sees in a => a.~posts in u.follows or a.~posts in u.suggested
-- div,1
all u1, u2: User | all a: Ad | u1->a in sees implies (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all u : User, a : Ad | a in u.sees implies a in ((u.follows.posts + u.follows.follows.posts) & Ad)
-- div,1
all u : User, a : Ad | a in u.sees implies a in (u.follows.posts + u.follows.follows.posts & Ad)
-- div,1
all u: User | u.follows.posts + u.suggested.posts & Ad in u.sees & Ad && no follows & iden
-- div,1
all u: User | (all a: u.sees & Ad | (one f: User | (f in u.sees) or (f in u.suggested)))
-- div,2
all u1, u2: User | all a: Ad | u1->a in posts implies (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all u1,u2:User, a:Ad | a in u2.posts and u1 in sees.a implies u2 in (u1.follows+u1.suggested)
-- div,2
all u,i:User, a:Ad | a in u.sees and a in i.posts implies i in u.follows or i in u.suggested
-- div,2
all u : User | all p : Ad | p in u.sees implies (posts.p in u.follows or posts.p in u.follows)
-- div,1
all a : User, c : Ad | c in a.sees implies (all b : User |b in a.follows or b in a.suggested)
-- div,1
all u: User | all a: (u.posts + u.follows.posts + u.suggested.posts) & Ad | a in u.sees
-- div,1
all a : Ad | all disj u1,u2 : User | u1 in sees.a implies (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all u : User, a : Ad | a in u.sees => a in u.follows.posts or a in u.follows.suggested.posts
-- div,1
all u:User,v:User | u in sees.Ad and v in posts.Ad implies u in follows.v or u in suggested.v
-- div,1
all u,u1,u2: User-Influencer, a: Ad | u->a in sees and (u->u1 in follows or u->u2 in suggested)
-- div,1
all u : User | all a : Ad | a in u.sees implies posts.a in u.follows or posts.a in u.suggested
-- div,1
all u: User | some p: Ad | p in u.sees implies p in (u.follows).posts or p in (u.suggested).posts
-- div,1
all u : User | some a : Ad | a in u.sees implies (a in u.follows.posts or a in u.suggested.posts)
-- div,1
all u: User, a: Ad | u->a in sees implies (all f: User | u->f in follows or u->f in suggested)
-- div,1
all x: User, y: Photo | y in x.sees implies some z: User | z in x.follows or z in x.suggested
-- div,1
all x : User |  (x.follows.posts in Ad or x.posts in Ad or x.suggested.posts in Ad) implies x.sees in Ad
-- div,6
all u: User | all p: Photo | p in Ad and u in sees.p => posts.p in u.suggested + u.follows
-- div,3
all x,y:User, a:Ad| x->a in sees and y->a in posts implies x->y in follows or y->x in suggested
-- div,1
all x,u:User, a:Ad| x->a in sees and u->a in posts implies x->u in follows or x->u in suggested
-- div,1
all x,y:User, z:Ad| x->z in sees and y->z in posts implies(  x->y in follows or x->y in suggested)
-- div,1
all u: User | all p: u.follows.posts |
(Ad in p implies (Ad in u.sees or Ad in u.suggested.posts))
-- div,3
all v, u : User, a : Ad | (v->a in sees and u->a in posts) => (v->u in follows or v->u in suggested)
-- div,4
all v,u:User,a:Ad | v->a in sees and u->a in posts implies v->u in follows or v->u in suggested
-- div,1
all x,y:User, a:Ad| x->a in sees and y->a in posts implies x->y in follows or x->y in suggested
-- div,1
all x,y:User, z:Ad| x->z in sees implies( y->z in posts and x->y in follows or x->y in suggested)
-- div,1
all x, y: User, z:Ad| x->z in sees and y -> z in posts implies x-> y in follows  or x->y in suggested
-- div,8
all u, us : User, a : Ad | a in u.sees and a in us.posts implies (us in u.follows or us in u.suggested)
-- div,2
all a: Ad, u,x: User | u->a in sees and x->a in posts implies u->x in follows or u->x in suggested
-- div,1
all u, y:User, a:Ad | (u->a in sees and y->a in posts) implies (u->y in follows or u->y in suggested)
-- div,2
all u,x:User, a:Ad| u->a in sees and x->a in posts implies u->x in follows or u->x in suggested
-- div,1
all u : User, a : Ad | a in u.sees implies a in (u.follows.posts + u.follows.follows.posts - u.posts)
-- div,1
all u : User, a : Ad | a in u.sees implies a in (u.follows.posts + u.follows.follows.posts + u.posts)
-- div,1
all u : User | all ad : Ad | u in sees.ad => (posts.ad in follows.u || posts.ad in suggested.u)
-- div,1
all u : User | all ad : Ad | u in sees.ad => (posts.ad in u.follows || posts.ad in u.suggested)
-- div,2
all u:User, a:Ad | u -> Ad in sees implies (all u1:User | u -> u1 in follows or u -> u1 in suggested)
-- div,1
all u, us : User, a : Ad | a in u.sees and us -> a in posts implies (u -> us in follows or u -> us in suggested)
-- div,1
all u1, u2:User, a:Ad | (a in u1.sees and a in u2.posts) => u2 in u1.follows or u2 in u1.suggested
-- div,6
all u1, u2 : User, a : Ad | (u1 in posts.a && u2 in sees.a) implies (u2 in follows.u1 || u2 in suggested.u1)
-- div,2
all u1, u2 : User, a : Ad | u1 in sees.a && u2 in posts.a => u1 in follows.u2 or u1 in suggested.u2
-- div,2
all a : Ad, u1, u2 : User | u1 in sees.a && u2 in posts.a => u1 in follows.u2 or u1 in suggested.u2
-- div,1
all u:User,v:Influencer | u in sees.Ad and v in posts.Ad implies u in follows.v or u in suggested.v
-- div,1
all u1, u2 : User, a : Ad | ((u1 in sees.a) && (u2 in posts.a)) implies (u1 in follows.u2 || u1 in suggested.u2)
-- div,2
all u,u1: User, a: Ad | u->a in sees and u1->a in posts => (u->u1 in follows or u->u1 in suggested)
-- div,1
all a:Ad,u1,u2:User | a in u1.posts and a in u2.sees implies u1 in u2.follows or u1 in u2.suggested
-- div,4
all u1,u2 : User , a : Ad | a in u1.sees and a in u2.posts implies (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all u, us : User, a : Ad | u -> a in sees and us -> a in posts implies (u -> us in follows or u -> us in suggested)
-- div,2
some a: Ad | all u: User | a in u.sees implies a in (u.follows.posts + u.suggested.posts + u.posts)
-- div,1
all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,2
all u: User, a: Ad | u->a in sees => (all u1,u2: User | u->u1 in follows or u->u2 in suggested)
-- div,1
all u:User, p:Photo | p in u.sees and posts.p in u.follows or posts.p in u.suggested implies p in Ad
-- div,1
all u1:User , a:Ad | u1->a in sees implies (all u2:User | u1->u2 in follows or u1->u2 in suggested)
-- div,1
all a : Ad | all u1,u2 : User | u1 != u2 and u1 in sees.a implies (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all u, u2 : User | (all p : Photo | u->p in sees and p in Ad implies (u->u2 in follows or u->u2 in suggested))
-- div,1
all u1, u2: User, a: Ad | (u1->u2 in follows or u1->u2 in suggested) => (u1->a in sees and u2->a in posts)
-- div,1
all u1 : User | all u2: User | all p : Ad | p in u1.sees and p in u2.posts implies u2 in u1.follows
-- div,1
all u : User | one ad : Ad | ad in u.sees implies (one u2 : u.follows + u.suggested | ad in u2.posts )
-- div,1
all u:User,v:User,p:Ad | u in sees.p and v in posts.p implies u in follows.v or u in suggested.v
-- div,2
all u1,u2:User, a:Ad | u1->a in sees and u2->a in posts => (u1->u2 in suggested or u1->u2 in follows)
-- div,1
all u1,u2:User, a:Ad | u1->a in sees and u2->a in posts => (u1->u2 in follows or u1->u2 in suggested)
-- div,6
all u : User | some ad : Ad | ad in u.sees implies (one u2 : u.follows + u.suggested | ad in u2.posts )
-- div,1
all u1, u2: User, a: Ad | (u1->a in sees and u2->a in posts) <=> (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all a: Ad, u1, u2: User | (u1->a in sees and u2->a in posts) <=> (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all a: Ad, u1, u2: User | u1->a in sees and u2->a in posts <=> u1->u2 in follows or u1->u2 in suggested
-- div,1
all u1, u2: User, a: Ad | (u1->u2 in follows or u1->u2 in suggested) <=> (u1->a in sees and u2->a in posts)
-- div,1
all u : User, a : Ad | a in u.sees implies a in ((u.follows.posts + u.follows.follows.posts + u.posts) & Ad)
-- div,1
all u,u1 : User | all a:Ad | a in u1.posts and a in u.sees implies u1 in u.suggested or u1 in u.follows
-- div,1
all x,y: User | all a: Ad | y->a in posts and x->a in sees implies x->y in follows or x->y in suggested
-- div,1
all x: User | all u: User | all p: Photo | (x in (u.follows) or x in (u.suggested)) implies u.posts in Ad
-- div,1
all u,u2 :User | some p:u2.posts |  p in Ad and p in u.sees implies  u2 in u.follows or u2 in u.suggested
-- div,1
all u, y:User, a:Ad | (u->a in sees and u!=y and y->a in posts) implies (u->y in follows or u->y in suggested)
-- div,1
all x:User, t:User, a:Ad| x->a in sees and t->a in posts implies x->t in follows or x->t in suggested
-- div,1
all u: User, uu: User, a: Ad | a in u.sees and a in uu.posts => uu in u.follows or uu in u.suggested
-- div,1
all x:User, y:User, a:Ad| x->a in sees and y->a in posts implies x->y in follows or x->y in suggested
-- div,1
all x:User, y:User, a:Ad| y->a in posts and x->a in sees implies (x->y in follows or y->x in suggested)
-- div,1
all x : User | all x2 : User | all p : Photo | p in x.sees implies (x2 in x.follows or x2 in x.suggested)
-- div,2
all x:User, y:User, a:Ad| x->a in sees and y->a in posts implies x->y in follows or y->x in suggested
-- div,1
all u:User, x:User, a:Ad| u->a in sees and x->a in posts implies u->x in follows or u->x in suggested
-- div,1
all p : Ad | all u1,u2 : User | u1 in sees.p and p in u2.posts implies u1 in follows.u2 or u1 in suggested.u2
-- div,1
all u1,u2 : User | all a : Ad | a in u2.posts and a in u1.sees implies u2 in u1.follows or u2 in u1.suggested
-- div,1
all u1,u2 : User | all a : Ad | (a in u2.posts and a in u1.sees) implies (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all a : Ad | all u1, u2 : User | (a in u1.sees and a in u2.posts) implies (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all u, u1 : User | some p : Photo | p in u.sees => p in u1.posts and (u1 in u.follows or u1 in u.suggested)
-- div,1
all a : Ad | all u1,u2 : User | a in u2.posts and a in u1.sees implies u2 in u1.follows or u2 in u1.suggested
-- div,3
all u1,u2 : User | all p : Ad | p in u2.posts and p in u1.sees implies u2 in u1.follows or u2 in u1.suggested
-- div,1
all u1: User, u2: User, a: Ad | a in u1.sees and a in u2.posts implies u2 in u1.follows or u2 in u1.suggested
-- div,1
all u : User, a : Ad, us : User | u -> a in sees and us -> a in posts implies (u -> us in follows or u -> us in suggested)
-- div,1
all u: User, u2: User, a: Ad | u->a in sees and u2->a in posts implies (u->u2 in follows or u->u2 in suggested)
-- div,1
all u1:User | all a:Ad | u1->a in sees implies(some u2:User | u2->u1 in follows or u2->u1 in suggested)
-- div,1
all u1,u2 : User | all ad : Ad | ad in u2.posts and ad in u1.sees implies u2 in  u1.follows or u2 in u1.suggested
-- div,1
all ad : Ad | all u1, u2: User | ad in u1.posts and ad in u2.sees implies u1 in u2.follows or u1 in u2.suggested
-- div,1
all x:User, t:User-x, a:Ad| x->a in sees and t->a in posts implies x->t in follows or x->t in suggested
-- div,1
all u1, u2: User | all a: Ad | u1->a in sees and u2->a in posts => u1->u2 in follows or u1->u2 in suggested
-- div,2
all u1, u2: User | all a: Ad | u1->a in sees and u2->a in posts implies (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all a : User, c : Ad | c in a.sees implies (all b : User |b in a.follows or b in a.suggested and c in b.posts)
-- div,1
all x, y,z : univ | x in User and y in Ad and x->y in sees and z->y in posts implies x->z in follows or x->z in suggested
-- div,2
all u:User, x:User-u, a:Ad| u->a in sees and x->a in posts implies u->x in follows or u->x in suggested
-- div,1
all a : User, c : Ad | c in a.sees implies (all b : User | c in b.posts implies (b in a.follows or b in a.suggested))
-- div,1
all u : User - Influencer| one ad : Ad | ad in u.sees implies (ad in u.suggested.posts or ad in u.suggested.posts)
-- div,1
all u: User | (all a: u.sees & Ad | (one f: User | a in f.posts implies (f in u.follows or f in u.suggested )))
-- div,1
all u1,u2 : User, a:Ad | (u1->a in sees and u2->a in posts and u1!=u2) implies (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all x: User, a: Ad | x -> a in sees implies all z: User | z -> a in posts implies x -> z in follows or x -> z in suggested
-- div,2
all u1,u2:User, a:Ad | u1->a in sees and u2->a in posts and u2!=u1 => (u1->u2 in suggested or u1->u2 in follows)
-- div,2
all u : User, a : Ad | u -> a in sees implies all z : User | z -> a in posts implies u -> z in follows or u -> z in suggested
-- div,1
all u : User - Influencer| one ad : Ad | ad in u.sees implies (one u2 : u.follows + u.suggested | ad in u2.posts )
-- div,1
all x:User, a:Ad|some y:User| y->a in posts and x->a in sees implies (x->y in follows or y->x in suggested)
-- div,1
all x: User, a: Ad | x -> a in sees iff all z: User | z -> a in posts implies x -> z in follows or x -> z in suggested
-- div,1
all x:User, a:Ad| x->a in sees implies some y:User| y->a in posts and (x->y in follows or y->x in suggested)
-- div,1
all u:User,v:User,p:Photo | p in Ad and u in sees.p and v in posts.p implies u in follows.v or u in suggested.v
-- div,1
all u:User | Ad-((u.follows+u.suggested).posts&Ad) not in u.sees and ((u.follows+u.suggested).posts&Ad) in u.sees
-- div,2
all x: User | all u: User | all p: Photo | (x in (u.follows) or x in (u.suggested)) and (p in x.posts) implies (p in Ad)
-- div,1
all u:User,a:Ad | u -> a in sees implies (some u2:User | u->a in posts and (u->u2 in follows or u->u2 in suggested))
-- div,1
all x : User | all x2 : User | all p : Photo | (p in x.sees and p in Ad) implies ((x2 in x.follows) or (x2 in x.suggested))
-- div,1
all u, u1 : User | some p : Photo | p in u.sees => p in u1.posts and u1 != u and (u1 in u.follows or u1 in u.suggested)
-- div,1
all x : User | all x2 : User | all p : Photo | (p in x.sees and ((x2 in x.follows) or (x2 in x.suggested)) ) implies p in Ad
-- div,2
all u : User | some a : Ad, u2 : User | (u -> a in sees and u2 -> a in posts) => (u -> u2 in follows or u -> u2 in suggested)
-- div,1
all u:User, a:Ad | u -> a in sees implies (some u2:User | u2 -> a in posts and (u->u2 in follows or u2 -> u in suggested))
-- div,1
all u:User, a:Ad | u -> a in sees implies (some u2:User | u2 -> a in posts and (u->u2 in follows or u2->u2 in suggested))
-- div,1
all u1, u2: User | all a: Ad | (u1 != u2 and a in u2.posts and  a in u1.sees) implies u2 in u1.follows or u2 in u1.suggested
-- div,1
all u1, u2: User | all a: Ad | (u1 != u2 and a in u2.posts and  a in u1.sees) implies (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all u : User | all a : Ad | u in sees.a implies
( one y : User | y in posts.a and
(u in follows.y ) or
(y in suggested.u)
)
-- div,1
all a : Ad | all y : User |some u : User| u in sees.a implies ((a in posts.y) and ((y in u.follows) or (y in u.suggested)))
-- div,1
all u : User | all a : Ad | u in sees.a implies
( some y : User | y in posts.a and
(u in follows.y ) or
(y in suggested.u)
)
-- div,1
all u : User | all a : Ad | u in sees.a implies
( some y : User | a in y.posts and
(u in follows.y ) or
(y in suggested.u)
)
-- div,1
all u : User | all a : Ad | u in sees.a implies
( some y : User | a in posts.y and
(u in follows.y ) or
(y in suggested.u)
)
-- div,1
all a : Ad | all u : User | u in sees.a implies (some y : User | (a in y.posts) and ((y in follows.u) or (y in suggested.u)))
-- div,1
all u : User | all a : Ad | u->a in sees implies (one v : User | v->a in posts and ((u->v in follows) or (v->u in suggested)))
-- div,1
all u : User | all a : Ad | u->a in sees implies one v : User | v->a in posts and (u->v in follows) or (u->v in suggested)
-- div,1
all u1 : User, u2 : User, p: Photo | p in Ad and p in u1.sees and p in u2.posts implies u2 in u1.follows or u2 in u1.suggested
-- div,1
all u : User | all a : Ad | u->a in sees implies one v : User | v->a in posts and (u->v in follows) or (v->u in suggested)
-- div,2
all u:User, poster:User, a:Ad | u->a in sees and poster->a in posts implies (u->poster in follows or u->poster in suggested)
-- div,2
all a:Ad | some u:User | a in u.sees implies one u1:User | (u1 in u.follows or u1 in u.suggested) and a in u1.posts
-- div,1
all u,a,p : univ | u in User and a in Ad and u->a in sees and p in User and p->a in posts implies u->p in follows or u->p in suggested
-- div,3
all u,a,p : univ | u in User and a in Ad and u->a in sees and p in User and p->a in posts implies p->u in follows or p->u in suggested
-- div,1
all a:Ad | some u:User | u -> a in sees implies (some p:User | p -> a in posts implies u -> p in follows or u -> p in suggested)
-- div,1
all u1,u2 : User| all p:Photo| p in Ad and (u2->p in posts and (u1->u2 in follows or u1->u2 in suggested)) implies u1->p in sees
-- div,1
all u1 : User | all ad : Ad | all u2 : User | ad in u2.posts and ad in u1.sees
implies (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all usr1, usr2 : User | some ad : Ad | usr2->ad in posts and usr1->usr2 not in follows or usr1->usr2 not in suggested implies usr1->ad not in sees
-- div,1
all ad: Ad | all user1, user2: User |  ad in user2.posts and (user2 in user1.follows or user2 in user1.suggested) implies ad in user1.sees
-- div,1
all u : User | all p : Photo | all v : User | p in u.sees and p in Ad and v->p in posts implies v in u.suggested or v in u.follows
-- div,1
all u : User | some ad : Ad, i : User | ad in u.sees implies (i in u.follows and ad in i.posts) or (i in u.suggested and ad in i.posts)
-- div,1
all u1, u2: User | all a: Ad | (u1 != u2 and a in u2.posts and a in u1.sees and a not in u1.posts) implies (u2 in u1.follows or u2 in u1.suggested)
-- div,2
all u1,u2 : User | all a : Ad | a in u1.sees and a in u2.posts implies a in u2.posts and u1!=u2 and (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all u : User | one (u.sees) & Ad

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
all x1,x2 : User | some p : Photo | p in Ad and p in x1.sees implies
((p in x2.posts and x1 in follows.x2) or (p in x2.posts and x2 in 							suggested.x1))
-- div,1
all u : User | some (u.sees) & Ad

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
all u1,u2,u3:User, a:Ad | u1->a in sees and u1->a not in posts => (u2->a in posts and u1->u2 in follows) or (u3->a in posts and u1->u3 in suggested)
-- div,1
all u1,u2 : User, a : Ad | u1 != u2 and a in u1.sees => a in u2.posts and u2 in (u1.follows + u1.suggested)
all u : User | u not in u.suggested
-- div,1
all u : User | some posts.((u.sees) & Ad)

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
all disj u1,u2:User | u2 not in u1.follows   implies u2.posts:>Ad not in u1.sees
all disj u1,u2:User | u2 not in u1.suggested implies u2.posts:>Ad not in u1.sees
-- div,1
all u : User | u->(posts.((u.sees) & Ad)) in follows

all u : User | all ad: Ad | u->ad in sees and (u->(posts.ad) in follows or u->(posts.ad) in suggested)
-- div,1
all u1,u2:User | u1 != u2 and u2 not in u1.follows   implies u2.posts:>Ad not in u1.sees
all u1,u2:User | u1 != u2 and u2 not in u1.suggested implies u2.posts:>Ad not in u1.sees
-- div,1
all a:Ad | all u,u2:User | a in u2.posts and a in u.sees implies u2 in u.follows or u2 in u.suggested



all u:User | all p:Ad | p in u.sees implies p not in u.posts
-- div,1
all u, f: User | some ad : Ad | u -> f in follows && f -> ad in posts => u -> ad in sees
all u, s: User | some ad : Ad | u -> s in suggested && s -> ad in posts => u -> ad in sees
-- div,1
all u1, u2: User | all a: Ad | (u1 != u2 and a in u2.posts and a in u1.sees ) implies (u2 in u1.follows or u2 in u1.suggested)

all u:User | all p: Ad | p in u.sees implies p not in u.posts
-- div,1
all u, f: User | some ad : Ad | u != f && u -> f in follows && f -> ad in posts => u -> ad in sees
all u, s: User | some ad : Ad | u != s && u -> s in suggested && s -> ad in posts => u -> ad in sees
-- div,1
all u, f: User | some ad : Ad | u != f && u -> f in follows && f -> ad in posts => u -> ad in sees
all u, s: User | some ad : Ad | u != s && s -> u in suggested && s -> ad in posts => u -> ad in sees
-- div,1
all p:Photo | all u:User | p in u.sees and p in Ad implies some u2:User | p in u2.posts and u2 in u.suggested or u2 in u.follows
all u:User | all p:Photo | p in u.sees implies p not in u.posts
-- div,1
all a:Ad | all u,u2:User | a in u2.posts and u2 in u.follows implies a in u.sees
all a:Ad | all u,u2:User | a in u2.posts and u2 in u.suggested implies a in u.sees

all u:User | all p:Photo | p in u.sees implies p not in u.posts
-- div,3
