Person.projects = Project
-- div,1
Student.projects = Project
-- div,1
Project = Student.projects
-- div,2
(Person<:projects).Project in Student
-- div,6
Project in Student.projects
-- div,3
Person<:projects in Student -> Project
-- div,1
no (Person-Student).projects
-- div,6
no ((Person <: projects).Project - Student)
-- div,1
no Person.~(Person<:projects) - Student
-- div,3
no ((Person - Student) <: projects)
-- div,1
#(Person-Student).projects = 0
-- div,1
no Project.~(Person<:projects) - Student
-- div,1
lone (Person <: projects)-(Student->Project)
-- div,1
Student.projects = Person.projects
-- div,1
Person.projects = Student.projects
-- div,1
(Person & Student).projects = Project
-- div,1
Person<:projects.Project in Student
-- div,4
projects.Project <: Person in Student
-- div,1
Person :> projects.Project in Student
-- div,1
all p:Project | p.projects in Student
-- div,1
all p: Project | some (Person<:projects).p
-- div,9
no (Person-Student) & projects.Project
-- div,12
all p : Project | some p.~(Person<:projects)
-- div,1
Person.((Person <: projects) & Student->Project) = Project
-- div,1
all p: Project | some Student.projects
-- div,1
all p : Project | p in Student.projects
-- div,1
all p:Project | (Person <: projects).p in Student
-- div,2
Student.projects & Person.projects = Project
-- div,1
all p : Project | p.~(Person <: projects) in Student
-- div,1
all pro: Project | #pro.~{Person <: projects} >= 1
-- div,1
all p:Project | some projects.p & Person
-- div,1
all p:Project | some projects.p & Student
-- div,7
all p : Project | some Person<:projects.p
-- div,1
no (Person-Student)  & (Person<:projects.Project)
-- div,2
all p : Project | some (Person :>projects.p)
-- div,3
all p: Project | some (Student<:projects).p
-- div,5
all p:Project | some Student<:projects.p
-- div,1
all p : Project | some (Student :> projects.p)
-- div,1
all p : Project | some projects & Student->p
-- div,1
all p: Project | some p.~(Person <: projects)+Student
-- div,1
all p: Project | some p.~(Person <: projects)&Student
-- div,1
all p: Project | some p.~(Student<:projects)
-- div,3
all p:Project | Person<:projects.p in Student
-- div,3
all p: Project, per: Person | some (Person <: projects).p
-- div,1
all p: Person | some p.projects implies p in Student
-- div,4
all p : Project | projects.p <: Student in Student
-- div,1
all p:Project | some s:Student | p.projects in s
-- div,1
Person.projects - (Professor - Student).projects = Project
-- div,2
all p : Project | no ((Person<:projects).p & (Person - Student))
-- div,1
all pro: Project | #pro.~{Student <: projects} >= 1
-- div,1
all p:Project | Person<:projects.Project in Student
-- div,1
all s : Student | Person<:projects.Project in Student
-- div,3
all p: Person | p in projects.Project implies p in Student
-- div,1
no(Person-Professor).projects => Project in Person.projects
-- div,1
all p: Project | some s: Student | p in s.projects
-- div,11
all p: Project | (some s: Student | s in projects.p)
-- div,1
all p: Project | some s: Person | s->p in projects
-- div,1
all p:Project | some s:Student | s->p in projects
-- div,12
all x : Project | some y : Student | y->x in projects
-- div,1
all p:Person, pj:Project | pj in Student implies p in pj.projects
-- div,1
all p : Project | some s: Student | s in p.~(Person <: projects)
-- div,3
all pr:Project | some p:Student | p->pr in projects
-- div,1
all p1 : Project | some s1 : Student | s1->p1 in projects
-- div,1
all p:Project, per:Person-Student | p not in per.projects
-- div,1
all proj : Project | some p : Person | proj in p.projects
-- div,1
all p1: Project | some pr1: Student | pr1->p1 in projects
-- div,3
all p:Person | p in Student implies p.projects in Person.projects
-- div,1
all s : Person,p : Project | p in s.projects implies s in Student
-- div,1
all p: Person, o: Project | o in p.projects implies p in Student
-- div,1
all p:Project,x:Person | p in x.projects implies x in Student
-- div,1
all p:Project,x:Person | x in projects.p implies x in Student
-- div,2
all p: Project, s: Person | p in s.projects => s in Student
-- div,1
all p : Project, b : Person | p in b.projects => b in Student
-- div,3
all pr : Project, p: Person | pr in p.projects implies p in Person
-- div,1
all p:Project , s: Person | s->p in projects implies s in Student
-- div,1
all s:Person, p:Project | s->p in projects implies s in Student
-- div,1
all p:Project, x:Person | x->p in projects implies x in Student
-- div,5
all p: Person, pj: Project | pj in p.projects implies p in Student
-- div,1
all pj: Project, p: Person | pj in p.projects implies p in Student
-- div,2
all p:Person,pr:Project | pr in p.projects implies p in Student
-- div,2
all pr:Project, p:Person | p in (Person <: projects).pr implies p in Student
-- div,1
all p: Person, pj: Project | p in projects.pj implies p in Student
-- div,1
all pr : Project, p: Person | pr in p.projects implies p in Student
-- div,1
all p: Person, p1:Project | (p->p1 in projects => p in Student)
-- div,2
all p:Project, p1: Person | p1 in projects.p implies p1 in Student
-- div,1
all p:Person, pj:Project | pj in Student implies pj in p.projects
-- div,2
all p : Project | some c : Person <: projects.p | c in Student
-- div,1
Student.projects = Project 
  	(Student <: projects) in Student some -> set Project
