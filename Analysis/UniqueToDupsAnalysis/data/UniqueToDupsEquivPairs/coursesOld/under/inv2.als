-- equiv pair start,9
(teaches . Person) in Professor
-- div,2
Course.teaches in Professor
-- div,2
all c : Course |
    	c.teaches in Professor
-- div,1
all p : Person | no p.~teaches - Professor
-- div,1
all p : Professor, c : Course | p -> c in teaches implies p in Professor
-- div,3
-- equiv pair end
-- equiv pair start,1
Professor.teaches = Person.teaches
-- div,1
-- equiv pair end
