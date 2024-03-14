all disj g1,g2 : Grade, c : Course | one (c.projects)
-- div,1
all c:Course,p:c.projects | #(projects.p).(c.grades) < 3
-- div,1
all c : Course, disj s1, s2 : Student | c in (s1.enrolled & s2.enrolled)
-- div,1
all disj s, s1 : Student | all p : s.projects & s1.projects | one Course
-- div,1
all disj s, s1 : Student, p : s.projects & s1.projects | one s.((projects.p <: Course).grades)
-- div,1
all c : Course, disj s1, s2 : Student |
  some (s1 . projects & s2 . projects & c . projects) =>
  (s1 . (c . grades)) = (s2 . (c . grades))
-- div,1
all s,s1 : Student , p : (s.projects & s1.projects) | s.((Course :>projects.p).grades) = s1.((Course :>projects.p).grades)
-- div,1
all c : Course, disj s1, s2 : Student |
  some (s1 . projects & s2 . projects & c . projects) =>
  not (s1 . (c . grades)) != (s2 . (c . grades))
-- div,1
all c: Course, p: Project, s1,s2: Student | p in c.projects&s1.projects&s2.projects implies (s2 in c.grades.s1.next or s2 in c.grades.s1.prev)
-- div,2
all c: Course, p: Project, s1,s2: Student | p in c.projects&s1.projects&s2.projects implies s2 in c.grades.s1.next or s1 in c.grades.s2.next
-- div,1
all c: Course, p: Project, s1,s2: Student | p in c.projects&s1.projects&s2.projects implies s2 in c.grades.s1.next or s2 in c.grades.s1.prev
-- div,1
all c: Course, s1: Student, s2: Student - s1 | ((s1.enrolled in c) and (s2.enrolled in c) and lone (s1.projects & s2.projects))
-- div,1
all p : Project , g,g1 : Student.((Course :>projects.p).grades) |  g = g1 or g1=prev[g] or g=prev[g1]
-- div,1
all s,s1 : Student , p : (s.projects & s1.projects) , g :s.((Course :>projects.p).grades) , g1: s1.((Course :>projects.p).grades) | g = g1
-- div,1
all disj p: Project, disj s1,s2: Student, c : Course | p in s1.projects and p in s2.projects and p in c.projects => c.grades[s1] = c.grades[s2]
-- div,4
all disj s1, s2 : Student, p : s1.projects & s2.projects | s1.((Course <: projects).p.grades) -> s2.((Course <: projects).p.grades) in ordering/prev + ~ordering/prev
-- div,1
all disj p: Project, disj s1,s2: Student, c : Course | p in s1.projects and p in s2.projects and p in c.projects => c.grades[s1]-1 = c.grades[s2]
-- div,1
all c: Course, g1, g2: Grade, p: Project, disj s1, s2:Student | s1->p+s2->p in projects && c->s1->g1+c->s2->g2 in grades => g1=g2
-- div,1
all disj c: Course, p: Project, s1,s2: Student | p in c.projects&s1.projects&s2.projects implies (~(c.grades).s2 in c.grades.s1.next or ~(c.grades).s2 in c.grades.s1.prev)
-- div,1
all disj s1, s2 : Student, p : s1.projects & s2.projects | s1.((Course <: projects).p.grades) -> s2.((Course <: projects).p.grades) in ordering/prev + ~ordering/prev + iden
-- div,3
all disj p1,p2 : Project, disj s1,s2: Student, c : Course | p1 in s1.projects and p1 in s2.projects and p1 in c.projects => c.grades[s1] = c.grades[s2]
-- div,1
all disj s : Student | all m1 : s.(Course.grades), m2 : (s.projects.~projects - s).(Course.grades) | m1 in m2 + prev[m2] + next[m2]
-- div,2
all s1, s2: Student | all c : Course | working2gether[s1,s2,c]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled+s2.enrolled and p in s1.projects+s2.projects
-- div,1
all s1, s2: Student | all c : Course | s1!=s2 and c in s1.enrolled+s2.enrolled and working2gether[s1,s2,c]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | p in s1.projects+s2.projects
-- div,1
all c: Course, pj: c.projects, disj s1, s2: pj.~(Student<:projects) |
  		(s1.(c.grades)).prev =  (s2.(c.grades)) or
  		(s2.(c.grades)).prev =  (s1.(c.grades))
