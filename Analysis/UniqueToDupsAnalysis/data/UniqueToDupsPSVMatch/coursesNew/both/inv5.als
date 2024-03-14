some Person.projects
-- div,1
no Professor.projects
-- div,2
some  Person <: projects.Project
-- div,1
all p: Person | p in Student
-- div,1
all p : Professor | no p.projects
-- div,1
all s: Student | #s.projects > 0
-- div,1
all p : Project  | 
  		no Professor.projects
-- div,1
all p : Person - Professor | no p.projects
-- div,1
all proj:Project, p:Student | proj in p.projects.projects
-- div,1
all x: Person | x in projects.Project & Student
-- div,1
all x:Student, p:Project| x->p in projects
-- div,1
some s : Student , p : Project | p in s.projects
-- div,1
all p:Project | p in (Student-Professor).projects
-- div,1
all p: Person | p in Student && #p.projects > 0
-- div,1
all x: Person | x in Student => #x.projects>0
-- div,1
all p : Project | all s : Person | s in projects.p
-- div,1
all p : Project | all s : Student | s in projects.p
-- div,1
all p : Person - Professor, c : Course | no p.projects
-- div,1
all p : Project | one s : Student | p in s.projects
-- div,1
no (Person-Professor).projects && Project in Student.projects
-- div,1
some s : Student | all p : Project | p in s.projects
-- div,1
all x: Student | some p: Project | x.projects != p
-- div,1
all s : Student | some p : Project | p in s.projects
-- div,1
all x:Student| (some p:Project| x->p in projects)
-- div,1
some s : Person - Professor, p : Project | p in s.projects
-- div,1
all p:Person, proj:Project | proj in p.enrolled.projects
-- div,1
all y:Student, c:Course, p:Project | y->p in projects
-- div,1
all y:Student, p:Project | y->p in projects and some p.projects
-- div,1
all p : Project | some p1 : Student | p1.projects in Student
-- div,1
all x: Person, y: Project | x in Student => #x.projects>0
-- div,1
all p: Person, pr: Project | (p in Student => pr in p.projects)
-- div,1
all s: Person, p: Project | s in Student => s in p.~projects
-- div,2
all s: Person, p: Project | s in Student and s in p.~projects
-- div,1
all p : Project | all s : Person-Professor | s in projects.p
-- div,1
all x: Person, p: Project | x not in p.~projects => x not in Student
-- div,1
all p : Project | (some x : Person - Professor | p in x.projects)
-- div,1
all s: Person, p: Project | s not in Student and s not in p.~projects
-- div,1
all p : Project | some s : Person - Professor | p in s.projects
-- div,1
all p : Project | some u : Person-Professor | p in u.projects
-- div,2
all project : Project, student : Student | project in student.projects
-- div,1
all p : Person | (some p.projects implies p in Student) and some p.projects
-- div,1
all x: Person | some x.projects implies x in Student and lone (x.projects)
-- div,1
all x: Person | (some x.projects implies x in Student) and lone (x.projects)
-- div,1
all p: Project | all x: Person | x = projects.p and x in Student
-- div,1
no Professor.projects
  	all pr : Project | some Student.projects & pr
-- div,1
all p : Project | some per: Person - Professor | per in projects.p
-- div,1
all p : Project | all s : Person | s in projects.p and s in Student
-- div,4
all s : Person | all p : Project |  (s in projects.p) and (s in Student)
-- div,1
all x : Project | all y : Person | y in projects.x and y in Student
-- div,1
all p:Project| one x:Person| x->p in projects and x in Student
-- div,1
all proj : Project, p:Person | proj in Person.projects implies p in Student
-- div,1
all x: Person | some p: Project | x not in Student => x.projects != p
-- div,1
some x:Person| all p:Project| x->p in projects implies x in Student
-- div,1
all p : Person | some p.projects implies p in Student
  	some Person.projects
-- div,1
all p : Project | all s : Person | s in p.(~(Person <: projects)) and (s in Student)
-- div,2
all p:Person, c:Course, proj:Project | proj in p.enrolled.projects
-- div,1
all x: Person | some p: Project | x not in Student => p not in x.projects
-- div,1
all p : Project | (some x : Person| x not in Professor and p in x.projects)
-- div,1
all p : Person | some p.projects implies p in Student
  	some Student.projects
