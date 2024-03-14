-- equiv pair start,2
date in Day -> Photo
-- div,2
-- equiv pair end
-- equiv pair start,1
posts in Day -> set Photo
-- div,1
-- equiv pair end
-- equiv pair start,32
Day = Influencer.posts.date
-- div,1
Influencer.posts.date = Day
-- div,6
Day in Influencer.posts.date
-- div,6
all d:Day| d in Influencer.posts.date
-- div,13
all d : Day | (Influencer.posts).date = Day
-- div,1
all d : Day | one Influencer.posts.date & d
-- div,1
all d : Day | some d & Influencer.posts.date
-- div,2
all d : Day | some Influencer.posts.date & d
-- div,1
all d: Day | some i: Influencer | d in i.posts.date
-- div,1
-- equiv pair end
-- equiv pair start,2
all d: Day | some d.~date.~posts
-- div,2
-- equiv pair end
-- equiv pair start,28
all d : Day | Influencer.posts in d
-- div,1
all i: Influencer | i.posts in Day
-- div,3
all x : Influencer | x.posts in Day
-- div,1
all d: Day | Influencer.posts in Day
-- div,2
all i : Influencer | i.posts in posts.Day
-- div,1
all x : Influencer | x.posts in Photo.date
-- div,1
all p : Influencer.posts.date | p - Day = Day
-- div,1
all i : Influencer| all d : Day | i.posts in d
-- div,1
all u: User, p: Photo | u in Influencer implies u.posts in Day
-- div,1
all i : Influencer | all p : i.posts.date | p - Day = p
-- div,1
all i : Influencer | all x,y : i.posts | x.date = y.date + 1
-- div,1
all i: Influencer, d: Day, p: Photo | p in i.posts implies p in d
-- div,1
all i: Influencer, d: Day, p: Photo | p in i.posts implies p in Day
-- div,1
all d:Day, i:Influencer, p:Photo | p in i.posts implies d in i.posts
-- div,1
all i : Influencer | all x,y : i.posts | x.date = y.date.next
-- div,1
all i : Influencer | all x,y : i.posts | x.date.next = y.date
-- div,1
all i : Influencer | all p : i.posts.date | all d : Day | p - d = p
-- div,1
all i : Influencer | all p : i.posts.date | all d : Day | d - p = d
-- div,1
all i : Influencer | all d : Day | all p : Photo | (i in posts.p) implies (d in date.p)
-- div,1
all i : Influencer | all p : i.posts | all x : p.date | all d : Day | x = p
-- div,1
all p1: Photo, p2: Photo, i: Influencer | p1 in i.posts && p2 in i.posts => p1.date != p2.date
-- div,2
all disj p1: Photo, p2: Photo | all i: Influencer | p1 in i.posts && p2 in i.posts => p1.date != p2.date
-- div,2
all p1:Photo, p2:Photo, d1:Day, d2:Day, i:Influencer | p1 in i.posts and p2 in i.posts and d1 in p1.date and d2 in p2.date implies d1!=d2
-- div,1
-- equiv pair end
-- equiv pair start,3
all d : Day | some Influencer.posts
-- div,1
all d : Day | some ((Influencer.posts).date)
-- div,1
all d: Day | one d implies some Influencer.posts
-- div,1
-- equiv pair end
-- equiv pair start,8
all i: Influencer | some i.posts.date
-- div,1
all i: Influencer | some i.posts.date & Day
-- div,3
all i: Influencer | some i.posts.date & Photo.date
-- div,1
all i : Influencer | some p : i.posts | p.date in Day
-- div,1
all i : univ | i in Influencer implies some x : univ | i->x in posts
-- div,1
all influencer : univ | influencer in Influencer implies some photo : univ | influencer->photo in posts and some day : univ | photo->day in date
-- div,1
-- equiv pair end
-- equiv pair start,2
all d: Day | Influencer.posts.date = d
-- div,2
-- equiv pair end
-- equiv pair start,60
all x : Influencer.posts | x.date = Day
-- div,1
all p : Influencer.posts |  Day in p.date
-- div,1
all d: Day | Influencer.posts.date in d
-- div,4
all d : Day | no Influencer.posts.date - d
-- div,1
all photo : Influencer.posts | Day in photo.date
-- div,1
all i : Influencer, p : i.posts | p.date = Day
-- div,1
all i: Influencer, d: Day| i.posts.date in d
-- div,4
all d: Day, i: Influencer | i.posts.date in d
-- div,4
all d: Day, i: Influencer | i.posts in d.~date
-- div,1
all d : Day | all i : Influencer | i.posts.date in d
-- div,1
all d: Day | (all i: Influencer | i.posts in d.~date)
-- div,1
all d1 : Influencer.posts.date | all d2 : Day | d2 = d1
-- div,1
all d1 : Influencer.posts.date | all d2 : Day | d2 in d1
-- div,1
all i : Influencer | all p : i.posts.date | Day & p = Day
-- div,1
all d1 : Influencer.posts.date | all d2 : Day | no(d1 - d2)
-- div,4
all d1 : Influencer.posts.date | all d2 : Day | no(d2 - d1)
-- div,1
all i: Influencer, p: Photo| i->p in posts implies Day in p.date
-- div,1
all d : Day | all p : Photo | p in Influencer.posts implies d in p.date
-- div,1
all d : Day | Influencer.posts.date not in d implies Influencer.posts.date in d
-- div,1
all d:Day, i:Influencer, p:Photo| p in i.posts implies d in p.date
-- div,1
all i : Influencer, d : Day, p : Photo | p in i.posts implies d in p.date
-- div,1
all i : Influencer | all p : i.posts.date | all d : Day | d = p
-- div,1
all d1 : Influencer.posts.date | all d2 : Day | (d2 in d1) and (d1 in d2)
-- div,1
all i: Influencer, p: Photo, d: Day| i->p in posts implies d in p.date
-- div,1
all i : Influencer | all p : i.posts.date | all d : Day | p in d
-- div,1
all i : Influencer | all p : i.posts.date | all d : Day | d in p
-- div,1
all i : Influencer | all p : i.posts.date | all d : Day | d & p = p
-- div,1
all i : Influencer | all p : i.posts.date | all d : Day | p & d = d
-- div,1
all i : Influencer | all p : Photo | i->p in posts implies p.date&Day = Day
-- div,1
all i : Influencer | all p : i.posts.date | all d : Day | d & p = d
-- div,3
all i: Influencer, p: Photo | i -> p in posts implies all d: Day | p->d in date
-- div,4
all day : Day | all i : Influencer | all photo : i.posts | day in photo.date
-- div,1
all d : Day | all i : Influencer |all p : Photo|  p in i.posts implies d in p.date
-- div,1
all i:Influencer | all p:Photo | i->p in posts implies( all d:Day| p->d in date)
-- div,3
all i : Influencer| all d: Day| all p: Photo| i->p in posts implies p->d in date
-- div,1
all i : Influencer | all p : i.posts | all x : p.date | all d : Day | x  = d
-- div,1
all i : Influencer | all p : i.posts | all x : p.date | all d : Day | x & d = d
-- div,1
all d : Day | all i : Influencer | all p : i.posts | all dp : p.date | no dp - d
-- div,1
all x, y : univ | x in Influencer and y in Photo and x->y in posts implies all z : Day | y->z in date
-- div,1
all day: Day | all influencer: Influencer | all photo: Photo | photo in influencer.posts implies photo.date = day
-- div,1
all day: Day | all influencer: Influencer | all photo: Photo | photo in influencer.posts implies day in photo.date
-- div,1
-- equiv pair end
-- equiv pair start,11
all i : Influencer | i.posts = date.Day
-- div,1
all i:Influencer, d:Day | date.d in i.posts
-- div,1
all p: Photo, y: Day | y in p.date implies all z: Influencer | p in z.posts
-- div,1
all i:Influencer, p:Photo| one d:Day| i in posts.p and p in date.d
-- div,1
all i:Influencer, p:Photo| one d:Day | p->d in date and i->p in posts
-- div,1
all d: Day, p: Photo | p -> d in date implies all i: Influencer | i->p in posts
-- div,1
all i : Influencer | all d : Day | all p : Photo | d in p.date implies i in posts.p
-- div,1
all d:Day, p:Photo, u:User| u in Influencer implies u->p in posts and p.date in Day
-- div,1
all day: Day | all photo: Photo | all i: Influencer | photo->day in date implies photo in i.posts
-- div,1
all day: Day | all influencer: Influencer | all photo: Photo | photo.date = day implies photo in influencer.posts
-- div,1
all day: Day | all influencer: Influencer | all photo: Photo | day in photo.date implies photo in influencer.posts
-- div,1
-- equiv pair end
-- equiv pair start,3
all inf : Influencer |lone inf.posts.date
-- div,1
all i: Influencer | lone i.posts.date & Day
-- div,1
no disj d1, d2 : Day, i: Influencer | d1 in i.posts.date && d2 in i.posts.date
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: Influencer | one i.posts.date & Day
-- div,1
-- equiv pair end
-- equiv pair start,1
no i: Influencer | #i.posts.date = #i.posts
-- div,1
-- equiv pair end
-- equiv pair start,3
all i : Influencer | Day not in i.posts.date
-- div,2
all i : Influencer | some Day - i.posts.date
-- div,1
-- equiv pair end
-- equiv pair start,1
all d: Day, i: Influencer | one i.posts.date
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: Influencer | one Day implies one i.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all d: Day | some i: Influencer | i.posts.date = d
-- div,1
-- equiv pair end
-- equiv pair start,1
all d: Day | d in Influencer.posts.date or no posts
-- div,1
-- equiv pair end
-- equiv pair start,3
all i : Influencer, d : Day, p : Photo | d in date.p
-- div,1
all i:Influencer | all p:Photo | p in i.posts.date
-- div,1
all i : Influencer | all d : Day | all p : Photo | some date.posts.i
-- div,1
-- equiv pair end
-- equiv pair start,2
all i : Influencer, d : Day, p : Photo | d in p.date
-- div,1
all i:Influencer, p:Photo | one d:Day | p in i.posts.date implies d in p
-- div,1
-- equiv pair end
-- equiv pair start,1
all d: Day | (some i: Influencer | i.posts in d.~date)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1,p2 : Influencer.posts | p1.date != p2.date
-- div,1
-- equiv pair end
-- equiv pair start,1
all i:Influencer | all p:Photo | i.posts.date in p.date
-- div,1
-- equiv pair end
-- equiv pair start,3
some d1 : Influencer.posts.date | all d2 : Day | d2 = d1
-- div,1
some d1 : Influencer.posts.date | all d2 : Day | d2 in d1
-- div,1
some d1 : Influencer.posts.date | all d2 : Day | no(d1 - d2)
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: Influencer | one i.posts.date implies one i.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all i:Influencer | some p:Photo | i.posts.date in p.date
-- div,1
-- equiv pair end
-- equiv pair start,1
all d : Day | all p : Photo | d in Influencer.posts.date
-- div,1
-- equiv pair end
-- equiv pair start,1
all i: Influencer | some i.posts.date implies one i.posts
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Photo | Influencer->p in posts implies p.date&Day = Day
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : Influencer | all d : Day | some p : Photo | x.posts in p
-- div,1
all x : Influencer | all d : Day | some p : Photo | x.posts in p and one p.date
-- div,1
-- equiv pair end
-- equiv pair start,1
all i : Influencer | all x,y : i.posts - Ad | x.date = y.date + 1
-- div,1
-- equiv pair end
-- equiv pair start,1
all i:Influencer, p:Photo | one d:Day | p in i.posts implies d in p
-- div,1
-- equiv pair end
-- equiv pair start,23
all i : Influencer, d : Day, p : Photo | p in i.posts and d in p.date
-- div,1
all i : Influencer, d : Day, p : Photo | d in p.date && i in posts.p
-- div,1
all i : Influencer, d : Day, p : Photo | i->p in posts and p.date = d
-- div,1
all i:Influencer, p:Photo, d:Day | i in posts.p and p in date.d
-- div,1
all d:Day, i:Influencer, p:Photo| i->p in posts and p->d in date
-- div,1
all i:Influencer, p:Photo, d:Day | p->d in date and i->p in posts
-- div,1
all i:Influencer, p:Photo | all d:Day | p->d in date and i->p in posts
-- div,1
all d : Day, i : Influencer | all p : Photo | i->p in posts and p->d in date
-- div,1
all d: Day, i: Influencer| all p: Photo | p->d in date and i->p in posts
-- div,1
all i:Influencer, p:Photo | all d:Day | i->p in posts and p->d in date
-- div,1
all d:Day, p:Photo, u:User| u in Influencer implies u->p in posts and p->d in date
-- div,1
all d : Day | all p : Photo | all i : Influencer | d in p.date and p in i.posts
-- div,8
all i:Influencer | all p:Photo | i->p in posts and all d:Day | p->d in date
-- div,1
all i : Influencer | all d : Day | all p : Photo | i->p in posts and p->d in date
-- div,1
all x : User | all p : Photo | all d : Day | x in Influencer implies
(p in x.posts and d in p.date)
-- div,1
all u:User|all d:Day| all p:Photo| u in Influencer implies (u->p in posts and p->d in date)
-- div,1
-- equiv pair end
-- equiv pair start,4
all i: Influencer | some p: Photo | i->p in posts implies Day in p.date
-- div,1
all i:Influencer | some p:Photo | i->p in posts => all d:Day | p->d in date
-- div,3
-- equiv pair end
-- equiv pair start,2
all i:Influencer , d:Day | some p : Photo | i->p in posts implies d->p in date
-- div,1
all i : Influencer | all d : Day | some p : Photo | (i in posts.p) implies (d in date.p)
-- div,1
-- equiv pair end
-- equiv pair start,2
all i: Influencer | one p: Photo | i -> p in posts implies all d: Day | p->d in date
-- div,2
-- equiv pair end
-- equiv pair start,1
all i:User-Influencer | all p:Photo | i->p in posts implies (all d:Day | p ->d in date )
-- div,1
-- equiv pair end
