Student.projects
-- div,1
all p : Project | projects.p
-- div,2
all p: Project | p in projects
-- div,1
all p:Person | projects.p in Student
-- div,1
all p : Project | Person.p in Student
-- div,1
all p: Project | p.~projects in Student
-- div,1
all p : Project | projects.p in Student
-- div,3
all p:Person | some projects.p & Person
-- div,2
no Professor.projects 
  projects.Project
-- div,1
Student.projects && some projects.Project
-- div,1
all p : Project | p.~(projects) in Student
-- div,2
all p: Project | some projects.p in Student
-- div,1
all p:Person | projects.p & Person in Student
-- div,4
all p: Person | p.projects implies p in Student
-- div,1
all p: Project | all x: p.Person | x in Student
-- div,1
all p:Person | (projects.p & Person) in Student
-- div,1
all p:Project | p in Student-Professor.projects
-- div,1
all p: Project| some s: Student | p in projects.s
-- div,2
all p:Person | one projects.p & Person in Student
-- div,1
all s: Person, p: Project | p.~projects in Student
-- div,2
all p:Person | some projects.p & Person in Student
-- div,1
Student.projects && some Person <: projects.Project
-- div,1
all c: Course | all p: Professor | no p in c.projects
-- div,13
all proj: Project | some p: Person | p->proj in Project
-- div,1
all x : Person | (x.projects :> Project) => x in Student
-- div,1
all p:Person-Professor,  pr:Project|some pr in p.projects
-- div,1
all s: Person, p: Project | s in Student => s p.~projects
-- div,1
all p: Project | some projects.p and projects.p in Student
-- div,4
all s: Person, p: Project | s in Student => s in s.projects
-- div,1
all p:Person-Professor,  pr:Project|some (pr in p.projects )
-- div,1
all p : Person - Professor, c : Course | c not in p.projects
-- div,1
all p : Project | some p : Person-Professor | p in p.projects
-- div,1
all p : Project | projects.p in Student and #(projects.p) > 0
-- div,1
Student.projects :> Project && some Person <: projects.Project
-- div,1
all x: Person, y: Project | x not in Student => not x.projects
-- div,1
all y:Student, p:Project | y->p in projects and some projects.p
-- div,1
all p:Person-Professor | (some c:Project | lone p in projects.p)
-- div,1
all p : Project | Student:>projects.p and #Person:>projects.p >=1
-- div,1
all x: Person-Professor, y: Project| some x.(Person <: projects).y
-- div,1
all s: Person, p: Project | s in Student => s p.~projects.~enrolled
-- div,1
all s: Person, p: Project | s in Student => s p.~projects.~projects
-- div,1
all x: Person, y: Project| lone x-> y in projects implies x in Student
-- div,1
all s: Student, pr: Project | (pr in s.projects)  && (#pr.~projects>0)
-- div,1
Student <: projects.Project
  
	
  
  some  Person <: projects.Project
-- div,1
all p : Person,x:Project | p.projects => p in Student and #(projects.x)>0
-- div,1
all p : Person, x:Project | p.projects => p in Student and #(projects.x)>0
-- div,1
all x: Person | some p: Project | x not in Student => p not in p.~projects
-- div,1
all p : Person, x:Project | p.projects => p in Student and #projects.x > 0
-- div,1
all p: Project | all u: Person | some p in u.projects implies u in Student
-- div,2
all p : Project | Person.projects.p in Student and #(Person.projects.p) > 0
-- div,1
all p: Project | some s:Student | p in s.projects and projects.p in Student
-- div,1
all p : Person | (some p.projects implies p in Student) and some projects.p
-- div,1
all p : Person - Student | no p.projects
  all p : Project | lone projects.p
-- div,1
all p : Person - Student | no p.projects
  all a : Project | lone projects.a
-- div,1
all x : Project | some Person <: projects.x & Person <: projects.x in Student
-- div,1
all p: Project | all u: Person | (some p in u.projects) implies (u in Student)
-- div,1
all p : Person, x:Project | #p.projects >0 => p in Student and #projects.x > 0
-- div,1
all x: Person | x in projects.Project & Student
  
	
  
  some projects.Project
-- div,1
all a:Person-Professor | some projects.a
  all a: Person-Student | no a.projects
-- div,1
all p: Project | all x: Person | p = x.projects => x in Student and some projects.p
-- div,1
all p: Project | all x: Person | x in projects.p => x in Student and some projects.x
-- div,1
all p: Person | some p.projects implies p in Student
	all p: Project | p in projects
-- div,2
all p: Project | some s:Student | p in s.projects and (Student)projects.p in Student
-- div,1
all p:Person | projects.p & Person in Student
  all p:Person | some projects.p & Person
-- div,1
all p: Person | some p.projects implies p in Student
  	all p: Project | some projects.p
-- div,1
all p:Person-Student | no p.projects 
  	all p:Project | some p:Person | p in p.projects
-- div,1
all p : Project | all s : projects.p | s in Student
  	all p : Project | some projects.p
-- div,1
all x: Person | x in projects.Project & Student
  
	
  
  some Person in projects.Project
-- div,1
all s : Person | lone s.projects implies s in Student
  all p : Project | lone projects.p
-- div,1
all p : Person - Student | no p.projects
	all p : Project | some s : Student | s.projects
-- div,1
all x:Person-Student | no x.projects
  		all x:Project |all u:Person |some x in u.projects
-- div,4
all s : Person, p : Project | p in s.projects implies s in Student and some s in projects.p
-- div,1
all x:Person-Student | no x.projects
  		all x:Project |some u:Student |some x in u.projects
-- div,1
all p: Person, pr: Project | (p not in Student => pr not in p.projects)  && (#pr.~projects>0)
-- div,1
all p: Person | some p.projects implies p in Student
  
  	all p: Project | some (projects).p
-- div,1
all p: Person | some p.projects implies p in Student
	all p: Project | p in Person <: projects
-- div,1
all p: Person, pr: p.projects | p not Student => p not in pr
  	all s: Student | #s.projects>0
-- div,1
all p: Person | some p.projects implies p in Student
	all p: Project | Person <: p in projects
-- div,1
all p : Person | some p.projects implies p in Student
  	all proj : Project | proj in projects
-- div,1
all s : Person, p : Project | (p in s.projects implies s in Student) and (some s in projects.p)
-- div,2
all p: Person | some p.projects implies p in Student
	all p: Project | p in (Person <: projects)
-- div,1
all ps : Project | some p1 : Person | ps in p1.projects implies p1 in Student & ps in p1.projects
-- div,1
all x : Person | x.projects :> Project => x in Student
  
	
  
  	some  Person <: projects.Project
-- div,1
all x : Project | some Person <: projects.x
	all y : Person | y.projects :> Project => y in Student
-- div,1
all p: Project | all x: Person | x in projects.p => x in Student
  	all p: Project | some projects.p
-- div,1
all x : Person | (x.projects :> Project) => x in Student
  
	
  
  	some  Person <: projects.Project
-- div,1
all x : Project | some Person <: projects.x
	all y : Person | (y.projects :> Project) => y in Student
-- div,1
all proj:Project, p:Person | (p in projects implies p in Student) and (some p2:Person | projects.proj)
-- div,1
all p: Person, pr: Project | p not in Student => p not in pr.~projects
  	all s: Project | #s.~projects>0
-- div,1
all p : Person, pr : Project | pr in p.projects implies p in Student
  	all p : Project | some projects.p
-- div,1
all proj:Project, p:Person | (p in projects.proj implies p in Student) and (some p2:Person | projects.proj)
-- div,1
all p : Person | some p.projects implies p in Student
  	all p : Project | some p : Person | p in p.projects
-- div,1
all p : Project | some per: univ | per in projects.p and all s: Person | s in projects.p implies s = Student
-- div,1
all x : Project | all y : Person | x in y.projects implies y in Student
  	all x : Project | some projects.x
-- div,1
all p : Project | some per: univ | per in projects.p and all s: Person | s in projects.p implies s in Student
-- div,1
all proj:Project, p:Person | (p in projects.p implies p in Student) and (some p2:Person | p2 in projects.proj)
-- div,1
all s: Student, p: Person, pr: Project | p = s && s in pr.~projects
  	all pr: Project, s: Student | some pr.~projects
-- div,2
all s : Person, p : Project | p in s.projects implies s in Student
	all p : Project, s : Person | some s in projects.p
-- div,2
all s,p : univ | s in Person and s->p in projects implies s in Student and some per : Person | per in projects.Project
-- div,1
all p : Project, p : Person | p in projects.p implies p in Student 
  	all p : Project | some p : Person | p in projects.p
-- div,1
all s: Student, p: Person, pr: Project | p = s && s in pr.~projects
  	all pr: Project, s: Student | #(s in pr.~projects)>0
-- div,1
all p : Project, student : Student | p in student.projects
    all p : Project | some person : Person | p in projects.person
-- div,2
all s : Person, p : Project | (p in s.projects implies s in Student)
    all s : Person, p : Project | (some s in projects.p)
-- div,1
all p : Person | (p in Student => some p.projects) and (p in Professor => no p.projects)
    all prj:Project | some prj.Person
-- div,1
all p : Project, pe : Person | p in projects.pe implies pe in Student 
  	all p : Project | some pe : Person | pe in projects.p
-- div,1
all p : Person, pr : Project | p not in Student implies no pr in p.projects
  	all pr: Project | some p : Person | p in p.projects
-- div,1
all p : Person, pr : Project | p not in Student implies  pr not in p.projects
  	all pr: Project | some p : Person | p in p.projects
-- div,1
all s,p : univ | s in Person and s->p in projects implies s in Student and some per : Person | all proj: Project | per in projects.proj
-- div,1
all p : Person | (p in Student implies some p.projects) and (p in Professor implies no p.projects)
    all prj:Project | some prj.Person
-- div,1
all s,p : univ | s in Person and s->p in projects implies s in Student and all proj: Project | some per : Person | per->proj in projects
-- div,3
all p1 : Project | some pr1 : Student | pr1.projects.p1 
  	all p2 : Project | all pr2 : Person   | pr2->p2 in projects => pr2 in Student
-- div,1
all p : Project | (some s : Student | p in s.projects) 
    all p : Person | (p.projects != none) & (all c : p.teaches | c !in p.enrolled)
-- div,1
all p : Project | (some s : Student | p in s.projects) 
    all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none))
-- div,1