-- div,1
all p : Project | some s : Person | s in projects.p implies s not in Professor
-- div,1
all s: Student, p: Person, pr: Project | p = s && s in pr.~projects
-- div,1
all p : Project | some per: Person | per in projects.p implies per = Student
-- div,1
all s: Student, p: Person, pr: Project | p != s && s in pr.~projects
-- div,1
all s: Student, p: Person, pr: Project | p in s && s in pr.~projects
-- div,1
all pr:Project|some p:Person| pr in p.projects implies p not in Professor
-- div,1
all p:Person, proj:Project | proj in p.enrolled.projects and p in Student
-- div,1
all s: Person, p: Project | s in Student => s in p.~projects.~enrolled
-- div,1
all p : Project | all pr : Person | pr in p.~(projects) iff pr in Student
-- div,1
some student : Student | all project : Project | student->project in projects
-- div,1
all p:Person, proj:Project | proj in p.enrolled.projects implies p in Student
-- div,1
some p:Person | all proj:Project | proj in p.projects implies p in Student
-- div,1
all project : Project, student : (Person - Professor) | project in student.projects
-- div,1
all p : Project | one s : Student | p in s.projects and no Professor.projects
-- div,2
all p : Project | some s : Student | p in s.projects and no Professor.projects
-- div,1
all x: Person | x in projects.Project & Student
  
	
  
  some  Person <: projects.Project
-- div,1
all x : Person | all y : Course | x.projects in y.projects => y not in x.teaches
-- div,1
all x: Person, y: Project| lone y.(Person<: projects) implies x -> y in projects and x in Student
-- div,1
all x: Person, y: Project| some (Person<: projects).y implies x -> y in projects and x in Student
-- div,1
all x : Person | (some x.projects) => x in Student
  
	
  
  	some  Person <: projects.Project
-- div,1
all p:Person | all proj:Project | (proj in p.enrolled.projects implies p in Student)
-- div,1
some person : Person - Professor | all project : Project | person->project in projects
-- div,1
all p : Project | some s : Student | some t : Professor | 
  		no Professor.projects
-- div,1
all ps: Person, pr:Project | ps not in Student implies (no ps.projects and pr in ps.projects )
-- div,3
all ps: Person, pr:Project | (ps not in Student implies no ps.projects) and (pr in ps.projects)
-- div,2
all x: Person | x in projects.Project => x in Student
  
	
  
  some  Person <: projects.Project
-- div,1
all x: Project | some y: Person | y not in Professor and y in Student and x in y.projects
-- div,3
all s : Person | all p : Project |  s in projects.p implies (s in Student ) and (s not in Professor)
-- div,3
no (Professor-Student).projects 
  	and (some s : Person | all p : Project | p in s.projects)
-- div,2
all p : Project | some s : Person | s in projects.p implies (s not in Professor) and s in Student
-- div,1
all p : Project | one s : Student | p in s.projects and no (Professor-Student).projects
-- div,2
no (Professor-Student).projects and (some s : Student | all p : Project | p in s.projects)
-- div,2
all pr:Project|some p:Person| pr in p.projects implies p in Student and p not in Professor
-- div,1
all x : Person | all y : Project | x in projects.y => x not in teaches.(Course<:projects.y)
-- div,1
all a:Person-Professor | some a.projects
  all a: Person-Student | no a.projects
-- div,1
all x : Person | some y : Project | x in projects.y => x not in teaches.(Course<:projects.y)
-- div,1
all x: Person | x in projects.Project & Student
  
	
  
  some x: Person | x in projects.Project
-- div,1
all p : Project | all s : Person-Professor | s in projects.p and no projects.p&Professor
-- div,1
all p : Person | (p not in Student) implies (p.projects=none)
    no p : Person | p.~(Person <: projects)=none
-- div,1
all p : Professor | no p.projects
  	all p : Project | some s : Student | p in s.projects
-- div,2
all p : Project, person : Person, student : Student | p in student.projects && p in person.projects
-- div,3
all p : Project | all s : Person | s in projects.p and (s in Student) and ( s not in teaches.projects.p)
-- div,1
all p : Person - Student | all pr: Project | no p.projects and pr in (Person-Professor).projects
-- div,1
all p : Professor | no p.projects
  	all pr : Project | some s : Student | pr in s.projects
-- div,1
all p : Project | all s : Person | s in projects.p implies (s in Student) and ( s not in teaches.projects.p)
-- div,2
all p : Project | (some s : Student | p in s.projects) 
    all s : Student | (s.projects != none)
-- div,1
all x: Person, s: Student,p: Project | (x not in p.~projects => x not in Student) && #s.projects>0
-- div,1
all x : Person | (some x.projects) => x in Student && x not in Professor
  
	
  
  	some  Person <: projects.Project
-- div,1
all p: Person, pr: p.projects | p not in Student => p not in pr
  	all s: Student | #s.projects>0
-- div,1
all p : Person - Student | no p.projects
  all a : Project | lone s : Student | s in projects.a
