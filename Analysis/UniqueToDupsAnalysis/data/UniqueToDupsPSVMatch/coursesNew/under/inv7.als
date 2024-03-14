all s : Student, c : s.enrolled | one c
-- div,1
all c : Course | lone (c.projects.~(enrolled))
-- div,1
all st:Student, pr:st.enrolled.projects | #pr.projects <=1
-- div,1
all s:Student,c:Course| lone (c.projects & s.projects)
-- div,2
all p:Student, c:Course | lone(p.projects & c.projects)
-- div,1
all c: Course, s : Student | lone ((c.projects) & (s.projects))
-- div,1
all s:Student, c:Course| lone (s.projects & c.projects)
-- div,10
all p : Student, c : Course |  #c.projects&p.projects<2
-- div,1
all s: Student, c: Course | #(s.projects & c.projects) <= 1
-- div,1
all s:Student, c:s.enrolled | lone c.projects & s.projects
-- div,7
all x : Student, y : x.enrolled | lone (y.projects & x.projects)
-- div,1
all s:Student, c:s.enrolled | lone (s.projects & c.projects)
-- div,3
all s:Student,c:s.enrolled| #c.projects&s.projects<2
-- div,1
all st:Student, c:st.enrolled | lone (st.projects & c.projects)
-- div,2
all s : Student, p : s.enrolled.projects | #(s.projects & p) <= 1
-- div,2
all s:Student| all c:Course| lone (s.projects & c.projects)
-- div,2
all s : Student, proj : s.projects | lone c : Course | proj in c
-- div,1
all st:Student, c:st.enrolled | #(st.projects & c.projects) <= 1
-- div,1
all s: Student |
    all c: Course |
      #(s.projects & c.projects) <= 1
