(Person<: projects) in Student some -> set Project
-- div,2
Person.projects - (Person - Student).projects = Project
-- div,1
no (Person-Student).projects
  	Project in Student.projects
-- div,3
(Person-Student).projects = none
  	 Project in Student.projects
-- div,2
no (Person-Student).projects
	all p:Project | p in Person.projects
-- div,1
all p: Project | p in Student.projects and p not in (Person - Student).projects
-- div,1
all x : Project | some Person <: projects.x && Person <: projects.x in Student
-- div,1
all p : Project | some Person <: projects.p and Person <: projects.p in Student
-- div,2
all p : Project | Person <: projects.p in Student and some Person <: projects.p
-- div,2
all p: Person | #(p.projects)>0 implies p in Student
  	Project = Person.projects
-- div,1
all p:Project | Person:>projects.p in Student and #Person:>projects.p>0
-- div,1
all p:Project | some (Person <: projects).p
	all p:Project | (Person <: projects).p in Student
-- div,2
all p : Project | Person:>projects.p in Student and #Person:>projects.p >=1
-- div,1
all p : Project | Person:>projects.p in Student and #Student:>projects.p >=1
-- div,1
Person <: projects.Project in Student
    all p : Project | some Person <: projects.p
-- div,1
Person :> projects.Project in Student
  	all p: Project | some Person :> projects.p
-- div,2
all p : Person - Student | no p.projects 
  all p: Project | p in Person.projects
-- div,2
(((Person :> ((Person <: projects) . Project)) in Student) && (all ref0:(one Project)|(some (Person :> ((Person <: projects) . ref0)))))
-- div,1
all p:Person-Student | no p.projects
	all p:Project | p in Student.projects
-- div,3
all p : Project |
  		some s : Student |
  			p in s.projects
  	
  	no (Person - Student).projects
-- div,1
all p:Person | some p.projects implies p in Student
  	all p:Project | some (Person <: projects).p
-- div,4
all p: Person | some p.projects implies p in Student
	all p: Project | p in Person.projects
-- div,1
all p : Project | #((Person <: projects.p) - Student) = 0 and #((Person <: projects.p) & Student) > 0
-- div,1
all p : Person | (p not in Student) implies (p.projects=none)
    no p : Project | p.~(Person <: projects)=none
-- div,1
all p : Project | all s : (Person<:projects).p | s in Student
  	all p : Project | some (Person<:projects).p
-- div,1
all p:Project | projects.p & Person in Student
  all p:Project | some projects.p & Person
-- div,1
all p : Project | Person <: projects.p in Student
	all p : Project | some Person <: projects.p
-- div,1
all p : Person | some p.projects implies p in Student
  	all proj : Project | proj in Person.projects
-- div,5
all p:Project | projects.p <: Person in Student
  all p:Project | some projects.p <: Person
-- div,2
all p:Person| some p.projects => p in Student
  
	
	all p:Project| some projects.p & Person
-- div,2
all p : Person | some p.projects implies p in Student
  	all proj : Project | proj in Student.projects
-- div,1
all x:Person | some x.projects implies x in Student
  	all x:Project | some Person <: projects.x
-- div,1
all p : Person | some p.projects implies p in Student
  	all pr : Project | some Student.projects & pr
-- div,1
all p: Person - Student | no p.projects
    all p: Project | some s: Person | p in s.projects
-- div,2
all p:Project | some (Person <: projects).p
	all p:Project, x:Person | x in (Person <: projects).p implies x in Student
-- div,2
all p: Project | some (Person<:projects).p
	all p: Project, s: Person | s in projects.p implies s in Student
-- div,3
all x:Person-Student | no x.projects
  		all x:Project |some u:Student | x in u.projects
-- div,1
all a:Project| some c:Student | a in c.projects
  all a: Person-Student | no a.projects
-- div,1
all s : Person - Student| no s.projects
	all p : Project | some s : Student | p in s.projects
-- div,5
all x: Person - Student | no x.projects
  all p: Project | some s: Student | p in s.projects
-- div,21
all p:Person-Student | no p.projects
  all p:Project | some s:Student | p in s.projects
-- div,18
all p : Person - Student | no p.projects
  all a : Project | some s : Student | s in projects.a
