all
-- div,1
all p
-- div,1
all s: Student
-- div,3
all s1: Student
-- div,4
all s: Student |
-- div,1
lone s : Student
-- div,1
lone Student.projects.c
-- div,1
all p:Project, s:Student |
-- div,2
all s: Student, c: Course |
-- div,1
all s:Student | s.projects = no
-- div,1
all s.Student | one s <: Project
-- div,1
all s : Course| lone (c.projects)
-- div,1
all s : Student | lone p.projects
-- div,1
s.projects in s.enrolled.projects
-- div,1
all s : Student | #s.projects.p < 2
-- div,1
all s:Student | lone s.course.projects
-- div,1
all s : Student, p : s.projects | lone
-- div,2
all s : Student | all p : s.projects |
-- div,1
s : Student | lone s.projects.projects
-- div,1
all s: Student | one (s & s.projects.)
-- div,1
all s:Student | one Course <: projects.p
-- div,1
all s:Students | one Course <: projects.p
-- div,1
all s.Student c:Course | one Project <: c
-- div,1
all s.Student | one s <: projects.Project
-- div,1
all s.Student | one s <: projects.Projects
-- div,1
all s.Student c:Course | one s <: c.Project
-- div,1
all s : Students | lone s.enrolled.projects
-- div,2
all s:Student| lone s.projects and c.projects
-- div,1
all p:Person | p.projects in p.enroled.projects
-- div,1
all s: Student, c: Course | lone s in c.projects
-- div,1
all s : Student, c : Course | lone p : Project |
-- div,1
all s: Student, p: Project | lone s in c.projects
-- div,1
all s:Student p:Project | one Course <: projects.p
-- div,1
all s : Student | lone Course.projects.(project.s)
-- div,1
all s.Student c:Course | one s <: c.Project.projects
-- div,2
all s: Student, some p: project | lone s.(projects.p)
-- div,1
all s: Student, some p: Project | lone s.(projects.p)
-- div,1
all s:Student | lone projects.s implies Course.person
-- div,1
all s:Student | lone projects.s implies person.Course
-- div,1
all s : Student | lone projects.(s.projects) <: COurse
-- div,1
all s:Student,c:Course | one p:Project | p in s.project
-- div,1
all s: Student, all c:Course | lone s.enrolled.c.Project
-- div,1
all s : Student | lone (s.enrolled.(Course<:projects).p)
-- div,1
all s: Student, all c:Course | lone projects.c.enrolled.s
-- div,1
all s: Student, all c:Course | lone projects.c.enrolled in s
-- div,1
all s1 : Student |one s.Person<:projects.~(Course<:projects)
-- div,1
all s1 : Student, c : Course | lone s1.projects.(c.<:projects)
-- div,1
all s : Student, all c : Course | lone s.projects & c.projects
-- div,1
all s:Student , c:Course | lone(s.projects) & lone(c.projects)
-- div,2
all s : Student, all c : Course | lone s.projects && c.projects
-- div,1
all s: Student, some p: Project | lone (s.enrolled & projects.p)
-- div,1
all s:Student, c:s.courses | lone p:s.projects | p in c.projects
-- div,1
all s : Student | all c : s.enrolled | lone p.projects.c.projects
-- div,1
all s:Student | (some c:Course | c in p.enrolled) | lone s.projects
-- div,2
all s: Student | c in s.enrolled implies lone s.projects&c.projects
-- div,1
all s: Student, p: Project | one (p in s.projects and p in s.course)
-- div,1
all s1 : Student, c : Course | lone s1.projets.~(Course<:projects).c
-- div,1
all s : Student, c : s.enrolled | lone p in (s.projects)+(c.projects)
-- div,1
all s: Student, c: Course | lone s.projects&( all s.enrolled.projects)
-- div,2
all s : Student, all c : Course | lone projects.(c.projects <: Course)
-- div,1
all s : Student | all c : s.enrolled | lone (s.enrolled & c.projects))
-- div,1
all: s:Student | some c:Course | c in s.enrolled implies lone s.projects
-- div,2
all s:Student | (some c:Course | c in p.enrolled) implies lone s.projects
-- div,1
all per : Person | per in Student => lone pro : Project | s->p in projects
-- div,1
all s:Person, c:Course | one p : Project | p in s.project and p in c.course
-- div,1
all c: Component | some d : Dangerous | c->d in parts implies c in Dangerous
-- div,2
all s : Student | all c : Course | one p : Project | s in person.(c.projects)
-- div,1
all s: Student, c : Course | c in s.enrolled => #(p.projects & c.projects) = 1
-- div,1
all s : Student, p : Project | p in s.projects => p in one s.enrolled.projects
-- div,1
all s:Student, c:Courses | c in s.enrolled implies lone s.projects & c.projects
-- div,1
all p : Person, c : Course | c in p.enrolled implies lone p.projects & c.course
-- div,2
all s : Student, all c : Course | lone projects.(c.projects <: Course) <: Person
-- div,1
all s: Student, c:Course | some p: Projects | (s.enrolled).projects in s.projects
-- div,1
all p : Person, c : Course | c in p.enrolled implies lone (p.projects & c.course)
-- div,1
all s: Student, c: Course | one p: Project | s->p in project and s->c in enrolled
-- div,1
all s : Student, c : course | c in s.enrolled implies lone c.projects & s.projects
-- div,1
all s: Student, c:Course | c->s in enrolled implies (some p: c.projects&s.projects)
-- div,1
all s : Student, C : Course | lone p : Project | p in s.projects and p in c.projects
-- div,1
all s:Student | all c:Course | c in p.enrolled implies lone (c.projects & s.projects)
-- div,1
all s: Student, disj x,j : s.projects | (Course <: projects).x != (Course <: projects).y
-- div,1
all s : Student, p : Project, c : Course | no no (p & c.projects) implies p in s.projects
-- div,1
all s: Student, proj: Project, c: Course | proj in s.projects implies one (Couse <: projects).p
-- div,1
all s : Student | all p1, p2 : Project | (p in s.projects and p in s.projects) implies (p1 = p2)
-- div,1
all s:Person, c:Course | one p : Project | p in s.projects and p in c.projects and c in s.enroled
-- div,1
all s: Student, proj: Project, c: Course | proj in s.projects implies lone (Course <: projects).p
-- div,1
all s:Person, c:Course | one p : Project | p in s.projects and p in c.projects and c in s.enrroled
-- div,1
all p1,p2: Project, s: Student, c: Course | ((p1 in c.projects) and (p2 in c.projects)implies p1=p2
-- div,1
all p1,p2: Project, s: Student, c: Course | (s in p1.projects) and (s in p2.projects)) implies p1=p2
-- div,1
all s: Student, c:Course lone p:Project | s in enrolled.c and c in projects.p implies s in projects.p
-- div,1
all s: Student, c:Course, lone p:Project | s in enrolled.c and c in projects.p implies s in projects.p
-- div,2
all s : Student | all c : course | c in s.enrolled implies one p : Project | s.projects and c.projects
-- div,1
all s: Student, c: Course | lone p: Projects | c in s.enrolled and p in s.projects and p in c.projects
-- div,1
all p1 : Student | all pr1 : Project | all c1 : Course | (p1->pr1 in project) and (c1->pr1 in projects)
-- div,1
all s : Student | all c : Course | lone pro : Project | 
  			c->pro in projects && per->pro in projects