-- div,1
all p:Project, ps:Person | ps in (Person <: projects).ps implies ps in Student
-- div,1
all s : Student , p : Project | Person<:projects.Project in Student
-- div,1
all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
-- div,3
all p: Person, proj: Project | proj in p.projects implies p in Student
-- div,2
all p:Project | some pe:Person | p.projects in pe and pe in Student
-- div,1
all p:Person, proj: Project| p->proj in projects => p in Student
-- div,2
all p:Person, pj: Project | no (p & Student) implies pj not in p.projects
-- div,1
all p: Project | some s: Student | s in p.~(Student <: projects)
-- div,1
all curso: Course.projects, pessoa : enrolled.curso | pessoa in Student
-- div,3
all p : Project , ps : Person |some (ps <: projects).p implies ps in Student
-- div,3
all p: Project | all x: Person | p in x.projects implies x in Student
-- div,1
all p:Person | p.projects in Student implies p.projects in Person.projects
-- div,2
all x : univ | x in Project implies some y : Student | y->x in Person<:projects
-- div,1
all u : Person | all p : Project | p in u.projects implies u in Student
-- div,1
all p : Project | all s : Person | p in s.projects implies s in Student
-- div,2
all p : Project | all b : Person | p in b.projects => b in Student
-- div,1
all p: Project | some s: Person | p in s.projects => s in Student
-- div,4
all p: Project | (some s: Person | s in projects.p and s in Student)
-- div,1
all p:Project | some x:Person | p in x.projects implies x in Student
-- div,3
all p : Project | some u : Person | p in u.projects implies u in Student
-- div,1
all p: Project | all s: Person | s->p in projects implies s in Student
-- div,1
all p : Project | all e : Person | e->p in projects implies e in Student
-- div,1
all p:Project | some x:Person | p in x.projects and x in Student
-- div,1
all x:Person | all y:Project | x->y in projects implies x in Student
-- div,1
all x: Project | some y: Person | y in Student and x in y.projects
-- div,1
all p: Project | some s: Person | p in s.projects && s in Student
-- div,3
all p : Project | some e : Person | p in e.projects and e in Student
-- div,1
all p : Project | some b : Person | p in b.projects => b in Student
-- div,1
all p:Project | some x:Person | x->p in projects implies x in Student
-- div,1
all p: Project| some s: Person | s->p in projects => s in Student
-- div,8
all x : Project | some y : Person | y->x in projects implies y in Student
-- div,1
all p : Project | some u : Person | p in u.projects <=> u in Student
-- div,1
all p: Project | some s: Person | s->p in projects and s in Student
-- div,1
all p: Project| some s: Person | s in Student => s->p in projects
-- div,1
Student.projects = Person.projects
  	all p : Project | some p.~(Person <: projects)