-- div,1
all p : Project | some s : Student | no pr : Professor | s in p.(~(Person <: projects)) or pr in p.(~(Person <: projects))
-- div,1
all p:Person | all c:Course | all proj:Project | (proj in p.enrolled.projects implies p in Student)
-- div,1
some s : Person - Student | no s.projects 
  all p : Project | (some s : Student | p in s.projects)
-- div,1
all p : (Person - Professor) | no p.projects
  	all p : Project | some s : Student | p in s.projects
-- div,1
all p : Person - Professor | no p.projects
    all p1 : Project | (some x : Person | p1 in x.projects)
-- div,1
all p : Person - Professor | no p.projects
    all p1 : Project | (some s : Student | p1 in s.projects)
-- div,1
all p: Person, pr: Project | p not in Student => p not in pr.~projects
  	all s: Person | #s.projects>0
-- div,1
all p : Project | some per: Person | per in projects.p and all s: Person - Professor | s in projects.p
-- div,1
all p:Person, proj:Project | proj in p.projects implies p in Student and (some p:Person | proj in p.enrolled)
-- div,1
all p: Person, pr: Project | p not in Student => p not in pr.~projects
  	all s: Student | #s.projects>0
-- div,1
all p:Person, proj:Project | proj in p.projects implies p in Student and (some p1:Person | proj in p.enrolled)
-- div,1
all x : Person | #(x.projects) > 0 implies x in Student
  all x : Project | all y : Person | x in y.projects
-- div,1
all x : Person | #(x.projects) > 0 implies x in Student
  all y : Person | all x : Project  | x in y.projects
-- div,1
all p:Person, proj:Project | proj in p.projects implies p in Student and (some p1:Person | proj in p1.enrolled)
-- div,1
all p:Project| one c:Course |some y:Person| c->p in projects and y in Student implies y->p in projects
-- div,1
all x : Person | #(x.projects) > 0 implies x in Student
  all y : Person | some x : Project  | x in y.projects
-- div,1
all p:Project| one c:Course |some y:Person| c->p in projects implies y->p in projects and y in Student
-- div,1
all y:Person, p:Project, c:Course | y->p in projects and y in Student and y->c in enrolled and c->p in projects
-- div,1
all u:Person, p:Project, c:Course| u->p in projects and u->c in enrolled and c->p in projects and u in Student
-- div,1
all a:Person-Professor | some c:Project | c in a.projects
  all a: Person-Student | no a.projects
-- div,1
some y:Person, p:Project, c:Course | y->p in projects and y in Student and y->c in enrolled and c->p in projects
-- div,1
all u:Person, p:Project, c:Course| u->p in projects implies u in Student and u->c in enrolled and c->p in projects
-- div,1
all s:Student, proj:Project | s in projects.proj implies (some c:Course | s in enrolled.c and proj in c.projects)
-- div,1
all s: Student, p: Person, pr: Project | p = s && s in pr.~projects
  	all s: Student | some s.projects
-- div,1
all y:Person, p:Project, c:Course | y->p in projects implies y in Student and y->c in enrolled and c->p in projects
-- div,5
all y:Person, p:Project, c:Course | y->p in projects and y in Student implies y->c in enrolled and c->p in projects
-- div,1
all s: Student, p: Person, pr: Project | p = s && s in pr.~projects
  	all s: Student | #s.projects>0
-- div,1
all p:Project| one c:Course |some y:Person| y->c in enrolled and c->p in projects implies y->p in projects
-- div,1
all p : Project | some per,per2: Person | per in projects.p and per2 in projects.p implies per = Student and per2 = Student
-- div,1
(all s:Student | some p:Project | p in s.projects)
	and
	(all p:Project | some s:Student | p in s.projects)
-- div,1
(all s:Student | some p:Project | p in s.projects)
	and
	(all p:Project | all pr:Person | p in pr.projects)
-- div,1
(all s:Student | all p:Project | p in s.projects) and
    (all p:Project | some pe:Person | p in pe.projects)
-- div,1
all s : Student | some p : Project | p in s.projects
  	all p : Project | some s : Student | s in projects.p
-- div,1
all s:Student | all p:Project | p in s.projects and
    all p:Project | some pe:Person | p in pe.projects
-- div,1
some p:Person | all proj:Project | proj in p.projects implies p in Student and (some p2:Person | proj in p2.projects)
-- div,1
all s:Student | all p:Project | s->p in projects
    all pr:Project | some s:Student | s->pr in projects
-- div,1
some y:Person|all p:Project, c:Course | y->p in projects and y in Student and y->c in enrolled and c->p in projects
-- div,1
all p : Project | some s : Student | some t : Professor | 
  		no Professor.projects 
  			and
  		(p in s.projects or p in t.teaches)
-- div,2
all s:Student | all pr:Project | s->pr in projects
  all pr:Project | some s:Student | s->pr in projects
