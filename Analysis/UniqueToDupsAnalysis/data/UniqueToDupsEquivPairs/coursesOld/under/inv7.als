-- equiv pair start,39
all s : Student | lone (s.(Course<:projects))
-- div,1
all s : Student | lone (s.~(Course<:projects))
-- div,2
all s : Student | lone (Course <: projects).projects.s
-- div,1
all s : Student | lone (s.~(Course<:projects) & s.enrolled)
-- div,2
all s: Student, c: s.enrolled | lone (Person<:projects).c
-- div,2
all c : Course | all s : c.enrolled | lone s.projects
-- div,3
all s: Student | lone c: Course | s.enrolled=c
-- div,1
all s : Person | s in Student && s not in Professor => #s <= 1
-- div,1
all s : Student, p : s.projects | lone p.~(Course<:projects).enrolled
-- div,1
all s : Student, p : s.projects | lone s.enrolled.projects&p
-- div,2
all s : Student, l : s.enrolled | lone l.projects.~(Person<:projects) & s
-- div,1
all s: Student, c: Course | c in s.enrolled implies lone c.grades.s
-- div,1
all s : Student | all c : s.enrolled | lone (s.enrolled & c.(Course <: projects))
-- div,1
all s: Student, c: Course | c in s.enrolled implies lone s & c.grades.Grade
-- div,1
all s : Student | all c : s.enrolled | lone s.enrolled & Course <: c.projects
-- div,1
all p1,p2: Project, s: Student, c: Course | ((s in p1.projects) and (s in p2.projects)) implies p1=p2
-- div,1
all s : Student, c : Course | c in s.enrolled implies lone c.projects.~(Person<:projects) & s
-- div,1
all studi: Person | all pro: studi.projects | #{pro & studi.enrolled.projects} <= 1
-- div,1
all studi: Student | all pro: studi.projects | #{pro & studi.enrolled.projects} <= 1
-- div,4
all studi: Student | all kursPro: studi.enrolled.projects | #{studi.projects & kursPro} <= 1
-- div,2
all s: Student, p: s.projects | lone (p & s.enrolled.projects) or no (p & s.enrolled.projects)
-- div,1
all s: Student, c:Course | c->s in enrolled implies (some p: Project | p in c.projects&s.projects)
-- div,3
all s : Student | all p : Project | all c : Course | p in s.projects and p in c.projects implies lone p
-- div,1
all s: Student, c:Course | c->s in enrolled implies (some p: Project | c->p in projects and s->p in projects)
-- div,2
all p1,p2: Project, s: Student, c: Course | ((p1 in c.projects) and (p2 in c.projects) and (s in p1.projects) and (s in p2.projects)) implies p1=p2
-- div,1
all student: Student | all proj: Project | all course: Course | proj in student.projects and proj in course.projects implies lone proj
-- div,1
-- equiv pair end
-- equiv pair start,153
all x:Course, z:Student | lone(z.projects & x.projects)
-- div,3
all p : Student, c : Course | lone p.projects & (c.projects)
-- div,2
all c : Course, s : Student | lone (c.projects & s.projects)
-- div,2
all s:Student , c:Course | lone(s.projects & c.projects)
-- div,32
all s : Student, c : Course | lone c.projects&s.projects
-- div,4
all y : Student, x : Course | lone y.projects & x.projects
-- div,3
all c:Course, s:Student | lone s.projects & c.projects
-- div,11
all x : Student, c: Course | lone x.projects & c.projects
-- div,1
all s : Student | all c : Course | lone s.projects&c.projects
-- div,8
all s:Student, c:Course | lone p:s.projects | p in c.projects
-- div,2
all s : Student, c : Course, p : Project | lone (s.projects & c.projects)
-- div,1
all x:Course, y:Project, z:Student | lone(z.projects & x.projects)
-- div,1
all s : Student, c : Course | lone p : Project | p in s.projects and p in c.projects
-- div,1
all s:Student, c:Course | lone p:Project | s->p in projects and c->p in projects
-- div,4
all s : Student, c : Course | lone p : Project | 
  		c->p in projects && s->p in projects