-- div,1
all x: Person - Student | no x.projects
  all p: Project | some x: Student | p in x.projects
-- div,2
all p : Person - Student | no p.projects
  all a : Project | some s : Student | a in s.projects
-- div,1
all x : Person - Student | no x.projects
  
	
  
	all p : Project | (some pp : Person | p in pp.projects)
-- div,1
all p:Person-Student | no p.projects 
  	all p:Project | some pe:Person | p in pe.projects
-- div,1
all p:Person - Student| no p.projects
	all pr:Project|some p:Person| pr in p.projects
-- div,1
all p : Person - Student | no p.projects
    all p1 : Project | (some s : Student | p1 in s.projects)
-- div,1
all p : Person-Student | no p.projects
  	all pr : Project | some s : Student | pr in s.projects
-- div,4
all p : Person - Student | no p.projects
  	all p : Project | some per : Person | p in per.projects
-- div,1
all p :Project | some s : Student | p in s.projects
  	all u : Person-Student | #u.projects=0
-- div,1
(all per :Person -Student | no per.projects)
  	and
  	(all p : Project | some pe: Person | p in pe.projects)
-- div,1
all p : Person - Student | no p.projects 
    all pr : Project | some som : Person | pr in som.projects
-- div,1
all p:Person-Student | no p.projects
  all proj:Project | some s:Student | proj in s.projects
-- div,1
all x : Project | some Person <: projects.x
	all y : Person | (some y.projects :> Project) => y in Student
-- div,1
all p: Person | p not in Student implies no p.projects
  all p: Project | some s: Student | p in s.projects
-- div,3
all p : Person | some p.projects implies p in Student
  	all p : Project | some s : Person | p in s.projects
-- div,1
all x: Person | (some x.projects implies x in Student)
  all x: Project | some p: Person | p->x in projects
-- div,1
all p:Person| some p.projects implies p in Student 
  	all p:Project| some s:Student| p in s.projects
-- div,2
all p:Project,c:Person| c in projects.p => c in Student
  all p:Project | some projects.p & Person
-- div,2
all x:Person | #(x.projects)>0 implies x in Student
  all x:Project | some y:Person | x in y.projects
-- div,2
all p:Project | some student:Person | p in student.projects && (all x:Person - Student | no x.projects)
-- div,1
all x:Person | x not in Student implies #(x.projects)=0
  	all x:Project | some y:Person | x in y.projects
-- div,1
all p : Project | some per: Person | per in projects.p and
    all s: Person | s in projects.p implies s in Student
-- div,2
all p:Person| #p.projects >=1 implies p in Student 
  	all p:Project| some s:Student| p in s.projects
-- div,1
all p : Person, x:Project | #p.projects >0 => p in Student 
  all p:Project | #(projects.p & Person)> 0
-- div,1
all p: Person | some p.projects implies p in Student
	all proj: Project | some p: Person | p->proj in projects
-- div,2
all proj : Project | proj in Person.projects
    all proj : Project, p:Person | proj in p.projects implies p in Student
-- div,1
all p : Person | #(p.projects)>0 implies p in Student
  	all proj : Project | some p : Person | proj in p.projects
-- div,1
all p : Person | p in projects.Project => p in Student
  	all p : Project | some p1 : Person | p1 in projects.p
-- div,1
all per : Person | #per.projects > 0 implies per in Student
	all p : Project | some per2 : Person | p in per2.projects
-- div,2
all p : Project | all p1 : Person | p in p1.projects implies p1 in Student
  	all p : Project | #(projects.p & Student) > 0
-- div,1
all p : Project, s : Person | s in projects.p implies s in Student 
  	all p : Project | some s : Person | s in projects.p
-- div,3
all s : Person, p : Project | (p in s.projects implies s in Student)
    all p : Project | some s : Student | s in projects.p
-- div,1
all p : Project, s : Person | p in s.projects implies s in Student
  	all p : Project | some s : Student | s in projects.p
-- div,1
all p : Project, s : Person | s in projects.p implies s in Student 
  	all p : Project | some s : Student | s in projects.p
-- div,2
all x: Person, p : Project | p in x.projects => x in Student
  all p: Project | (some s: Student | p in s.projects)
-- div,1
all p:Project, x:Person| x->p in projects implies x in Student
  all p:Project| some x:Student| x->p in projects
