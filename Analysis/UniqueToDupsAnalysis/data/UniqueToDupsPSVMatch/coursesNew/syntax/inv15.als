all p1, p2 : Person | some (p1.projects & p2.projects) implies
-- div,1
all s: Student , s2: Student - s | some c: Course | lone p: s.projects | p in s2.projects =>
-- div,1
all x:Student, y:Student-x, p:Project| x->p in projects and y->p in projects c->x->g in grades implies #y->x->g in grades <= 1
-- div,1
all c: Course, p: Project, s1: Student, s2: Student | p in s1.projects && p in s2.projects => s1 in  c.grades[s1] = c.grades[s2])
-- div,1
all c: Course, p: Project, s1: Student, s2: Student| p in s1.projects && p in s2.projects => disj s1 -> c.grades + s2 -> c.grades) >1
-- div,1
all c: Course, p: Project, s1: Student, s2: Student| p in s1.projects && p in s2.projects => disj (s1 -> c.grades + s2 -> c.grades) >1
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades&s1->Grades)  <= 1    )
-- div,1
all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects c->x->g in grades implies #y->x->g in grades <= 1
-- div,1
all disj s1,s2 : Student | all c : Course | some p: Project | p in s1.projects and p in s2.projects => p1.((projects.p).grades) = p2.((projects.p).grades)
-- div,1
all s1, s2: Student | all c: Course, p: c.projects, g: Grade | (p in s1.projects && p in s2.projects) implies (s1->g = plus[s2->g,1] or s2->g = plus[s1->,1])
-- div,1
all s1, s2: Student | all c: Course, p: c.projects, g: Grade | (p in s1.projects && p in s2.projects) implies (s1->g = s2->g.plus[1] or s2->g = s1->g.plus[1])
-- div,1
all c: Course, p: Project, s1, s2: Student | s1.enrolled = s2.enrolled and s1.projects = s2.projects and p in s1.projects =>abs(s1.grades[c] - s2.grades[c]) <=
-- div,1
all c: Course, p: Project, s1, s2: Student | s1.enrolled = s2.enrolled and s1.projects = s2.projects and p in s1.projects =>abs(s1.grades[c] -s2.grades[c]) <= 1
-- div,1
all s1, s2: Student | all c: Course, p: c.projects, g: Grade | (p in s1.projects && p in s2.projects) implies (s1->g = plus[s2->g, 1] or s2->g = plus[s1->g, 1])
-- div,1
all s1, s2 : Student | (s1 != s2) => (all c : s1.enrolled & s2.enrolled | (all p : c.projects & s1.projects & s2.projects | abs(s1.grades.c - s2.grades.c) <= 1))
-- div,4
all s1, s2 : Student | all p:Project, c:Course | (s1!=s2 and p in s1.projects and p in s2.projects) implies (all g1,g2:Grade | g2=prev[g1] or g1=prev[g2] or g1=g2
-- div,1
all s1, s2: Student | all c: Course, p: c.projects, g: Grade | (p in s1.projects && p in s2.projects) implies (s1->g = (s2->g).plus[1] or s2->g = (s1->g).plus[1])
-- div,1
all s1, s2: Student | all c: Course, p: c.projects, g: Grade | (p in s1.projects && p in s2.projects) implies (s1->g = (s2->.g).plus[1] or s2->g = (s1->g).plus[1])
-- div,1
all s1, s2 : Student, p : Project, g1,g2 : Grade, c : Course | (s1 in projects.p and s2 in projects.p and c->s1->g1 in grades and c->s2->g2 in grades) implies (mod(g1-g2) <=1)
-- div,1
all c: Course, p1, p2: Project | p1 in c.projects && p2 in c.projects && p1 != p2 => all s1: Student, s2: Student | s1 in p1.projects && s2 in p2.projects => c.grades[s1] = c.grades[s2])
-- div,1
all disj s1,s2 : Student | all c : Course | all p: c.projects | p in s1.projects and p in s2.projects => (s1.(c.grades)) = minus[(s2.(c.grades)),1] or (s1.(c.grades)) = (s2.(c.grades)) -1
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in e1.prev ) or ( s1 e2.prev ))
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  e1.prev ) or ( s1 e2.prev ))
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  e1.prev ) or ( s1 e2.prev )   )
-- div,1
all c: Course, p1: Project, p2: Project | p1 in c.projects && p2 in c.projects && p1 != p2 => all s1: Student, s2: Student | s1 in p1.projects && s2 in p2.projects => abs(c.grades[s1]-c.grades[s2]) <= 1
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades[e1].prev ) or ( s1 e2.prev ))
-- div,1
all c: Course, p: Project, s1: Student, s2: Student| p in s1.projects && p in s2.projects => 
  if (c.grades[s1] > c.grades[s2]) then (c.grades[s1] - c.grades[s2]) <= 1 
  else (c.grades[s2] - c.grades[s1]) <= 1