-- div,2
all s : Student | all c : Course | lone p : Project | p in s.projects&c.projects
-- div,1
all s : Student, c : Course | lone pr : Project | pr in s.projects and pr in c.projects
-- div,1
all s : Student | all c : Course | lone p : Project | p in s.projects and p in c.projects
-- div,1
all c : Course | all s : Student | lone p : Project | c->p in projects and s->p in projects
-- div,1
all s : Student | all c : Course | lone p : Project | 
  			c->p in projects && s->p in projects
-- div,1
all s: Student, c: Course, p1, p2: Project | p1+p2 in s.projects && p1+p2 in c.projects => p1 = p2
-- div,1
all s : Student | all p1,p2 : s.projects | all c : Course | p1 in c.projects and p2 in c.projects implies p1=p2
-- div,1
all s : Student | all p,p1 : Project | all c : Course | (p+p1) in c.projects and (p + p1) in s.projects implies p = p1
-- div,1
all per : Person | per in Student => all c : Course | lone pro : Project | c->pro in projects && per->pro in projects
-- div,2
all s : Student | all p1,p2:Project | all c: Course|(p1+p2) in s.projects and (p1+p2 in c.projects) implies p1=p2
-- div,11
all s: Student | all p1, p2: Project | all c: Course | (p1+p2) in c.projects and (p1+p2) in s.projects implies p1=p2
-- div,1
all s : Student | all p1,p2 : Project | all c : Course | s->(p1 + p2) in projects and (p1 + p2) in c.projects implies p1=p2
-- div,1
all s : Student, c : Course, disj p1,p2 : Project | p1 in s.projects and p1 in c.projects and p2 in c.projects => p2 not in s.projects
-- div,4
all x : Student, y : Course, z, w : Project | x->z in projects and x->w in projects and y->z in projects and y->w in projects implies w = z
-- div,5
all s : Student | all c : Course | all p : Project | p in s.projects and p in c.projects implies no s.projects & c.projects-p
-- div,1
all s:Student, p1,p2:Project, c:Course | p1 in s.projects and p2 in s.projects and p1 in c.projects and p2 in c.projects implies p1=p2
-- div,1
all s: Student, c: Course, p1, p2: Project | p1 in s.projects && p1 in c.projects && p2 in s.projects && p2 in c.projects => p1 = p2
-- div,1
all p1,p2:Project,s:Student,c:Course | p1 in s.projects and p2 in s.projects and p1 in c.projects and p2 in c.projects implies p1=p2
-- div,3
all p1,p2: Project, s: Student, c: Course | ((s in (Person<:projects).p1) and (s in (Person<:projects).p2) and (p1 in c.projects) and (p2 in c.projects)) implies p1=p2
-- div,1
all s: Student| all p : Project | all c : Course | p in c.projects and p in s.projects implies s.projects&c.projects-p = none
-- div,1
all s: Student, tp1, tp2: Project, c : Course | 
  (tp1 in s.projects and tp2 in s.projects and tp1 in c.projects and tp2 in c.projects) implies tp1=tp2
