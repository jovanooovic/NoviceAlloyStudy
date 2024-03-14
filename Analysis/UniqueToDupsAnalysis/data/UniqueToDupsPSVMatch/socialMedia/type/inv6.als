all d:Day | posts.date.d
-- div,7
Influencer.posts.date.Day
-- div,1
all i : Influencer | i.posts
-- div,6
all i: Influencer | posts.Day
-- div,1
all d: Day | Influencer.posts
-- div,1
all d : Day | Influencer.posts
-- div,1
all i: Influencer | i.posts.Day
-- div,1
all i:Influencer | i.posts.date
-- div,3
all i: Influencer | i.posts.date
-- div,2
all d : Day | Influencer.posts.d
-- div,1
all i: Influencer | Day & i.posts
-- div,1
all x : Influencer | x.posts.date
-- div,9
all i: Influencer | i.posts & Day
-- div,1
all d : Day | Influencer.posts.date
-- div,1
all u:Influencer, d:Day | u.posts.d
-- div,1
all d : Day | one Influencer.posts.d
-- div,1
all d : Day | Influencer.posts.date.d
-- div,2
all d: Day, i: Influencer | i.posts.d
-- div,1
all i : Influencer | Day in posts.date
-- div,1
all i: Influencer | i.posts implies Day
-- div,1
all d : Day | Influencer.posts.date + d
-- div,1
all d: Day | d implies Influencer.posts
-- div,1
all i: Influencer | Day implies i.posts
-- div,2
all i: Influencer | i.posts.date in date
-- div,1
all i: Influencer | i.posts.date one Day
-- div,1
posts in ((User->Influencer) -> one Day)
-- div,1
all d: Day, i:Influencer| some i.posts.d
-- div,1
all i: Influencer | Photo implies i.posts
-- div,1
all i: Influencer | i.posts.date some Day
-- div,2
all i : Influencer | Day in i->posts.date
-- div,1
all d : Day | one Influencer.posts.date.d
-- div,1
all d : Day | Influencer.posts in Photo.d
-- div,1
all d : Day | Influencer.posts in d.Photo
-- div,1
all d : Day | some Influencer.posts.date.d
-- div,1
all x : Influencer | all d : Day | x.posts
-- div,1
all i : Influencer | i in posts.date = Day
-- div,2
all i: Influencer | some i.posts.Photo.day
-- div,2
posts.date <: Influencer = Influencer->Day
-- div,1
all x : Day | all y : Influencer | y.posts
-- div,2
all x : Day | all y : Influencer | posts.y
-- div,1
all i: Influencer | one i.posts implies Day
-- div,1
all d: Day | one d implies Influencer.posts
-- div,1
all d : Day | some (Influencer.posts).date.d
-- div,1
(posts.date) <: Influencer = Influencer->Day
-- div,1
all i : Influencer, d : Day | some i.posts.d
-- div,4
all d: Day,i:Influencer| some i.posts.date.d
-- div,1
all i: Influencer | Day implies some i.posts
-- div,1
all x : Influencer | all d : Day | Day.posts
-- div,1
all d : Day | one Influencer.posts & d.Photo
-- div,1
all i: Influencer | Day implies i.posts.date
-- div,1
all i: Influencer | i.posts.date implies Day
-- div,2
all d : Day, i : Influencer | some i.posts.d
-- div,1
all d : Day | one Influencer.posts & Photo.d
-- div,1
all d: Day | Influencer.posts.date implies d
-- div,1
all i: Influencer | i.posts implies some Day
-- div,1
all d: Day | d implies some Influencer.posts
-- div,1
all d : Day | one d in Influencer.posts.date
-- div,1
all d:Day, i:Influencer | d in i->posts->date
-- div,1
all i: Influencer | i.posts.date & posts.date
-- div,1
all i:Influencer, d:Day | some i.posts.date.d
-- div,1
all d: Day, i:Influencer| some i.posts.date.d
-- div,2
all d : Day | some (Influencer.posts).date = d
-- div,1
all d : Day | some ((Influencer.posts).date).d
-- div,1
all x : Influencer | all d : Day | x.posts & d
-- div,3
all d : Day, i : Influencer | one d in i.posts
-- div,1
all i: Influencer | Photo.date implies i.posts
-- div,1
all i : Influencer | some (date.Day).(i.posts)
-- div,1
all i: Influencer | i.posts.date in Day + iden
-- div,1
all i: Influencer | Photo implies i.posts.date
-- div,1
all i: Influencer | i.posts.date in posts.date
-- div,1
all x : Influencer | all d : Day | x.posts && d
-- div,1
all d : Day | some d in (Influencer.posts).date
-- div,1
all d: Day, i:Influencer| some i.posts.date = d
-- div,1
all i : Influencer | some (date.Day).~(i.posts)
-- div,1
all d: Day | all i : Influencer | some i.posts.d
-- div,3
all i : Influencer | all d : Day | one i.posts.d
-- div,1
all i: Influencer | i.posts.date in (Day + iden)
-- div,1
all i: Influencer | i.posts.date in (Day & iden)
-- div,2
all d: Day , i: Influencer | d implies i.posts.d
-- div,2
all d:Day, i : Influencer| some i.posts.date = d
-- div,1
all d : Day | some ((Influencer.posts).date = d)
-- div,1
all i : Influencer, d : date | d in i.posts.date
-- div,1
all x : Influencer | all d : Day | x->posts in d
-- div,1
all i : Influencer | some ((date.Day).(i.posts))
-- div,1
all d : Day | one Influencer.posts & Photo.date.d
-- div,1
all i:Influencer, d:Day | some p:i.posts | p.date
-- div,1
all i: Influencer, d: Day | some d = i.posts.date
-- div,1
all i : Influencer, d : Day | some i.posts.date.d
-- div,2
all i : Influencer, d : Day | some i.posts in day
-- div,1
all d: Day, i: Influencer | some i.posts.date = d
-- div,1
all i: Influencer | i.posts.date implies some Day
-- div,1
all i : Influencer, d : Day | some i.posts in date
-- div,2
all inf: Influencer | all day: Day | inf.posts day
-- div,2
all i : Influencer, d : Day | Day in i.posts->date
-- div,1
all i : Influencer, d : Day | date in i.posts.date
-- div,1
all i: Influencer, d: Day | some d in i.posts.date
-- div,1
all d : Day | all i : Influencer | one d in i.posts
-- div,1
all i : Influencer, d : Day , p : Photo| some i.p.d
-- div,1
all i : Influencer | all d : Day | d in i.posts.Day
-- div,1
all x : Influencer, y : Day | some x.posts.date = y
-- div,2
all i : Influencer, d : Day | some i.posts.date = d
-- div,1
all x : Influencer | all d : Day | x.posts & d.date
-- div,1
all d : Day, i : Influencer | one d in i.posts.date
-- div,1
all i : Influencer, d : Day | some d in i.posts.date
-- div,1
all i : Influencer, d : Day | some i.posts in date.d
-- div,1
all i: Influencer, d: Day, p: Photo | p in i.posts.d
-- div,1
all d : Day, i : Influencer | some i.posts.date in d
-- div,1
all x : Influencer | all d : Day | d implies posts.x
-- div,1
all i: Influencer | i.posts.date implies one i.posts
-- div,1
all x : Influencer | all y : Day | some x.posts in y
-- div,1
all x : Influencer | all d : Day | d implies x.posts
-- div,1
all i : Influencer, d : i.posts.date | some i.posts.d
-- div,1
no i: Influencer | i.posts.date.~i.posts.date in iden
-- div,1
all i : Influencer, d : Day  | some i.posts.date in d
-- div,1
all i:Influencer, d:Day | some p:Photo | p.d in i.posts
-- div,1
all d : Day | all i : Influencer | one date.i.posts = d
-- div,2
all i:Influencer | some p:Photo | i.posts.date & p.date
-- div,1
all d: Day , i: Influencer | d implies i.posts.d in date
-- div,1
all i:Influencer, d:Day | some p:Photo | p->d in i.posts
-- div,1
all i : Influencer | all d : Day | some i.posts.date = d
-- div,1
all d : Day | all i : Influencer | some d in u.posts.date
-- div,3
all i : Influencer | all d : Day | some d.date in i.posts
-- div,1
all d1 : Influencer.posts.date | all d2 : Day | (d1 - d2)
-- div,1
all i:Influencer, d:Day | all p:i.posts | some p.date = d
-- div,1
all d : Day , i : Influencer | some p : Photo | p.Day = d
-- div,1
all i : Influencer | all d : Day | some d->i.posts in Day
-- div,1
all i : Influencer | all d : Day | some date.d in i.posts
-- div,1
all d : Day | all i : Influencer | some d in i.posts.date
-- div,1
all x : Influencer | all y : Day | some x.posts.date in y
-- div,1
all inf : Influencer , date : Day | date in inf.posts.date
-- div,1
all a : Influencer | all d : Day | a->d implies a in posts
-- div,1
all i:Influencer, d:Day | all p:i.posts | some p.date in d
-- div,1
all i : Influencer, p : Photo, d : date | d in i.posts.date
-- div,1
all x : Influencer | all d,c : Day | d != c implies posts.x
-- div,1
all i : Influencer | all d : Day | some d->(i.posts) in Day
-- div,2
all x : Influencer | all y : Day | (some x.posts.date) in y
-- div,1
all i : Influencer, d : Day , p : Photo| some p in i.posts.d
-- div,1
all i: Influencer, d: Day, p: Photo | p in i.posts => p.date
-- div,1
all d : Day | all i : Influencer | all p : i.posts | #p >= d
-- div,1
all i : Influencer, d : i.posts.date | some d in i.posts.date
-- div,1
all x : Influencer | all d : Day | some p : Photo | p->x in d
-- div,2
all x : Influencer | all d : Day | some p : Photo | x->p in d
-- div,1
all i:Influencer, d:Day | some p:Photo | i->p and p->d in date
-- div,1
all u : User, d : Day | u in Influencer implies some u.posts.d
-- div,1
all i : Influencer, d : Day , p : Photo| some d in i.posts.date
-- div,1
all d : Day, u : User | u in Influencer implies one d in i.posts
-- div,1
all i : Influencer | all d : Day | some p : i.posts | p.d in Day
-- div,1
all i : Influencer | all d : Day | some p : i.posts | p->d in Day
-- div,4
all i : Influencer | all d : Day | some p : i.posts | d->p in Day
-- div,1
all u:User| u in Influencer implies all p:Photo| u->p in posts.Day
-- div,1
all d : Day | all i : Influencer | all p : i.posts | #i.posts >= d
-- div,1
all d : Day | all i : Influencer | some p : Photo | p in i.posts.d
-- div,1
all u : User | u in Influencer implies (some d : Day | u.posts.d )
-- div,1
all x : Influencer | all d : Day | some p : Photo | x.posts p in d
-- div,1
all u : User, d : Day | u in Influencer implies some d in posts.Day
-- div,1
all u:Influencer, d:Day | some p:Photo | u in posts.p & p in date.d
-- div,1
all i: Influencer, d: Day | some p: Photo | i -> p and p->d in date
-- div,1
all i:Influencer, d:Day | some p : Photo | i->p in posts -> d in date
-- div,1
all u : User | u in Influencer implies (all d : Day | some u.posts.d)
-- div,2
all i: Influencer, d: Day | some p: Photo | i -> p and p -> d in date
-- div,1
all d : Day, u : User | u in Influencer implies some d in u.posts.date
-- div,1
all i : Influencer, d : Day, p : Photo | i->p in posts and p->date = d
-- div,1
all i:Influencer, d:Day | some p : Photo | i -> p in posts -> d in date
-- div,1
all i : Influencer, d : Day, p : Photo | i->p in follows and p->date = d
-- div,1
all i : Influencer | all d : Day | some p : Photo | d and (p in posts.i)
-- div,1
all u:User| u in Influencer implies all p:Photo| u->p in posts and p.date
-- div,1
all u:User| u in Influencer implies all p:Photo| p.date and u->p in posts
-- div,1
all i:Influencer | all p:Photo | all d:Day | p->d in date and i-p in posts
-- div,1
all i:Influencer | all p:Photo | all d:Day | i->p in posts and p-d in date
-- div,1
all i:Influencer | all p:Photo | one d:Day | i->p in posts and p-d in date
-- div,1
all i:Influencer | some p:Photo | all d:Day | p->d in date and i-p in posts
-- div,2
all x : Influencer | all d : Day | some p : Photo | x.posts in p and p.date
-- div,1
all d:Day, p:Photo, u:User| u in Influencer implies u->p in posts and p.date
-- div,1
all d:Day, p:Photo, u:User| u in Influencer implies u->p in posts and date.d
-- div,1
all d : Day , i : Influencer | some p : Photo | i -> p in posts and p.Day = d
-- div,1
all i : Influencer , d : Day | some p : Photo | i->p in posts and p->d in Day
-- div,1
all i:Influencer , p:Photo | i -> p in posts implies date Photo some-> one Day
-- div,1
all u:User| u in Influencer implies all p:Photo| u->p in posts and u->p in Day
-- div,1
all i : Influencer | all d : Day | (some p : Photo | i->p in posts and d in date)
-- div,1
all i : Influencer | all d : Day | all p : Photo | d in date.p implies some p in posts.i
-- div,1
all i : Influencer | some i.posts
all d : Day | all i : Influencer | some i.posts.date = d
-- div,1
all day: Day | all influencer: Influencer | all photo: Photo | photo->day in influencer.posts
-- div,1
all d : Day | all i : Influencer | some p: i.posts | p.date = d

all i : Influencer | i.posts
-- div,1
all i : Influencer |all p: Photo | all d : Day | d implies ((p in posts.i) and (d in date.p))
-- div,1
all i : Influencer | all d : Day | some p : Photo | d implies ((p in posts.i) and (d in date.p))
-- div,1
all i:Influencer | all p1,p2:Photo | p1 != p2 and i->p1 in i.posts and i->p2 in i.posts implies p1.date != p2.date
-- div,1
all i:Influencer, d1, d2: Day, p1,p2: Photo | p1->i posts and p2->i in posts and p1->d1 in date and p2->d2 in date => d2 = d1+1
-- div,1
all i:Influencer, d1, d2: Day, p1,p2: Photo | i->p1 posts and i->p2 in posts and p1->d1 in date and p2->d2 in date => d2 = d1+1
-- div,1
