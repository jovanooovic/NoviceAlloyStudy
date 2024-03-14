grades.Grade in enrolled
-- div,2
all p : Person | ~(Course.grades).p in p.enrolled
-- div,1
all c:Course, s:Person, g:Grade | Course.grades.g in s.enrolled
-- div,3
all c:Course,p:Person,g:Grade | c->p->g in grades implies c->p in enrolled
-- div,1
all p: Person, g: Grade, c: Course | p->g in c.grades implies p in Student and c in p.enrolled
-- div,1