-- div,1
all disj s1,s2 : Student, c : Course<:projects.(s1.projects & s2.projects) | 
  	s1.(c.grades) in s2.(c.grades) + prev[s2.(c.grades)] + next[s2.(c.grades)]
-- div,1
all disj s1, s2 : Student | some s1.projects & s2.projects implies all m1 : s1.(Course.grades), m2 : s2.(Course.grades) | m1 in m2 + prev[m2] + next[m2]
-- div,1
all disj s1, s2 : Student, c : Course | some (s1.projects & s2.projects & c.projects) implies
  	s1.(c.grades) in (prev[s2.(c.grades)] + s2.(c.grades) + next[s2.(c.grades)])
-- div,2
all s1, s2: Student | all c : Course | s1!=s2 and c in s1.enrolled+s2.enrolled and working2gether[s1,s2,c]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | c in s1.enrolled+s2.enrolled and p in s1.projects+s2.projects
-- div,1
all disj s1, s2 : Student, c : Course | some s1.projects & s2.projects & c.projects implies 
   (all g1 : s1.(c.grades), g2 : s2.(c.grades) | g1 in prev[g2] + next[g2] + g2)
-- div,2
all s,s1 : Student , p : (s.projects & s1.projects) , g :s.((Course :>projects.p).grades) , g1: s1.((Course :>projects.p).grades) | g = g1 or g1=prev[g] or g=prev[g1]
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(p in s1.projects and p in s2.projects and p in c.projects) implies
  	(some g1,g2 : Grade | g1 in c.grades.s1 and g2 in c.grades.s2)
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(p in s1.projects and p in s2.projects and p in c.projects) implies
  	(some g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades))
-- div,1
all p: Project, disj s1,s2: Student | p in s1.projects&s2.projects implies (~(Course.grades).s2 in ~(Course.grades).s1.next + ~(Course.grades).s1.prev + ~(Course.grades).s1)
-- div,2
all disj s1,s2 : Student, p : Project | s1+s2 in projects.p implies 
  	next[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	prev[s1.((projects.p).grades)] = s2.((projects.p).grades)
-- div,1
all disj s1, s2 : Student, c : Course | some ((s1.projects & s2.projects) & c.projects) implies (all g1 : s1.(c.grades), g2 : s2.(c.grades) |
  	g1=prev[g2] or g2=prev[g1] or g1=g2)
-- div,1
all disj s1, s2 : Student, c : Course | some ((s1.projects & s2.projects) & c.projects) implies (all g1 : s1.(c.grades), g2 : s2.(c.grades) |
  	g1=prev[g2] or g1=next[g2] or g1=g2)
-- div,1
all c: Course, pj: c.projects, disj s1, s2: pj.~(Student<:projects) |
  		(s1.(c.grades)) =  (s2.(c.grades)) or
  		(s1.(c.grades)).prev =  (s2.(c.grades)) or
  		(s2.(c.grades)).prev =  (s1.(c.grades))
-- div,1
all c: Course, g1, g2: Grade, p: Project, disj s1, s2:Student | s1->p+s2->p in projects && c->s1->g1+c->s2->g2 in grades => g1=g2.prev || g1=g2 || g1=g2.next
-- div,1
all disj c: Course, p: Project, s1,s2: Student | p in c.projects&s1.projects&s2.projects implies (~(c.grades).s2 in ~(c.grades).s1.next+~(c.grades).s1.prev+~(c.grades).s1)
-- div,1
all disj c: Course, p: Project, s1,s2: Student | p in c.projects&s1.projects&s2.projects implies (~(c.grades).s2 in ~(c.grades).s1.next or ~(c.grades).s2 in ~(c.grades).s1.prev)
-- div,1
all s1, s2: Student | all c : Course | all g1,g2 : Grade | working2gether[s1,s2,c] and s1->g1 + s2->g2 in c.grades
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled+s2.enrolled and p in s1.projects+s2.projects
-- div,1
all c: Course, p: Project, disj s1,s2: Student | p in c.projects&s1.projects&s2.projects implies (~(c.grades).s2 in ~(c.grades).s1.next+~(c.grades).s1.prev+~(c.grades).s1)
-- div,4
all s1,s2:Student,p:Project,c:Course,g1,g2:Grade | p in s1.projects and p in s2.projects and p in c.projects implies g1 in s1.(c.grades) and g2 in s2.(c.grades) implies g2=prev[g1] or g1=g2
-- div,1
all s1,s2:Student,p:Project,c:Course,g1,g2:Grade | p in s1.projects and p in s2.projects and p in c.projects implies g1 in s1.(c.grades) and g2 in s2.(c.grades) implies g1=prev[g2] or g1=g2
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=g2))
-- div,2
all p : Project | all s1,s2 : Student | all c : Course |
  	(p in s1.projects and p in s2.projects and p in c.projects) implies
  	(some g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) and g1 not in prevs[g2])
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(some g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) and g1=g2-1)
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1 = g2-1))
-- div,1
all s1, s2 : Student, g1, g2 : Grade, p : Project, c : Course |
  		s1 + s2 in projects.p & enrolled.c	
  		&& p in c.projects
  		&& s1->g1 + s2->g2 in c.grades
  		=> g1 = g2 || g1.prev = g2 || g1 = g2.prev
