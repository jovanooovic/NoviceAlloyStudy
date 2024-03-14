all p : Professor | no p.teaches.Professor
-- div,1
all c: Course, p: Professor |p not in c.~grades
-- div,1
all c: Course, p: Professor |p not in ~c.grades
-- div,1
no (Professor not in enrolled.(Professor.teaches))
-- div,1
all p:Person -Student | all a:p.teaches| no p in a
-- div,1
enrolled.teaches in Professor set -> none Professor
-- div,1
all p1,p2 : Professor | no p2 in p1.(teaches.~enrolled)
-- div,1
teaches - (Professor <: enrolled).~teaches.teaches
-- div,1
all p : Professor| enrolled.(p.teaches)&teaches.(p.teaches)
-- div,2
all p : Professor| none enrolled.(p.teaches)&teaches.(p.teaches)
-- div,1
all p: Professor |
    all q: Professor |
      no p in q.teaches
-- div,1
all c: Course, p: Professor | c in p.teaches => p not in ~c.grades
-- div,1
all c: Course, p: Professor | c in p.teaches => p not in c.~grades
-- div,1
all x, y: Professor , z : Course | x != y  implies y not in x.teaches.z
-- div,1
all p:Professor | all s:enrolled.(p.teaches) | no p.enrolled.(s.teaches)
-- div,1
all c : Course | all p : teaches.c | p.teaches & (teaches.c - p).enrolled
-- div,1
all c: Course, p: Professor | c in p.teaches => c.grades[p] not Professor
-- div,1
all c: Course, p: Professor | c in p.teaches => Professor not in c.grades
-- div,1
all c: Course, p: Professor | c in p.teaches => no p.grades[p] in ~c.grades
-- div,1
all p:Professor | all s:enrolled.(p.teaches) | p.enrolled.(s.teaches) = none
-- div,1
all p : Professor | all c : teaches.(p.teaches) | not c.enrolled & p.teaches
-- div,1
all c : Course | all p : teaches.c | p.teaches & ((teaches.c - p).enrolled  )
-- div,1
all p : Professor | (all col : Professor - p | not (col.enrolled & p.teaches))
-- div,1
all disj p,pp: Person | lone (p.teaches & pp.teaches) => p.enrolled <=> p.teaches
-- div,1
all disj p,pp: Person | lone (p.teaches & pp.teaches) => p.enrolled <=> pp.teaches
-- div,2
all p1,p2 : Professor | p1.teaches & p2.teaches implies p1.enrolled not in p2.teaches
-- div,1
all p:Professor, pp:Professor-p | some(p.teaches && pp.teaches) => c not in pp.enrolled
-- div,1
all p : Professor | all c : Course | c in p.teaches => no (p.teaches & p.enrolled) in c
-- div,3
all p : Professor | all c : Course | (c in p.teaches => no (p.teaches & p.enrolled) in c)
-- div,1
all disj p1, p2: Professor | (p2.teaches & p1.teaches)=> p1.enrolled & p2.enrolled = none
-- div,1
all x: Person, z : Person -x ,y : Course | x -> y teaches   implies z -> y not in enrolled
-- div,1
all p:Professor, pp:Professor-p| some (p.teaches && pp.teaches) => no (pp.enrolled & p.teaches)
-- div,2
all p : Professor, c : Professor - p | (p.teaches & c.teaches) implies no (p.teaches & c.enrolled)
-- div,2
all p:Professor | all pp:Professor-p| some (p.teaches && pp.teaches) => no (pp.enrolled & p.teaches)
-- div,1
all p : Professor | all c : Professor - p | (p.teaches & c.teaches) implies no (p.teaches & c.enrolled)
-- div,1
all p : Professor | some c : Professor - p | p.teaches = c.teaches implies no (p.teaches and c.enrolled)
-- div,1
all p : Professor | some c : Professor - p | (p.teaches = c.teaches) implies no (p.teaches and c.enrolled)
-- div,1
all c: Course, p: Professor | c in p.teaches => no q: Professor | q in c.grades && q in p.teaches && q != p
-- div,1
all x: Person, z : Person -x ,y : Course | x -> y teaches  and z in Professor implies z -> y not in enrolled
-- div,1
all p : Professor | some c : Professor - p | (p.teaches and c.teaches) implies no (p.teaches and c.enrolled)
-- div,1
all p : Professor | all col : Professor - p | (col.teaches & p.teaches) implies no (col.enrolled & p.teaches)
-- div,2
all p,q : Professor | all pt : p.teaches | (all qt : q.teaches | pt not in q.enrolled & qt not in p.enrolled)
-- div,1
all c: Course, p,q: Professor | c in p.teaches => no q: Professor | q in c.grades && q in p.teaches && q != p
-- div,2
all p : Professor | all col : Professor - p |  (col.teaches & p.teaches) implies no (col.enrolled & p.teaches)
-- div,1
all disj p,p1:Professor | p.teaches&p1.teaches>0 implies (#p.enrolled&p1.teaches=0 and  #p1.enrolled&p.teaches=0)
-- div,1
all p : Professor | some c : Professor - p | some (p.teaches and c.teaches) implies no (p.teaches and c.enrolled)
-- div,1
all p1:Professor | all p2:Professor - p1 | some (p1.teaches and p2.teaches) implies no (p1.teaches & p2.enrolled)
-- div,1
all p1:Professor | all p2:Professor - p1 | some (p1.teaches and p2.teaches) implies no (p1.teaches and p2.enrolled)
-- div,1
all p1:Professor | all p2:Professor - p1 | some (p1.teaches & p2.teaches) implies no (p1.teaches and no p2.enrolled)
-- div,1
all p1:Professor | all p2:Professor - p1 | some (p1.teaches and p2.teaches) implies no (p1.teaches and no p2.enrolled)
-- div,1
all p1:Professor | all p2:Professor - p1 | some (p1.teaches and p2.teaches) implies no (p1.enrolled and no p2.enrolled)
-- div,1
all p1 : Professor |
  		all p2 : Person |
  			(some p2.enrolled & p1.enrolled) implies (no p1.teaches in p2.enrolled)
-- div,1
all professor : Professor | all colleague : Professor | professor != colleague implies no professor->colleague in teaches
-- div,1
all disj p,pp: Person | all c: Course | p in c.~teaches && pp in c.~teaches => p not in c.~enrolled & pp not in c.~enrolled
-- div,1
all p:Professor, pp:Professor-p, c:Course | some (p.teaches && pp.teaches) => (c not in p.enrolled && c not in pp.enrolled)
-- div,1
all p:Professor, pp:Professor-p, c:Course | some (c in p.teaches && c in pp.teaches) => (c not in p.enrolled && c not in pp.enrolled)
-- div,1
all x, y : Professor | some z: Course | x in teaches.z and y in teaches.z implies no (x.teaches & enrolled.y and y.teaches & enrolled.x)
-- div,1
all x, y : Professor | some z: Course | x in teaches.z and y in teaches.z implies no (x.teaches & enrolled.y and y.teaches and enrolled.x)
-- div,1
all p1:Professor, p2:Professor, c:Course | c in p1.teaches and p2.teaches implies (all c2:Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
