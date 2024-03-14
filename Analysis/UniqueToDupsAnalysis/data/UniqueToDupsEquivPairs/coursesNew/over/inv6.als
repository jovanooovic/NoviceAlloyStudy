-- equiv pair start,1
all p : Person, ps : Project | ps in p.projects implies p in Student && ps in p.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Person| all p: Project | p in x.projects implies (some c: Course| p in c.projects and x in c.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Person | all y : Project | x in projects.y implies (one z : Course | x in enrolled.z and y in z.projects)
-- div,1
-- equiv pair end
