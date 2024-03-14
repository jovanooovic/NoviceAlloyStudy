no Student+Teacher
-- div,15
no Teacher & Student
-- div,3
no Student - Teacher
-- div,1
no (Teacher + Student)
-- div,3
no Student & Teacher
-- div,4
one Teacher & Student
-- div,1
some Student + Person
-- div,2
one (Teacher+Student)
-- div,1
lone (Teacher+Student)
-- div,1
some (Teacher+Student)
-- div,2
some Student & Teacher
-- div,1
some Student + Teacher
-- div,2
Student + Teacher = none
-- div,1
Student + Teacher in none
-- div,1
Person - Teacher = Person
-- div,1
no Student or no Teacher
-- div,2
no Student && no Teacher
-- div,4
no (Person & Student & Teacher)
-- div,2
no (Student + Teacher) & Person
-- div,2
no Teacher - (Student - Teacher)
-- div,1
some Person & (Teacher + Student)
-- div,1
one Teacher - (Student - Teacher)
-- div,1
lone Teacher - (Student - Teacher)
-- div,1
some Teacher - (Student - Teacher)
-- div,1
all p: Person | lone Student
-- div,2
Person = Person -(Student+Teacher)
-- div,1
Person = Person - Student - Teacher
-- div,1
all p: Person | p !in Teacher
-- div,1
Person = Person - Teacher - Student
-- div,2
Person not in Teacher and Person not in Student
-- div,1
no ((Person & Student ) & (Person & Teacher))
-- div,1
some Person
	no Student and no Teacher
-- div,1
no (Student - Teacher) + (Teacher - Student)
-- div,2
no Student - Teacher + Teacher - Student
-- div,2
no (Student - Teacher) - (Teacher - Student)
-- div,1
one Student - Teacher + Teacher - Student
-- div,1
some Student - Teacher + Teacher - Student
-- div,1
lone Student - Teacher + Teacher - Student
-- div,1
all p:Person | one Teacher & Student
-- div,1
no p: Person | p in Student + Teacher
-- div,1
no (Person & Student) and no (Person & Teacher)
-- div,2
no (Person & Student)  or no(Person & Teacher)
-- div,1
no (Person&Teacher) and no (Person&Student)
-- div,1
all p: Person | p !in (Teacher + Student)
-- div,1
all p: Person | p not in Student + Teacher
-- div,3
all p:Person-Student | p not in Teacher
-- div,1
some p: Person | p !in (Teacher + Student)
-- div,1
not (no (Person & Student) and no(Person & Teacher) )
-- div,2
some (Person & Teacher) or some (Person & Student )
-- div,1
no p : Person | p in Student or p in Teacher
-- div,1
all p:Person | p in Student implies p not in Teacher
-- div,1
all p: Person | p in Teacher or p not in Student
-- div,1
all p: Person | (p !in Teacher) or (p !in Student)
-- div,2
all p: Person | p not in Student && p not in Teacher
-- div,7
all p: Person | (p !in Teacher) => (p !in Student)
-- div,1
all p : Person | p not in Student || p not in Teacher
-- div,1
all p: Person | (p !in Teacher) and (p !in Student)
-- div,1
all p:Person | p.Teaches = none and p.Tutors=none
-- div,1
all p : Person | p not in (Student + Teacher) and no p.Teaches
-- div,1
all p:Person | p.Teaches = none and p.Tutors=none and p not in Student
-- div,1
all p : Person | p not in (Student + Teacher) and no p.Teaches and no p.Tutors
-- div,2
no p: Person | one s: Student | one t: Teacher | p = s or p = t
-- div,1
all p: Person | all s: Student | all t: Teacher | p = s or p = t
-- div,1
no p: Person | one s: Student | one t: Teacher | p != s and p != t
-- div,1
all p:Person | p.Teaches = none and p.Tutors=none and p not in Student and p not in Teacher
-- div,1
