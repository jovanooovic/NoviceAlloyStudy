-- equiv pair start,2
all p: Project| some s: Student | s in p.projects
-- div,1
all x: Person - Student | no x.projects
  all p: Project | some s: Student | p in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
some s : Person - Student | no s.projects 
  all p : Project | (some s : Student | s in p)
-- div,1
-- equiv pair end
-- equiv pair start,3
all x : Person - Student | no x.projects
  	all p : Project | one s : Student | p in s.projects
-- div,1
all p:Project, x:Person| x->p in projects implies x in Student
  all p:Project| one x:Person| x->p in projects
-- div,1
all p:Project, x:Person| x->p in projects implies x in Student
  all p:Project| one x:Person| x->p in projects and x in Student
-- div,1
-- equiv pair end
-- equiv pair start,4
all p : Person - Student | no p.projects
  	some s : Student | all p : Project | p in s.projects
-- div,3
all x:Person, p:Project| x->p in projects implies x in Student
  some x:Student| all p:Project| x->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person-Student | no p.projects
  	all pr : Project | some s : Person-Professor | pr in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | p not in Student => p.projects = none

   
   all p: Project | some m: Person | m.projects = p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Project | all x: Person | x in projects.p => x in Student 
  	some p1: Person | all p: Project| p1 = projects.p
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Person | all p : Project | p in s.projects implies s in Student
  	some s : Person | all p : Project | s in projects.p
-- div,1
all p : Person | all proj : Project | #(p.projects)>0 implies p in Student
  	some p : Person | all proj : Project | proj in p.projects
-- div,2
-- equiv pair end
-- equiv pair start,3
all s : Person | all p : Project |  (s in projects.p) and (s in Student) 
  	all  p : Project | some s : Person | s in projects.p
-- div,1
all x : Project | all y : Person | y in Student and x in y.projects
  all x : Project | some y : Person | x in y.projects
-- div,1
all s : Person | all p : Project |  p in s.projects and (s in Student) 
  	all  p : Project | some s : Person | s in projects.p
-- div,1
-- equiv pair end
