all x:Project | one x.projects
-- div,4
all p : Project | one p.projects
-- div,5
all x:Project | x in Course
-- div,1
all p : Project | p in Course
-- div,1
all g:Grade | one ( (Course <: projects).g)
-- div,1
all p : Project | p in (one Course)
-- div,1
all x : Project | one y : Course | y in x.projects
-- div,1
all p : Project | some c : Course| c in p.projects
-- div,1
all pr: Project | one c : Course | pr in Course.projects
-- div,1
one course : Course | all projects : Project | projects in course
-- div,1
one course : Course | some projects : Project | projects in course
-- div,1