-- div,1
all c: Course, pj: c.projects, disj s1, s2: pj.~(Student<:projects) |
  		no s1.(c.grades) or	
  		(s1.(c.grades)) =  (s2.(c.grades)) or
  		(s1.(c.grades)).prev =  (s2.(c.grades)) or
  		(s2.(c.grades)).prev =  (s1.(c.grades))
-- div,1
all c: Course, g1, g2: Grade, p: Project, disj s1, s2:Student | c->p in projects && s1->p+s2->p in projects && c->s1->g1+c->s2->g2 in grades => g1=g2.prev || g1=g2 || g1=g2.next
-- div,1
all s1, s2: Student, p: Project, c: Course, g1, g2: Grade | s1 != s2 and p in s1.projects and p in s2.projects  and g1 in s1.(c.grades) and g2 in s2.(c.grades) => g1 = prev[g2] or g2 = prev[g1] or g1 = g2
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (lt[g1,g2]))
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (gte[g1,g2]))
-- div,1
all p : Project | all s1, s2 : Student | s1->p in projects and s2->p in projects and s1 != s2 => 
  	( all g1, g2: Grade, c : Course | c->s1->g1 in grades and c->s2->g2 in grades => (g1 = g2 or g1 = g2 - 1 or g2 = g1 - 1) )
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(some g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) and g1 not in prevs[g2])
-- div,2
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1 in prevs[g2]))
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1 not in prevs[g2]))
-- div,1
all s1, s2 : Student, g1, g2 : Grade, p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		&& s1->g1 + s2->g2 in c.grades
  		=> g1 = g2 || g1.prev = g2 || g1 = g2.prev
-- div,1
all s1,s2 : Student | all g1,g2 : Grade | all p : Project | all c : Course | s1!=s2 and p in s1.projects&s2.projects and (s1->g1 + s2->g2) in c.grades implies (g1=prev[g2] or g2=prev[g1] or g1=g2)
-- div,1
all s1,s2 : Student | all g1,g2 : Grade | all p : Project | all c : Course | s1!=s2 and p in s1.projects&s2.projects and (s1->g1 + s2->g2) in c.grades implies g1=prev[g2] or g2=prev[g1] or g1=g2
-- div,1
all disj s1, s2 : Student | some s1.projects & s2.projects implies all p : s1.projects & s2.projects | s1.(projects.p.grades) in s2.(projects.p.grades) + next[s2.(projects.p.grades)] + prev[s2.(projects.p.grades)]
-- div,2
all s1,s2 : Student,p:Project,c:Course,g1,g2 : Grade | p in s1.projects and p in s2.projects and p in c.projects implies
  	g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1] or g1=g2)
-- div,4
all s1,s2:Student,p:Project,c:Course,g1,g2:Grade | p in s1.projects and p in s2.projects and p in c.projects implies g1 in s1.(c.grades) and g2 in s2.(c.grades) implies g2=prev[g1] or g2=prev[g1] or g1=g2
-- div,1
all s1,s2:Student,p:Project,c:Course,g1,g2:Grade | p in s1.projects and p in s2.projects and p in c.projects implies g1 in s1.(c.grades) and g2 in s2.(c.grades) implies g1=prev[g2] or g2=prev[g1] or g1=g2
-- div,3
all s1,s2:Student, p:Project, c:Course, g1,g2:Grade | (s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies (g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]))
-- div,1
all s1,s2:Student, p:Project, c:Course, g1,g2:Grade | (p in s1.projects and p in s2.projects and p in c.projects) implies (g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]) or g1=g2)
-- div,1
all s1, s2 : Student, disj g1, g2 : Grade, p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		&& s1->g1 + s2->g2 in c.grades
  		=> g1 = g2 || g1.prev = g2 || g1 = g2.prev
