-- equiv pair start,8
grades.(max[Grade]) in projects.~projects
-- div,7
all c : Course | all p : Person | all g : Grade | ((g = max[Grade]) and p->g in c.grades) implies ((c.projects & p.projects) != none)
-- div,1
-- equiv pair end
