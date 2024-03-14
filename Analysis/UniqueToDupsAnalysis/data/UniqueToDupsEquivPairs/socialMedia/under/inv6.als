-- equiv pair start,46
Influencer.posts.date in Day
-- div,3
date.(Influencer.posts) in Day
-- div,1
all photo : Photo  |lone photo.date
-- div,1
all i:Influencer | i.posts.date in Day
-- div,15
all p : Influencer.posts | p.date in Day
-- div,2
all d: Day | Influencer.posts.date in Day
-- div,1
all i:Influencer | no i.posts.date-Day
-- div,3
all i: Influencer | i.posts.date - Day = none
-- div,2
all u: User | u in Influencer implies u.posts.date in Day
-- div,1
all x:User | x in Influencer implies x.posts.date in Day
-- div,1
all p: Photo | p in Influencer.posts => #p.date = #p
-- div,1
all i : Influencer | all p : i.posts.date | p in Day
-- div,1
all i : Influencer | all d : Day | lone i.posts.date & d
-- div,1
all u: User, p: Photo | u in Influencer implies u.posts.date in Day
-- div,1
all i : Influencer | all p : Photo | i->p in posts implies no p.date-Day
-- div,1
all u: User, p: Photo | u in Influencer and p in u.posts implies p.date in Day
-- div,1
all i : Influencer | all x,y : i.posts | x.date != y.date.next
-- div,1
all d : Day | all i : Influencer | all p : i.posts | #(i.posts) >= #d
-- div,1
all i : Influencer | all d : Day | all p : Photo | (p in posts.i) implies (d in date.p)
-- div,2
all i : Influencer | all d : Day | all p : Photo | d in date.p implies p in posts.i
-- div,1
all i : Influencer | all d : Day | all p : Photo | d in date.p implies i in posts.p
-- div,3
all i:Influencer | all p:Photo | i->p in posts implies (one d:Day | p->d in date)
-- div,1
all i:User-Influencer | all p:Photo | i->p in posts implies (one d:Day | p ->d in date )
-- div,1
-- equiv pair end
-- equiv pair start,20
all d : Day, i : Influencer | #i.posts > 0
-- div,1
all i : Influencer, d : Day | some i.posts.date
-- div,1
all d: Day, i:Influencer| some i.posts.date
-- div,1
all d:Day, i : Influencer| #(i.posts.date) > 0
-- div,1
all i : Influencer, d : Day | #i.posts.date >= 1
-- div,2
all i : Influencer, d : Day | i.posts.date != none
-- div,1
all i : Influencer | all d : Day | some d->(i.posts)
-- div,1
all i : Influencer, d: Day | some i.posts.date & Day
-- div,2
all i : Influencer, d : Day | some p : Photo | p in i.posts
-- div,1
all d : Day , i : Influencer | some p : Photo | i -> p in posts
-- div,1
all u : User | u in Influencer implies (all d : Day | some u.posts )
-- div,1
all d : Day, i : Influencer | some p : i.posts | p.date in Day
-- div,1
all inf : Influencer, d : Day | some p : Photo | inf -> p in posts
-- div,2
all x : Influencer | all d : Day | some p : Photo | p in x.posts
-- div,1
all i : Influencer | all d : Day | (some p : Photo | i->p in posts)
-- div,1
all x : Influencer | all d : Day | some p : Photo | p in x.posts and one p.date
-- div,1
all d : Day | all i : Influencer | some p : Photo | p.date in Day and p in i.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: Influencer | one Day implies some i.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
some Influencer implies Influencer.posts.date = Day
-- div,1
-- equiv pair end
-- equiv pair start,1
some Influencer.posts => Day in Influencer.posts.date
-- div,1
-- equiv pair end
-- equiv pair start,3
all i : Influencer, p : Photo, d : Day | d in i.posts.date
-- div,1
all d : Day | all i : Influencer | all p : Photo | d in i.posts.date
-- div,1
all d:Day | all u:User | all p:Photo | u in Influencer implies some p:Photo | p in u.posts and d in p.date
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : Day | all y : Influencer | some z : Photo | z.date = x
-- div,1
all x : Influencer | all d : Day | some p : Photo | p -> d in date
-- div,1
-- equiv pair end
-- equiv pair start,1
all d:Day, i:Influencer, p:Photo | p in i.posts implies d in i.posts.date
-- div,1
-- equiv pair end
-- equiv pair start,4
all i : Influencer, d : Day | some p : Photo | p in i.posts implies d in p.date
-- div,2
all i:Influencer , d:Day | some p : Photo | i->p in posts implies p->d in date
-- div,2
-- equiv pair end
-- equiv pair start,1
all i:Influencer , p:Photo | i -> p in posts implies (date in Photo some-> one Day)
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer | all d : Day | some p : Photo | (p in posts.i) implies (d in date.p)
-- div,1
-- equiv pair end
