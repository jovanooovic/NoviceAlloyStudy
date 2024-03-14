Student <: projects
-- div,4
projects.Course in Student
-- div,3
one projects.Course-Student
-- div,1
all p:Person | p is Student
-- div,1
(Person <: projects.Course)
-- div,1
projects.Project in Student
-- div,11
some Person.projects.Project
-- div,1
projects.Project & Student
-- div,1
all c : Course | c in projects
-- div,3
no (Person-Student) & projects
-- div,2
no (projects.Project - Student)
-- div,2
(Person <: projects) in Student
-- div,1
all p:Project | some projects.p
-- div,1
all s: Student, c: Course | s->c
-- div,10
some projects.Project in Student
-- div,2
projects in Person one -> Project
-- div,1
all p : Project | some projects.p
-- div,2
some (projects)-(Student->Project)
-- div,1
projects in Student some -> Project
-- div,5
some Person.projects.Course-Student
-- div,1
Person <: projects.Course in Student
-- div,2
all p:Project | projects.p in Student
-- div,1
(Person & projects.Course) in Student
-- div,1
no (Person-Student) & Person.projects
-- div,3
some Person.projects-Student->Project
-- div,1
one Person <: projects.Course-Student
-- div,1
some Person <: projects.Course-Student
-- div,1
all p: Project | Student <: projects.p
-- div,1
all pj:Project | some s:Student | s.pj
-- div,1
(Person <: projects.Course) in Student
-- div,2
all p: Project | projects.p in Student
-- div,1
all disj s1,s2: Student | s1 !=s2 iden
-- div,1
all p:Project | some Person.projects.p
-- div,1
all y : Person - Professor | y.projects
-- div,1
no (Person-Student) in projects.Project
-- div,2
no Project in (Person-Student).projects
-- div,1
some y : Project | Student & projects.y
-- div,5
all y : Person - Professor | projects.y
-- div,2
all p:Project | some Project.projects.p
-- div,1
all p : Project | projects.p in Student
-- div,4
all c : Course | some Student.projects.c
-- div,2
all s : Person, p : Project | s.projects
-- div,1
all p: Project | (projects.p in Student)
-- div,1
some (Person<:projects).Project = Student
-- div,1
some (Person.projects)-(Student->Project)
-- div,1
all p:Project | some p.projects in Student
-- div,1
some (Person->projects)-(Student->Project)
-- div,1
no (Person-Student) & (Person <: projects)
-- div,1
all p:Project | p implies Student.projects
-- div,1
some (Person<:projects).Project in Student
-- div,1
some (Person-Professor) in projects.Project
-- div,1
all p: Project | some projects.p in Student
-- div,1
all p:Project | projects.Project in Student
-- div,5
all p : Project | some projects.p in Student
-- div,2
Student.projects = Person.projects = Project
-- div,1
all y : Person - Professor | some projects.y
-- div,1
all p:Project | some s:Student | s.projects.p
-- div,1
all p : Person | p.projects.Course in Student
-- div,1
Person.Project - Professor.projects = Project
-- div,1
no (Person-Student) & Person.projects.Project
-- div,2
all s : Person, p : Project | some projects.p
-- div,1
all p: Project | some (projects.p in Student)
-- div,2
all p : Project | some (projects.p in Student)
-- div,3
some p : Person | p.projects.Course in Student
-- div,1
all s : Person, p : Project | some s.projects.p
-- div,2
all p: Person | p.projects implies p in Student
-- div,1
all p:Project | Person.p implies Person.Student
-- div,1
all s : Student | some Person.projects & Student
-- div,2
all p : Project | (projects:>Person).p in Student
-- div,1
all s : Student | some Student in Person.projects
-- div,1
all pj:Project | some s:Student | s.projects & pj
-- div,1
all pj:Project | some s:Student.projects | s & pj
-- div,1
all p : Project | (Person:>projects).p in Student
-- div,1
all p:Project | Person.p implies Person in Student
-- div,1
all p: Project | some s: projects.p | s in Student
-- div,2
all c : Course| some p : Student | c in p.projects
-- div,1
all s : Person, p : Project | some p in s.projects
-- div,2
all p:Person | p in p.projects implies p in Student
-- div,1
all p : Project | all s : Student | projects.p in s
-- div,1
all p:Project | some projects.p & Person in Student
-- div,1
no(Person-Professor).projects => projects in Person
-- div,1
all p: Person | set p.projects implies p in Student
-- div,1
all s : Person, p : Project | some (p in s.projects)
-- div,1
all p:Project | some (Person<:projects).p in Student
-- div,1
all p : Project | some s : Student | projects.p in s
-- div,1
all p: Project | some (Person<:projects).p = Student
-- div,1
projects.Project in Student and some projects.Person
-- div,1
all p:Project | projects.Project in Student <:Person
-- div,1
all p:Project | projects.Project <:Project in Student
-- div,1
all p : Project | some Person -> Project & projects.p
-- div,2
some Student.projects and projects.Project in Student
-- div,1
no (Project.~(Person <: projects) - Student.projects)
-- div,1
some s : Student | all p : Project | p->s in projects
-- div,1
all p: Project | some (Person<:projects).p in Student
-- div,3
Person.projects in Student
    some Project.~projects
