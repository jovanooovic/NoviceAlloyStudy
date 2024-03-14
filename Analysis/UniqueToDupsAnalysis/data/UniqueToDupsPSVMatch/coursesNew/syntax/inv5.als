all p:Project
-- div,5
all p : Projects | projects.p
-- div,1
all p : Professor | no p.project
-- div,1
no (Professor-Students).projects
-- div,1
all p : Project | all s : Person |
-- div,3
all p: Project | p.~projects in Studen
-- div,1
all p : Person - Student | no p.project
-- div,1
no Professor.projects 
  all projects.Project
-- div,1
all p: Person | p in Student && #s.projects > 0
-- div,1
no Professor.projects 
  all p : projects.Project
-- div,1
all p:Person | all projects.p & Person in Student
-- div,1
all p : Project | all s : Person | s in project.p
-- div,1
all p :Project | some s : Student | p in s.project
-- div,1
all p: Project | p.~this/Person/projects in Student
-- div,1
all p : Project, some s : Student | p in s.projects
-- div,2
all y:Student, c:Course, p:Project | y->p in project
-- div,1
all s : student | some p : project | p in s.projects
-- div,1
all proj: Project | some p: Person | p->proj in project
-- div,1
all x: Person - Student | no x.projects
  some Project.p
-- div,1
all s: Person, p: Project | x in Student => x p.~projects
-- div,1
all x : Project | all y : Person | y in projects.x implies
-- div,1
all p: Project | some projects.p and projects.p in Student
-- div,3
no (Person-Professor).projects && Project in Student.project
-- div,1
all p:Person-Professor, all pr:Project|some pr in p.projects
-- div,1
all p : Projects | some p : Person-Professor | p in p.projects
-- div,1
all x: Person, y: Project | p not in Student => not p.projects
-- div,1
all x: Person - Student | no x.projects
  Student in Project.p
-- div,1
Students.projects :> Project && some Person <: projects.Project
-- div,1
all p: Person, pr: Project | (p in student => pr in p.projects)
-- div,1
all p:Person-Professor | (some c:Project | lone p in projects.p
-- div,1
all p : Projects | (some x : Person - Professor | p in x.projects)
-- div,1
all x : Project | y : Person | x in y.projects implies y in Student
-- div,2
all p: Project | all u: User | p in u.projects implies u in Student
-- div,2
all p : Project | some s : Person | s in STudent => p in s.projects
-- div,1
some x:Person| all p:Project| x->p in projects implies x in Studente
-- div,1
all x: p | some p: Project | p not in Student => p not in p.~projects
-- div,1
all x: Person - Student | no x.projects
  
  some project.p : Project
-- div,1
all Student in projects.Project  
	
  
  some  Person <: projects.Project
-- div,1
some student : Student | all project : Project | person->project in projects
-- div,1
all p : Project | s : Person | s in p.(~(Person <: projects)) and s in Student
-- div,1
all p : Project | p : Person <: projects.p and Person <: projects.p in Student
-- div,1
all p : Project | s : Person | s in p.(~(Person <: projects)) and (s in Student)
-- div,1
all p : Project | s : Person | s in (p.(~(Person <: projects))) and (s in Student)
-- div,1
all p : Project | some p : Person <: projects.p and Person <: projects.p in Student
-- div,4
all p : Project | one s : Student | p in s.projects and no Professor-Student).projects
-- div,1
all p : Professor | no p.project 
  	all p : Project | some s in Student | p in s.project
-- div,3
all p : Professor | no p.projects
  	all p : Project | some s in Student | p in s.projects
-- div,2
all p: Person - Student | no p.project
    all p: Project | some s: Person | p in s.project
-- div,1
all p: Project | some x: Person | x = projects.p => x in Student
-- div,1
all p: Person - Student | no p.project
    all p: Project | some s: Person | p in s.projects
-- div,1
all ps: Person, pr:project | ps not in Student implies (no ps.projects and pr in ps.projects )
-- div,1
all x:Person | some x.project implies x in Student
  	all x:Project | some Person <: Student.x
-- div,1
all x:Person | some x.project implies x in Student
  	all x:Project | some Person <: projects.x
-- div,1
all p : Person - Student | no p.projects
  	all p : Projects | some s : Student | p in s.projects
-- div,2
all p : Project | s : Person | some (p.(~(Person <: projects))) and (p in s implies s in Student)
-- div,1
all p:Project,c:Person| c in projects.p => c in Students
  all p:Project | some projects.p & Person
-- div,1
all p: Project | all x: Person | x in projects.p => x in Student
  	all p: Project | some project.p
-- div,1
all p : Person - Professor | no p.projects
    all p1 : Project | (some x : Person | p1 in x.project)
-- div,1
all x: Person | x in Student => #x.projects>0 && x not in Student => x.projcts not in Course.projects
-- div,1
all p: Project | all x: Person | x in projects.p => x in Student 
  	some p1: Person | p1 = projects.p
