-- equiv pair start,1
all c:Course| c.enrolled not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,3
all p1,p2 : Person | no p1.enrolled & p2.teaches
-- div,1
all p1,p2 : Person | all c : Course | c in p1.teaches implies (c not in p2.enrolled)
-- div,1
all s1,s2 : Person | all c1 : Course | c1 in s1.teaches implies c1 not in s2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all disj p1, p2: Person | some (p2.teaches & p1.teaches) => ((p1.enrolled & p2.teaches)=0)
-- div,1
all disj p1, p2: Person | some (p2.teaches & p1.teaches) => ((p1.enrolled & p2.enrolled)=0)
-- div,1
all disj p1, p2: Person | some (p2.teaches & p1.teaches) => ((p1.enrolled & p2.enrolled)=0) && p1.enrolled != p2.teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1 : Person | all p2 : Person | all c : Course | (p1!=p2 and c in p1.teaches) implies c not in p2.enrolled
-- div,1
all p1,p2 : Person | all c : Course |  
    ((p1!=p2 and c in p1.teaches) implies c not in p2.enrolled) and
  	((p1!=p2 and c in p2.teaches) implies c not in p1.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2 : Person | all c1,c2 : Course | (c1 in p1.teaches and c1 in p2.teaches) and (c2 in p1.enrolled) implies (c2 not in p2.teaches)
-- div,1
all x,y : Person | all z1,z2 : Course | z1 in x.teaches and z1 in y.teaches implies (z2 in x.enrolled implies z2 not in y.teaches) and (z2 in y.enrolled implies z2 not in x.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all x,y : Person | all z1,z2 : Course | z1 in x.teaches and z1 in y.teaches implies (z2 in x.enrolled and z2 not in y.teaches) and (z2 in y.enrolled and z2 not in x.teaches)
-- div,1
all x,y : Person | all z1,z2 : Course | z1 in x.teaches and z1 in y.teaches implies (z2 in x.enrolled and z2 not in y.teaches) or (z2 in y.enrolled and z2 not in x.teaches)
-- div,1
-- equiv pair end