-- div,2
all s : Person, p : Project | some Student.projects.p
-- div,1
Person.projects - (Person.Student).projects = Project
-- div,1
no (Person - Student).projects
  	Project in projects
-- div,1
all p: Project | some (Person<:projects).p in Students
-- div,1
all p:Project | some (Person <: projects).p in Student
-- div,1
all p : Project | some (Person<:projects).p in Student
-- div,2
all p : Project | some Person <: projects.p in Student
-- div,1
all p:Project | p implies p.Person in Student.projects
-- div,1
all p : Project | some (Person<:projects.p) in Student
-- div,1
all p: Project | some (Person<:projects).p != Professor
-- div,1
all p:Person | no (Person-Student) & p.projects.Project
-- div,1
all p: Project | (some (Person<:projects).p) in Student
-- div,1
all p : Project | some (Person :>projects.p) in Student
-- div,1
all p : Project | (some (Person<:projects).p in Student)
-- div,1
some projects.Project
    no (Person - Student).projects
-- div,1
all p : Project | some (Person :> projects.p in Student)
-- div,1
no (Person - Student).projects 
  	some projects.Project
-- div,1
all proj:Project | some p:Student | p->proj in p.projects
-- div,1
no Professor.projects
  all p : Project | some projects.p
-- div,1
some Project.~projects
    no (Person - Student).projects
-- div,1
some Student.projects and some Student.(projects.Project)
-- div,1
all p : Project | some p.~(Person <: projects) in Student
-- div,3
projects.Project in Student
  	Project in Person.projects
-- div,1
all p:Person, c:Course | p->c in projects => p in Student
-- div,2
all pj:Project | some s:Student.projects | s.Project & pj
-- div,1
all p : Project | p.~(some Person <: projects) in Student
-- div,1
all p:Project | projects.p in Student and some projects.p
-- div,1
all p: Project | projects.p in Student and some projects.p
-- div,1
all p : Project | some (p.~(Person <: projects) in Student)
-- div,2
all s : Student , p : Project | projects.Project in Student
-- div,1
all p : Project | projects.p in Student and some projects.p
-- div,1
all p : Project | (some ((Person<:projects).p in Student) )
-- div,1
all p: Project, y : Person-Professor | some p in y.projects
-- div,1
all p: Project | some (Person<:projects).p not in Professor
-- div,1
all p:Project| projects.p != none and projects.p in Student
-- div,1
all p : Project | no (Person.projects & (Person - Student))
-- div,1
all p : Project | (some p.~(Person <: projects)) in Student
-- div,1
all p:Project | p in Student.p and p implies Person.projects
-- div,1
some Student.projects and Person.projects.Project in Student
-- div,1
no Professor & projects <: Person
  	some projects <: Person
-- div,1
((Person-Professor).projects) && (Project in Person.projects)
-- div,2
no ((Person - Student) <: projects) Person.projects = projects
-- div,1
no Project in Professor.projects
  	Project in Person.projects
