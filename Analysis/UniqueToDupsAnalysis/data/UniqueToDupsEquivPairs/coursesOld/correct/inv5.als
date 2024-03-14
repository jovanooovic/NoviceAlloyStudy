-- equiv pair start,368
Person<:projects in Student some -> Project
-- div,37
Person.projects - (Person - Student).projects = Project
-- div,8
(Person <: projects).Project in Student
  	Person.projects = Project
-- div,1
(no (Person-Student).projects) and (Project in Person.projects)
-- div,1
Project in Person.projects
    no (Person - Student).projects
-- div,3
no (Person-Student).projects
	Project in Student.projects
-- div,7
(Person<:projects).Project in Student
  	Person<:projects in Person some -> Project
-- div,2
all p: Project | some (Person<:projects).p and (Person<:projects).p in Student
-- div,10
no (Person-Student).projects
  	(this/Person <: projects) in Student some -> Project
-- div,1
all p:Project | (Person<:projects).p in Student and some (Person<:projects).p
-- div,9
Person <: projects.Project in Student
  	Project in Person.projects
-- div,3
(Person<:projects).Project in Student
    
    all y:Project| some (Person<:projects).y
-- div,4
all p : Project | p.~(Person <: projects) in Student and some p.~(Person <: projects)
-- div,4
all p: Project | some (Person<:projects).p
  no (Person-Student).projects
-- div,1
no (Person <: projects).Project - Student
  	all p : Project | some (Person <: projects).p
-- div,2
Project.~(Person<:projects) in Student
  	all p : Project | some p.~(Person<:projects)
-- div,2
no (Person-Student).projects and all p: Project | p in Person.projects
-- div,1
all p : Project | p in Person.projects
    no (Person - Student).projects
-- div,1
all p : Project | no ((Person<:projects).p & (Person - Student)) and some (Person<:projects).p
-- div,2
#(Person-Student).projects = 0
  
	all p: Project | p in Student.projects
-- div,1
no (Person-Student).projects
  	all p:Project | some Person <: (projects).p
-- div,7
all p:Person | some p.projects implies p in Student
  	Project in Person.projects
-- div,1
all p : Project | some Person<:projects.p and Person<:projects.p in Student
-- div,2
all p:Project | Person <: projects.p in Student and some Person <: projects.p
-- div,6
all p:Project| Person <: projects.p != none and Person <: projects.p in Student
-- div,1
no (Person-Student) & (Person<:projects).Project
  
  
	
  	all proj:Project | some (Person<:projects).proj
-- div,1
all p:Project | (Person <: projects).p in Student
  	all p:Project |	some (Person <: projects).p
-- div,1
Person & projects.Project in Student
  all p : Project | some Student & projects.p
-- div,1
Person<:projects.Project in Student
	all p : Project | some Person<:projects.p
-- div,6
Person:>projects.Project in Student
	all p:Project | some Person:>projects.p
-- div,4
projects.Project <: Person in Student
    all p : Project | some projects.p <: Person
-- div,1
all p : Project | p.~(Person <: projects) in Student
    
    all p : Project | some (Person <: projects).p
-- div,1
all p : Project | (Person <: p.~projects) in Student and some (Person <: p.~projects)
-- div,2
all p : Project | (Person :> p.~projects) in Student and some (Person :> p.~projects)
-- div,3
all p : Project | some (Person :> projects.p)
  
    
     (Person :> projects.Project) in Student
-- div,4
no (Person-Student) & projects.Project
   all p:Project| some Person<:projects.p
-- div,5
all p : Project | p.~(Person <: projects) in Student
  all p: Project | some p.~(Person <: projects)
-- div,2
(Person<:projects).Project in Student 
  	all p: Project | some s: Student | p in s.projects
-- div,2
no (Person-Student).projects
  	all p:Project | some a:Person | p in a.projects
-- div,1
(Person<:projects).Project in Student
  	all pr:Project | some p:Person | p->pr in Person<:projects
-- div,1
all p : Person - Student | no p.projects
	all p : Project | p in Student.projects
-- div,1
all p : Project | some s : Student | p in s.projects
  	no (Person - Student).projects
-- div,2
no (Person-Student).projects  
    all p: Project | some x: Student | p in x.projects
-- div,1
no (Person-Student).projects
  	all p:Project | some s:Student | p in s.projects
-- div,6
no (Person - Student).projects 
  	all p: Project | some s : Student | s->p in projects
-- div,2
no (Person - Student).projects
  	all p : Project | some pe : Person | p in pe.projects
-- div,1
all p : Person-Student | p.projects = none
  	all p : Project | p in Person.projects
