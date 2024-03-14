-- equiv pair start,2
all p : Person | p in Teacher && p.Tutors in Student
-- div,2
-- equiv pair end
-- equiv pair start,1
no(Student & Person.Tutors) and (no (Tutors.(Person-Student)))
-- div,1
-- equiv pair end
-- equiv pair start,2
no ((Person-Teacher).Tutors) and no (Tutors -> (Person-Student))
-- div,2
-- equiv pair end
-- equiv pair start,3
no Student.Tutors
    Person.Tutors in Student
    no Tutors.Teacher
    Tutors.Person in Teacher
-- div,3
-- equiv pair end