-- div,1
all p: Project | some s: Student | s->p in projects and s in Student
-- div,1
all p: Project| some s: Person | s in Student <=> s->p in projects
-- div,1
all p: Project| some s: Person | s->p in projects <=> s in Student
-- div,2
all pj : Project | all p : Person | p->pj in projects implies p in Student
-- div,1
(all p: Project | some p1: Person | p in p1.projects implies p1 in Student)
-- div,1
all p: Project | some s: Person | s in p.~(Person <: projects) and s in Student
-- div,1
all p : Project | all p2 : Person | p2->p in projects implies p2 in Student
-- div,1
all p : Person | all pro : Project | pro in p.projects implies p in Student
-- div,1
all p : Project | some pe : Person | p in pe.projects implies pe in Student
-- div,1
all p : Project, b : Person | (p in b.projects => b in Student) && some b
-- div,1
all p : Project | some p2 : Person | p2->p in projects implies p2 in Student
-- div,1
all p:Project | some pe:Person | pe->p in projects and pe in Student
-- div,1
all p:Person | all pro:Project | p->pro in projects implies p in Student
-- div,3
all proj: Project | some p: Person | proj in p.projects and p in Student
-- div,1
all p:Project | some projects.p & Person implies projects.p & Person in Student
-- div,1
all  po:Project| some p:Person  | no (p & Student) implies po in p.projects
-- div,1
all  po:Project| some p:Person  | no (p & Professor) implies po in p.projects
-- div,2
all p : Project | some Person <: projects.p implies Person <: projects.p in Student
-- div,1
all p: Project, c: Course | some s: Person | s->p in (projects - c->p)
-- div,1
all p1 : Project | some pr1 : Person | pr1->p1 in projects and pr1 in Student
-- div,2
all p: Project | some pess : Person | p in pess.projects implies pess in Student
-- div,1
all p : Project, b : Person | (p in b.projects => b in Student) && some Student
-- div,1
all p1 : Project | some pr1 : Person | pr1->p1 in projects implies pr1 in Student
-- div,2
all pro : Project | all per : Person | per->pro in projects => per in Student
-- div,1
all p1 : Project | some pr1 : Person | pr1->p1 in projects iff pr1 in Student
-- div,1
no (Person-Student) & projects.Project
	
  	all p:Project | some Person.projects
-- div,1
all p : Project | some u : Person | p in Course.projects implies p in u.projects
-- div,1
all x, y : univ | x in Person and y in Project and x->y in Person<:projects implies x in Student
-- div,2
all pro : Project | some per : Person | per->pro in projects && per in Student
-- div,1
all p : Project | some u : Student | p in Course.projects implies p in u.projects
-- div,1
all p: Person, proj: Project, c: Course | proj in p.projects implies p in Student
-- div,1
all pro : Project | some per : Person | per->pro in projects => per in Student
-- div,1
all pj: Project, p: Person | some Person<:projects and pj in p.projects implies p in Student
-- div,1
all p:Project, x:Person |some (Person <: projects).p implies p in x.projects implies x in Student
-- div,1
all p:Project, x:Person |some (Person <: projects).p and x in (Person <: projects).p implies x in Student
-- div,1
all p : Project, b : Person | p in b.projects => b in Student && p in b.projects
-- div,1
Student:>projects.Project in Student
	all p:Project | some Person:>projects.p
-- div,1
all proj: Project| some pers: Person | proj in pers.projects implies pers in Student
-- div,1
all proj: Project| some pers: Person | proj in pers.projects and pers in Student
-- div,3
all pj: Project, p: Person | some p.projects and pj in p.projects implies p in Student
-- div,1
all pj: Project, p: Person | pj in p.projects implies p in Student and some p.projects
-- div,1
all project : Project , person : Person | person->project in projects implies person in Student
-- div,1
all p: Person, pj: Project | p in projects.pj and pj in p.projects implies p in Student
-- div,1
all s : Person, p : Project | some s.projects and no ( s & Student ) implies p not in s.projects
-- div,4
all p:Project, a:Person | some (a.projects) and some (Person.projects) implies a in Student
-- div,1
all s : Person, p : Project | some s.projects and no ( s & Student ) implies p not in s.enrolled
-- div,4
all s : Person, p : Project | p in s.projects and no ( s & Student ) implies p not in s.projects
-- div,1
all p:Project, a:Person | p in a.projects and some (Person.projects) implies a in Student
-- div,1
all p : Project | some Person <: projects.Project and Person <: projects.Project in Student
-- div,1
all p: Project, per: Person | some (Person <: projects).p and (per in (Course <: projects).p implies per in Student)
-- div,2
no (Professor-Student).projects 
    all p: Project | some x: Student | p in x.projects
-- div,3
all p : Project | some s : Student | p in s.projects
  	no (Professor - Student).projects
-- div,1
all p : Person, pr : Project | some s : Student | ( no (p & Student) implies pr not in p.projects )
-- div,1
all person : Person | all project: Project | project in person.projects implies person in Student
-- div,1
no (Person-Student) & (Person :> Person.projects)
  	all p : Project | some (Person :> projects.p)
-- div,1
all p:Person, pr:Project | p->pr in Person<:projects => p in Student
  	
  	(Person<:projects).Project in Student
-- div,1
all p : Person | all r : Project | (r in p.projects implies p in Student) and r in Person.projects
-- div,1
no Project.~(Person<:projects) - Student
    all p : Project | some s : Student | s in Project.~(Person<:projects)
-- div,1
all p : Project | some s : Student | p in s.projects
  	no Professor.projects - Student.projects
-- div,1
all p : Project, b : Person | p in b.projects => b in Student
  	all p : Project | some Person
-- div,2
all p : Project, b : Person | p in b.projects => b in Student
  	all p : Project | some Student
