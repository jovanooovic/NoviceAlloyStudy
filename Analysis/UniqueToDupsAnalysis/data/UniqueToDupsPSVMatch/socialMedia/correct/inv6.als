Influencer -> Day in posts.date
-- div,1
(Influencer <: posts).date = Influencer->Day
-- div,1
Influencer <: (posts.date) = Influencer->Day
-- div,4
all i:Influencer | i.posts.date = Day
-- div,42
all x:Influencer| x.posts.date = Day
-- div,7
all i : Influencer | Day = i.posts.date
-- div,13
all d : Day | Influencer in (posts.date.d)
-- div,5
all i:Influencer | Day in i.posts.date
-- div,36
all x:Influencer | no Day - x.posts.date
-- div,1
all i : Influencer | no Day - i.posts.date
-- div,2
all i:Influencer | #i.posts.date = #Day
-- div,1
all i: Influencer | i.posts.date&Day = Day
-- div,2
all i : Influencer | Day & i.posts.date = Day
-- div,2
all i: Influencer | Day - i.posts.date = none
-- div,1
all d:Day, i:Influencer| d in i.posts.date
-- div,35
all d:Day,i:Influencer | i in posts.(date.d)
-- div,2
all x:Influencer, d:Day | d in x.posts.date
-- div,2
all i : Influencer, p : Day | p in  i.posts.date
-- div,1
all u:Influencer, d:Day | u in posts.date.d
-- div,1
all x:Day,y:Influencer| x in y.posts.date
-- div,2
all i:Influencer, d:Day| d in i.posts.date
-- div,81
all i:Influencer| #(i.posts.date & Day) = #Day
-- div,1
all i : Influencer, d : Day | Day in i.posts.date
-- div,1
all inf : Influencer, d:Day| d in inf.posts.date
-- div,2
all i : Influencer, d:Day | some i.posts.date & d
-- div,5
all d: Day, i: Influencer | i in d.~date.~posts
-- div,1
all i : Influencer | (i.posts&Photo).date&Day = Day
-- div,1
all i:Influencer | i.posts <: date in Photo some -> Day
-- div,1
all d : Day, i : Influencer | some (i.posts.date & d)
-- div,1
all d : Day, i : Influencer | some date.d & i.posts
-- div,1
all i : Influencer, d : Day | some i.posts & date.d
-- div,5
all x: Day | all p: Influencer | x in p.posts.date
-- div,1
all d: Day | all i: Influencer | d in i.posts.date
-- div,27
all d : Day |all x : Influencer | d in x.posts.date
-- div,1
all i:Influencer | all d:Day | d in i.posts.date
-- div,22
all i:Influencer| all z:Day | z in i.posts.date
-- div,8
all u: Influencer| all d: Day| d in u.posts.date
-- div,1
all x : Influencer | all d : Day | d in x.posts.date
-- div,2
all x : Influencer | all y : Day | y in x.posts.date
-- div,3
all d: Day| all u: Influencer | d in (u.posts).date
-- div,2
all a:Influencer | all d:Day | d in a.posts.date
-- div,2
all x : Day | all y : Influencer | x in y.posts.date
-- div,4
all day: Day | all i: Influencer | day in i.posts.date
-- div,4
all d : Day | all inf : Influencer | d in inf.posts.date
-- div,1
all d: Day, i:Influencer| #(i.posts.date & Day) = #Day
-- div,1
all d:Day | all i:Influencer | some (i.posts.date & d)
-- div,3
all i : Influencer | all d : Day | some i.posts.date & d
-- div,1
all x : Influencer | all y : Day | some x.posts.date&y
-- div,1
all i : Influencer | all d : Day | some date.d & i.posts
-- div,2
all x:User, d:Day | x in Influencer implies d in x.posts.date
-- div,1
all x: User, y: Day | x in Influencer implies y in x.posts.date
-- div,2
all i:Influencer, d:Day | some p:i.posts | p.date = d
-- div,5
all d:Day, i:Influencer | some p: i.posts | p.date=d
-- div,3
all i:Influencer, d:Day | some p:i.posts | d in p.date
-- div,2
all d : Day, i : Influencer | some p : i.posts | p.date in d
-- div,1
all d : Day, f : Influencer | some p : f.posts| d in p.date
-- div,1
all d : Day, i : Influencer | some p : date.d | p in i.posts
-- div,1
all d: Day, i: Influencer | some p: i.posts | p in d.~date
-- div,3
all u:Influencer, d:Day | some p:Photo | u in posts.date.d
-- div,1
all u : User | u in Influencer implies (all d : Day | d in u.posts.date)
-- div,3
all d: Day | all u: User | u in Influencer implies (d in u.posts.date)
-- div,4
all x: User | x in Influencer => all d: Day | d in x.posts.date
-- div,6
all d : Day | all i : Influencer | some p: i.posts | p.date = d
-- div,3
all i : Influencer | all d : Day | some p: i.posts | d in p.date
-- div,1
all d : Day | all i : Influencer | some d2: i.posts.date | d2=d
-- div,8
all d:Day , i:Influencer |some p:Photo | p.date = d and p in i.posts
-- div,1
all i:Influencer, d:Day | some p:Photo | p in i.posts and d in p.date
-- div,10
all d:Day, x:Influencer|some p:Photo| p in x.posts and d in p.date
-- div,1
all d : Day, i : Influencer | some p : Photo | p in date.d && i in posts.p
-- div,1
all d : Day, i : Influencer | some p : Photo | i in posts.p && p in date.d
-- div,2
all i : Influencer, d : Day | some p : Photo | (i in posts.p) && (d in p.date)
-- div,5
all i : Influencer, d : Day | some p : Photo | d in p.date && i in posts.p
-- div,1
all a : Influencer, b : Day | some c : Photo | c in a.posts and b in c.date
-- div,1
all d:Day, i:Influencer | some p:Photo | p in i.posts and d in p.date
-- div,2
all i : Influencer, d : Day | some p : Photo | d in p.date and p in i.posts
-- div,1
all u:Influencer, d:Day | some p:Photo | u in posts.p and p in date.d
-- div,4
all d:Day,i:Influencer | some p:Photo | d in p.date and p in i.posts
-- div,4
all i: Influencer, d: Day | some p: Photo | i->p in posts and d in p.date
-- div,1
all d:Day, x:Influencer|some y:Photo| x-> y in posts and y-> d in date
-- div,5
all i:Influencer, d:Day | some p:Photo | p->d in date and i->p in posts
-- div,7
all d:Day, i:Influencer| some p:Photo| i->p in posts and p->d in date
-- div,10
all d:Day, u:Influencer| some p:Photo| u->p in posts and p->d in date
-- div,3
all x : Influencer, d : Day | some p : Photo | x->p in posts and p->d in date
-- div,1
all i:Influencer, d:Day| some p:Photo| i->p in posts and p->d in date
-- div,30
all d: Day, i: Influencer| some p: Photo | p->d in date and i->p in posts
-- div,4
all inf : Influencer, d : Day | (some p : Photo | (inf -> p in posts and p->d in date))
-- div,1
all i : Influencer | all d : Day | some z : Photo | z in i.posts and z.date=d
-- div,1
all d : Day | all i : Influencer | some p : Photo | p in i.posts and p.date = d
-- div,2
all i : Influencer | all d : Day | some p : Photo | p in i.posts and p.date = d
-- div,1
not some d : Day, i : Influencer | not some p : Photo | i->p in posts and p->d in date
-- div,1
all i : Influencer | all d : Day | some p : Photo | d = p.date and p in i.posts
-- div,1
all d:Day | all i:Influencer |some p:Photo | p in i.posts and d in p.date
-- div,2
all i : Influencer | all d : Day | some z : Photo | z in i.posts and z.date in d
-- div,1
all i : Influencer | all d : Day | some p : Photo | i in posts.p and d in p.date
-- div,1
all i : Influencer | all d : Day | some p : Photo | d in p.date and i in posts.p
-- div,7
all d:Day | all i:Influencer | some p:Photo | p in i.posts and p in date.d
-- div,1
all d : Day | all i : Influencer | some p : Photo | p in i.posts and p.date in d
-- div,1
all i: Influencer | all d: Day | some p: Photo | p in i.posts and d in p.date
-- div,1
all d : Day | all i : Influencer | some p : Photo | d in p.date and p in i.posts
-- div,1
all d : Day | all i : Influencer | some p : Photo | i in posts.p and d in p.date
-- div,1
all i: Influencer | all d: Day | some p: Photo | i->p in posts and p->d in date
-- div,6
all x : Influencer | all d : Day | some p : Photo | p->d in date and x->p in posts
-- div,5
all d: Day | all i: Influencer | some p: Photo | i->p in posts and p->d in date
-- div,4
all infl:Influencer, day:Day | some pst:Photo | infl->pst in posts and pst->day in date
-- div,2
all inf : Influencer | all day : Day | some ph : Photo | ph in inf.posts and ph.date = day
-- div,1
all inf : Influencer | all day : Day | some ph : Photo | ph in inf.posts and day in  ph.date
-- div,2
all day : Day | all influencer : Influencer | some photo : influencer.posts | day in photo.date
-- div,2
all i, d : univ | i in Influencer and d in Day implies some p : univ | i->p in posts and p->d in date
-- div,2
all x, y : univ | x in Influencer and y in Day implies some z : Photo | x->z in posts and z->y in date
-- div,2
all d:Day | all u:User | u in Influencer implies some p:Photo | p in u.posts and d in p.date
-- div,1
all u:User | u in Influencer implies all d:Day | some p:Photo | u in posts.p and p in date.d
-- div,1
all u: User, i: Influencer, d: Day | u=i implies some p: Photo | u->p in posts and p->d in date
-- div,1
all i : Influencer | Day in i.posts.date
all d: Day | all i: Influencer | d in i.posts.date
-- div,1
all influencer, day : univ | influencer in Influencer and day in Day implies some photo : univ | photo->day in date and influencer->photo in posts
-- div,6
