all s: Student , s2: Student - s | some c: Course | c in s.projects
-- div,1
all s: Student , s2: Student - s | some c: Course | c in s.projects & s2.projects
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades)  <= 1    )
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.s1)  <= 1    )
-- div,2
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.last)  <= 1    )
-- div,2
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.first)  <= 1    )
-- div,1
all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => c.grades.s1 = s2 in c.grades.s2
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades&s1->Grade)  <= 1    )
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.last.last)  <= 1    )
-- div,1
all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => c.grades.s1 = s2 in c.grades[s2]
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.last.first)  <= 1    )
-- div,1
all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => c.grades[s1] = s2 in c.grades[s2]
-- div,1
all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => s1 -> c.grades s1 = s2 -> c.grades
-- div,1
all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects and c->x->g in grades implies c->y->g <= 1
-- div,1
all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => c.grades -> s1 = s2 in c.grades.s2
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades&s1->Grade).last  <= 1    )
-- div,1
all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => s1 ->g in c.grades = s2-g in c.grades
-- div,1
all c: Course, p: Project, s1: Student, s2: Student, g: Grade | p in s1.projects && p in s2.projects => s1 -> c.grades s1 = s2 in c.grades.s2
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades&s1->Grade).first  <= 1    )
-- div,1
all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects and c->x->g in grades implies #y->x->g in grades <= 1
-- div,2
all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects and c->x->g in grades implies #c->y->g <= 1 in grades
-- div,1
all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects and c->x->g in grades implies #y->x->g <= 1 in grades
-- div,1
all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects and c->x->g in grades implies #c->y->g in grades <= 1
-- div,2
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( (Course:>projects.p).grades.s1 - (Course:>projects.p).grades.s1 <= 1    )
-- div,2
all x: Student | all col : Student - x | all p: x.projects & col.projects | all c: Course | p in c.projects implies 
  (all g1,g2 : Grade | x->g1  and col-> g2 )
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies ( ((Course:>projects.p).grades.s1) - ((Course:>projects.p).grades.s1) <= 1    )
-- div,1
all c: Course, p1,p2: Student, g1,g2: Grade | p1->g1 in c.grades and p2->g2 in c.grades and p1 in c.projects.Student and p2 in c.projects.Student and g1 < g2 + 1 and g1 > g2 - 1
-- div,1
all c: Course, p: Project, s1: Student, s2: Student| p in s1.projects && p in s2.projects => 
   	( c.grades[s1] - s2->c.grades ) <= 1 
    or ( s1 -> c.grades - s1 -> c.grades) <= 1
-- div,1
all c: Course, p: Project, s1: Student, s2: Student| p in s1.projects && p in s2.projects => 
   	( c.grades[s1] - c.grades[s2] ) <= 1 
    or ( s1 -> c.grades - s1 -> c.grades) <= 1
-- div,1
all disj s1, s2 : Student |
  		all g1 : s1.(Course.grades) |
  			all g2 : s2.(Course.grades) |
  				some (s1.projects & s2.projects) implies (some prev[g1].g2 or some prev[g2].g1)
-- div,2
all c: Course, p: Project, s1: Student, s2: Student| p in s1.projects && p in s2.projects => 
   	(s1 -> c.grades - s2->c.grades ) <= 1 
    or ( s1 -> c.grades - s1 -> c.grades) <= 1
-- div,2
all disj s1, s2 : Student |
  		all g1 : s1.(Course.grades) |
  			all g2 : s2.(Course.grades) |
  				some (s1.projects & s2.projects) implies (some (g1.prev).g2 or some (g2.prev).g1)
-- div,2
all c: Course, p: Project, s1, s2: Student | s1.enrolled = s2.enrolled and s1.projects = s2.projects and p in s1.projects => (s1.grades[c] -s2.grades[c]) <= 1 || (s1.grades[c] -s2.grades[c]) >=1
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, g : c.grades, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in g ) or ( s1 in g ))
-- div,3
all s1,s2: Student | all p: Project | all c: Course | all g1,g2: Grade |
  	s1->p in projects and s2->p in projects and c->p in projects and c->s1->g1 in grades and c->s2->g2 in grades =>
  	g2-g1 <=1
