-- equiv pair start,3
lone Course.grades
-- div,3
-- equiv pair end
-- equiv pair start,9
all c:Course | lone c.grades
-- div,6
all c:Course,g:Grade | lone c.grades
-- div,1
all s : Person, c: Course | lone c.grades
-- div,2
-- equiv pair end
-- equiv pair start,2
grades in Course -> Student -> one Grade
-- div,2
-- equiv pair end
-- equiv pair start,7
grades in Course -> Student -> lone Grade
-- div,7
-- equiv pair end
-- equiv pair start,1
all c : Course | c.grades in Person -> one Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
grades in Course some -> set Person -> lone Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
grades in Course some -> some Person -> lone Grade
-- div,1
-- equiv pair end
-- equiv pair start,6
all c : Course | all g: Grade | g in c.grades.Person
-- div,1
all c : Course | all g: Grade | g in c.grades.Grade
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
all c : Course | all g: Grade | g in c.grades.Person
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,2
all c : Course | all g: Grade | g in c.grades.Person
	all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course | c.grades in Person lone -> one Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | c.grades in Person lone -> lone Grade
-- div,1
-- equiv pair end
-- equiv pair start,14
all s1,s2 : Person | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,5
all s1,s2 : Person | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2 and s1 != none
-- div,1
all s1,s2 : Person | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2 and g1 != none and g2 != none
-- div,1
all s1,s2 : Person | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2 and s1 != none and s2 != none
-- div,1
all c : Course | c.grades.Grade != none implies c.grades.Person != none
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,4
all c : Course | (c.grades.Grade != none) <=> (c.grades.Person != none)
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2
-- div,1
all c : Course | all p : Person | p in c.grades.Grade implies p in Student
	all s1, s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1 != s2 and c in s1.enrolled and c in s2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all g : Grade | g in Course.grades.Person
	all s1,s2 : Student | all c : Course | s1 in c.grades.Grade and s2 in c.grades.Grade implies s1!=s2
-- div,1
all g : Grade | g in Course.grades.Person
	all s1,s2 : Person | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,1
all g : Grade | some s : Student | s->g in Course.grades
	all s1,s2 : Student | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | all g : Grade | p->g in Course.grades
	all s1,s2 : Person | all g1,g2 : Grade | all c : Course | s1->g1 in c.grades and s2->g2 in c.grades implies s1 != s2
-- div,1
-- equiv pair end