-- div,1
((Person-Professor).projects) and (Project in Person.projects)
-- div,1
all p:Project | some x:Person | x.projects implies x in Student
-- div,1
all p : Project | some p2 : Person | p->p2 implies p2 in student
-- div,1
all p: Project | projects.p in Student and some Student.projects
-- div,2
all p:Person, pj:Project | pj in Student implies p in p.projects
-- div,1
all p: Project | projects.p in Student and some projects.Project
-- div,1
all p : Project | projects.p <: Person and projects.p in Student
-- div,1
all p : Project | some p2 : Person | p->p2 implies p2 in Student
-- div,1
no Person.projects - Student
  	all p : Project | some projects.p
-- div,1
no (Person-Student).projects
  	all p:Project | some (projects).p
-- div,1
all c : Course, p : Person | c in p.projects implies p in Student
-- div,1
Project.~projects in Student
  	all p : Project | some p.~projects
-- div,4
all c : Course, p : Person | one p.projects.c implies p in Student
-- div,1
all p:Project | p in Student.enrolled and p implies Person.projects
-- div,2
some Student & projects.Project
  	no Professor in projects.Project
-- div,1
all p:Project | Person <: projects.p in Student and some projects.p
-- div,1
no (Person-Student).projects
  	projects in Student some -> Project
-- div,1
all p:Project | p implies Student.projects and p in Person.projects
-- div,1
all c : Course | all p : Person | p.projects.c implies p in Student
-- div,1
all p:Project | p in Student.projects and p implies Person.projects
-- div,2
all disj s1,s2: Student | s1 !=s2 iden lone s1.projects&s2.projects
-- div,1
all  s1,s2: Student | s1 != s2 iden lone (s1.projects & s2.projects)
-- div,1
all p : Project | some p1 : Person | p1.projects.p and p1 in Student
-- div,1
all p : Project, b : Person | (p in b.projects => some b in Student)
-- div,1
all p : Project | Person <: projects.p in Student and some projects.p
-- div,1
all s : Person, p : Project | ( s & Student ) implies some s.projects
-- div,2
no (Person-Student).projects
  	all p:Project | one Person.projects.p
-- div,1
all p : Project | (some p1 : Person | p1.projects.p and p1 in Student)
-- div,1
all disj s1,s2: Student | s1 != s2 iden lone s1.projects & s2.projects
-- div,1
all p: Project | one s: Student | projects.p in Student and s.projects
-- div,1
all p : Project, b : Person | (p in b.projects => (some b in Student))
-- div,1
all p : Project | projects.p in Student and some (Person <: projects).p
-- div,1
all x : Project | no Person-Professor.projects & x and some x & Student
-- div,1
all p: Project | some s: Student | projects.p in Student and s.projects
-- div,2
all pr:Project | some p:Person | p in projects.p implies (p in Student)
-- div,1
all p : Project | projects.p in Student and some (Course <: projects).p
-- div,1
all p : Project | some projects.Project and projects.Project in Student
-- div,1
all p : Project | no (Professor.projects.p) and some (Student.projects)
-- div,1
no Professor in Student
  	no (Project.~(Person<:projects) & Professor)
-- div,1
no (Person-Student).projects
  	all p:Project | one (Person.projects).p
-- div,1
all disj s1, s2: Student | s1 != s2 iden lone s1.projects & s2.projects
-- div,1
no (Person-Student) & projects.Project
   all p:Project| some projects.p
-- div,2
all p : Project , ps : Person | (ps <: projects).p implies ps in Student
-- div,2
all disj s1,s2: Student | s1 != s2 iden lone (s1.projects & s2.projects)
-- div,1
all c : Course | all p : Person | some p.projects.c implies p in Student
-- div,2
Student.projects = Person.projects
  	all p : Project | some p.~projects
-- div,2
no (Person-Student).projects
  	all p:Project | some (Person.projects).p
-- div,1
no (Person-Student) & Person.projects
  	all p : Project | some Person.p
-- div,1
all p: Project | projects.p in Student and some Student.projects.Project
-- div,1
all p: Project | some (Person<:projects).p
  no projects.(Person-Student)
