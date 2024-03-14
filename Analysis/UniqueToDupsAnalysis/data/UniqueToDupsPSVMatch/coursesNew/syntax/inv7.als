all s:Student
-- div,2
all s : Students |
-- div,1
all s:Student,c:s.enrolled|
-- div,1
all st:Student | st.projects.size <=1
-- div,1
all s : Student | one s.project in Course
-- div,1
all s : Peson | one projects.(s.projects)
-- div,1
all s : Student, all c : s.enrolled | one c
-- div,2
all x:Student |lone:Project| x->p in projects
-- div,1
all x : Student | y in x.enrolled :> Course =>
-- div,1
all s:Student | c:Course | one c in u.projects
-- div,1
all s:Student|(all c:s.enrolled|one c.project)
-- div,1
all s:Student | c:Course | one c in s.projects
-- div,1
all s : Student | all c: s.enrolled | one p in c
-- div,1
all s : Students | #(s.projects) <= #(s.enrolled)
-- div,1
all x : Student | lone (c in x.enrolled.projects)
-- div,1
all s : Student | (all x,y : s.projects.c | x != y)
-- div,1
all s: Student some c: Course| lone (s in enrolled.c
-- div,3
all s:Student c:Course | lone(s.projects & c.projects)
-- div,1
all s:Student c:Course | lone (s.projects & c.projects)
-- div,1
all s : Person, c : Course | one s.project in c.project
-- div,1
all s : Student | lone c : Course | all p : s.projects |
-- div,2
all st:Student, pr:st.courses.projects | #pr.projects <=1
-- div,1
all s: Student | lone p: Project | s.enrolled.projects in
-- div,1
all s: Student | s.enrolled.projects.project in s.projects
-- div,1
all p:Student,all c:Course | lone(p.projects & c.projects)
-- div,1
all s : Student, c : Course | lone p.projects & c.projects
-- div,2
all s:Student | all pr:Project | lone (s.enrolled.projects
-- div,1
all s : Student | #(p.projects &  s.enrolled.projects) < 1
-- div,1
all s:Students | # (s.projects in s.enrolled.projects) <= 1
-- div,1
all s: Student | one p: Project | p in s.enrrolled.projects
-- div,1
all s : Student | (all c : p.enrolled | #(c.projects) <= 1 )
-- div,1
all s:Student, some c:Course| lone (s.projects & c.projects)
-- div,1
all st : Student | some p : Project | p in st.course.projects
-- div,1
all s : Person | all c : Course | one p.projects & c.projects
-- div,1
all s:Student | all pr:Project | lone (pr s.enrolled.projects)
-- div,1
all s:Student|(all c:s.enrolled|lone (c.projects & s.projects)
-- div,1
all s : Studen, enroll : s.enrolled | lone enroll in s.projects
-- div,1
all s : Student, enroll : s.enrolled | lone enroll : s.projects
-- div,1
all s:Student | all p :s.enrolled | lone (p.projects & s.course)
-- div,1
one project : Project, couse:Course | project in course.enrolled
-- div,1
all s : Student, p : s.enroled.projects | #(s.projects & p) <= 1
-- div,1
all s:Student | all p :u.enrolled | lone (p.projects & s.course)
-- div,1
all s : Student | c : Course | lone ((s.projects) & (c.projects))
-- div,1
all s: Student,c : s.enrolled | lone (c.projects &  s.projects)  )
-- div,1
all s : Student | all c : s.enrolled | lone (p : Project | p in c)
-- div,1
all s: Student | all p: s.projects |  p in one s.enrolled.projects
-- div,1
all s : Student, c : s.enrolled | lone c.projects & lone s.projects
-- div,1
all s: Student | all c: s.enrolled | one p: s.projects & projects.c
-- div,1
all s: Student | lone p: Project | s.enrolled.projects in c.projects
-- div,1
all s: Student | all c: s.enrolled | lone p: s.projects & projects.c
-- div,1
all s : Students | all c : s.enrolled | lone c.projects & s.projects
-- div,1
all u:User, c: Curso | c in u.enrroled => lone c.project in u.projects
-- div,2
all s:Student | all c:s.enrolled | lone ((c.projects) & (s.projects))
}
-- div,1
all s : Students | all c : s.enrolled | lone (c.projects and s.projects)
-- div,1
all u:Student, c: Curso | c in u.enrroled => lone c.project in u.projects
-- div,1
all s : Person - Student |(all c : Courses | one c.projects in s.projects
-- div,1
all x : Student | #(x.enrolled.projects) = 1 | #(x.enrolled.projects) = 0
-- div,2
all c: Course | all s: Student | one (p in c.projects && s in projects.p)
-- div,1
all u:Student, c: Course | c in u.enrolled => lone c.project in u.projects
-- div,1
all u:Student, c: Course | c in u.enrroled => lone c.project in u.projects
-- div,1
all s : Student, p : s.enrolled.projects,sp  : s.projects | #(ss & p) <= 1
-- div,1
all s : Student | all c : s.enrolled | ((one p : Project | p in c) or no p)
-- div,1
all s : Student | all c: s.enrolled | lone c.projects
-- div,1
all s: Student, p: Project| p in s.project implies one p in s.enrolled.projects
-- div,1
all s:Student, c:Course | lone p:Project | p in s.projects implies p in c.course
-- div,1
all s:Student, c:Course | lone proj:Project | p in s.projects and p in c.projects
-- div,2
all s: Student, c: Course | s in c.enrolled => card(s.projects & c.projects) <= 1
-- div,1
all s:Student, c:Course | lone proj:Project | s in enrolled.c and p in c.projects
-- div,1
all s:Student, c:Course | lone p:Project | s in projects.proj and p in c.projects
-- div,1
all st:Student, c:Course, one pr:Project | c in st.enrolled implies p in c.projects
-- div,1
all st:Student, c:Course, lone pr:Project | c in st.enrolled implies p in c.projects
-- div,2
all s:Student, c : s.enrolled | lone p:Project | p in c.projects and p in s.projects)
-- div,1
all x : Student | all y : Course | y in x.enrolled implies lone s.projects.c.projects
-- div,1
all s : Student, c : course | lone p : Project | (p in s.projects and p in c.projects)
-- div,1
all s : Student, enroll : s.enrolled | lone proj : s.projects | proj in enroll.projectgs
-- div,1
all s : Student | (all p,q : Projects | (some c : s.enrolled | p in c implies q not in c))
-- div,1
all s : Student | all c : Course | c in s.enrolled => #(c.projects & s.projects) in {0, 1}
-- div,1
all s:Student | all pr:Project | pr in s.projects implies pr in lone(s.enrolled.projects )
-- div,1
all x:Student, c:Course| lone:Project| x->p in projects and c->p in projects and x->c in enrolled
-- div,1
all s: Student | some p: Project | all c: Course | s->c in enrolled => s->c.projects in projetcts
-- div,1
all s: Student | lone p: Project | all c: Course | s->c in enrolled => s->c.projects in projetcts
-- div,1
all x:Student, c:Course| (one:Project| x->p in projects and c->p in projects and x->c in enrolled)
-- div,1
all x:Student, c:Course| (lone:Project| x->p in projects and c->p in projects and x->c in enrolled)
-- div,1
all s1 : Person | all ps1,ps2 : project | ps1 in s1.projects and ps2 in s1.projects implies ps1 = ps2
-- div,1
all student:Student | all studentCourses:student.enrolled | lone p:Project | p in studentCourses.project
-- div,1
all s: Student | some p: Project | all c: Course | s->c in enrolled c->p in projects  => s->p in projects
-- div,1
all p : Person, c : Course , ps1,ps2 : Project | ps1 in p.projects && ps2 in p.projects implies ps1 == ps2
-- div,1
all s: Studen | some p: Project | all c: Course | s->c in enrolled => s->p in projects and c->p in projects
-- div,1
all s: Student | some y, z: Project | y in s.projects && z in s.projects && projects.y == projects.z => z=y
-- div,1
all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects  and one project.z
-- div,1
all x: Student, lone p: Project | x->p in projects implies (some c:Course |x->c in enrolled and c->p in projects)
-- div,1
all s : Student |
  		all c1, c2 : s.courses |
  			all p : s.projects |
  				( in c1 and p in c2) mplies c1 = c2
-- div,1
all s:Student, c:Course | lone p:Project | s in projects.p and p in c.projects
-- div,2
all s : Student |
  		all c1, c2 : s.courses |
  			all p : s.projects |
  				(p in c1 and p in c2) mplies c1 = c2
-- div,1
all s : Student |
  		all c1, c2 : s.enrolled |
  			all p : s.projects |
  				(p in c1 and p in c2) mplies c1 = c2
-- div,1
all x : Student | #(x.enrolled.projects) = 1 and #(x.projects) = 1 | #(x.enrolled.projects) = 0 and #(x.projects) = 0
-- div,2
all x: Student | one p: Project | x->p in projects implies (some c:Course | stud->c in enrolled and c->p in projects)
-- div,1
all s : Student | all c : Course | one proj : Project | proj in s.projects and c in p.enrolled implies #(s.projects)<1
-- div,1
all x : Student | all y : Course | x in enrolled.y implies 
  	( one z : Project | x in projects.z and y in prjects.z )
-- div,1
all x : Student | all y : course | x in enrolled.y implies 
  	( one z : Project | x in projects.z and y in prjects.z )
-- div,1
all x:Student, c:Course, p,y:Project| x->p in project and x->y in project and c->p in project and c->y in project implies p=y
-- div,1
all x:Student, c:Course, p,y:Project| x->p in projects and x->y in project and c->p in project and c->y in project implies p=y
-- div,1
all s:Student | all c1,c2:Course | s->c1 in enrolled and s->c2 in enrolled implies (some pr:Project | s->c in projects and c1 = c2 )
-- div,1
all x: Student, lone p: Project | x->p in projects implies (some c:Course |x->c in enrolled and c->p in projects and #(x.projects)=1)
-- div,1
all s: Student | all c: s.enrolled | some y, x: Project | y in s.projects && z in s.projects && y in c.projects && z in c.projects => z=y
-- div,1
all x:Person,y:Course|one z:Project| x->y in enrolled and x in Student and y-> z in projects and all enrolled.y and one Person <: projects.z
-- div,1
all p : Person, Course : c ,ps1,ps2 : Project | ps1 in p.projects && ps2 in p.projects implies ps1 in c.project && ps2 in c.project && ps1 = ps2
-- div,1
all p : Person, Course : c ,ps1,ps2 : Project | ps1 in p.projects && ps2 in p.projects implies ps1 in c.project && ps2 in c.project && ps1 == ps2
-- div,1
all p : Person, Course : c ,ps1,ps2 : Project | ps1 in p.projects && ps2 in p.projects implies ps1 in c.projects && ps2 in c.projects && ps1 = ps2
-- div,1
all p : Person, c : Course , ps1,ps2 : Project | ps1 in p.projects && ps2 in p.projects && ps1 in c.projects && ps2 in c.projects implies ps1 == ps2
-- div,1
o projeto que esta a fazer pertence a só um curso que esta enrolled e vice versa 
  one project : Project, couse:Course | project in course.enrolled
-- div,2
all s : Student | all p : s.projects | some c : s.enrolled | p = c.projects
  
  all s:Student | all c:s.enrolled | lone ((c.projects) & (s.projects))
}
-- div,1
all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects) implies (p1=p2)
-- div,1
all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects)) implies (p1=p2)
-- div,2
all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects))) implies (p1=p2)
-- div,3
all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects)))) implies (p1=p2)
-- div,2
all c1,c2:Course|all y:Student|all p1,p2:Project | (p1 in y.projects and p2 in y.projets and p1 in c1.projects and p2 in c2.projects and p1!=p2) implies c1!=c2
-- div,1
all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects))))) implies (p1=p2)
-- div,1
all s : Student | all p1, p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects)))))) implies (p1=p2)
-- div,1
all u:Person,c:Course, p,x:Project| u->c in enrolled and c->p in project and c->x in project and u->x in project and u->p in projects and u in Student implies u=x
-- div,1
all s : Student | all p1 : Project | all p2 : Project | ((p1 in s.projects) and (p2 in s.projects) and (p1~(Course <: projects))=(p2.~(Course <: projects))) implies (p1=p2)
-- div,1
all s : Student | all c : Course | all proj1 : Project | all proj2 : Project | (proj1 in s.projects and proj2 in s.projects and proj1 in c.projects) implies proj2 not in c.projects
  
  
  c in s.enrolled implies #(s.projects)<1
-- div,1