-- div,1
all x:Person, p:Project| x->p in projects implies x in Student
  all p:Project| (some x:Student| x->p in projects)
-- div,1
all p : Person, pr : Project | pr in p.projects implies p in Student
  	all pr : Project | some p : Person | pr in p.projects
-- div,1
(all p : Project | all per :Person -Student | no per.projects)
  	and
  	(all p : Project | some pe: Person | p in pe.projects)
-- div,1
all p : Person, pr : Project | p not in Student implies pr not in p.projects
  	all pr: Project | some s : Person | pr in s.projects
-- div,1
all p : Person, pr : Project | p not in Student implies pr not in p.projects
  	all pr: Project | some s : Student | pr in s.projects
-- div,2
all p : Person | #(p.projects)> 0 implies p in Student
  all project : Project | some person : Person | project in person.projects
-- div,1
all p : Project | all  s : Person | p in s.projects implies s in Student
  	all p : Project | some s : Person | p in s.projects
-- div,1
(all x: Person | all p: Project | p in x.projects => x in Student) && (all j: Project | some z: Person | z in projects.j)
-- div,5
all p: Project | all u: Person | p in u.projects implies u in Student
  	all p: Project | some u: Person | p in u.projects
-- div,1
all s : Person | all p : Project |  p in s.projects implies s in Student
  	all  p : Project | some s : Person | s in projects.p
-- div,4
all x : Project | all y : Person | y in projects.x implies y in Student
  all x : Project | some y : Person | y in projects.x
-- div,1
all x : Project | all y : Person | x in y.projects implies y in Student
  all x : Project | some y : Person | x in y.projects
-- div,3
all p : Person, ps : Project | ps in p.projects implies p in Student
  	all p : Project | some person : Person | p in person.projects
-- div,2
all x:Person| all p:Project| x->p in projects implies x in Student
  
   all p:Project| (some x:Student | x->p in projects)
-- div,1
(all p:Person | all pr:Project | pr in p.projects implies p in Student)
    and
    (all pr:Project | some p:Person | pr in p.projects)
-- div,4
all project : Project | some student : Student | student->project in projects
  	all professor : Person - Student | no professor.projects
-- div,3
all p:Person | all pr:Project | p->pr in projects implies p in Student
  all pr:Project | some s:Student | s->pr in projects
-- div,2
all p:Person | all po:Project | p->po in projects implies p in Student
    all pr:Project | some s:Student | s->pr in projects
-- div,2
all p1 : Project | some s: Student  | s->p1 in projects
  	all p2 : Project | all  p: Person   | p->p2 in projects => p in Student
-- div,1
all ps : Project | some p1 : Person | ps in p1.projects
  all ps : Project | all p1 : Person | ps in p1.projects implies p1 in Student
-- div,1
all p : Project, s : Person | s in projects.p implies s in Student 
  	all p : Project | some s : Person | s in projects.p and s in Student
-- div,1
all p : Person | all proj : Project | #(p.projects)>0 implies p in Student
  	all proj : Project | some p : Person | proj in p.projects
-- div,1
all p1 : Project | some st1 : Student | st1->p1 in projects
  	all p2 : Project | all p : Person | p->p2 in projects implies p in Student
-- div,4
all p:Project, x:Person| x->p in projects implies x in Student
  all p:Project| some x:Person| x->p in projects and x in Student
-- div,1
all per:Person | all po:Project | po in per.projects implies per in Student
    all pro:Project | some p:Person | pro in p.projects
-- div,4
all per:Person | all po:Project | po in per.projects implies per in Student
    all pro:Project | some s:Student | pro in s.projects
-- div,1
(all pro : Project | some s: Student | s->pro in projects)
  (all p2 : Project | all pr2 : Person   | pr2->p2 in projects implies pr2 in Student)
-- div,2
all p : Project | some person : Person | p in person.projects
  	all p : Project, person : Person | p in person.projects => person in Student
-- div,1
all p1 : Project | some pr1 : Student | pr1->p1 in projects
  	all p2 : Project | all pr2 : Person   | pr2->p2 in projects => pr2 in Student
-- div,3
all p : Person | some p.projects implies p in Student
  	all proj : Project | proj in Person.projects
    all proj : Project | proj in Student.projects
-- div,1