-- div,1
(all x: Person | all p: Project | p in x.projects => x in Student) && (some z: Person | z in projects.p
-- div,1
all p : Person - Professor | no p.projects
    all p1 : Projects | (some x : Person | p1 in x.projects)
-- div,1
(all x: Person | all p: Project | p in x.projects => x in Student) && (some z: Person | z in projects.p)
-- div,1
(all s:Student | some p:Project | p in s.projects)
	and
	(all p:Project | all pr:Person | p in s.projects)
-- div,1
all p : Project | some per: Person | per in projects.p 
    all s: Person | s in projects.p implies s in S
-- div,1
all p : Person | some p.projects implies p in Student
  	all p : Project | some p : Person | p in p.project
-- div,1
all proj:Project, p:Person (p in projects.p implies p in Student) and (some p2:Person | p2 in projects.proj)
-- div,1
all proj:Project, p:Person | p in projects.p implies p in Student) and (some p2:Person | p2 in projects.proj)
-- div,1
all p : Project | some per: Person | per in projects.p and
    all s: Person | s in projects.p implies s in S
-- div,1
all p : Person - Professor | x : Project | x not in p
  	all p : Project | some s : Student | p in s.projects
-- div,2
all proj:Project, p:Person (p in projects.p implies p in Student) and (some p2:Person | p2 in projects.proj

}
-- div,1
all p:Project, x:Person| x->p in projects implies x in Student
  all p:Project| one x:person| x->p in projects
-- div,1
all p : Person | some p.projects implies p in Students
  	all p : Project | some s : Student | p in s.projects
-- div,1
all p: Person | p not in Student implies no p.projects
  all p: Project,  | (some s: Student | p in s.projects)
-- div,1
all p : Person - Professor | x : Project | x not in p.projects
  	all p : Project | some s : Student | p in s.projects
-- div,1
all p : Project | all  s : Person | p in s.projects implies s in Student
  	all p : Project | some s | p in s.projects
-- div,1
all p : Project | all pr : Person | | all c : Course | (pr in p.~(projects) iff pr in Student) and (p.~(projects)!=none)
-- div,2
all ps : Person | ((ps not in Student) implies (no ps.projects))
  all pr : Project, p : Person |and (pr in p.projects))
-- div,1
all p : Project, s : Person | s in projects.pe implies s in Student 
  	all p : Project | some s : Person | s in projects.p
-- div,1
all s : Student | some p : Project | p in s.projects
  	all p : Project, all s : Person | p in s.projects implies s in Student
-- div,1
all p : Project, all s : Person | p in s.projects implies s in Student
  	all p : Project | some s : Student | s in projects.p
-- div,1
all p: Person, pp:Project | (p not in Student => pp not in p.project) && (all pr:Project | some s: Student | pr in s.projects )
-- div,1
all s : Person | all p : Project |  (s in projects.p) and (s in Student) 
  	all  p : Project | some s : User | s in projects.p
-- div,1
(all p : Project | all per :Person -Student | no per.projects)
  	and
  	(all p : Projects | some pe: Person | p in pe.projects)
-- div,1
all per:Person | all p:Project | p in per.projects implies per in Student
    all pro:project | some p:Person | pro in p.projects
-- div,3
all per:Person | all p:Project | p in per.projects implies per in Student
    all pro:project | some s:Student | pro in s.projects
-- div,2
all per:Person | all po:Project | po in per.projects implies per in Student
    all pro:Project | some P:Person | pro in p.projects
-- div,1
all projects : Project | some student : Student | all professor : Professor | student->project in projects and no professor.projects
-- div,1
all proj:Project, p:Person | (p in projects.proj implies p in Student) and (all proj2:Project, some p2:Person | p2 in projects.proj2)
-- div,1
all p : Person | all proj : Project | #(p.projects)>0 implies p in Student
  	some p : Person | all c : Course | c.projects in p.project
-- div,1
all p:Person, proj:Project | (proj in p.projects implies p in Student) and (some p2:Person | proj in p2.projects)
-- div,1
all p1 : Project | some pr1 : Student | pr1->p1 in projects)
  	all p2 : Project | all pr2 : Person   | pr2->p2 in projects implies pr2 in Student
-- div,1
all p : Person | (p in Student => (p.projects = p.projects) and (p in Professor => (p.projects = none))), all p : Project | (some s : Student | p in s.projects)
-- div,2
all p : Person | (p in Student => (p.projects = p.projects)) & (p in Professor => (p.projects = none)),
    all p : Project | (some s : Student | p in s.projects)
-- div,1
all p : Person | (p in Student => (p.projects = p.projects)) and (p in Professor => (p.projects = none)),
    all p : Project | (some s : Student | p in s.projects)
-- div,1
(all pro : Projects | all p : Person | p->pro in projects implies p in Student)
  (all p2 : Project | all pr2 : Person   | pr2->p2 in projects implies pr2 in Student)
-- div,1
all pro : Project, per : Person | per in projects.pro implies per in Student
  	all p : Project | some s : Student | s in projects.p
-- div,3
