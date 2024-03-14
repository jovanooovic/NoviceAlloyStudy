-- equiv pair start,6
all c : Course | all p : teaches.c | no p.teaches & ((teaches.c - p).enrolled)
-- div,3
all disj p1, p2: Person | some (p2.teaches & p1.teaches) => (#(p1.enrolled & p2.teaches)=0)
-- div,2
all p1,p2 : Person | all c1,c2 : Course | 
  (p1!=p2 and c1 in p1.teaches and c1 in p2.teaches) implies  
  ((c2 in p1.enrolled implies c2 not in p2.teaches) and (c2 in p2.enrolled implies c2 not in p1.teaches))
-- div,1
-- equiv pair end