-- div,1
all disj s1, s2 : Student, g1, g2 : Grade, p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		&& s1->g1 + s2->g2 in c.grades
  		=> g1 = g2 || g1.prev = g2 || g1 = g2.prev
-- div,1
all p : Project | all s1, s2 : Student | s1->p in projects and s2->p in projects and s1 != s2 => 
  	( all g1, g2: Grade, c : Course | c->s1->g1 in grades and c->s2->g2 in grades => (g1 = g2 or g1 = g2 - 1 or g2 = prev[g1]) )
-- div,1
all s1,s2 : Student |  all p : Project | all c : Course | s1!=s2 and p in s1.projects&s2.projects implies s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades)] or s1.(c.grades)=s2.(c.grades)
-- div,2
all disj s1, s2 : Student, disj g1, g2 : Grade, p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		&& s1->g1 + s2->g2 in c.grades
  		=> g1 = g2 || g1.prev = g2 || g1 = g2.prev
-- div,1
all c: Course, pj: c.projects, disj s1,s2: pj.~(Student <: projects) | no s1.(c.grades) or no s2.(c.grades) or s1.(c.grades) = s2.(c.grades) or s1.(c.grades).prev = s2.(c.grades) or s2.(c.grades).prev = s1.(c.grades)
-- div,3
all s1, s2: Student, p: Project, c: Course, g1, g2: Grade | s1 != s2 and p in s1.projects and p in s2.projects and p in c.projects and g1 in s1.(c.grades) and g2 in s2.(c.grades) => g1 = prev[g2] or g1 = prev[g2] or g1 = g2
-- div,1
all s1, s2: Student, p: Project, c: Course, g1, g2: Grade | s1 != s2 and p in s1.projects and p in s2.projects and p in c.projects and g1 in s1.(c.grades) and g2 in s2.(c.grades) => g1 = prev[g2] or g2 = prev[g1] or g1 = g2
-- div,4
all s1,s2 : Student,p:Project,c:Course |
  	(p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) 
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all s1, s2 : Student, p : Project, g1, g2 : Grade, c : Course | s1 != s2 and p in s1.projects and p in s2.projects and p in c.projects and s1->g1 in c.grades and s2->g2 in c.grades implies g1.prev = g2 or g1 = g2 or g1.next = g2
-- div,1
all s1, s2 : Student, p : Project, c : Course, g1, g2 : Grade | s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects and s1->g1 in c.grades and s2->g2 in c.grades implies g1.prev = g2 or g2.prev = g1 or g1 = g2
-- div,1
all disj s1, s2 : Student, g1, g2 : Grade | all p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		&& s1->g1 + s2->g2 in c.grades
  		=> g1 = g2 || g1.prev = g2 || g1 = g2.prev
-- div,1
all disj s1,s2 : Student, p : Project | s1+s2 in projects.p implies 
  	next[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	prev[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	s1.((projects.p).grades) = s2.((projects.p).grades)
-- div,1
all s1, s2: Student, c: Course, p: Project | s1 != s2 and s1&s2 in enrolled.c and s1&s2 in projects.p implies (all g1, g2: Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all s1, s2: Student, c: Course, p: Project | s1 != s2 and (s1+s2) in enrolled.c and (s1+s2) in projects.p implies (all g1, g2: Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all p : Project | all s1, s2 : Student | s1->p in projects and s2->p in projects and s1 != s2 => 
  	( all g1, g2: Grade, c : Course | c->s1->g1 in grades and c->s2->g2 in grades => (g1 = g2 or g1 = g2.next or g2 = g1.next) )
-- div,1
all p : Project | all s1, s2 : Student | s1->p in projects and s2->p in projects and s1 != s2 => 
  	( all g1, g2: Grade, c : Course | c->s1->g1 in grades and c->s2->g2 in grades => (g1 = g2 or g1 = g2.prev or g2 = g1.prev) )
-- div,3
all s1,s2 : Student | all c : Course |
  	working2gether[s1,s2,c] implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) 
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and p in s1.projects&s2.projects&c.projects
-- div,1
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects and s1 in c.grades.Grade and s2 in c.grades.Grade) implies ((s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades)]))
-- div,1
all s1,s2 : Student,p:Project,c:Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) 
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all s1, s2: Student, c: Course, p: Project | s1 != s2 and p in s1.projects and p in s2.projects and p in c.projects implies (all g1, g2: Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all s1,s2:Student, p:Project, c:Course | (p in s1.projects and p in s2.projects and p in c.projects) implies ((s1 in c.grades.Grade and s2 in c.grades.Grade) implies (s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades)]))
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades)
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all disj s1, s2 : Student | all p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		=> s1.(c.grades) = s2.(c.grades)
  			|| s1.(c.grades).prev = s2.(c.grades)
  			|| s1.(c.grades) = s2.(c.grades).prev