-- div,1
all s1, s2: Student| all p: Project| (s1!=s2 and p in s1.projects and p in s2.projects) implies (all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) 
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all s1, s2 : Student | all p:Project, c:Course | (s1!=s2 and p in s1.projects and p in s2.projects) implies (all g1,g2:Grade | g1 in s1.c.grades and g2 in s2.c.grades implies (g1=prev[g2] or g2=prev[g1] or g1=g2)
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades[e1].prev ) or ( s1 c.grades[e2].prev ))
-- div,1
all c: Course, p: Project, s1: Student, s2: Student| p in s1.projects && p in s2.projects => 
    iff (c.grades[s1] > c.grades[s2]) then (c.grades[s1] - c.grades[s2]) <= 1 
    else (c.grades[s2] - c.grades[s1]) <= 1
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p| ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades.prevs [s1->Grade&c.grades].first ) or ( s1 in c.grades.prevs[s2->Grade&c.grades].first )   )
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p| ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades.prevs[s1->Grade&c.grades].first ) or  ( s1 in c.grades.prevs[s2->Grade&c.grades].first )   )
-- div,2
all disj s1,s2:Student ,p:Project, c: Course:>projects.p| ( p in s1.projects and p in s2.projects) implies ( (s2 in   c.grades.prevs[s1->Grade&c.grades].first ) or ( s1 in c.grades.prevs[s2->Grade&c.grades].first )   )
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p| ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades.prevs[s1->Grade&c.grades].first ) or   ( s1 in c.grades.prevs[s2->Grade&c.grades].first )   )
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in c.grades.prevs[e1].first ) or ( s1 c.grades[e2].prev ))
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) all g: (Course:>projects.p).grades | ((s1 in g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
-- div,1
all c: Course, p: Project, s1: Student, s2: Student| p in s1.projects && p in s2.projects => 
    iff (s1 -> c.grades >  s2 -> c.grades) then (s1 -> c.grades - s2->c.grades ) <= 1 
    else (s1 -> c.grades - s1 -> c.grades) <= 1
-- div,2
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  c.grades.prev[e1].first ) or ( s1 in c.grades.prevs[e2].first )   )
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  c.grades.prevs[e1].first ) or ( s1 in c.grades.prevs[e2].first )   )
-- div,1
all s1:Student, s2:Student, c:Course, p:Project| (s1!=s2 and proj in s1.projects and proj in s2.projects and p in c.projects) implies ( all g1,g2:Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2 = prev[g1] or g1=g2) )
-- div,1
all disj s1,s2 : Student, p : Project, c : Course | ((p in s1.projects && p in s2.projects && p in 																c.project) && s1.(c.grades) gte s2.(c.grades) implies s1.(c.grads) - s2.(c.grades) <= 1)) or 
														((p in s1.projects && p in s2.projects && p in c.project) && s1.(c.grades) lt s2.(c.grades) implies s2.(c.grads) - s1.(c.grades))
-- div,1
all disj s1,s2 : Student, p : Project, c : Course | ((p in s1.projects && p in s2.projects) && (p in 																c.project) && gte[s1.(c.grades),s2.(c.grades)] implies s1.(c.grads) - s2.(c.grades) <= 1) or 
														((p in s1.projects && p in s2.projects) && (p in c.project) && lt[s1.(c.grades),s2.(c.grades)] implies s2.(c.grads) - s1.(c.grades))
-- div,1
all disj s1,s2 : Student, p : Project, c : Course | ((p in s1.projects && p in s2.projects) && (p in 																c.projects) && gte[s1.(c.grades),s2.(c.grades)] implies s1.(c.grads) - s2.(c.grades) <= 1) or 
														((p in s1.projects && p in s2.projects) && (p in c.project) && lt[s1.(c.grades),s2.(c.grades)] implies s2.(c.grads) - s1.(c.grades))
-- div,1
all disj s1,s2 : Student, p : Project, c : Course | ((p in s1.projects && p in s2.projects) && (p in 																c.project) && (s1.(c.grades) gte s2.(c.grades)) implies s1.(c.grads) - s2.(c.grades) <= 1) or 
														((p in s1.projects && p in s2.projects) && (p in c.project) && (s1.(c.grades) lt s2.(c.grades)) implies s2.(c.grads) - s1.(c.grades))
-- div,1