-- div,1
all x : Student | all y : x.enrolled | lone(x.projects & y.projects)
-- div,1
all s:Student | all p :s.enrolled | lone (p.projects & s.projects)
-- div,2
all s:Student| all c: s.enrolled| lone (s.projects&c.projects)
-- div,6
all s : Student | all p : s.enrolled | lone (s.projects & p.projects)
-- div,2
all s : Student | all p : s.enrolled.projects | lone (s.projects & p)
-- div,1
all u : Student | all c: u.enrolled | lone c.projects & u.projects
-- div,1
all s: Student | all e: s.enrolled | lone e.projects & s.projects
-- div,1
all x : Student | all y : x.enrolled | lone (y.projects & x.projects)
-- div,1
all s:Student|all c:s.enrolled|lone (c.projects & s.projects)
-- div,43
all s : Student, c : s.enrolled, p : s.projects | lone c.projects &  p
-- div,1
all s : Student | all c1 : s.enrolled | lone c1.projects & s.projects
-- div,1
all st : Student | all c: st.enrolled | lone p : Project | p in c
-- div,1
all s : Student | all c : s.enrolled | #(s.projects & c.projects) <= 1
-- div,3
all s : Student | all p : s.enrolled.projects | #(s.projects & p) <= 1
-- div,1
all s : Student | all p : s.enrolled | #(s.projects & p.projects) <= 1
-- div,1
all s:Student | all c : s.enrolled | #((c.projects) & (s.projects)) <= 1
-- div,1
all s : Student | all c : s.enrolled | #(s->(c.projects) & projects) <= 1
-- div,1
all s: Student | all c: s.enrolled | lone p: s.projects | p in c
-- div,1
all s: Student, c: s.enrolled | lone p: s.projects | p in c.projects
-- div,3
all s : Student, p : s.enrolled.projects,sp  : s.projects | #(sp & p) <= 1
-- div,1
all u:Student, c: Course | c in u.enrolled => lone (c.projects & u.projects)
-- div,1
all s : Student, c : Course | c in s.enrolled implies lone (s.projects & c.projects)
-- div,1
all x: Student, y: Course | x in enrolled.y implies lone x.projects & y.projects
-- div,1
all p : Person, c : Course | p.enrolled in c implies #c.projects&p.projects<2
-- div,1
all s : Person - Student |(all c : s.enrolled | lone c.projects & s.projects)
-- div,1
all p : Student, c : Course | p.enrolled in c implies #c.projects&p.projects<2
-- div,3
all s : Student, c : Course | (s.enrolled in c => #(s.projects & c.projects) <= 1)
-- div,2
all s: Student, c: Course | s in c.enrolled => #(s.projects & c.projects) <= 1
-- div,1
all s: Student, c: Course | c in s.enrolled => #(s.projects & c.projects) <= 1
-- div,1
all s: Student | all c: s.enrolled | lone p: s.projects | p in c.projects
-- div,2
all s : Student | all c : s.enrolled | lone p : c.projects | p in s.projects
-- div,1
all st:Student, c:st.enrolled, pr:st.projects | lone (st.projects & c.projects)
-- div,1
all s: Student  | all c: Course | s in enrolled.c => lone (s.projects & c.projects)
-- div,1
all s : Student | all c : Course | c in s.enrolled => lone(c.projects & s.projects)
-- div,3
all s:Student, c:Course | lone p:Project | s in projects.p and p in c.projects
-- div,5
all s: Student  | all c: Course | s->c in enrolled => lone (s.projects & c.projects)
-- div,3
all s:Student, c:Course | lone p:Project | p in s.projects and p in c.projects
-- div,4
all s: Student, p: Project, c : Course | s in (Person<:projects).p and p in (Course<:projects).c implies one p
-- div,2
all s : Student, enroll : s.enrolled | lone proj : s.projects | proj in enroll.projects
-- div,1
all s : Student | all p : s.projects | all c : s.enrolled | #(p & c.projects) <= 1
-- div,1
all s : Student, c : Course | c in s.enrolled implies (lone p : s.projects | p in c.projects)
-- div,1
all s : Student |
  		all c : s.enrolled |
  			all p1, p2 : s.projects & c.projects |
  				p1 = p2
-- div,1
all s:Student, c:s.enrolled | lone p:Project | p in c.projects && p in s.projects
-- div,3
all s:Student, c:s.enrolled | lone p:Project | p in s.projects && p in c.projects
-- div,2
all s:Student, c:Course | lone proj:Project | proj in s.projects and proj in c.projects
-- div,1
all s:Student, c:Course | lone proj:Project | s in projects.proj and proj in c.projects
-- div,2
all x : Course | all y:Student | lone p:Project | p in x.projects and p in y.projects
-- div,1
all s:Student | (all c : s.enrolled | lone p:Project | p in c.projects and p in s.projects)
-- div,1
all s : Student |
  		all c1, c2 : s.enrolled |
  			all p : s.projects |
  				(p in c1 and p in c2) implies c1 = c2
-- div,1
all x : Student | all c : x.enrolled | (#(x.projects & c.projects)=0 or #(x.projects & c.projects)=1)
-- div,1
all s: Student | all p: Project | all c: Course | s->c in enrolled => lone (s.projects & c.projects)
-- div,1
all x : Student | all y : Course | y in x.enrolled implies (lone z : Project | z in x.projects and z in y.projects)
-- div,1
all c:Course | all s:Student | c in s.enrolled implies lone p:Project | p in s.projects and p in c.projects
-- div,1
all x : Student | all y : Course | x in enrolled.y implies 
  	( lone z : Project | x in projects.z and y in projects.z )
-- div,1
all s : Student | all p,p1 : s.projects | all c : s.enrolled | p in c.projects and p1 in c.projects implies p = p1
-- div,2
all s:Person, c:Course| lone p:Project| s in Student and s->c in enrolled and c->p in projects and s->p in projects
-- div,1
all s : Student, c : Course, disj p1,p2 : Project | p1 in s.projects && p1 in c.projects && p2 in c.projects implies p2 not in s.projects
-- div,5
all student:Student | all studentCourses:student.enrolled | lone p:Project | p in studentCourses.projects & student.projects
-- div,1
all x : Student, y : Course, z, w : Project | x->z in projects and x->w in projects and y->z in projects and y->w in projects implies w = z
-- div,2
all x:Student, c:Course, p,y:Project| x->p in projects and x->y in projects and c->p in projects and c->y in projects implies p=y
-- div,1
all s : Student, p1,p2 : Project, c : Course | (s in projects.p1 and s in projects.p2 and c in projects.p1 and c in projects.p2) implies p1 = p2
-- div,1
all s : Student, p1,p2 : Project, c: Course | (p1 in c.projects && p2 in c.projects) && (p1 in s.projects && p2 in s.projects) implies p1 = p2
-- div,1
all s: Student | all y, z: Project | all c: Course | y in s.projects && z in s.projects && y in c.projects && z in c.projects => y=z
-- div,3
all s:Student | all c1:Course | all z,w:Project | s->z in projects and s ->w in projects and c1->z in projects and c1->w in projects implies z=w
-- div,1
all s: Student| all p1, p2: Project| all c: Course| (p1 in s.projects) and (p2 in s.projects) and (p1 in c.projects) and (p2 in c.projects) implies p1=p2
-- div,1
all x:Student | all y,g:Course | all z,w:Project | (z in x.projects and w in x.projects and 
  z in y.projects and w in g.projects and z!=w) implies y!=g
-- div,1
all s1 : Student | all p1,p2 : Project | all c1 : Course |
    (
	(s1->p1 in projects) and (s1->p2 in projects) and
     	(c1->p1 in projects) and (c1->p2 in projects)
    )
  	implies p1=p2
-- div,1
all student : Student | all course : Course | student->course in enrolled implies lone project : Project | student->project in projects and course->project in projects
-- div,2
all x:Person,y:Course, z,u:Project| x->y in enrolled and x in Student and  x->z in projects and x->u in projects and y->z in projects and y->u in projects implies z=u
-- div,1
all u:Person,c:Course, p,x:Project| u->c in enrolled and c->p in projects and c->x in projects and u->x in projects and u->p in projects and u in Student implies p=x
-- div,1
all c1,c2:Course|all y:Student|all p1,p2:Project | (p1 in y.projects and p2 in y.projects and p1 in c1.projects and p2 in c2.projects and p1!=p2) implies c1!=c2
-- div,1
all x:Person, p,k:Project, c:Course| x->p in projects and x->k in projects implies x in Student and x->c in enrolled and c->p in projects and c->k in projects implies p=k
-- div,3
all pro1,pro2 : Project | all per : Person | all c : Course | (per in Student and pro1 in per.projects and pro2 in per.projects and pro1 in c.projects and pro1 != pro2) implies pro2 not in c.projects
-- div,1
all s : Student | all c : Course | all proj1 : Project | all proj2 : Project | (proj1 in s.projects and proj2 in s.projects and proj1 in c.projects and proj1 != proj2) implies proj2 not in c.projects
-- div,3
