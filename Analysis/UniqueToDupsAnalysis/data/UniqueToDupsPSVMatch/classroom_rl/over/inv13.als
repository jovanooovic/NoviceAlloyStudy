all p : Person | p in Teacher && p.Tutors in Student
-- div,2
no(Student & Person.Tutors) and (no (Tutors.(Person-Student)))
-- div,1
no ((Person-Teacher).Tutors) and no (Tutors -> (Person-Student))
-- div,2
no Student.Tutors
    Person.Tutors in Student
    no Tutors.Teacher
    Tutors.Person in Teacher
-- div,3