-- div,1
all s1,s2: Student | all p: Project | all c: Course | all g1,g2: Grade |
  	s1->p in projects and s2->p in projects and c->p in projects and c->s1->g1 in grades and c->s2->g2 in grades =>
  	g2 & g1 <=1
-- div,1
all s1 : Student | all s2 : Student - s1 | all c : Course | (one c.projects & s1.projects & s2.projects) implies (all g1 : Grade | all g2 : Grade | s1->g1 in c.grades and s2->g2 in c.grades implies g2-g1<=1)
-- div,1
all s1, s2 : Student | all p:Project, c:Course | (s1!=s2 and p in s1.projects and p in s2.projects) implies (all g1,g2:Grade | g1 in s1.c.grades and g2 in s2.c.grades implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all x: Student | all col : Student - x | all p: x.projects & col.projects | all c: Course | p in c.projects implies (all g1,g2 : Grade | (x->g1 in c.grades and col-> g2 in c.grades) implies g1-g2 < 2 and g1-g2>-2)
-- div,1
all x: Student | all col : Student - x | all p: x.projects & col.projects | all c: Course | p in c.projects implies 
  (all g1,g2 : Grade | (x->g1 in c.grades and col-> g2 in c.grades) implies g1-g2 < 2 and g1-g2>-2)
-- div,1
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  c.grades.prev[e1] ) or ( s1 in c.grades.prev[e2] )   )
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((s1 in g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
-- div,2
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((  s1 in g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((s1 in   g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((s1 in g ) implies ( s2 in   g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades   | ((s1 in g ) implies ( s2 in g.prev or s2 in g.next)) and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
-- div,1
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((s1 in g ) implies ( s2 in g.prev or s2 in g.next))   and ((s2 in g ) implies ( s1 in g.prev or s1 in g.next) )
-- div,1
all s1:Student, s2:Student, c:Course, p:Project| (s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies ( all g1,g2:Grade | c->s1->g1 in grades and g2 in s2.c.grades implies (g1=prev[g2] or g2 = prev[g1] or g1=g2) )
-- div,2
all disj s1,s2:Student ,p:Project, c: Course:>projects.p, e1: s1->Grade&c.grades, e2: s2->Grade&c.grades | ( p in s1.projects and p in s2.projects) implies ( (s2 in  c.grades.prev[e1].first ) or ( s1 in c.grades.prev[e2].first )   )
-- div,1
all disj s1,s2 : Student, p : Project,c: Course, g1,g2 : Grade | ((p in s1.projects && p in s2.projects) && g1 in s1.(c.grades) && g2 in s2.(c.grades) && gte[g1,g2] implies g1 - g2 <= 1) or 
														((p in s1.projects && p in s2.projects) && g1 in s1.(c.grades) && g2 in s2.(c.grades) && lt[g1,g2] implies g2 - g1 <= 1)
-- div,2
all disj s1,s2 : Student, p : Project,c: Course, g1,g2 : Grade | ((p in s1.projects && p in s2.projects) && g1 in s1.(c.grades) && g2 in s2.(c.grades) && gte[g1,g2] implies #g1 - #g2 <= 1) or 
														((p in s1.projects && p in s2.projects) && g1 in s1.(c.grades) && g2 in s2.(c.grades) && lt[g1,g2] implies g2 - g1 <= 1)
-- div,1
all disj s1,s2 : Student, p : Project, c : Course | ((p in s1.projects && p in s2.projects) && (p in 																c.projects) && gte[s1.(c.grades),s2.(c.grades)] implies s1.(c.grades) - s2.(c.grades) <= 1) or 
														((p in s1.projects && p in s2.projects) && (p in c.project) && lt[s1.(c.grades),s2.(c.grades)] implies s2.(c.grads) - s1.(c.grades))
-- div,2
all disj s1,s2:Student ,p:Project| ( p in s1.projects and p in s2.projects) implies all g: (Course:>projects.p).grades | ((#s1->Grade&g>0 ) implies ( #s2->Grade&g.prev>0 or #s2->Grade&g.next>0)) and ((#s2->Grade&g>0 ) implies ( #s1->Grade&g.prev>0 or #s1->Grade&g.next>0))
-- div,1
