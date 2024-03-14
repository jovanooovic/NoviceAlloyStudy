all
-- div,4
all p.
-- div,2
all p: Project
-- div,1
all p : Project |
-- div,5
all p1,p2:Person |
-- div,4
Students <: projects
-- div,1
Student <: projects & p->c
-- div,1
Projects in Student.projects
-- div,4
projects.Project in Students
-- div,1
no (Person - Students).projects
-- div,1
Student <: projects & some p->c
-- div,1
Students <: projects & some p->c
-- div,3
all p : Project | some s.projects
-- div,1
works_on in Student some -> Project
-- div,1
some Projects.(Student <: projects)
-- div,1
(Person <: projects) in Student some
-- div,1
all p : Project | Person -> Project &
-- div,1
all x:Project | Student->x in project
-- div,1
all x:Project | Students->x in project
-- div,1
no (Person-student) & projects.Project
-- div,1
no (Person-Student) & Person.projects.p
-- div,1
all p: Project | some (Person<:projets).p
-- div,1
all p:Projects | some projects.p & Student
-- div,1
all p : Project | (<:projects.p) in Student
-- div,1
all p : Project | some (Person <: prjects).p
-- div,1
all curso: Course.projects| pessoa in Student
-- div,1
all p:Project | p implies all Student.projects
-- div,1
all p: Projects | some s: Student | p in s.projects
-- div,1
(Person <: projects) in Student some -> all Project
-- div,1
(this/Person <: projects) in Student some -> Projec
-- div,1
all p : Project | some s : Student | s in c.enrolled
-- div,1
all p: Projects | (some s: Student | s in projects.p)
-- div,1
all x : Projects | some y : Student | y->x in projects
-- div,1
all p: Project | some p.~(Person <: projects)+Students
-- div,1
all p:Person : no (Person-Student) & p.projects.Project
-- div,1
all p : Project | Person -> Project & some (projects.p)
-- div,1
(Person.projects - (Person - Student).projects = Project
-- div,2
all p : Person | all pro : Project | pro in p.projects and
-- div,1
all p:Project | some x:Person x.project implies x in Student
-- div,1
all p : Projects | no (Person.projects & (Person - Student))
-- div,1
all p:Project | some x:Person | x.project implies x in Student
-- div,1
no ((Person - Student) <: projects) Person.projects = Projects
-- div,2
all p:Project | some x:Person x.project.p implies x in Student
-- div,1
all s:Person, p:Project | s->p in Projects implies s in Student
-- div,1
all disj s1,s2: student | s1!=s2 lone s1.projects & s2.projects
-- div,1
all p:Project | x->p in Person <: projects implies x in Student
-- div,1
(no ((Person - Student) <: projects) Person.projects = Projects
-- div,1
all disj s1,s2: Student | s1!=s2 lone s1.projects & s2.projects
-- div,1
all s:Person, p:Projects | s->p in Projects implies s in Student
-- div,1
no Professor.projects
  	all p : Project | some Person<:project.p
-- div,1
no (Person - Student).projects 
  	some Person :< projects.Project
-- div,1
all disj s1, s2: Student | s1 != s2 lone s1.projects & s2.projects
-- div,2
p.projects in Student and some (Person<:projects).Project & Person
-- div,1
all p: Project | lone s: Person | p in s.projects => s in Students
-- div,1
all p: Project | some p: Person | s->p in projects and s in Student
-- div,1
all p : Project | some p : Person | p in s.projects and p in Student
-- div,1
all p:Project | none x:Person | x->p in projects and n not in Student
-- div,1
all x:Person | all y:Project | x->y in projects implies x in Students
-- div,1
all p: Project some s: Student | projects.p in Student and s.projects
-- div,1
all p: Project, some s: Student | projects.p in Student and s.projects
-- div,2
all pj: Project, all p: Person | pj in p.projects implies p in Student
-- div,1
none p:Project | none x:Person | x->p in projects and n not in Student
-- div,1
no (Person-Student).projects
  	Projects in (Person-Professor).projects
-- div,1
all p : Project | some s : Person | s->p in workes implies p in Student
-- div,1
all p : Project | some projects.project and projects.Project in Student
-- div,1
all pr:Projects | some pe:Person | pr in pe.projects and (pe & Student)
-- div,1
all p:Person | p in p.projects implies p in Student and not in Professor
-- div,1
all p: Project | some (Person<:projects).p
  no project.(Person-Student)
-- div,1
all s : Person | some p : Project | p in s.projects implies s in student
-- div,1
all p: Project, some s: Student | projects.p in Student and (s.projects)
-- div,1
all p:Person | some po:Project | p->po in projects implies p in Students
-- div,1
all disj (s1, s2): Student | s1 != s2 iden lone s1.projects & s2.projects
-- div,1
all p: Project | some p.~(Person<:projects) and no p.~(Teacher<:projects)
-- div,1
some p : Person | all p : Project | p in Student implies s->p in projects
-- div,1
all p1 : Project | some p1 : Person | s1->p1 in projects and p1 in Student
-- div,1
all p : Project | (some p1 : Person | p1.(<:projects).p and p1 in Student)
-- div,1
all p:Person | p in Student implies some pr in Projects | p->pr in Projects
-- div,1
all p: Project, some s: Student | projects.p in Student and (some s.projects)
-- div,1
Person <: projects.Project in Student
  	 all p : Project | some <: projects.p
-- div,2
all curso: Course.projects, pessoa : Pessoa.enrolled.curso | pessoa in Student
-- div,1
all p : Project implies some s : Person | p in s.projects implies s in Student
-- div,1
no projects.Projects - Student
  	all p : Project | some (Person <: projects).p
-- div,1
all p: Project | some s: Person | s in p.~(Person <: projects) and S in Student
-- div,1
all pr:Project, all p:Person | p in (Person <: projects).pr implies p in Student
-- div,1
all pr:Project, all p:Person | p in (Course <: projects).pr implies p in Student
-- div,2
all x:Project| not(Person-Professor)->x in projects and Students -> x in projects
-- div,1
all p: Projects | some pe: Person | projects.p in Student and pe -> p in projects
-- div,1
no (Person-Student) & projects.Project
	
  	all p:Projects | some Person.projects.p
-- div,1
all p : Person-Student | p.projects = none
  	all p : Projetc | p in Person.projects
-- div,1
all p : Person-Students | p.projects = none
  	all p : Projetc | p in Person.projects
-- div,1
all p:Projec| all x:Person | x->p in Person <: projects implies x in Student and x->p
-- div,1
all s : Student | Student in Person.projects and some Student & Person.project<:Person
-- div,1
no (Person - Student).projects
    all p : Project | one s : Student | p in c.projects
-- div,1
some x:Project | Student->x in projects
    
    some x:Student | x->Project in project
-- div,1
all person : Person - Student | all project: Project | project in person.projects = non
-- div,1
all p: Projects | some pe: Person | projects.Project in Student and pe -> p in projects
-- div,1
all p:Project | Person<:projects.p in Student
  all p:Project | Some Person<:projects.p
-- div,1
all s : Person, p : Project | no ( s & Student ) implies p not in s.projects
-- div,3
all p : Project | p in Students.projects
  	all p : Person - Student | p.projects = none
-- div,2
all proj: Project| some pers: Person | proj in pers.projects implies (pers in Student and
-- div,1
all s: Student | no (Professor-Student).projects implies some x: Person | p in x.projects
-- div,1
all p : Project | p.~(Person <: projects) in Student
  some Projects.~(Person <: projects)
-- div,1
all p:Project | Person<:projects.p in Student
  all p:Project | some x:Person x<:projects.p
-- div,1
all p:project | Person <:projects.p in Student
  all p:project | some pe:Person <: projects.pr
-- div,1
all p : Project | some Player.projects & p
  	all p : Person | some p.projects => p in Student
-- div,1
all p:Project | Person <:projects.p in Student
  all p:Project | some pe:Person <: projects.pr
-- div,1
all p:porject | Person <:proejcts.p in Student
  all p:project | some pe:Person <: projects.pr
-- div,1
all p: Project | some s: Student | s->p in projects implies (one d: Student | s->p in project)
-- div,1
all s : Person, p : Project | some s.projects | no ( s & Student ) implies p not in s.enrolled
-- div,1
all p : Project | some s : Student | p in s.projects
  	no Teacher.projects - Student.projects
-- div,2
all p:porject | Person <:proejcts.pr in Student
  all p:project | some pe:Person <: projects.pr
-- div,1
Project.~(Person<:projects) in Student and not in Professor
  	some Project.~(Course<:projects)
-- div,1
all s : Person, p : Project | no ( s & Student ) implies p not in s.projects | some s.projects.p
-- div,1
all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in s1.projects
-- div,1
(all p: Project | (Person <: projects.p ) in Student and (some pe: Person | pe -> p in projects )
-- div,1
all pro: Project | #pro.~{Student <: projects} >= 1 and #pro.~{Personen-Student <: projects} >= 1
-- div,1
all p : Project | some (Person :> projects .p)
	all p: Project | (Person :> projects.p) in student
-- div,1
((Person<:projects).Project in Student) and (all p : Project | some s : Student | p in s.projetcs)
-- div,1
all s : Person, p : Project | no ( s & Student ) implies p not in s.projects and p in some s.projects
-- div,1
all p : Project | all u : Person | p in Course.projects implies p in u.projects
-- div,1
all p:Professor, pr:Project | p->pr not in projects
  	all p:Project | some p:Person | s->p in projects
-- div,1
all p : Person, c : Course,  pr:Project  | no (p & Student) implies not c in p.projects| pr in p.projects
-- div,1
no (Person-Student) & (Person<:projects).Project
  
  
	
  	all proj:Project | some (Person<:project).proj
-- div,1
(all p: Project, p1: Person | p in p1.projects implies p1 in Student) and some p3: Student | p in p3.projects
-- div,1
(all p: Project, p1: Person | p in p1.projects implies p1 in Student) and some p3: Student | p in p3.projects)
-- div,1
all p : Person - Student | p.projects = None
	all p : Project | all per : Person - Professor | p in per.projects
-- div,1
all p: Project | all x: Person | p in x.projects implies x in Student
  	all p: Project | p in Students.projects
-- div,1
all p:Project | some s:Student | s->p in project
  	all p:Project, s:Person | s->p in projects implies s in Student
-- div,1
some p : Person, c : Course | all pr : Projects | no ( p & Student ) implies c not in p.enrolled and pr in p.projects
-- div,1
all s : Person, p : Project | some (p & s.projects) and no ( s & Student ) implies p not in s.projects
-- div,2
all s : Person, p : Project | ( some (p & s.projects) ) and ( no ( s & Student ) implies p not in s.projects )
-- div,1
all p: Project | some s: Person | p in s.projects => s in Student
  	all p: Project | some s: Student | p in S.projects
-- div,1
all p : Project | all u : Person | p in Course.projects implies p in u.projects and u in Student
-- div,2
all p:Project, pe:Person | p in pe.projects implies pe not in Professor
  all p:Projects | some s:Student | p in s.projects
-- div,2
all p : Project | some u : Person | p in Course.projects implies p in u.projects and u in Student
-- div,1
all p:Projects, pe:Person | p in pe.projects implies pe not in Professor
  all p:Projects | some s:Student | p in s.projects
-- div,1
all pj: Project, p:Person | p in (Person <: projects).pj implies p in Student
  	all pj: Project | some (Person: projects).p
-- div,1
all p:Person | all po:Project | p->po in projects implies p in Student
    all pr:Project | some s:Student | s->p in projects
-- div,1
(all p:Person, pj:Project | p->pj in projects implies p in Student) and (all pj:Projects | some p:Person | p->pj in projects)
-- div,1
all pj: Project, p:Person | p in (Person <: projects).pj implies p in Student
  	all pj: Project | some (Person <: projects).p
-- div,1
all p:Person | p in Student implies some pr:Project | p->pr in Projects and all pr:Project | some p:Student | p->pr in Projects
-- div,1
all p:Person | p in Student implies some pr:Project | p->pr in Projects and all pr:Project | some p:Student | p->pr in projects
-- div,1
(all p: Project, p1: Person | p in p1.project implies p1 in Student) and (all p2: Project | some p3: Student | p2 in p3.project)
-- div,1
(all p: Project, p1: Person | p in p1.projects implies p1 in Student) and (all p2: Project | some p3: Student | p2 in p3.project)
-- div,5
all p : Person, c : Course,  pr : Projec | some s : Student | no ( p & Student ) implies c not in p.enrolled and pr in s.projects
-- div,1
all p : Project, ps : Persom | ps in (Person <: projects).ps implies ps in Student
  	all p : Project |some (Person <: projects).p
-- div,1
all pr:Project, p:Person | p in (Person <: projects).pr implies p in Student
    all pr:Project| some p in (Person <: projects).pr
-- div,1
all p : Project | some s : Student | p in s.projects
  	all pr : Project | all p : Person   | p in pr.projects implies p in Student)
-- div,1
all p : Project, b : Person | p in b.projects => b in Student p in b.projects
  	all p : Project | some b : Person | p in b.projects
-- div,2
all p : Project | some s : Student | p in s.projects
  	all pr : Project | all p : Person   | pr in p.projects implies p in Student)
-- div,1
all person : Person - Student | person.projects = none
  	all person : Student | all project: Project | project in Sttudent.projects
-- div,1
(all p:Person, pj:Project | p -> pj in projects imples p in Student) and (all pj:Project | some per:Person | per -> proj in projects)
-- div,1
(all p:Person, pj:Project | p -> pj in projects implies p in Student) and (all pj:Project | some per:Person | per -> proj in projects)
-- div,1
(all p: Person | some proj: Project | proj in p.projects implies p in Student)
	and
	Project = Person.projects
-- div,1
(all p:Person, pj:Project | p -> pj in projects imples p in Student) and
	(all pj:Project | some per:Person | per -> proj in projects)
-- div,1
(all p: Person | some proj: Project | proj in p.projects implies p in Student)
	and
	Project in Person.projects
-- div,1
all p:Person | p in Student implies some pr in Projects | p->pr in Projects and all pr in Projects | some p:Student | p->pr in Projects
-- div,1
all p : Project, b : Person | p in b.projects => b in Student p in b.projects
  	all pp : Project | some bb : Person | pp in bb.projects
-- div,1
all s : Person, p : Project | some s1 : Student | no ( s & Student ) implies p not in s.projects and p in s1.projects
-- div,2
all x,y : univ | x->y in Person<:projects implies x not in Professor and x in Student
    all x : Project | implies some y : Student | y->x in Person<:project
-- div,1
all x,y : univ | x->y in Person<:projects implies x not in Professor and x in Student
    all x : Project | implies some y : Student | y->x in Person<:projects
-- div,1
all c: Course | all s: Person | all g: Grade | c->s->g in grades => s in Student
  
	all c: Course | all s: Person | some g: Grade | c->project => some(c->s->g in grades)
-- div,1
all c: Course | all s: Person | all g: Grade | c->s->g in grades => s in Student
  
	all c: Course | all s: Person | some g: Grade | all p:Project | c->p in project => some(c->s->g in grades)
-- div,1
