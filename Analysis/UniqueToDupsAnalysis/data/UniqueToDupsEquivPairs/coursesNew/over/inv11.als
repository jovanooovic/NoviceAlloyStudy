-- equiv pair start,6
no grades
-- div,1
no grades.Grade
-- div,1
Course.grades.Grade in Student.enrolled
-- div,1
all c: Course | all grade: Person.(c.grades) | no univ
-- div,1
all c:Course,p:Person,g:Grade | p->g in c.grades => g in p.enrolled
-- div,1
all c : Course | all g: Grade, p: Person | p->g in c.grades implies c in c.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p: Person, c: Course | some c.grades => c in p.enrolled
-- div,3
-- equiv pair end
-- equiv pair start,1
all p: Person, c: Course | some c.grades <=> c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person, c: Course | (c.grades[p] in Grade) => (c in p.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,7
all c:Course, p:Person, g:Grade | p->g in c.grades implies p in Student and c in p.enrolled
-- div,1
all c: Course, p:Person, g: Grade | p->g in c.grades implies (c in p.enrolled and p in Student)
-- div,1
all c:Course, p:Person, g:Grade | c->p->g in grades implies p in Student and p in enrolled.c
-- div,2
all p:Person, c:Course, g:Grade | c->p->g in grades implies p in Student and p in enrolled.c
-- div,1
all u:Person, c:Course, g:Grade| c->u->g in grades implies u in Student and u->c in enrolled
-- div,1
all p:Person, g:Grade, c:Course| c->p->g in grades implies p in Student and p->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all st :Student, c:st.enrolled, g : Grade | st->g in c.grades
    all c: Course | (all p: Person, g: Grade | p->g in c.grades implies c in p.enrolled)
-- div,1
-- equiv pair end