-- div,1
all p : Project | no (Person-Student)  & (Person<:projects.p) and some (Person<:projects.p)
-- div,1
all p : Person - Student | p.projects = none
	all p : Project | p in Student.projects
-- div,9
all p : Project | p in Student.projects
  	all p : Person - Student | p.projects = none
-- div,1
all p:Project | ((Person<:projects.p) in Student and some pe:Person | pe->p in projects )
-- div,3
no Project.~(Person<:projects) - Student
  	all p:Project | some s:Student | s in p.~(Person<:projects)
-- div,2
no (Person-Student) & (Person :> projects.Project)
  	all p : Project | some (Person :> projects.p)
-- div,1
all p : Person | some p.projects implies p in Student
  	all p : Project | p in Student.projects
-- div,1
all p: Person | p in projects.Project implies p in Student 
  	all p: Project | some (Person<:projects).p
-- div,1
no (Person - Student).projects 
  	all p: Project | some person: Person | person->p in projects
-- div,1
all pro: Project | #pro.~{Student <: projects} >= 1 and #pro.~{{Person-Student} <: projects} = 0
-- div,1
all p:Project | some projects.p & Person
  	
  
  	all p:Project | projects.p & Person in Student
-- div,2
no (Person-Student) & projects.Project
	
  	
  	all p:Project | some pe:Person | pe in projects.p
-- div,1
all p:Project | Person<:projects.p in Student
  all p:Project | some Person<:projects.p
-- div,3
(Person <: projects) in Student some -> Project
  
  all p: Person, p1:Project | (p->p1 in projects => p in Student)
-- div,1
all x : Project | (projects).x <: Person in Student
  	all x : Project | some (projects).x <: Person
-- div,1
all p : Project | some Person<:projects.p
  	all p : Project | Person<:projects.p in Student
-- div,4
all p : Project | some projects.p <: Person
	all p : Project | projects.p <: Person in Student
-- div,1
all p : Project | some (Person :> projects.p)
	all p: Project | (Person :> projects.p) in Student
-- div,12
all p : Project | some Person.projects & p
  	all p : Person | some p.projects => p in Student
-- div,5
all p : Person | some p.projects => p in Student
  	all p : Project | some Person <: projects.p
-- div,4
all p : Project | some projects & Person->p
  	all p : Person | some p.projects implies p in Student
-- div,1
all p : Person | some p.projects => p in Student
  	all p : Project | some projects.p :> Person
-- div,1
all p : Project | some projects & Student->p
  	all p : Person | some p.projects implies p in Student
-- div,1
all pr : Project | Person <:projects.pr in Student
  	all pr: Project | some Person <:projects.pr
-- div,2
all p:Project | some (Person <: projects).p
	all p:Project, x:Person | x in (Person <: projects).p implies x in Student
-- div,3
all p:Project | some (Person <: projects).p
	all p:Project, x:Person |p in x.projects implies x in Student
-- div,1
all x : Person - Student | no x.projects
  	all x : Project | some y : Student | x in y.projects
-- div,1
all x: Person - Student | no x.projects
    all p: Project | (some s: Student | p in s.projects)
-- div,1
all p:Project, ps:Person | ps in (Person <: projects).p implies ps in Student
  	all p:Project | some (Person <: projects).p
-- div,5
all pr:Project, p:Person | p in (Person <: projects).pr implies p in Student
    all pr:Project| some (Person <: projects).pr
-- div,1
all pj: Project, p:Person | p in (Person <: projects).pj implies p in Student
  	all pj: Project | some (Person <: projects).pj
-- div,1
all p : Project | p in Person.projects
  	all p : Project, u : Person | p in u.projects implies u in Student
-- div,1
all person : Person - Student | person.projects = none
  	all project: Project | project in Student.projects
-- div,1
all p:Project, p1: Person | p1 in projects.p implies p1 in Student
    all p : Project | p in Person.projects
-- div,2
all p: Project | some s: Person | p in s.projects
  	all p: Person | some p.projects => p in Student
-- div,1
all s : Person | some s.projects implies s in Student
  all p : Project | some s : Person | p in s.projects
-- div,1
all p: Person | some p.projects => p in Student
	
	all p: Project | some s: Person | p in s.projects
-- div,1
all p: Person, proj: Project | proj in p.projects implies p in Student
  	all proj: Project | some (Person <: projects).proj
-- div,1
all p : Person | some p.projects implies p in Student
  	all pr : Project | some p : Person | pr in p.projects
-- div,2
all p: Person, proj: Project | p->proj in (Person <: projects) implies p in Student
  	all proj: Project | some (Person <: projects).proj
-- div,1
all p : Person | p not in Student implies p not in Person<:projects.Project
  	all p : Project | some Person<:projects.p