-- div,1
all s:Student, c1,c2:Course, p:Project | (s->c in enrolled and c->p in projects) implies s->p in projects
-- div,1
all s:Student | all p1,p2:Projects | p1 in s.enrolled.projects and p2 in s.enrolled.projects implies p1=p2
-- div,1
all s:Students | all c:Course | c in s.enrolled implies some p:Project | p in s.projects and p in c.projects
-- div,1
all s: Student, c:Course | c->s in enrolled implies (some p: Projects | c->p in projects and s->p in projects)
-- div,1
all s: Student | one Project | s->p in projects implies (all c: Course | c->p in projects and s->c in enrolled)
-- div,1
all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects) => ())
-- div,2
all s : Student | all p1, p2 : Project | all c : Course | (p1+p2) in s.projects and p1+p2 in c.projects) implies (p1 = p2)
-- div,1
all s : Student | all p1, p2 : Project | all c : Course | (p1+p2) in s.projects and (p1+p2) in c.projects) implies (p1 = p2)
-- div,1
all s : Student | all c : Courses | | all p : Project | p in s.projects and p in c.projects implies no s.projects & c.projects
-- div,1
all s : Student | all c : Courses | all p : Project | p in s.projects and p in c.projects implies no s.projects & c.projects-p
-- div,1
all s : Student | all c : Courses | | all p : Project | p in s.projects and p in c.projects implies no s.projects & c.projects.p
-- div,1
all s : Student | all c : Courses | | all p : Project | p in s.projects and p in c.projects implies no s.projects & c.projects-p
-- div,1
all s : Student | one p : Project | all c : Courses | p in s.projects implies p in c.projects and s.students -p not in c.projects
-- div,1
all s1 : Student | all p1,p2 : Project | all c1 : Course |
    (s1->p1,p2 in projects) and (c1->p1,p2 in projects)
  	implies p1=p2
-- div,1
all s: Student, p1, p2: Project |  s in projects.p1 and s in projects.p2 implies c1 = projects.p1 and  c2 = projects.p2 and c1 != c2
-- div,1
all s1 : Student | all p1,p2 : Project | all c1 : Course |
    ((s1->p1,p2 in projects) and (c1->p1,p2 in projects))
  	implies p1=p2
-- div,1
all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in c.projects
-- div,1
all s:Student, c:Course | lone p:Project | p in c.projects and p in s.projects implies c in s.enrolled
-- div,2
all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in s.enrolled
-- div,1
all s : Student, c : Course |lone p : Project | s->c in enrolled and 
  s->p in Person<:projects and 
  c->p in Course<:projects
-- div,2
all  s : Student, c : Course, p : Project | 
    lone p_act : Project | 
    some (c & s.enrolled) and (p & c.course) implies p_act in s.projects
