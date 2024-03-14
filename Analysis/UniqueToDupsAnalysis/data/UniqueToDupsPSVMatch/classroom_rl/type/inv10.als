~Groups
-- div,1
Group.Class
-- div,1
Group.Person
-- div,1
Class.Person
-- div,1
Group.Student
-- div,1
~Groups.Class
-- div,1
Class.Groups
-- div,2
Groups.Student
-- div,1
Student -> Group
-- div,1
one Group.Student
-- div,1
some Class.Person
-- div,1
one Student.Group
-- div,1
Student -> Groups
-- div,1
some Class.Student
-- div,2
Class.Student.Group
-- div,1
Student -> one Group
-- div,1
Student.Class.Groups
-- div,1
all c:Class | c.Groups
-- div,2
Student in Class.Groups
-- div,1
Student.(Class.~Groups)
-- div,1
Student.(Class.Groups)
-- div,1
Class.Groups.Student
-- div,1
some Class.Student.Group
-- div,2
all c : Class | c.Groups
-- div,2
(Class -> Person).Groups
-- div,1
Student.Groups in Student
-- div,2
some Student.Class.Groups
-- div,1
Student in Class -> Group
-- div,2
all c : Class | c->Groups
-- div,1
(Groups.Person) & Student
-- div,1
all s : Student | s.Groups
-- div,2
some Class + Student.Group
-- div,1
all c:Class | some c.Group
-- div,1
all c:Class | lone c.Group
-- div,1
all c: Class | some c.Group
-- div,1
(Groups . Group) = (Class )
-- div,1
no (Person.Groups) & Student
-- div,1
Class.Groups.Student in iden
-- div,1
not (Person.Groups) & Student
-- div,1
all s: Student | s one->Group
-- div,1
all c: Class | Student->Group
-- div,1
all s: Student | s one->Groups
-- div,1
all c:Class | c.Groups.Student
-- div,1
all c : Class | Student->Group
-- div,1
all c : Class | Student->Groups
-- div,1
all c : Class | (Student->Group)
-- div,1
all c:Class| one c.Group.Student
-- div,1
all c:Class | Student in c.Groups
-- div,1
all c : Class | c.Student->Groups
-- div,1
all c: Class | Groups.c = Student
-- div,1
all c : Class | Student->c.Groups
-- div,1
all s:Student,c:Class | s.c.Group
-- div,1
all c:Class,s:Student | c.s.Group
-- div,1
all c : Class | c.Groups in Groups
-- div,1
all c:Class| one c.~Groups.Student
-- div,1
all s:Student,c:Class | s.c.Groups
-- div,1
all c : Class | c in Person.Groups
-- div,1
all c : Class | Student in c.Groups
-- div,1
all c : Class | c in Student.Groups
-- div,1
all c : Class | c & Student->Groups
-- div,1
all c : Class | no c.Student.Groups
-- div,1
all s: Student | one Class.s.Groups
-- div,3
all c : Class | c in Person->Groups
-- div,1
all c: Class | some c.Student.Group
-- div,1
all c : Class | Student->Groups in c
-- div,1
all c : Class | (c . Groups) . Group
-- div,1
all c : Class | lone Student.c.Group
-- div,3
(Groups . Group) = (Class + Student)
-- div,1
all c : Class | c in Student->Groups
-- div,2
all c:Class | some c.Group & Student
-- div,1
all c : Class | c <: Groups :> Group
-- div,1
(Groups . Group) = (Class - Student)
-- div,1
all c : Class | #Student.c.Groups > 0
-- div,1
all c : Class, s : Student | c.Groups
-- div,1
all c : Class | some c.Student.Groups
-- div,1
(Groups < Group) = (Class -> Student)
-- div,1
(Groups + Group) = (Class -> Student)
-- div,1
all c:Class | some c.Groups & Student
-- div,1
all c: Class | some  Student.c.Groups
-- div,1
(Group in Groups) = (Class -> Student)
-- div,1
all c : Class | Student->c.Groups in c
-- div,1
(Groups . ^Group) = (Class -> Student)
-- div,1
all c : Class | c in Student->c.Groups
-- div,1
(Groups <: Group) = (Class -> Student)
-- div,1
(Groups in Group) = (Class -> Student)
-- div,1
(Groups .^ Group) = (Class -> Student)
-- div,1
all c : Class | all s : c->Student | s
-- div,1
(Groups .~ Group) = (Class -> Student)
-- div,1
(Groups :> Group) = (Class -> Student)
-- div,1
all c : Class | lone Student.(c.Group)
-- div,1
(Groups -> Group) = (Class -> Student)
-- div,1
(Groups .* Group) = (Class -> Student)
-- div,1
all s : Student, c : Class | c.Groups.s
-- div,1
all c:Class, s: Student | s in c.Groups
-- div,1
all c : Class | Groups.(Student->Group)
-- div,2
all c:Class,s:Student | some c.s.Groups
-- div,2
all s : Student, c : Class | c.s.Groups
-- div,1
all c : Class | (Student->Group).Groups
-- div,1
all s : Student | s <: (Class . Groups)
-- div,1
all s: Student, c: Class | c & s.Groups
-- div,1
all c : Class | Groups<:(Student->Group)
-- div,1
all c: Class, s: Student | c[s] in Group
-- div,1
all c : Class | some c in Student.Groups
-- div,1
all c : Class | c in c.Student->c.Groups
-- div,1
all c : Class | Groups:>(Student->Group)
-- div,1
all c:Class , s:Student | some s.c.Groups
-- div,1
all c: Class | (~Groups).(Groups) in iden
-- div,1
all c: Class | some  (c.Groups & Student)
-- div,1
all s: Student, c: Class | one c.s.Groups
-- div,1
all s: Student, c: Class | c & s . Groups
-- div,1
all c: Class | Student in c.Groups.Groups
-- div,1
all c: Class,s: Student | some s.c.Groups
-- div,1
all s: Student, c: Class | one s.c.Groups
-- div,1
all c:Class | some c.Groups.Group.Student
-- div,1
all s : Student, c : Class | s.(c.Groups)
-- div,2
all c: Class | all s: Student | c.Groups.s
-- div,1
all c : Class, s : Student |  s.(c.Groups)
-- div,1
all c:Class,s:Student,g:Group | some c.s.g
-- div,1
all c:Class | all s:Student | s in c.Group
-- div,1
all c: Class | Student <: c.Group = Student
-- div,1
all c : Class, s : Student | some c.Group.s
-- div,2
all c: Class,s: Student | some (s.c.Groups)
-- div,1
all c : Class, s : Student |  c.Groups.Group
-- div,1
all c: Class | Student <: c.Groups = Student
-- div,1
all c:Class | all s:Student | s->c in Groups
-- div,1
all c : Class, s : Student | some s.c.Groups
-- div,1
all c:Class | all s:Student | c->s in Groups
-- div,1
all c : Class, s : Student | some c.s.Groups
-- div,5
all s:Student | some g:Group |  Groups.(s->g)
-- div,2
all c: Class | all c: Student | c -> c.Groups
-- div,1
all c: Class | all s: Student | s in Groups.c
-- div,1
all c : Class | c.Groups in c.Student->Groups
-- div,1
all c : Class, s : Student | some s.(c.Group)
-- div,1
all c: Class | all s: Student | s in c.Groups
-- div,2
all c: Class | all s: Student | s -> c.Groups
-- div,2
all s : Student, c : Class | some  s.c.Groups
-- div,1
all c:Class | all s:Student | some s.c.Groups
-- div,2
all c : Class, s : Student | s->c in Groups z
-- div,1
all c: Class | (~Groups.c).(c.Groups) in iden
-- div,1
all c : Class | c.Groups in c.Person->c.Groups
-- div,1
all c:Class, g:Group | some c.Groups.g.Student
-- div,1
all c : Class, s : Student | some c.Groups & s
-- div,1
all c : Class | c.Groups in c.Tutors->c.Groups
-- div,1
all c: Class | (Student <: c.Groups) = Student
-- div,1
all c : Class | c.Groups in c.Student->c.Groups
-- div,1
all c:Class | some c.Groups in (Student->Group)
-- div,1
all c : Class | all s : Student | c.Groups in s
-- div,1
all c : Class | all s : Student | s in c.Groups
-- div,1
all s: Student, c: Class | c.~Groups.s in Group
-- div,1
(Groups . (Student.Group)) = (Class -> Student)
-- div,1
all s: Student, c: Class | one s -> one c.Group
-- div,1
all c:Class | c.Groups implies Students in Group
-- div,1
all c: Class | some (Student->Group) in c.Groups
-- div,1
all c : Class, s : Student | some c.s & s.Groups
-- div,1
all c : Class | all s : Student | s->Groups in c
-- div,1
all c : Class | all s : Student | c in s->Groups
-- div,1
all c: Class, s:Student| some g: Group | c->s->g
-- div,1
all c : Class | all s : Student | some s.c.Groups
-- div,1
all c : Class | all s : c.Student | #s.Groups > 0
-- div,1
all c : Class| all s: Student | some (s.c.Groups)
-- div,1
all c : Class | all s: Student | some (s.c.Groups)
-- div,2
all c: Class | (Student->(some Group)) in c.Groups
-- div,1
all c: Class | all s: Student | Groups in c.Groups
-- div,1
all s:Student { some g:Group | g in Class.s.Groups}
-- div,1
all c: Class, s: Student | one Group in c.Groups[s]
-- div,1
all c: Class | all s: Student | c.Groups->s in Group
-- div,1
all c: Class | all s: Student | s -> c.Groups.Person
-- div,1
all c : Class, s : Student | some g : Group | c->g->s
-- div,1
all s:Student| some g:Group |  Groups.(s->g) in Class
-- div,1
all s:Student | some g:Group | ( Class - Groups.s->g )
-- div,1
all s:Student | some g:Group |  Groups.(s->g) in Class
-- div,1
all c : Class | all s : c.Groups.Person | #s.Group > 0
-- div,1
(Groups . Group) = (Class -> Student) - Teacher.Teaches
-- div,1
all c: Class | all s: Student | one g: Group |  c->s->g
-- div,1
all s:Student | some g:Group | no Groups.(s->g) & Class
-- div,1
all c : Class | all s : c.Groups.Student | #s.Group > 0
-- div,1
all c : Class |  (Student.(c.Groups) & Groups) = Groups
-- div,1
all s:Student| some g:Group | no (Groups.(s->g) - Class)
-- div,1
all c:Class | c.Groups.Group.Student in (c.Groups.Group)
-- div,1
all s:Student | some g:Group |    Groups.(s->g)  & Class
-- div,1
all c:Class | all s:Student | some c->s->Group in Groups
-- div,1
all s:Student | some g:Group | ( Class - Groups.(s->g ) )
-- div,1
all s:Student | some g:Group | no ( Class - Groups.s->g )
-- div,1
all g : Class.Groups | g.Person in Student implies g.Group
-- div,2
all s:Student | some g:Group |   (Class - (Groups.(s->g)))
-- div,1
all x:Class, p:Student| some g:Group | some (x.Groups).p.g
-- div,1
all c : Class | Student.(c.Groups) in Student.Class.Groups
-- div,1
all s:Student| some g:Group | some (Groups.(s->g) & Class)
-- div,1
all c:Class | all s:Student | some (c->s->Group in Groups)
-- div,7
all s:Student | some g:Group |   (Class & (Groups.(s->g)))
-- div,1
all c : Class | all s : c->Student | one s
-- div,1
(Groups . Group) = (Class -> Student) -> (Class -> Teacher)
-- div,1
(Groups . Group) = (Class -> Student) <: (Class -> Teacher)
-- div,1
all s:Student | some g:Group | no ( Class - Groups.(s->g ))
-- div,1
all s:Student | some g:Group | no  (Class - Groups.(s->g) )
-- div,1
all s:Student | some g:Group | some ( Groups.(s->g) & Class)
-- div,1
all c:Class { all s:Student { some g:Group | g in s.Class }}
-- div,1
all s:Student | some g:Group |  no (Class - (Groups.(s->g)))
-- div,1
all s:Student | all g:Group |   no (Class - (Groups.(s->g)))
-- div,1
all c:Class,s:Student | some g:Group | some s->g in c.Groups
-- div,1
all p:Person | some g:Group |  no (Class -(Groups.(p->g))   )
-- div,1
all s:Student | some g:Group |   no (Class - (Groups.(s->g)))
-- div,1
all s:Student | some g:Group |  no (Class -(Groups.(s->g))   )
-- div,1
(~(Class.Groups) . Student) . (Student <: Class.Groups) in iden
-- div,1
all c : Class | ((some c.Groups) implies ((Teacher.Teaches)->c))
-- div,1
all c : Class |  Student<:c.Groups ->  Group:>c.Groups in c.Groups
-- div,1
all c : Class | all s : c.Groups | #s.Group > 0
-- div,1
all c:Class | all s:Student | some g:Group | some c->s->g in Groups
-- div,1
all c : Class | all s : c.Groups | #s.Student > 0
-- div,1
all c : Class | all p : Person.(c.Groups) | #Group.(p.(c.Groups)) > 0
-- div,1
all c : Class | all s : c->Student | #s.Group > 0
-- div,1
all c:Class | all s:Student | some g:Group | some (c->s->g in Groups)
-- div,1
all c : Class | all g : c.Groups | #g->Student > 0
-- div,1
all c : Class | all s:Student | one g : c.Groups  |  s-> g in c.Groups
-- div,1
all c : Class |  one Student<:c.Groups -> one Group:>c.Groups in c.Groups
-- div,1
all c : Class | all p : c.Groups | #Group.(p.(c.Groups)) > 0
-- div,1
~Groups.Groups in iden and ~(Student<:Class.Groups).(Student<:Class.Groups) in iden
-- div,2
all c : Class | all p: Person | all g : c.Groups  | p in Student implies p->g in c.Groups
-- div,2
all c : Class | all p: Person | one g : c.Groups  | p in Student implies p->g in c.Groups
-- div,3
all c : Class | all p: Person | one g : c.Groups  | p in Student implies p-> g in c.Groups
-- div,1
~Groups.Groups in Class->iden and ~(Student<:Class.Groups).(Student<:Class.Groups) in iden
-- div,1
all c : Class | all p: Person | all g : Groups  | p in Student and g in c.Groups implies p->g in c.Groups
-- div,1
