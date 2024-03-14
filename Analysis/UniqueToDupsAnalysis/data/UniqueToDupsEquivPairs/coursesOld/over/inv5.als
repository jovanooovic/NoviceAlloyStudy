-- equiv pair start,11
some Project.projects
-- div,1
some (Person <: projects).Course-Student
-- div,1
some Project.(Student <: projects)
-- div,2
no (Person - Student).projects
  	some Project.projects
-- div,1
(Person<:projects).Person in Student
  	some (Person<:projects).Person
-- div,1
(Person<:projects).Project in Student and some (Person<:projects).Person
-- div,1
no (Person-Student) & projects.Project
	
  	some Project.projects
-- div,2
Person.projects in Student and some (Person<:projects).Project & Person
-- div,1
Person.projects in Student
    some (Person :> Project.~projects)
-- div,1
-- equiv pair end
-- equiv pair start,22
all p:Project | some Project.projects
-- div,1
all p : Project | p in Student.enrolled
-- div,1
all p:Project | some s:Student | s in p.projects
-- div,1
all p : Project | some s : Student | s in p.enrolled
-- div,1
Person<:projects.Project in Student
  
	Project in Project.(Person<:projects)
-- div,1
no Person.projects - Student
  	all p : Project | some (Person <: projects).p
-- div,2
all p: Project | some s: Student | p in p.~(Student <: projects)
-- div,1
no (Person-Student) & projects.Project
   all p:Project| some p.projects
-- div,1
Person <: projects.Project in Student
  	Project in Person <: Person.projects
-- div,1
all x : Project | no (Person-Professor).projects & x and some x & Student
-- div,1
no (Person-Student) & projects.Project
  all p:Project| some enrolled.p
-- div,1
no (Person-Student) & projects.Project
  all p:Project| some p.enrolled
-- div,1
all p1 : Project | some pr1 : Person | pr1->p1 in projects and p1 in Student
-- div,1
all p: Project | some pe: Person | pe -> p in projects
  all pe: Person , p: Project | p in Student or not(pe->p in projects)
-- div,1
all p : Project | some per : Person | per->p in projects
  	all p : Project | all per : Person | per->p in projects implies p in Student
-- div,7
-- equiv pair end
-- equiv pair start,2
Person <: projects in Student some -> some Project
-- div,1
all p : Person | some p.projects <=> p in Student
    all p : Project | p in Person.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
(Person <: projects) in Student some -> one Project
-- div,1
-- equiv pair end
-- equiv pair start,1
no (Person-Student).projects
  	Project in (Person-Professor).projects
-- div,1
-- equiv pair end
-- equiv pair start,3
Person <: projects.Project in Student
  all p : Project | one Person <: projects.p
-- div,1
all p: Project | lone s: Person | p in s.projects
  	Student.projects = Project
-- div,1
no (Person - Student).projects
  all p : Project | one s : Student | p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,7
(Person<:projects).Project in Student
    
    some x:Student | x->Project in projects
-- div,1
some s : Student | all p : Project | s->p in projects
	all person : Person, p2 : Project | person->p2 in projects implies person in Student
-- div,1
some s : Student | all p : Project | s->p in projects &&
	all person : Person | all p : Project | (person->p in projects) implies person in Student
-- div,1
some s : Student | all p : Project | s->p in projects
	all person : Person | all p : Project | (person->p in projects) implies person in Student
-- div,1
some s : Student | all p : Project | s->p in projects
	all person : Person | all p2 : Project | person->p2 in projects implies person in Student
-- div,3
-- equiv pair end
-- equiv pair start,1
no Person & Student
  no Professor.projects
  all p : Project | some Student & projects.p
-- div,1
-- equiv pair end
-- equiv pair start,1
(Person<:projects).Project in Student 
  	all p: Project | some s: Student | s.projects=p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person , pr:Project|p->pr in projects and p in Student
    all p:Project |some s:Student | s->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,5
all p : Person | some p.projects implies p in Student and p not in Professor 
  	all p : Project | p in Student.projects
-- div,1
all x : univ | x in Project implies some y : Student | y->x in Person<:projects
    
    all x,y : univ | x->y in Person<:projects  implies x in Student and x not in Professor
-- div,1
all x,y : univ | x->y in Person<:projects  implies x in Student and x not in Professor
    all x : univ | x in Project implies some y : Student | y->x in Person<:projects
-- div,1
all x,y : univ | x->y in Person<:projects implies x not in Professor and x in Student
    all x : univ | x in Project implies some y : Student | y->x in Person<:projects
-- div,1
all x, y : univ | x in Person and y in Project and x->y in Person<:projects implies x in Student
    all x,y : univ | x->y in Person<:projects  implies x in Student and x not in Professor
    all x : univ | x in Project implies some y : Student | y->x in Person<:projects
-- div,1
-- equiv pair end
-- equiv pair start,1
(all a : Person, b : Project | b in a.projects implies a in Student) and (some c : Person | all d : Project | d in c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Project | all e : Person | e->p in projects implies e = Student
  	all p : Project | some e : Person | e->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Project, p1: Person | p1 in projects.p implies p1 in Student
	

    all p: Project |not lone person: Person| person in projects.p
-- div,1
-- equiv pair end