-- div,1
all student: Student | all p1, p2: Project | all course: Course | (p1+p2) in student.projects and (p1+p2) in course.projects implies p1 = p2
-- div,1
not some s:Student | some p1, p2:Project, c:Course | p1!=p2 and s->p1 in projects and s->p2 in projects and c->p1 in projects and c->p2 in projects
-- div,1
all p1:Project,p2:Project,s:Student,c:Course | s -> p1 in Person <: projects and c -> p1 in Course <: projects and s -> p2 in Person <: projects and c -> p2 in Course <: projects implies p1 = p2
-- div,1
all s:Student | all p1,p2: Project| all c: Course| p1 in s.projects and p2 in s.projects and p1 in c.projects and p2 in c.projects implies p1=p2
-- div,8
all u : Student, c1,c2 : Course, p1,p2 : Project | p1 in u.projects and p2 in u.projects and p1 in c1.projects and p2 in c2.projects implies p1=p2 or c1!=c2
-- div,1
all s: Student | all c: Course | all p1, p2 : Project | s->p1 in projects and s->p2 in projects and c->p1 in projects and c->p2 in projects => p1 = p2
-- div,1
all s : Student | all p1,p2 : Project | all c : Course | (c->p1 in projects and s->p1 in projects) and  (c->p2 in projects and s->p2 in projects) implies p1=p2
-- div,1
all s1 : Student | all p1,p2 : Project | all c : Course | ((s1 -> p1 in projects) and (s1 -> p2 in projects) and 
  ( c -> p1 in projects ) and ( c -> p2 in projects )) implies ( p1 = p2)
-- div,1
all s: Student | all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects 
  		and s -> p2 in projects and c -> p2 in projects => p2 = p1
-- div,1
all s1 : Student | all p1,p2 : Project | all c1 : Course | 
  ((s1->p1 in projects) and (s1->p2 in projects) and (c1->p1 in projects) and (c1->p2 in projects)) implies p1=p2
-- div,12
all p1,p2 : Project | all c : Course | c->p1 in projects and c->p2 in projects implies (all s1 : Student | s1->p1 in projects and s1->p2 in projects implies p1=p2)
-- div,1
all p:Student | all pr1,pr2:Project | all c:Course| (p->pr1 in projects and p->pr2 in projects) and (c->pr1 in projects and c->pr2 in projects) implies pr1=pr2
-- div,1
all s: Student, proj1: Project, proj2: Project, c: Course | proj1 in s.projects and proj2 in s.projects and proj1 in c.projects and proj2 in c.projects implies proj1 = proj2
-- div,2
all s: Student, c: Course, proj1: Project, proj2: Project | proj1 in s.projects and proj2 in s.projects and proj1 in c.projects and proj2 in c.projects implies proj1 = proj2
-- div,1
all s,p1,p2,c : univ | s in Student and p1 in Project and p2 in Project and c in Course and s->p1 in Person <: projects and s->p2 in Person <: projects and c->p1 in Course <: projects and c->p2 in Course <: projects implies p1=p2
-- div,1
all person : Student | all project1, project2 : Project | all course : Course | ((project1 + project2) in person.projects and (project1 + project2) in course.projects) implies project1 = project2
-- div,1
-- equiv pair end
-- equiv pair start,98
all s : Student, c : s.enrolled | lone c.projects&s.projects
-- div,7
all s : Student, c: s.enrolled | lone s.projects & c.projects
-- div,18
all s: Student | all c: s.enrolled | lone s.projects & c.projects
-- div,3
all s: Student | all c: s.enrolled | lone c.projects & s.projects
-- div,4
all s:Student, c:s.enrolled | lone p:s.projects | p in c.projects
-- div,1
all s:Student, c:Course | c in s.enrolled implies lone s.projects & c.projects
-- div,15
all s:Student , c:Course| c in s.enrolled implies lone c.projects & s.projects
-- div,7
all s : Student, c : Course | c not in s.enrolled or lone c.projects & s.projects
-- div,1
all s: Student, c: Course | 
  		s->c in enrolled => lone (s.projects & c.projects)
