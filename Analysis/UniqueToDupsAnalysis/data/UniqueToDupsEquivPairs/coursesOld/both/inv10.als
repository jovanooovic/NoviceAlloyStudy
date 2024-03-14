-- equiv pair start,1
no Professor->Grade
-- div,1
-- equiv pair end
-- equiv pair start,15
no Professor.(Course.grades)
-- div,1
no ~(Course.grades).Professor
-- div,1
no Course.grades.Grade & Professor
-- div,1
no Course.grades & (Professor)->Grade
-- div,1
no Professor->Grade & Course.grades
-- div,1
all p : Professor | no ~(Course.grades).p
-- div,1
all p : Professor | p not in Course.grades.Grade
-- div,1
all x : Professor | no x->Grade & Course.grades
-- div,1
all p : Professor | no Course.grades.Grade & Professor
-- div,1
all p : Person | some p.(Course.grades)=> p not in Professor
-- div,2
all p : Professor | all g : Grade | p->g not in Course.grades
-- div,1
all c:Course, p:Person, g:Grade | c -> p -> g in grades implies p not in Professor
-- div,1
all p : Person, c: Course, g: Grade | c -> p -> g in grades => p not in Professor
-- div,2
-- equiv pair end
-- equiv pair start,2
no Professor.enrolled.grades
-- div,1
all p : Person | some p.enrolled.grades => p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,3
no Course.grades & Student->Grade
-- div,2
all c : Course | Student.(c.grades) in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
Course.grades.Grade not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
Professor not in Course.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,2
no (Person-Professor).(Course.grades)
-- div,1
no Course.grades & (Person-Professor)->Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Student | lone Course.grades[p]
-- div,1
-- equiv pair end
-- equiv pair start,1
no p: Person | p in Professor & Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | Course.grades.Grade = s
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | s in Course.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student | Course.grades.Grade in s
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course | Student in c.grades.Person
-- div,1
-- equiv pair end
-- equiv pair start,9
all p : Person | p not in p.teaches.grades.Grade
-- div,6
all p : teaches.Course | p not in p.teaches.grades.Grade
-- div,1
all c : Course, p : Person | some p.(c.grades) => c not in p.teaches
-- div,2
-- equiv pair end
-- equiv pair start,2
all p : Professor | p not in p.teaches.grades.Grade
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Person | lone Course.grades[p] iff p in Student
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: Student, c: Course, g: Grade | c->s->g in grades
-- div,1
all p : Person, c : Course, g : Grade | p in Student implies c -> p -> g in grades
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Person | lone Course.grades[p] implies p in Student
-- div,2
-- equiv pair end
-- equiv pair start,1
all x : Professor | no x->Grade & (Course-x.teaches).grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Professor | no x->Grade & (Course-x.enrolled).grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Person | c in p.enrolled => p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Person | some c.grades.p <=> p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Person | some p.(c.grades) <=> p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,4
all c : Course, p : Person | some p.(c.grades) <=> c not in p.teaches
-- div,3
all c : Course| all p : Person | some p.(c.grades) <=> c not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person | some (p.enrolled.grades.Grade)&p => p not in Professor
-- div,2
-- equiv pair end
-- equiv pair start,1
no p:Person | p in Professor & Student
  	all p:Person | p.enrolled != none
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person, c : Course, g : Grade | (grades in c->p->g)implies p in Student
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Person | some g: Grade, c: Course | c->p->g in grades implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person, c: Course, g: Grade | c -> p -> g in grades <=> p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course, g:Grade | some p:Person | c -> p -> g in grades implies p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | s->c not in enrolled implies all g:Grade | c->s->g not in grades
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person, c: Course, g: Grade | c -> p -> g in grades and p -> c in enrolled <=> p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person, c: Course, g: Grade | c -> p -> g in grades and p -> c in enrolled <=> p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | all c: p.enrolled | c.grades[p] in Grade
    all s: Student | all c: s.enrolled | c.grades[s] in Grade
    all p: Professor | all c: p.teaches | no c.grades[p]
    all o: Person - Student - Professor | all c: o.enrolled | no c.grades[o]
-- div,1
-- equiv pair end
-- equiv pair start,1
no p: Person | p in Professor & Student
    all p: Person | all c: p.enrolled | c.grades[p] in Grade
    all s: Student | all c: s.enrolled | c.grades[s] in Grade
    all p: Professor | all c: p.teaches | no c.grades[p]
    all c: Course | no c.enrolled implies all p: Professor | no c.grades[p]
-- div,1
-- equiv pair end
-- equiv pair start,1
no p: Person | p in Professor & Student
    all p: Person | all c: p.enrolled | c.grades[p] in Grade
    all s: Student | all c: s.enrolled | c.grades[s] in Grade
    all p: Professor | all c: p.teaches | no c.grades[p]
    all o: Person - Student - Professor | all c: o.enrolled | no c.grades[o]
-- div,1
-- equiv pair end