-- div,4
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]))
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects&s2.projects&c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) 
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,2
all disj s1,s2 : Student, p : Project | s1 in projects.p and s2 in projects.p implies 
  	next[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	prev[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	s1.((projects.p).grades) = s2.((projects.p).grades)
-- div,2
all s1,s2:Student, p:Project, c:Course | (s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects and s1 in c.grades.Grade and s2 in c.grades.Grade) implies ((s1.(c.grades)=prev[s2.(c.grades)] or s2.(c.grades)=prev[s1.(c.grades)]))
-- div,1
all s1,s2 : Student | all p : Project| all c : Course | p in s1.projects&s2.projects and p in c.projects and
  s1!=s2 implies (all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1]or
  g1=g2))
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects+s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) 
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects&s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) 
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all s1, s2 : Student | all p : Project | all c : Course |s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects implies (all g1, g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies g1 = prev[g2] or g2 = prev[g1] or g1 = g2)
-- div,1
all p : Project | all s1,s2 : Student | all c : Course |s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects implies (all g1, g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1 = prev[g2] or g2 = prev[g1] or g1=g2))
-- div,17
all p : Project | all s1,s2 : Student | all c : Course |s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects implies (all g1, g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1 = prev[g2] or g1 = next[g2] or g1=g2))
-- div,1
all disj s1, s2 : Student | all p : Project, c : Course |
  		p in s1.projects && p in s2.projects
  		&& s1 + s2 in enrolled.c
  		&& p in c.projects
  		=> s1.(c.grades) = s2.(c.grades)
  			|| (s1.(c.grades)).prev = s2.(c.grades)
  			|| s1.(c.grades) = (s2.(c.grades)).prev