-- div,1
all p: Project | all x: Person | p in x.projects implies x in Student
  	all p: Project | p in Student.projects
-- div,1
all p : Project | all s : Person | p in s.projects implies s in Student
  	all p : Project | p in Student.projects
-- div,1
all p : Project | some s : Student | s->p in projects and all per : Person | per->p in projects implies per in Student
-- div,2
all x:Person-Student, y:Project | x->y not in projects
  all x:Project | some y:Person | y->x in projects
-- div,3
all x:Project, y:Person-Student | y->x not in projects
  all x:Project | some y:Student | y->x in projects
-- div,3
all p:Project | some (Person <: projects).p
	all p:Project, x:Person |some (Person <: projects).p and x in (Person <: projects).p implies x in Student
-- div,1
all p : Person - Student, pr : Project | pr not in p.projects
  	all pr : Project | some s : Student | pr in s.projects
-- div,2
all p: Person | p in projects.Project implies p in Student
  	all p: Project | some person: Person | person in projects.p
-- div,1
all s : Person,p : Project | p in s.projects implies s in Student
  all p:Project | some s:Person | p in s.projects
-- div,1
all p : Project, b : Person | p in b.projects => b in Student
  	all p : Project | some b : Person | p in b.projects
-- div,1
(all a : Person, b : Project | b in a.projects implies a in Student) and (all d : Project | some c : Person | d in c.projects)
-- div,1
all per:Person-Student, p:Project | p not in per.projects
  	all p:Project | some ps:Student | p in ps.projects
-- div,2
all p: Person, o: Project | o in p.projects implies p in Student 
  	all l: Project | some p:Person | p->l in projects
-- div,1
all p:Project | some projects.p & Person
  	all p:Project | some projects.p & Person implies projects.p & Person in Student
-- div,2
all p:Person,j:Project | p->j in projects implies p in Student
  	all j:Project | some p:Person | p->j in projects
-- div,1
all p:Project | some s:Person | s->p in projects
	all s:Person, p:Project | s->p in projects implies s in Student
-- div,1
all x : Project, y : Person | y->x in projects implies y in Student
  	all x : Project | some y : Student | y->x in projects
-- div,1
(all p: Project, x: Person | x->p in projects implies x in Student) and (all p: Project | some s: Student | s->p in projects)
-- div,3
all p:Project | some s:Student | s->p in projects
  	all p:Project,s:Person | s->p in projects implies s in Student
-- div,3
all p:Project | some s:Student | s->p in projects
	all s:Person, p:Project | s->p in projects implies s in Student
-- div,1
all pr:Project, p:Person | p->pr in projects implies p in Student
  	all p:Project | some s:Student | p in s.projects
-- div,1
all pj: Project, p: Person | pj in p.projects implies p in Student
  all pj: Project | some p: Person | pj in p.projects
-- div,2
all p:Project, pe:Person | p in pe.projects implies pe in Student
  all p:Project | some s:Student | p in s.projects
-- div,2
all p: Person, tp: Project | tp in p.projects implies p in Student
  all tp: Project | some s: Student | tp in s.projects
-- div,1
all p:Project, p1: Person | p1 in projects.p implies p1 in Student
	

    all p: Project |some p1: Person| p1 in projects.p
-- div,2
all p:Person , pr:Project|p->pr in projects implies p in Student
    all p:Project |some s:Student | s->p in projects
-- div,1
(all p:Person, pj:Project | p->pj in projects implies p in Student) and (all pj:Project | some p:Person | p->pj in projects)
-- div,1
all p:Person, pr:Project | p->pr in Person<:projects => p in Student
  	all pr:Project | some p:Person | p->pr in Person<:projects
-- div,1
all pr: Project, p : Person | no (p & Student) implies pr not in p.projects  
  
  all p: Project | some s : Student | p in s.projects
-- div,2
all p: Person , pr : Project | p in Student or p->pr not in projects
  all pr: Project | some s:Student | s->pr in projects
-- div,1
(all p: Project, p1: Person | p in p1.projects implies p1 in Student) and (all p2: Project | some p3: Student | p2 in p3.projects)
-- div,3
(all p: Person, pr : Project | p -> pr in projects implies p in Student) and (all pr1 : Project | some s : Student | s -> pr1 in projects)
-- div,1
all p:Person, pr:Project | p->pr in projects implies p in Student
  	all pro:Project | some pe:Person | pe->pro in projects
-- div,3
all p : Project | some s : Person | p in s.projects 
  	all p : Project | all s : Person | p in s.projects implies s in Student
-- div,1
all p: Project | some pe: Person | pe -> p in projects
  all pe: Person , p: Project | pe in Student or not(pe->p in projects)