-- div,1
all st:Student, c:Course | c in st.enrolled implies lone c.projects &  st.projects
-- div,1
all s:Student | all c:Course | c in s.enrolled implies lone (c.projects & s.projects)
-- div,3
all studi: Student | all kursPro: studi.enrolled | #{studi.projects & kursPro.projects} <= 1
-- div,2
all s: Student, c: s.enrolled | lone (s.projects & c.projects) or no (s.projects & c.projects)
-- div,1
all s: Student, c:Course | s->c in enrolled implies (lone p: Project | p in c.projects&s.projects)
-- div,1
all s: Student, c: Course | lone p: Project | c in s.enrolled and p in s.projects and p in c.projects
-- div,2
all s : Student, c : Course | lone p : Project | p in s.projects and p in c.projects and c in s.enrolled
-- div,1
all s: Student, c: Course | c in s.enrolled implies lone p: Project | p in s.projects and p in c.projects
-- div,1
all s: Student, c:Course | s->c in enrolled implies (lone p: Project | p in c.projects and p in s.projects)
-- div,1
all s:Student,c:Course | lone p:Project | s->p in projects and c->p in projects and s->c in enrolled
-- div,1
all s : Student, c : Course | lone p : Project | s->c in enrolled and s->p in Person<:projects and c->p in Course<:projects
-- div,3
all s : Student | all c : Course | c in s.enrolled implies lone p : Project | p in (s.projects & c.projects)
-- div,1
all c : Course, s : Student | s -> c in enrolled implies lone p : Project | s -> p in projects and c -> p in projects
-- div,2
all s:Student, c:Course | s->c in enrolled implies lone p:Project | s->p in projects and c->p in projects
-- div,1
all s:Student, c:Course | s->c in enrolled => lone p:Project | c->p in projects and s->p in projects
-- div,1
all s : Student | all c : Course | lone p : Project| p in s.projects and c in s.enrolled and p in c.projects
-- div,1
all s:Student | all c:Course | c in s.enrolled implies lone p:Project | p in s.projects and p in c.projects
-- div,1
all c: Course | all x: Student | c in x.enrolled implies lone p: Project | p in c.projects and p in x.projects
-- div,1
all s : Student, c : Course | lone p : Project | s in enrolled.c and s in Person<:projects.p and c->p in Course<:projects
-- div,1
all p1, p2: Project, s: Student, c: Course | c in s.enrolled and (p1+p2) in c.projects and (p1+p2) in s.projects implies p1 = p2
-- div,1
all s:Student, c:Course, p1,p2:Project | p1 in s.projects and p2 in s.projects and c in s.enrolled and p1 in c.projects and p2 in c.projects implies p1=p2
-- div,2
all s:Student, c: Course, p1,p2:Project | c in s.enrolled and p1 in c.projects and p2 in c.projects and p1 in s.projects and p2 in s.projects implies p1=p2
-- div,3
all s:Student, p1,p2:Project, c:Course | s->c in enrolled and c->p1 in projects and c->p2 in projects and s->p1 in projects and s->p2 in projects implies p1=p2
-- div,1
all s:Student, c:Course, p1,p2:Project | s->c in enrolled and c->p1 in projects and c->p2 in projects and s->p1 in projects and s->p2 in projects implies p1=p2
-- div,3
all s : Student, c : Course, p1, p2 : Project | s->c in enrolled and 
  s->p1 in Person<:projects and 
  c->p1 in Course<:projects and 
  s->p2 in Person<:projects and 
  c->p2 in Course<:projects implies p1 = p2
-- div,2
all s : Student | all p1, p2: Project | all c: Course | s->p1 in projects and s->p2 in projects and c->p1 in projects and c->p2 in projects and s->c in enrolled implies p1=p2
-- div,1
all s: Student, proj1: Project, proj2: Project, c: Course | c in s.enrolled and proj1 in s.projects and proj2 in s.projects and proj1 in c.projects and proj2 in c.projects implies proj1=proj2
-- div,1
all s: Student | all c: Course | all p1 : Project | all p2 : Project |  s->p1 in Person<:projects and s->p2 in Person<:projects and s->c in enrolled and c->p1 in Course<:projects and c->p2 in Course<:projects implies p1=p2
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student , c:Course| s.enrolled in c implies lone c.projects & s.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person, c : Course | c in p.enrolled implies lone p.projects & c.projects
-- div,2
-- equiv pair end
