sees = (suggested + follows).posts
-- div,1
sees = (suggested.posts + follows.posts)
-- div,1
sees :> Ad = (follows+suggested).posts :> Ad
-- div,3
all u:User | u.sees in u.follows.posts
-- div,1
sees.(Ad->Ad & iden) = (suggested + follows).posts
-- div,1
all u:User | u.sees in u.suggested.posts
-- div,1
all u : User | all p : u.sees | p not in Ad
-- div,1
all u : User | u.sees & Ad in (u.follows).posts
-- div,1
all u:User | u.sees&Ad in u.suggested.posts
-- div,1
all u: User | u.sees = u.(follows + suggested).posts
-- div,1
all u:User | (u.sees & Ad) = (u.follows.posts & Ad)
-- div,1
all u: User | (u.sees&Ad) in (u.follows.posts&Ad)
-- div,1
all u : User | u.sees & Ad = u.follows + u.suggested
-- div,1
all u:User, a: u.sees&Ad | a in u.follows.posts
-- div,1
all u: User |all ad: Photo |  ad in u.follows.posts
-- div,1
all x : User | all y : x.sees | y in x.follows.posts
-- div,2
all u:User | u.sees in (u.follows.posts + u.suggested.posts)
-- div,4
all x : User |  x.sees in x.follows.posts + x.suggested.posts
-- div,2
all u : User | (u.sees & Ad) =  u.(follows + suggested).posts & Ad
-- div,1
all x : User | Ad in follows.posts.x and  Ad in suggested.posts.x
-- div,1
all u1:User | u1.sees = (u1.follows.posts + u1.suggested.posts)
-- div,1
all u : User | all p : u.sees | p not in Ad or p in u.follows
-- div,2
all u1:User | u1.sees in u1.follows.posts + u1.suggested.posts
-- div,7
all u:User | (u.sees & Ad) = ((u.follows+u.suggested).posts & Ad)
-- div,3
all u: User, a: Ad | a in u.follows.posts + u.suggested.posts
-- div,1
all u:User | u.sees&Ad = (u.follows.posts + u.suggested.posts)
-- div,1
all u:User | u.sees = (u.follows.posts + u.suggested.posts)&Ad
-- div,1
all u:User | u.sees&Ad = (u.follows.posts&u.suggested.posts)
-- div,1
all x : User | all a : Ad | (a in x.sees) implies a in x.follows.posts
-- div,1
all u : User, ad : Ad |  u.sees  in u.follows  or  u.sees in u.follows
-- div,1
all u: User , a: Ad | u.sees in  (u.follows + u.suggested).posts & Ad
-- div,1
all u : User, ad : Ad |  u.sees in u.follows  or  u.sees in u.suggested
-- div,1
all u:User | u.sees = (u.follows.posts&Ad + u.suggested.posts&Ad)
-- div,1
all u : User, a : Ad | a in u.follows.posts and a in u.suggested.posts
-- div,1
all u:User | u.sees&Ad = (u.follows.posts + u.suggested.posts)&Ad
-- div,6
all u:User,a:Ad | a in u.follows.posts or a in u.suggested.posts
-- div,2
all u : User | u.sees & Ad = (u.follows.posts + u.suggested.posts & Ad)
-- div,1
all u : User | u.sees in u.follows.posts or u.sees in u.suggested.posts
-- div,1
all u1 : User | (u1.follows.posts+u1.follows.posts)&Ad = u1.sees&Ad
-- div,1
all u : User , ad : Ad| ad in u.follows.posts or  ad in u.suggested.posts
-- div,1
all u1 : User | u1.sees&Ad in (u1.follows.posts+u1.follows.posts)&Ad
-- div,1
all u1 : User | (u1.follows.posts+u1.suggested.posts)&Ad = u1.sees&Ad
-- div,1
all u:User, a:Ad | (a in u.sees) implies (a in u.follows or a in u.suggested)
-- div,1
all a : Ad, u : User | a in u.sees => a in u.follows or a in u.suggested
-- div,1
all u : User, p : u.sees | p in u.follows.posts or p in u.suggested.posts
-- div,1
all u:User, a:Ad | a in u.sees iff ( a in u.follows.posts + u.suggested)
-- div,1
all u:User | u.sees&Ad = (u.follows.posts&Ad + u.suggested.posts&Ad)
-- div,2
all u : User | all p : u.sees & Ad | p in u.follows || p in u.suggested
-- div,1
all x : User | all y : x.sees | y in x.follows.posts+x.suggested.posts
-- div,2
all u : User | all p : Ad | p in u.follows.posts or p in u.suggested.posts
-- div,1
all x,y: User  | all a : Ad | (x in sees.a) implies ((y in posts.a) and (x in follows.y))
-- div,1
all u:User, a:Ad | a in u.sees iff ( a in u.follows.posts or a in u.suggested)
-- div,1
all u : User , a : Ad | a in u.sees <=> a in u.follows.posts + u.suggested.posts
-- div,1
all u : User | all p : u.sees | p not in Ad or p in u.follows or p in u.suggested
-- div,2
all a : Ad, u : User | a in u.sees implies a in u.follows.posts + u.follows.suggested
-- div,1
all u:User| all p: u.sees| p in Ad implies p in u.follows or p in u.suggested
-- div,1
all x : User | all y : x.sees + Ad | y in x.follows.posts + x.suggested.posts
-- div,1
all u:User| all p: u.sees| p in Ad implies (p in u.follows or p in u.suggested)
-- div,1
all u:User | all a:Ad | a in u.sees implies a in u.follows or a in u.suggested
-- div,1
all u: User |all ad: Photo |  ad in u.follows.posts or ad in u.suggested.posts
-- div,1
all x : User | all a : x.sees | a in x.follows.posts or a in x.suggested.posts
-- div,1
all x,y : User, a : Ad | x != y and (a in y.posts and a in x.sees implies y in x.follows)
-- div,1
all u : User, ad : Ad | ad in u.sees iff ad in (u.follows.posts + u.suggested.posts )
-- div,1
all u, u1 : User, p : u.sees | p in u1.posts and (u1 in u.follows or u1 in u.suggested)
-- div,1
all u: User , a: Ad | a in u.sees => a in u.follows.posts && a in u.suggested.posts
-- div,2
all x,y : User, a : Ad | a in x.sees implies (a in y.posts and y in (x.follows + x.suggested))
-- div,1
all a : Ad , u : User | a in u.sees implies a in u.follows.posts else a in u.suggested.posts
-- div,1
all u: User, a: Ad| a in u.sees implies a in u.follows.posts or u in u.suggested.posts
-- div,1
all a : Ad, u : User | a in u.sees => a in u.follows.posts && a in u.suggested.posts
-- div,1
all u:User, a:Ad | a in u.sees iff ( a in u.follows.posts or a in u.suggested.posts)
-- div,1
all x:User, p:Photo | p in x.sees implies p in x.follows.posts or p in x.suggested.posts
-- div,2
all p: Photo, u: User | p in u.sees => p in u.follows.posts || p in u.suggested.posts
-- div,1
all u : User, a : Ad | a in u.sees implies (some z : User | a in z.posts and z in u.follows)
-- div,1
all u1,u2 : User, a : Ad |a in u1.sees =>  a in u2.posts and u2 in (u1.follows + u1.suggested)
-- div,2
all u,i:User, a:Ad| a in u.sees implies a in i.posts and (i in u.follows or i in u.suggested)
-- div,1
all a:Ad,u,f:User | a in u.sees implies a in f.posts and (f in u.follows or f in u.suggested)
-- div,1
all x,y : User, a : Ad | a in x.sees implies (a in y.posts and (y in x.follows or y in x.suggested))
-- div,1
all u: User | all p : u.sees| p in Ad => p in  p.follows.posts or p in p.suggested.posts
-- div,1
all a : Ad | all u : User | a in u.sees <=> a in u.suggested.posts or a in u.follows.posts
-- div,1
all u: User | all a : u.sees | a in Ad iff ( a in u.follows.posts or a in u.suggested.posts)
-- div,1
all u, u1 : User, p : Photo | p in u.sees and p in u1.posts and (u1 in u.follows or u1 in u.suggested)
-- div,1
all u: User | all p: Photo | p in u.sees implies (p in u.follows.posts or p in u.suggested.posts)
-- div,1
all u, u1 : User, p : Photo | p in u.sees => p in u1.posts and (u1 in u.follows or u1 in u.suggested)
-- div,1
all ad : Ad , user : User | ad in user.sees => (ad in user.follows.posts && ad in user.suggested.posts)
-- div,1
all u1,u2 : User , a : Ad | a in u1.sees implies a in u2.posts and (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all p : Ad | all u : User | p in u.sees iff (some x : User | u in follows.x and p in posts.x)
-- div,1
all x,y: User  | all a : Ad | (x in sees.a) implies ((y in posts.a) and ((y in follows.x) or (y in suggested.x)))
-- div,1
all u,y : User | all a : Ad | u in sees.a implies (((u in follows.y) or (u in suggested.y)) and (a in posts.y))
-- div,1
all u,y : User | all a : Ad | u in sees.a implies (((u in follows.y) or (u in suggested.y)) and (y in posts.a))
-- div,1
all a : Ad | all y,u : User | u in sees.a implies ((a in posts.y) and ((y in follows.u) or (y in suggested.u)))
-- div,1
all u : User | all ad : u.sees | ad in Ad implies (one u2 : u.follows + u.suggested | ad in u2.posts )
-- div,1
all u1, u2: User, a: Ad | u1->a in sees => (u2->a in posts and (u1->u2 in follows or u1->u2 in suggested))
-- div,1
all ad : Ad | all u,u2 : User | ad in u.sees implies (u2 in u.follows or u2 in u.suggested) and (ad in u2.posts)
-- div,1
all u : User | all ad : u.sees | some ad & Ad implies (one u2 : u.follows + u.suggested | ad in u2.posts )
-- div,1
all u1,u2 : User | all a : Ad | a in u1.sees <=> a in u2.posts and (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all u, u1 : User, p : Photo | p in u.sees => p in u1.posts and u1 != u and (u1 in u.follows or u1 in u.suggested)
-- div,1
all ad : Ad | all u1,u2 : User | ad in u1.sees implies (u2 in u1.follows or u2 in u1.suggested) and ad in u2.posts
-- div,1
all a : User, c : Ad | c in a.sees implies (all b : User |(b in a.follows or b in a.suggested) and c in b.posts)
-- div,1
all x : User, y: Ad | y in x.sees implies all z: User | y in z.posts and (z in x.follows or z in x.suggested)
-- div,2
all u: User | (u.sees&Ad) in (u.follows.posts&Ad)
all u: User | (u.sees&Ad) in (u.suggested.posts&Ad)
-- div,1
all u: User |all ad: Photo | u -> ad in sees implies ad in Ad and ad in u.follows.posts or ad in u.suggested.posts
-- div,1
all x, y: User, z:Ad| x->z in sees implies (x-> y in follows and y-> z in posts) or (x->y in suggested and y-> z in posts)
-- div,1
all p:Photo | all u:User | p in u.sees and p in Ad implies some u2:User | p in u2.posts and u2 in u.suggested
-- div,1
all u: User, a: Ad | u->a in sees iff (some u1: User | u1->a in posts && (u->u1 in follows || u->u1 in suggested))
-- div,2
all a: Ad | all u: User | a in u.sees implies some z: User | (z in u.follows or z in u.suggested) and (z in a.posts)
-- div,1
all u1,u2 : User | all a : Ad | a in u1.sees <=> a in u2.posts and u1!=u2 and (u2 in u1.follows or u2 in u1.suggested)
-- div,1
all a : Ad | all u : User |some y : User| u in sees.a implies ((a in posts.y) and ((y in u.follows) or (y in u.suggested)))
-- div,1
all ad : Ad | all u1,u2 : User | ad in u1.sees implies (u2 in u1.follows or u2 in u1.suggested)
and ad in u2.posts and u1 != u2
-- div,2
all ad : Ad | all u1,u2 : User | ad in u1.sees <=> (u2 in u1.follows or u2 in u1.suggested)
and ad in u2.posts and u1 != u2
-- div,1
all u : User | all a : Ad | u->a in sees implies (one v : User | v->a in posts and (u->v in follows or u->v in suggested))
-- div,2
all a:Ad | all u:User | a in u.sees implies one u1:User | (u1 in u.follows or u1 in u.suggested) and a in u1.posts
-- div,1
all u1 : User, a : Ad | u1->a in sees iff some u2 : User | u2->a in posts and (u1->u2 in follows or u1->u2 in suggested)
-- div,1
all u1,u2,u3:User, a:Ad | u1->a in sees => (u2->a in posts and u1->u2 in follows) or (u3->a in posts and u1->u3 in suggested)
-- div,4
all u1,u2 : User| all p:Photo| p in Ad and u1->p in sees implies (u2->p in posts and(u1->u2 in follows or u1->u2 in suggested))
-- div,1
all u1,u2,u3:User, a:Ad | u1->a in sees <=> (u2->a in posts and u1->u2 in follows) or (u3->a in posts and u1->u3 in suggested)
-- div,1
all u : User, a: Ad | some u1: User| a in u.sees implies a in u1.posts and u != u1 and (u1 in u.follows or u1 in u.suggested)
-- div,1
all u1,u2 : User, a : Ad |a in u1.sees =>  a in u1.follows.posts + u1.suggested.posts
all u : User | u not in u.suggested
-- div,1
all u : User , ad : Ad| ad in u.sees implies (some u2 : User | u2 != u && ad in u2.posts && (u2 in u.follows or u2 in u.suggested))
-- div,1
all u1, u2 : User | all ad : Ad | ad in u1.sees implies ((ad in u2.posts and u2 in u1.follows) or (ad in u2.posts and u2 in u1.suggested))
-- div,1
all ad: Ad | all user1, user2: User | ad in user1.sees implies ad in user2.posts and (user2 in user1.follows or user2 in user1.suggested)
-- div,1
all u1,u2 : User, a : Ad | a in u1.sees => a in u2.posts and u2 in (u1.follows + u1.suggested)
all u : User | u not in u.suggested
-- div,1
all u:User, u2:User, u3:User, a:Ad | a in u.sees implies ( (a in u2.posts and u2 in u.follows) or (a in u3.posts and u3 in u.suggested))
-- div,1
all u1,u2 : User, a : Ad |a in u1.sees =>  u1 != u2 and a in u1.follows.posts + u1.suggested.posts
all u : User | u not in u.suggested
-- div,1
all a:Ad | all u,u2:User | a in u2.posts and u2 in u.follows

all u:User | all p:Photo | p in u.sees implies p not in u.posts
-- div,1
all u1,u2 : User, a : Ad |a in u1.sees =>  u1 != u2 and a in u2.posts and u2 in (u1.follows + u1.suggested)
all u : User | u not in u.suggested
-- div,1
all u1 : User | some u2 : User | all ad : Ad | ad in u1.sees
implies
(ad in u2.posts and u2 in u1.follows) or (ad in u2.posts and u2 in u1.suggested)
-- div,1
all u1 : User | some u2 : User | all ad : Ad | ad in u1.sees implies ((ad in u2.posts and u2 in u1.follows) or (ad in u2.posts and u2 in u1.suggested))
-- div,1
all u1,u2 : User, a : Ad | a in u1.sees => a in u2.posts and u2 in (u1.follows + u1.suggested)
all u : User | u not in u.suggested and u not in u.follows
-- div,1
all u : User | all a : Ad | a in u.sees implies some followed, suggest : univ | (followed in a.posts and followed in u.follows) or (suggest->a in posts and u->suggest in suggested)
-- div,1
all u : User | u.sees & Ad = u.follows.posts + u.suggested.posts & Ad

all u:User | all a:Ad | a in u.sees implies some p:User | a in p.posts and p in (u.follows + u.suggested)
-- div,1
all u: User | (u.sees&Ad) in (u.follows.posts&Ad)
all u: User | (u.sees&Ad) in (u.suggested.posts&Ad)

all a: Ad | all u: User | u->a in sees implies some z: User | (u->z in follows or u->z in suggested) and (z->a in posts)
-- div,1
all a:Ad | all u,u2:User | a in u2.posts and (u2 in u.follows or u2 in u.suggested) implies a in u.sees
all a:Ad | all u:User | a in u.sees implies some u2:User | a in u2.posts and (u2 in u.suggested or u2 in u.follows)

all u:User | all p:Ad | p in u.sees implies p not in u.posts
-- div,3
all a:Ad | all u,u2:User | a in u2.posts and (u2 in u.follows or  u2 in u.suggested) implies a in u.sees
all a:Ad | all u:User | a in u.sees implies some u2:User | a in u2.posts and (u2 in u.suggested or u2 in u.follows)

all u:User | all p:Photo | p in u.sees implies p not in u.posts
-- div,2
all p:Photo | all u:User | p in u.sees and p in Ad implies some u2:User | p in u2.posts and u2 in u.suggested
all p:Photo | all u:User | p in u.sees and p in Ad implies some u2:User | p in u2.posts and u2 in u.follows
all u:User | all p:Photo | p in u.sees implies p not in u.posts
-- div,1
all a:Ad | all u,u2:User | a in u2.posts and u2 in u.follows implies a in u.sees
all a:Ad | all u,u2:User | a in u2.posts and u2 in u.suggested implies a in u.sees
all a:Ad | all u:User | a in u.sees implies some u2:User | a in u2.posts and (u2 in u.suggested or u2 in u.follows)

all u:User | all p:Photo | p in u.sees implies p not in u.posts
-- div,1