-- div,1
all a : Person, b : Project | b in a.projects implies a in Student and (some c : Person | b in c.projects)
-- div,1
all p:Project | some projects.p & Person and some projects.p & Person implies projects.p & Person in Student
-- div,1
all p:Project, ps:Person | ps in (Person <: projects).ps implies ps in Student
  	all p:Project | some (Person <: projects).p
-- div,2
all p: Project, p1: Person | p in p1.projects implies p1 in Student and some p3: Student | p in p3.projects
-- div,1
all p : Project, ps : Person | (ps->p in projects implies ps in Student) and ( some ps2 : Person | ps2->p in projects)
-- div,3
all p : Person, pr : Project | some s : Student | ( no (p & Student) implies pr not in p.projects ) and pr in s.projects
-- div,7
all s: Student | no (Professor-Student).projects 
    all p: Project | some x: Person | p in x.projects
-- div,1
all s: Student | no (Professor-Student).projects 
    all p: Project | some x: Student | p in x.projects
-- div,1
all s : Person, p : Project | some (p & s.projects) and no ( s & Student ) implies p not in s.projects and some (p & s.projects)
-- div,1
all p : Project | some u : Person |all c : Course| p in c.projects and c in u.enrolled implies p in u.projects
-- div,1
all p:Person | all po:Project | p->po in projects and p in Student implies (some s:Student | s->po in projects )
-- div,1
all p:Person | all pro:Project | p->pro in projects implies p in Student and (some p1:Person | p1->pro in projects)
-- div,1
all p1:Person| all pr:Project| (p1->pr in projects implies p1 in Student) and (some p2:Person|p2->pr in projects)
-- div,1
all p : Person, c : Course,  pr : Project | some s : Student | no ( p & Student ) implies pr not in p.projects and pr in s.projects
-- div,1
all p : Person, c : Course,  pr : Project | some s : Student | (no ( p & Student ) implies pr not in p.projects) and pr in s.projects
-- div,1
all p: Project | some pess : Person | p in pess.projects implies pess in Student
  all p: Project | p in Student.projects
-- div,1
all a : Person, b : Project | b in a.projects implies a in Student and (all d : Project | some c : Person | d in c.projects)
-- div,1
all p1 : Project |
  	(some pr1 : Student | pr1->p1 in projects)
	and
  	(some pr2 : Person | pr2->p1 in projects implies pr2 in Student)
-- div,1
all p: Person, proj: Project, c: Course | proj in p.projects implies p in Student
  	all proj: Project | some (Person <: projects).proj
-- div,1
all p: Project | some s: Person | p in s.projects => s in Student
  	all p: Person | some p.projects => p in Student
-- div,1
all pj: Project, p: Person | pj in p.projects implies p in Student and
  all pj: Project | some p: Person | pj in p.projects
-- div,1
all p : Project | some u : Person |all c : Course| p in c.projects and c in u.enrolled implies p in u.projects and u in Student
-- div,1
all person : Person - Student | person.projects = none
  	all person : Student | all project: Project | project in Student.projects
-- div,1
all p: Project | some s: Person | p in s.projects => s in Student
  	all p: Project | some s: Student | p in s.projects
-- div,2
all p : Person, pr : Project | some s : Student | ( no (p & Student) implies pr not in p.projects ) 
  	all pr: Project | some Student.projects
-- div,1
all p : Project | some s : Student | s->p in projects
	all person : Student, p2 : Project | person->p2 in projects implies person in Student
-- div,1
all p: Project | some pess : Person | p in pess.projects implies pess in Student
 all pro : Project | some p : Person | pro in p.projects
-- div,1
all x,y : univ | x->y in Person<:projects and x not in Professor implies x in Student
    all x : univ | x in Project implies some y : Student | y->x in Person<:projects
-- div,1
all p1 : Project | some pr1 : Person | pr1->p1 in projects
  	all p1 : Project | some pr1 : Person | pr1->p1 in projects implies pr1 in Student
-- div,1
all p1 : Project | some pr1 : Person | pr1->p1 in projects 
    all p1 : Project | some pr1 : Person | pr1->p1 in projects iff pr1 in Student
-- div,1
all p1 : Project | some pr1 : Student | pr1->p1 in projects
  	all p1 : Project | some pr1 : Person | pr1->p1 in projects implies pr1 in Student
-- div,3
(all p1 : Project | some pr1 : Student | pr1->p1 in projects)
  	(all p2 : Project | some pr2 : Person | pr2->p2 in projects implies pr2 in Student)
-- div,2
all person1, proj : univ | person1 in Person and person1 not in Student and proj in Project implies person1->proj not in Person<:projects and some person2 : univ | person2 in Person and person2->proj in Person<:projects
-- div,1