-- div,1
all p : Project | (some (Person<:projects).p) and ((Student<:projects).p)
-- div,1
all p: Person, a: Project | not (p & Student) implies a not in p.projects
-- div,2
all p : Project | no (Professor.projects.p) and some (Student.projects.p)
-- div,1
all s : Person, p : Project | ( s & Student ) implies some p in s.projects
-- div,1
Person<:projects.Project in Student
  
	Project in Person<:projects.Project
-- div,1
all p:Person | p.projects in Student and p.projects implies Person.projects
-- div,1
(Person <: projects.Course) in Student
  	all p : Project | some projects.p
-- div,1
no (Person-Student) & projects.Project
	
  	all p:Project | some projects.p
-- div,2
all p:Person | p.projects implies p in Student
  	Project in Person.projects
-- div,2
all p: Project, p: Person| some c: Course | c->p in projects => p in Student
-- div,1
projects.Project in Student
    
    some x:Student | x->Project in projects
-- div,1
all x : Professor | no x.projects
  	some y : Project | Student & projects.y
-- div,8
no Professor in Person.projects
  	all p:Project | some Person <: (projects).p
-- div,1
no projects.Project - Student
  	all p : Project | some (Person <: projects).p
-- div,1
all p : Project | p.~(Person <: projects) in Student
    some projects.Project
-- div,2
Project.~(Person <: projects) in Student
  	all p : Project | some p.~projects
-- div,1
all x:Project| not(Person-Student->x in projects) and Student -> x in projects
-- div,1
all curso: Course.projects, pessoa : Person.enrolled.curso | pessoa in Student
-- div,1
(Person<:projects).Project in Student
    
    some Student in projects.Project
-- div,1
all p: Person, proj: Project | not (p & Student) implies proj not in p.projects
-- div,2
all p : Project | no (p in Professor.projects) and some (p in Student.projects)
-- div,1
no (Person-Student) & projects.Project
   all p:Person| some p.enrolled.Project
-- div,1
all proj: Project | some projects.proj and some p: projects.proj | p in Student
-- div,2
all s : Student | Student in Person.projects and some Student & Person.projects
-- div,1
all p:Project | (projects.p in Student and some pe:Person | pe->p in projects )
-- div,1
Professor not in Person.projects
  	all p:Project | some Person <: (projects).p
-- div,1
no (Person-Student) & projects.Project
  all p:Project, pe:Person | some p in pe
-- div,1
all p: Project | some pe: Person | projects.p in Student and pe -> p in projects
-- div,2
all s : Student | Student in Person.projects and some Student in Person.projects
-- div,1
all p:Project | (projects.p in Student) and (some pe:Person | pe->p in projects)
-- div,4
no Professor & projects <: Person
  	all x : Project | some projects.x <: Person
-- div,2
all p : Project | (some p1 : Person | p1.(Person<:projects).p and p1 in Student)
-- div,1
(Person<:projects).Project in Student
    
    some Student in  projects.Project
-- div,1
all proj:Project | some p:Person | p->proj in projects implies p is not Professor
-- div,1
all p : Project | projects.p <: Project in Student and some projects.p <: Project
-- div,1
Project.~(Person<:projects) in Student
  	all p : Project | p.~(Person<:projects)
-- div,1
no Professor & projects <: Person
  	all x : Project | some (projects <: Person).x
-- div,1
all p: Project | some s: Student | projects.p in Student and s.projects in Project
-- div,2
no (Person-Student) & projects.Project
	
  	all p:Project | some Person.projects.p
-- div,6
no (Person-Student) & projects.Project
	
  	all p:Project | some Student.projects.p
-- div,1
all proj:Project | some p:Person | p->proj in p.projects implies p is not Professor
-- div,2
no Professor & (projects <: Person)
  	all x : Project | some (projects <: Person).x
-- div,1
all pj: Project, p: Person | some projects and pj in p.projects implies p in Student
-- div,1
all p : Project | p.(Person :> projects) in Student and some p.~(Person <: projects)
-- div,1
(all p: Project | projects.p in Student) and (some pe: Person | pe -> p in projects )
-- div,3
(Person <: projects.Course) in Student
  	all p : Project | some projects.p :> Person
