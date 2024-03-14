Day in Influencer.posts
-- div,1
posts in (Influencer -> one Day)
-- div,1
posts.date = Influencer->Day
-- div,1
all d:Day | d in posts.date.d
-- div,1
all i : Influencer | i.posts = Day
-- div,1
all x : Influencer | x.posts = Day
-- div,1
all x: Influencer| Day in posts.x
-- div,1
all i: Influencer | Day in i.posts
-- div,1
all i : Influencer | Day in posts.Day
-- div,1
all i : Influencer | (posts.i).date = Day
-- div,1
all x: Influencer| Day-x in posts.x
-- div,1
all d : Day | (posts.date.d) = Influencer
-- div,1
all d : Day | (posts.(date.d)) = Influencer
-- div,1
all user : User | Day in user.posts.date
-- div,1
all u:Influencer, d:Day | u in posts.d
-- div,1
all i:Influencer, d:Day | d in i.posts
-- div,3
all d : Day, i : Influencer | d in i.posts
-- div,1
all i : Influencer | some i.posts.date - Day
-- div,1
all inf : Influencer, d:Day| d in inf.posts
-- div,1
all d: Day, i: Influencer | i.posts.date = d
-- div,1
all i : Influencer | i.posts&Photo&Day = Day
-- div,1
all i: Influencer, d: Day | i.posts.date = d
-- div,1
all i : Influencer | all d : Day | d in i.posts
-- div,1
all x : Influencer | all d : Day | d in x.posts
-- div,2
all x: Influencer| all y: Day| y in posts.x
-- div,1
all x : Influencer | all y : Day | y in x.posts
-- div,1
all i:Influencer | one d:Day | d in i.posts
-- div,1
all a : Influencer | all d : Day | a->d in posts
-- div,1
all x : Influencer | all d : Day | x->d in posts
-- div,2
all d:Day,i:Influencer | i in posts.Photo.date
-- div,2
all x : Influencer | all d : Day | d->x in posts
-- div,1
all x : Influencer | all d : Day | sum(x.posts & d) > 3
-- div,1
all d : Day | all i : Influencer | one date.posts.i
-- div,1
all x : Influencer | all d : Day | sum(x.posts & d) in d
-- div,1
all d : Day | all i : Influencer | one date.i.posts
-- div,1
all x: User, y: Day | x in Influencer implies y in x.posts
-- div,1
all u : User, d : Day | u in Influencer implies some posts.d
-- div,1
all x : Day | all y : Influencer | x in date.posts.y
-- div,1
all i : Influencer | some p : i.posts | Day in p.date
-- div,1
all u : User, d : Day | u in Influencer implies d in posts.Day
-- div,1
all i : Influencer | some p : Photo | p in i.date.posts
-- div,1
all i: Influencer | some p: Photo | p.date in posts.p
-- div,1
all i : Influencer | some p : Photo | p in i.posts.date
-- div,1
all d : Day | all i : Influencer | d in i.posts.~date
-- div,1
all i : Influencer | some p : i.posts | Day in p.^date
-- div,1
all i : Influencer, d : Day | some p : i.posts | d in p
-- div,1
all i: Influencer |
all d: Day |
some (i.posts & d.date)
-- div,2
all i: Influencer | some d: Day | some i.posts & d.date
-- div,1
all i : Influencer, d : Day | some p : Photo | d in date.p
-- div,1
all u:Influencer, d:Day | some p:Photo | u in posts.d
-- div,1
all d:Day, i:Influencer | one p: i.posts | p.date=d
-- div,2
all d: Day | all u: User | u in Influencer and d in u.posts.date
-- div,1
all i: Influencer | some p: Photo | i->p in posts and Day in p.date
-- div,1
all x : Day | all y : Influencer | some z : posts.y | z.date = x
-- div,1
all d:Day,i:Influencer | some p:Photo | d in p and p in i.posts
-- div,1
all d : Day | all i : Influencer | some p : Photo | p.date in i.posts
-- div,1
all x,y,z : univ | x in Day implies y->x in date and z->y in posts and z in Influencer
-- div,2
all d:Day, i:Influencer | some p:Photo | p in i.posts and i in d.date
-- div,1
all d:Day, i:Influencer | some p:Photo | p in i.posts and i in p.date
-- div,1
all i: Influencer, d: Day | some p : Photo | p in i.posts and p in p.date
-- div,1
all d: Day, i: Influencer | some p : Photo | (d in p.date) && (i in p.posts)
-- div,1
all d:Day, i:Influencer | some p:Photo | p in i.posts and d in i.date
-- div,1
all i:Influencer, d:Day | one p:Photo | p->d in date and i->p in posts
-- div,1
all d : Day | all i : Influencer | one p : Photo |
some i.posts.date & d
-- div,1
all i:Influencer,d:Day | some p:Photo | i->p in posts and i->d in date
-- div,1
all d : Day | all i : Influencer | (some p : Photo | i->p in posts and p in d)
-- div,2
all d : Day | all i : Influencer | one p : Photo |
p in i.posts and p.date in d
-- div,1
all x : Day | all y : Influencer | some z : Photo | z.date = x and z in posts.y
-- div,2
all x : Influencer | all d : Day | some p : Photo | date.p = d  and x->p in posts
-- div,1
all d : Day | all i : Influencer | some p : Photo | i in posts.p and d in date.p
-- div,1
all i : Influencer | all d : Day | some p : Photo | d in date.p and i in posts.p
-- div,3
all i:Influencer | some p:Photo | all d:Day | p->d in date and i->p in posts
-- div,1
all i : Influencer | some p : Photo | all d : Day | i->p in posts and p->d in date
-- div,2
all i : Influencer | some  p : i.posts | all x : p.date | all d : Day | x  = d
-- div,1
all i:Influencer | some p:Photo | i->p in posts and all d:Day | p->d in date
-- div,1
all d:Day, u:User| some p:Photo| u in Influencer and u->p in posts and p->d in date
-- div,1
all d:Day, u:User| some p:Photo| u in Influencer implies u->p in posts and p->d in date
-- div,1
all inf : Influencer | all day : Day | one ph : Photo | ph in inf.posts and day in  ph.date
-- div,1
all i : Influencer | some i.posts
all d : Day | all i : Influencer | d in i.posts.date
-- div,1
all d: Day | all u: User | some p: Photo | u in Influencer and p in u.posts and p.date = d
-- div,1
all d: Day | all u: User | some p: Photo | u in Influencer and p in u.posts and d in p.date
-- div,1
all d : Day | all i : Influencer | one p : Photo |
p in i.posts and p.date in d and one p.date
-- div,1
all u:User|all d:Day| one p:Photo| u in Influencer implies (u->p in posts and p->d in date)
-- div,1
all x : univ | x in Day implies some y : Photo | y->x in date and all z : Influencer | z->y in posts
-- div,1
all u:User|all d:Day| some p:Photo| u in Influencer implies (u->p in posts and p->d in date)
-- div,1
all i : Influencer | Day in i.posts.date
all d: Day | all i: Influencer | i.posts.date in d
-- div,1
all influencer : univ | influencer in Influencer implies all day : univ | some photo : univ | photo->day in date and influencer->photo in posts
-- div,1