-- div,1
(all ref0:(one Student),ref1:(one Course),ref2:(one Project)|(((ref0 -> ref2) in (Person <: projects)) => (((ref0 -> ref1) in (Person <: enrolled)) && ((ref1 -> ref2) in (Course <: projects)))))
-- div,1
all s:Student | all proj:Project | s in projects.proj implies (some c:Course | s in enrolled.c and proj in c.projects)
-- div,1
all s:Student | some pr:Project | s->pr in projects
  all pr:Project | some s:Student | s->pr in projects
-- div,1
all p: Person, pr: Project | p not in Student => p not in pr.~projects
  	all s: Project | #s.~projects.~enrolled>0
-- div,1
some y:Person|all p:Project, c:Course | y->p in projects implies y in Student and y->c in enrolled and c->p in projects
-- div,1
all p:Project, c:Course |some y:Person| y->p in projects implies y in Student and y->c in enrolled and c->p in projects
-- div,1
all p:Project, c:Course |some y:Person| y->p in projects and y in Student implies y->c in enrolled and c->p in projects
-- div,3
all p : Project, student : Student | p in student.projects
    all p : Project | some person : Person| p in person.projects
-- div,1
all p : Project | some s : Person - Professor| p in s.projects
	all p : Project | some s : Student | p in s.projects
-- div,1
all project : Project | some student : Student | all professor : Professor | student->project in projects and no professor.projects
-- div,3
all s: Student, p: Person, pr: Project | p = s && s in pr.~projects
  	all pr: Project, s: Student | some s.projects
-- div,1
all project : Project | some student : Student | student->project in projects
  	all professor : Professor | no professor.projects
-- div,1
some u:Person|all p:Project| one c:Course| u->p in projects and u->c in enrolled and c->p in projects and u in Student
-- div,1
all u:Person|some p:Project| all c:Course| u->p in projects and u->c in enrolled and c->p in projects and u in Student
-- div,1
all u:Person|some p:Project| one c:Course| u->p in projects and u->c in enrolled and c->p in projects and u in Student
-- div,1
all p:Project| one c:Course |some y:Person| c->p in projects implies y->c in enrolled and  y->p in projects and y in Student
-- div,1
all s : Person | all p : Project | s in projects.p implies s in Student
  	all s : Person | some p : Project | s in projects.p
-- div,1
all s : Person | all p : Project | p in s.projects implies s in Student
  	all s : Person | some p : Project | s in projects.p
-- div,1
all s : Person | all p : Project | p in s.projects implies s in Student
  	all s : Person | some p : Project | p in s.projects
-- div,1
all p:Project| one c:Course |some y:Person| y->c in enrolled and c->p in projects implies y in Student and y->p in projects
-- div,2
all x : Project | some y : Person | x in y.projects implies y in Student
  all y : Person | some x : Project  | x in y.projects
-- div,1
all p:Project| one c:Course |some y:Person| c->p in projects and y in Student implies y->p in projects and y->c in enrolled
-- div,1
some u:Person|all p:Project| one c:Course| u->p in projects and u in Student  implies u->c in enrolled and c->p in projects
-- div,1
all x : Project | some y : Person | x in y.projects implies y in Student
  some x : Project | all y : Person | x in y.projects
-- div,1
all p:Project| one c:Course |some y:Person| y->c in enrolled and c->p in projects implies y->p in projects and y in Student
-- div,1
all p:Project| some c:Course |some y:Person| c->p in projects and y in Student implies y->p in projects and y->c in enrolled
-- div,1
some p:Project| one c:Course |some y:Person| y->c in enrolled and c->p in projects implies y in Student and y->p in projects
-- div,1
(all s:Student | some p:Project | p in s.projects)
	and
	(all p:Project | all pr:Person | p in pr.projects implies pr in Student)
-- div,1
all s: Person, p: Project | s in Student implies s in p.~projects
  	all s: Person, p: Project | s not in Student implies s not in p.~projects
-- div,1
all p : Person | all proj : Project | #(p.projects)>0 implies p in Student
  	all p : Person | all proj : Project | proj in p.projects
-- div,1
all p : Project | (some s : Student | p in s.projects) 
    all p : Person | (p.projects != none) and (all c : p.teaches | c !in p.enrolled)
-- div,1
all p : Person | all proj : Project | #(p.projects)>0 implies p in Student
  	all c : Course |some p : Person | c.projects in p.projects
-- div,1
all p : Person | all proj : Project | #(p.projects)>0 implies p in Student
  	some p : Person | all c : Course | c.projects in p.projects
-- div,1
all p : Person | all c : Course | p in enrolled.c implies p in Student
	all s : Person | all p : Project |  s in projects.p implies (s in Student ) and (s not in Professor)
-- div,1