-- div,1
all p : Project | p.~(Person :> projects) in Student and some p.~(Person <: projects)
-- div,1
no (Person-Student) & Person.projects
  	all p : Project | some (Person :> projects.p)
-- div,1
all p : Project | projects.p <: Project in Student 
  	some projects.Project <: Person
-- div,1
all p:Project| all x:Person | x->p in Person <: projects implies x in Student and x->p
-- div,1
all p : Person | some p.projects <=> p in Student
    all p : Project | some projects.p
-- div,1
all p:Project | some projects.p & Person
  	
  
  	all p:Project | projects.p & Student
-- div,1
all s : Student | Student in Person.projects:>Person and some Student & Person.projects
-- div,1
all s : Student | Student in Person.projects and some Student & Person<:Person.projects
-- div,1
all s : Student | Student in Person.projects and some Student & Person.projects<:Person
-- div,1
all s : Student | Student in Person.projects and some Student & Person.projects:>Person
-- div,1
all pr : Project | Person <:projects.pr in Student
  	all pr: Project | some projects.pr
-- div,1
all x, y : univ | x in Person and y in Project and x->y in projects implies x in Student
-- div,2
all x : Professor | no x.projects
  	some y : Project | Student & (projects.y <: Person)
-- div,1
all pr : Project | projects.pr in Student
  	all pr: Project | some Person <:projects.pr
-- div,1
all x:Project, y:Person-Student | y->x not in projects
  all x:Project | some projects.x
-- div,1
all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some s.p
-- div,1
no (Person-Student) & projects.Project
	
  	
  	all p:Project | some Person in projcets.p
-- div,1
no (Person-Student) & projects.Project
	
  	
  	all p:Project | some Person in projects.p
-- div,1
all p : Project | some ( Person :> projects.p)
    all p : Project | projects.p in Student
-- div,1
all p:Project | (projects.p in Student) and (some pe:Person | pe->p in (Person <: projects))
-- div,2
some person : Person | all p : Project | person->p in projects implies some person in Student
-- div,1
all p : Project | projects.p in Student
  	all p : Project | some s : Student | projects.p in s
-- div,1
all pro: Project | #pro.~{Student <: projects} >= 1 and #pro.~{Person-Student <: projects} >= 1
-- div,1
(Person <: projects)-(Student->Project) = none
    some (Person <: projects)&(Student->Project)
-- div,1
all p : Person | some p.projects <=> p in Student
    all p : Project | some projects<:Person.p
-- div,1
all s : Person, p : Project | some projects.p and no ( s & Student ) implies p not in s.projects
-- div,1
all s : Person, p : Project | some s.projects.p and no ( s & Student ) implies p not in s.projects
-- div,1
all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p some s.projects
-- div,1
all x : Person | x in projects.Course => x in Student
  	all c : Course | some Person <: projects.c
-- div,1
all s : Student| Person <: projects.s = none
    all s : Student| some Person <: projects&s->Project
-- div,1
all x : Person | x->Course in projects => x in Student
  	all c : Course | some Person <: projects.c
-- div,1
all x : Project | (projects <: Person).x in Student
  	all x : Project | some (projects <: Person).x
-- div,1
all x : Project | (projects).x <: Person in Student
  	all x : Project | some (projects <: Person).x
-- div,1
all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and some p in s.projects
-- div,3
all x : Person | x->Course in projects => x in Student
  	all p : Project | some Person <: projects.p
-- div,1
all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some s.projects.p
-- div,1
all s : Person, p : Project | some Person.projects.p and no ( s & Student ) implies p not in s.projects
-- div,1
all p:Professor, pr:Project | p->pr not in projects
  	all p:Project | some p:Person | p->p in projects
-- div,1
all s : Person, p : Project | (no ( s & Student ) implies p not in s.projects) and some p in s.projects
-- div,1
all x : Project | no Professor & (projects <: Person).x
  	all x : Project | some (projects <: Person).x
-- div,1
all p: Project | (Person <: projects).p in Student
  all p: Project | (some p: Person | p in projects.p)