-- div,1
all u : Student, c1,c2 : Course, p1,p2 : Project | p1 in u.projects and p2 in u.project and p1 in c1.projects and p2 in c2.projects implies c1!=c2
-- div,1
/ll stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))
-- div,1
all  s : Student, c : Course, p : Project | 
    lone p_act : Project | 
    all (p in c.projects) and all (c in s.enrolled) implies p in s.projects
-- div,1
all s : Student | lone p : Project | all c : Course | p in c.projects and c in s.enrolled implies p in s.projects
-- div,2
all s : Student | one p1,p2 : Project | all c : Courses | p1 in s.projects and p2 in s.projects and p1 in c.projects and p2 in c.projects implies p1 = p2
-- div,1
all s: Student, p1, p2: Project| one c1, c2: Course | s in projects.p1 and s in projects.p2 and c1 = projects.p1 and  c2 = projects.p2 implies c1 != c2 j
-- div,1
all s : Student | all p1,p2 : Projects | all c : Course | (c->p1 in projects and s->p1 in projects) and  (c->p2 in projects and s->p2 in projects) implies p1=p2
-- div,1
all p1,p2 : Projects | all c : Course | c->p1 in projects and c->p2 in projects implies (all s1 : Student | s1->p1 in projects and s1->p2 in projects implies p1=p2)
-- div,1
all s: Student | all c : Course, p1 : Project, p2 : Project | (s -> p1 in projects and c -> p1 in projects 
  		and s -> p2 in projects and c -> p2 in projects => (p2 = p1)
-- div,1
all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects 
  		s -> p2 in projects and c -> p2 in projects) => (p2 == p1))
-- div,1
some p1, p2: Project | all c1,c2: Course | all s: Student| ((p1+p2) in s.projects and (p1 in c1.projects) and (p2 in c2.projects) and (c1+c2) in s.enrolls ) implies c1 != c2
-- div,1
all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects 
  		and s -> p2 in projects and c -> p2 in projects) => (p2 = p1))
-- div,1
all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects 
  		and s -> p2 in projects and c -> p2 in projects) => (p2 == p1))
-- div,1
all s: Student | ((all c : Course, p1 : Project, p2 : Project | (s -> p1 in projects and c -> p1 in projects 
  		and s -> p2 in projects and c -> p2 in projects) => (p2 = p1))
-- div,1
all s: Student | ((all c : Course, p1 : Project, p2 : Project | (s -> p1 in projects and c -> p1 in projects 
  		and s -> p2 in projects and c -> p2 in projects)) => (p2 = p1))
-- div,1
all s: Student | ((all c : Course, p1 : Project, p2 : Project | s -> p1 in projects and c -> p1 in projects 
  		s -> p2 in projects and c -> p2 in projects
  
  ) => (p2 == p1))
-- div,1
all s:Students | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in projects and pr2->c in projects implies pr1 = pr2
-- div,1
some p1, p2: Project, c1,c2: Course| all s: Student| ((p1+p2) in s.projects and (p1 in c1.projects) and (p2 in c2.projects)) implies c1 != c2
  
  
  s.projects in s.enrolled.projects
-- div,1
all s1 : Student | all p1,p2 : Project | all c1 : Course
  (
    (s1->p1 in projects) and (c1->p2 in projects)
  	and (s1->p1 in projects) and (c1->p2 in projects)
  )
  	implies p1=p2
-- div,1
some p1, p2: Project, c1,c2: Course| all stu: Student| ((p1+p2) in stu.projects and (p1 in c1.projects) and (p2 in c2.projects)) implies c1 != c2
  
  
  s.projects in s.enrolled.projects
-- div,1
all s : Student, c : Course, p1, p2 : Project | s->c in enrolled and 
  s->p1 in Person<:projects and 
  c->p1 in Course<:projects and 
  s->p2 in Person<:projects and 
  c->p2 in Course<:projects implies p1 = p2
-- div,1
some p1, p2: Project, 
         c1,c2: Course| 
    all s: Student| (p1+p2) in s.projects and 
  					p1 in c1.projects and p2 in c2.projects
  					implies c1 != c2
  
  
  s.projects in s.enrolled.projects
-- div,2
some p1, p2: Project, 
         c1,c2: course| 
    all s: Student| (p1+p2) in s.projects and 
  					p1 in c1.projects and p2 in c2.projects
  					implies c1 != c2
  
  
  s.projects in s.enrolled.projects
-- div,1
some p1, p2: Projects, 
         c1,c2: course| 
    all s: Student| (p1+p2) in s.projects and 
  					p1 in c1.projects and p2 in c2.projects
  					implies c1 != c2
  
  
  s.projects in s.enrolled.projects
-- div,1
all s: Student, c: Course, p1: Project, P2: Project | c in s.(Person <: enrolled) and p1 in s.(Person <: projects) and p2 in s.(Person <: projects) implies (p1 in c.(Course <: projects) and p2 not in c.(Course <: projects)) or (p2 in c.(Course <: projects) and p1 not in c.(Course <: projects))
-- div,1