-- div,1
all disj s1,s2 : Student, p : Project | s1+s2 in projects.p and s2.((projects.p).grades)+s1.((projects.p).grades) in 		Person.((projects.p).grades) 	
	implies 
  	next[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	prev[s1.((projects.p).grades)] = s2.((projects.p).grades)
-- div,1
all disj s1,s2 : Student, p : Project | s1+s2 in projects.p and s2.((projects.p).grades)+s1.((projects.p).grades) in 		Student.((projects.p).grades) 	
	implies 
  	next[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	prev[s1.((projects.p).grades)] = s2.((projects.p).grades)
-- div,2
all s1, s2: Student | all c : Course | all g1,g2 : Grade | working2gether[s1,s2,c] and s1->g1 + s2->g2 in c.grades implies consecGrades[g1,g2]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled+s2.enrolled and p in s1.projects+s2.projects
}

pred consecGrades[g1,g2:Grade]{
	g1!=g2 and g1 = prev[g2]
-- div,1
all s1, s2: Student | all c : Course | all g1,g2 : Grade | working2gether[s1,s2,c] and (s1->g1)+(s2->g2) in c.grades implies consecGrades[g1,g2]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled&s2.enrolled and p in s1.projects+s2.projects
}

pred consecGrades[g1,g2:Grade]{
	g1!=g2 and g1 = prev[g2]
-- div,1
all s1, s2: Student | all c : Course | all g1,g2 : Grade | working2gether[s1,s2,c] and (s1->g1)+(s2->g2) in c.grades implies consecGrades[g1,g2]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled&s2.enrolled and p in s1.projects&s2.projects
}

pred consecGrades[g1,g2:Grade]{
	g1!=g2 and g1 = prev[g2]
-- div,1
all s1, s2: Student | all c : Course | all g1,g2 : Grade | working2gether[s1,s2,c] and (s1->g1)+(s2->g2) in c.grades implies consecGrades[g1,g2]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled+s2.enrolled and p in s1.projects+s2.projects
}

pred consecGrades[g1,g2:Grade]{
	g1!=g2 and g1 = prev[g2]
-- div,1
some s1, s2: Student | all c : Course | some g1,g2 : Grade | working2gether[s1,s2,c] and (s1->g1)+(s2->g2) in c.grades implies consecGrades[g1,g2]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled&s2.enrolled and p in s1.projects+s2.projects
}

pred consecGrades[g1,g2:Grade]{
	g1!=g2 and g1 = prev[g2]
-- div,1
all s1, s2: Student | all p1: Project | all c1: Course |
  		(s1->p1 in projects and s2->p1 in projects and s1!=s2 and c1->p1 in projects) implies
  			(all g1, g2: Grade | c1->s1->g1 in grades and c1->s2->g2 in grades implies 
  				(g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
all s1,s2 : Student | all c : Course | working2gether[s1,s2,c] implies consecGrades[s1,s2,c]
}

pred consecGrades[s1,s2:Student,c:Course]{
	all g1,g2 : Grade | s1->g1 + s2->g2 in c.grades implies (g1=prev[g2] or g2=prev[g1] or g1=g2)
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and p in s1.projects&s2.projects&c.projects
-- div,1
all disj s, s1 : Student, p : s.projects & s1.projects | s.((projects.p <: Course).grades) = next[s1.((projects.p <: Course).grades)] 
  	all disj s, s1 : Student, p : s.projects & s1.projects | s.((projects.p <: Course).grades) = prev[s1.((projects.p <: Course).grades)]
-- div,1
all s1, s2: Student | all c : Course | all g1,g2 : Grade | working2gether[s1,s2,c] and (s1->g1)+(s2->g2) in c.grades implies consecGrades[g1,g2]
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled&s2.enrolled and p in s1.projects&s2.projects
}

pred consecGrades[g1,g2:Grade]{
	g1=g2 or g1 = prev[g2] or g2 = prev[g1]
-- div,1
all disj s, s1 : Student, p : s.projects & s1.projects | s.((projects.p <: Course).grades) = next[s1.((projects.p <: Course).grades)] or s.((projects.p <: Course).grades) = prev[s1.((projects.p <: Course).grades)] or s.((projects.p <: Course).grades) = s1.((projects.p <: Course).grades)
-- div,2
all s1,s2 : Student | all c : Course | working2gether[s1,s2,c] implies consecGrades[s1,s2,c]
}

pred consecGrades[s1,s2:Student,c:Course]{
	all g1,g2 : Grade | s1->g1 in c.grades and s2->g2 in c.grades implies (g1=prev[g2] or g2=prev[g1] or g1=g2)
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and p in s1.projects&s2.projects&c.projects
-- div,1
all s1,s2 : Student | all c : Course | working2gether[s1,s2,c] implies consecGrades[s1,s2,c]
}

pred consecGrades[s1,s2:Student,c:Course]{
	all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1] or g1=g2)
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and p in s1.projects&s2.projects&c.projects
-- div,1
all s1,s2 : Student | all c : Course |
  	working2gether[s1,s2,c] implies consecGrades[s1,s2,c]
}

pred consecGrades[s1,s2:Student,c:Course]{
	all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) implies (g1=prev[g2] or g2=prev[g1] or g1=g2)
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and p in s1.projects&s2.projects&c.projects
-- div,1
all disj s1, s2 : Student, g1, g2 : Grade | all p : Project, c : Course |
  		s1 + s2 in projects.p
  		&& s1 + s2 in enrolled.c	
  		&& p in c.projects
  		&& s1->g1 + s2->g2 in c.grades
  		=> s1.(c.grades) = s2.(c.grades)
  			|| (s1.(c.grades)).prev = s2.(c.grades)
  			|| s1.(c.grades) = (s2.(c.grades)).prev
-- div,1
all disj s1,s2 : Student, p : Project | s1 in projects.p and s2 in projects.p and one(s1.((projects.p).grades)) and 
  one(s2.((projects.p).grades)) implies 
  	next[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	prev[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	s1.((projects.p).grades) = s2.((projects.p).grades)
-- div,1
all disj s1,s2 : Student, p : Project | s1+s2 in projects.p and s2.((projects.p).grades)+s1.((projects.p).grades) in 		Student.((projects.p).grades) 	
	implies 
  	next[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	prev[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	s1.((projects.p).grades) = s2.((projects.p).grades)
-- div,1
all disj s1,s2 : Student, p : Project | s1+s2 in projects.p and s2.((projects.p).grades) in 		Student.((projects.p).grades) and s2.((projects.p).grades) in 		Student.((projects.p).grades) 	
	implies 
  	next[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	prev[s1.((projects.p).grades)] = s2.((projects.p).grades) or 
  	s1.((projects.p).grades) = s2.((projects.p).grades)
-- div,1
all c: Course, p:Person, g1, g2:Grade | c->p->g1 in grades and c->p->g2 in grades => g1 = g2
	
	all p : Project | all s1, s2 : Student | s1->p in projects and s2->p in projects and s1 != s2 => 
  	( all g1, g2: Grade, c : Course | c->s1->g1 in grades and c->s2->g2 in grades => (g1 = g2 or g1 = prev[g2] or g2 = prev[g1]) )
-- div,1
all disj s, s1 : Student, p : s.projects & s1.projects | one s.((projects.p <: Course).grades) and 
  	one s.((projects.p <: Course).grades) and (
  	s.((projects.p <: Course).grades) = next[s1.((projects.p <: Course).grades)] or 
  	s.((projects.p <: Course).grades) = prev[s1.((projects.p <: Course).grades)] or 
  	s.((projects.p <: Course).grades) =      s1.((projects.p <: Course).grades))
-- div,1
all disj s, s1 : Student, p : s.projects & s1.projects | 
  	one s.((projects.p <: Course).grades) and 
  	one s1.((projects.p <: Course).grades) and
  	s.((projects.p <: Course).grades) = next[s1.((projects.p <: Course).grades)] or 
  	s.((projects.p <: Course).grades) = prev[s1.((projects.p <: Course).grades)] or 
  	s.((projects.p <: Course).grades) =      s1.((projects.p <: Course).grades)
-- div,1
all disj s, s1 : Student, p : s.projects & s1.projects | one s.((projects.p <: Course).grades) and 
  	one s1.((projects.p <: Course).grades) and (
  	s.((projects.p <: Course).grades) = next[s1.((projects.p <: Course).grades)] or 
  	s.((projects.p <: Course).grades) = prev[s1.((projects.p <: Course).grades)] or 
  	s.((projects.p <: Course).grades) =      s1.((projects.p <: Course).grades))
-- div,1
all disj s, s1 : Student, p : s.projects & s1.projects | 
  	one s.((projects.p <: Course).grades) and 
  	one s1.((projects.p <: Course).grades) implies
  	s.((projects.p <: Course).grades) = next[s1.((projects.p <: Course).grades)] or 
  	s.((projects.p <: Course).grades) = prev[s1.((projects.p <: Course).grades)] or 
  	s.((projects.p <: Course).grades) =      s1.((projects.p <: Course).grades)
-- div,2
all s, s1 : Student, p : s.projects & s1.projects | s.((projects.p <: Course).grades) = next[s1.((projects.p <: Course).grades)] 
  	all s, s1 : Student, p : s.projects & s1.projects | s.((projects.p <: Course).grades) = prev[s1.((projects.p <: Course).grades)]
  	all s, s1 : Student, p : s.projects & s1.projects | s.((projects.p <: Course).grades) = s1.((projects.p <: Course).grades)
-- div,1
all disj s, s1 : Student, p : s.projects & s1.projects | s.((projects.p <: Course).grades) = next[s1.((projects.p <: Course).grades)] 
  	all disj s, s1 : Student, p : s.projects & s1.projects | s.((projects.p <: Course).grades) = prev[s1.((projects.p <: Course).grades)]
  	all disj s, s1 : Student, p : s.projects & s1.projects | s.((projects.p <: Course).grades) = s1.((projects.p <: Course).grades)
-- div,3
all s1, s2: Student | all c : Course | some g1,g2 : Grade | working2gether[s1,s2,c] and (s1->g1)+(s2->g2) in c.grades implies consecGrades[g1,g2]
  
  	all p : Project | all s1,s2 : Student | all c : Course |
  	(s1!=s2 and p in s1.projects and p in s2.projects and p in c.projects) implies
  	(all g1,g2 : Grade | g1 in s1.(c.grades) and g2 in s2.(c.grades) 
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
}

pred working2gether[s1,s2:Student,c:Course]{
	all p : c.projects | s1!=s2 and c in s1.enrolled&s2.enrolled and p in s1.projects+s2.projects
}

pred consecGrades[g1,g2:Grade]{
	g1!=g2 and g1 = prev[g2]
-- div,1