-- div,1
all s : Person, p : Project | ( no ( s & Student ) implies p not in s.projects ) and some p in s.projects
-- div,1
all p:Project, p1: Person | p1 in projects.p implies p1 in Student
	

    all p: Project |some projects.p
-- div,1
all p:Project, p1: Person | p1 in projects.p implies p1 in Student
	

    all p: Project |not lone projects.p
-- div,2
all x : Person | x in Person <: projects.Course => x in Student
  	all c : Course | some Person <: projects.c
-- div,2
all s : Student| Person <: projects-s->Project = none
    all s : Student| some Person <: projects&s->Project
-- div,1
all x : Person | x->Course in Person <: projects => x in Student
  	all c : Course | some Person <: projects.c
-- div,1
all x : Person | x in (Person :> projects.Course) => x in Student
  	all c : Course | some Person <: projects.c
-- div,1
all c: Course | all s: Person | some g: Grade | c->s->g in grades => s in Student
  	Course<:projects in Course
-- div,1
all x : Person | x in (Person <: projects.Course) => x in Student
  	all c : Course | some Person <: projects.c
-- div,1
all p: Project | some s: Person | p in s.projects => s in Student
  	all p: Person | p.projects => p in Student
-- div,1
all p:Project, p1: Person | p1 in projects.p implies p1 in Student
	

    all p: Project |some Person.projects.p
-- div,2
all p: Person, proj: Project | proj in p.projects implies p in Student
  	all proj: Project | some projects.proj
-- div,1
all p:Project, p1: Person | p1 in projects.p implies p1 in Student
	

    all p: Project |some Person in projects.p
-- div,1
all p:Project, p1: Person | p1 in projects.p implies p1 in Student
	

    all p: Project |not lone Person.projects.p
-- div,1
some p : Person, c : Course | all pr : projects | no ( p & Student ) implies c not in p.enrolled and pr in s.projects
-- div,1
all p : Project, ps : Person | (p->ps in projects implies p in Student) and ( some ps2 : Person | ps2->p in projects)
-- div,1
some p : Person, c : Course | all pr : projects | no ( p & Student ) implies c not in p.enrolled and pr in p.projects
-- div,3
(all p:Project | some s:Student | s->p)
	(all p:Project | all per:Person | per->p in projects implies per in Student)
-- div,1
all p : Project | some s : Student | s->p in projects and all per : Person | per->p in projects implies per is Student
-- div,1
all p : Person | p not in Student implies p not in Person<:projects.Course
  	all p : Project | some Person<:projects.p
-- div,2
all p:Project, p1: Person | p1 in projects.p implies p1 in Student
	

    all p: Project |not lone Person in projects.p
-- div,1
all p : Project , ps : Person | (ps <: projects).p implies ps in Student
  	all p : Project | some (Person <: prjects).p
-- div,2
all p : Project , ps : Person | (ps <: projects).p implies ps in Student
  	all p : Project | some (Person <: projects).p
-- div,1
all p : Project | all a : Person | a.projects implies a in Student
 	 and
  	all p : Project | some a: Student | p in a.projects
-- div,1
(all p: Person, pr : Project | p -> pr in projects implies p in Student) and all pr1 : Project | some s : Student | pr1 -> s in projects
-- div,1
(all p: Person, pr : Project | p -> pr in projects implies p in Student) and (all pr1 : Project | some s : Student | pr1 -> s in projects)
-- div,1
all pr:Project, p:Person | p in (Person <: projects).pr implies p in Student
    all pr:Project, p:Person | some p in (Person <: projects).pr
-- div,1
all p : Person, c : Course,  pr:Project  | no (p & Student) implies not c in p.projects
  all  pr:Project | some b : Person | pr in b.projects
-- div,3
all proj:Project | some p:Person | p->proj in p.projects implies p is not Professor
    all proj:Project | some p:Student | p->proj in p.projects
-- div,2
all person : Person - Student | all project: Project | project in person.projects = none
  	all person : Student | all project: Project | project in person.projects
-- div,1
all c: Course | all s: Person | all g: Grade | c->s->g in grades => s in Student
  
	all c: Course | all s: Person | some g: Grade | all p:Project | c->p in Course<:projects => some(c->s->g in grades)
-- div,2