-- div,2
(all p:Person, pj:Project | p -> pj in projects implies p in Student) and (all pj:Project | some per:Person | per -> pj in projects)
-- div,1
all p: Project | all s: Person | s->p in projects implies s in Student
    all p: Project | some s: Person | s->p in projects
-- div,1
all p : Project | all e : Person | e->p in projects implies e in Student
  	all p : Project | some e : Person | e->p in projects
-- div,2
all p : Project | some s : Student | p in s.projects
  	all pr : Project | all p : Person   | pr in p.projects implies p in Student
-- div,1
all p:Project | some s:Student | p in s.projects
  all p:Person | all pr:Project | pr in p.projects implies p in Student
-- div,1
all p : Project | some s : Student | p in s.projects
  all p : Project | all pe : Person | p in pe.projects implies pe in Student
-- div,2
(all pj : Project | all p : Person | p->pj in projects implies p in Student)
	and
	(all pj : Project | some p : Person | p->pj in projects)
-- div,1
all p:Person | all po:Project | p->po in projects implies p in Student
    all pr:Project | some s:Student | s->pr in projects
-- div,2
(all p : Person, proj1 : Project | p->proj1 in projects implies p in Student ) and (all proj : Project | some s : Student | s->proj in projects)
-- div,2
all p : Project | all p2 : Person | p2->p in projects implies p2 in Student 
  all p : Project | some p2 : Person | p2->p in projects
-- div,1
all p : Person |all pro : Project |pro in p.projects implies p in Student
  all pro : Project | some p : Person | pro in p.projects
-- div,1
all p : Project | some s : Student | s->p in projects
  all p1 : Project | all p2 : Person | p2->p1 in projects implies p2 in Student
-- div,1
(all p:Project | some s:Student | s->p in projects)
	(all p:Project | all per:Person | per->p in projects implies per in Student)
-- div,1
all pro : Project, per : Person | per->pro in projects => per in Student
	all pro : Project | some per : Person | per->pro in projects
-- div,2
all p : Project | some s : Student | s->p in projects
	all person : Person, p2 : Project | person->p2 in projects implies person in Student
-- div,3
not some p:Person-Student | some proj:Project | p->proj in projects
  all proj:Project | some s:Student | s->proj in projects
-- div,1
all p1 : Project | some p2 : Student | p2->p1 in projects
  all p1 : Person | all p2 : Project | p1->p2 in projects implies p1 in Student
-- div,1
all proj : Project | some p : Person | proj in p.projects
	all proj : Project | all p : Person  | proj in p.projects implies p in Student
-- div,1
(all p : Project | some per : Person | per->p in projects)
  	(all p : Project | all per : Person  | per->p in projects implies per in Student)
-- div,2
all p:Person | all pro:Project | p->pro in projects implies p in Student 
    all pro:Project | some p1:Person | p1->pro in projects
-- div,3
(all per:Person, proj:Project | per->proj in projects implies per in Student) and (all proj:Project | some per:Person | per->proj in projects)
-- div,3
all proj:Project | all p:Person | p->proj in projects implies p in Student
    all proj:Project | some p:Student | p->proj in projects
-- div,1
(all per:Person, proj:Project | per->proj in projects implies per in Student) and (all proj2:Project | some per:Person | per->proj2 in projects)
-- div,1
all proj : Project | (all person1 : Person | person1 not in Student implies person1->proj not in Person<:projects) and (some person2 : Person | person2->proj in Person<:projects)
-- div,2
(all p1: Project | some pr1: Student | pr1->p1 in projects)
	(all p2: Project | all pr2: Person | pr2->p2 in projects implies pr2 in Student)
-- div,16
all x : univ | x in Project implies some y : Student | y->x in Person<:projects
	all p : Project | all s : Person | s->p in Person<:projects implies s in Student
-- div,1
all p : Project | all s : Person | s->p in Person<:projects implies s in Student
    all x : univ | x in Project implies some y : Student | y->x in Person<:projects
-- div,1
all p:Project | some s:Student | s -> p in projects
    all project:Project, person:Person | person -> project in projects implies person in Student
-- div,1
all p:Project | some Student<:projects.p
  
  all p:Project | Person<:projects.p in Student
  all p:Project | some Person<:projects.p
-- div,1
all project : Project , person : Person | person->project in projects implies person in Student
  all p : Project | some person : Person | person -> p  in projects
-- div,1
all x : univ | x in Project implies some y : Student | y->x in Person<:projects
 all x, y : univ | x in Person and y in Project and x->y in Person<:projects implies x in Student
-- div,3
-- equiv pair end
