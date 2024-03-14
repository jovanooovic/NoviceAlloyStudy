Teacher.Teaches
-- div,1
all c : Class | Teacher.Teaches
-- div,1
Groups.Group in Teacher.Teaches
-- div,1
all c : Class | Teaches.c.Groups
-- div,1
all c:Class,t:Teacher | c.Groups
-- div,5
Class.Groups implies Teacher.Class
-- div,1
Class.Groups implies Teaches.Class
-- div,1
all c : Class | Teacher.(c.Groups)
-- div,1
~Group.Class implies ~Class.Teacher
-- div,1
Groups.Class implies ~Class.Teacher
-- div,1
Class.Groups implies Teacher.Teaches
-- div,17
~Groups.Class implies ~Class.Teacher
-- div,2
Class.Group implies Person = Teacher
-- div,1
all c : Class | some Teacher.c.Groups
-- div,1
Class -> Group implies Teacher -> Class
-- div,2
all c: Class | no c.Groups or Teaches.c
-- div,1
all c : Class | c in (Teacher<:Teaches)
-- div,1
all c : Class | some Teacher.(Teaches.c)
-- div,1
all c : Class | some (Teacher.Teaches).c
-- div,1
all c : Class | some c.(Teacher.Teaches)
-- div,3
Class -> Groups implies Teacher -> Class
-- div,1
all c : Class | some ~Teacher.(c.Groups)
-- div,1
Groups.(Person->Group) in Teacher.Teaches
-- div,3
all t : Teacher | some  (t.Teaches).Class
-- div,1
Class.Groups iff Class in Teacher.Teaches
-- div,1
all t : Teacher | some  Class.(t.Teaches)
-- div,1
all c: Class | c.Groups implies Teaches.c
-- div,2
(Person->Group).Groups in Teacher.Teaches
-- div,1
all c : Class | (no c.Groups) + Teaches.c
-- div,1
all c : Class | Teacher.Teaches.(c.Groups)
-- div,1
all c : Class | (Teaches.c in Groups.Group)
-- div,1
all c : Class | c.Groups in Teacher.Teaches
-- div,1
all c : Class | (Teacher.Teaches).(c.Groups)
-- div,1
all c:Class | some c.Teaches implies c.Groups
-- div,1
all c : Class | c.Groups => Teacher.Teaches.c
-- div,1
all c : Class | some Teacher.Teaches.c.Groups
-- div,1
all c : Class | Student.(c.Groups) & Teaches.c
-- div,1
all c:Class,t:Teacher | c.Groups and t.Teaches
-- div,1
all c : Class | some t : Teacher | t.(c.Groups)
-- div,3
all c : Class | some  t : Teacher | t.(c.Group)
-- div,1
all c : Class | some  t : Teacher | t.(c.Groups)
-- div,3
all c:Class,t:Teacher|c.Groups implies t.Teaches
-- div,1
all c : Class | some ((Teacher.Teaches).c).Groups
-- div,1
all c : Class | c.Groups implies Teacher.Teaches.c
-- div,1
all c:Class | c.Groups implies c in Teacher.Teaches
-- div,1
Class not in Teacher.Teaches => Class.Groups = none
-- div,2
all c : Class | some (c.Groups) & (Teacher.Teaches)
-- div,1
all c : Class  | c.Groups iff c in  Teacher.Teaches
-- div,3
all c : Class | Student.(c.Groups) implies Teaches.c
-- div,1
all c : Class | some (c.Groups) in (Teacher.Teaches)
-- div,1
all c : Class | c.Groups implies Teacher.(Teaches.c)
-- div,1
all c : Class | no Teaches.c => c.Group not in Groups
-- div,1
all c:Class | c.Groups implies (c in Teacher.Teaches)
-- div,1
all c : Class | (Person - c.Groups.Group) + Teaches.c
-- div,1
all c : Class | (Student - c.Groups.Group) + Teaches.c
-- div,1
all c: Class | some c.Groups => some Teacher.Teaches.c
-- div,1
all c:Class | some c.Groups implies Teaches.c & Teacher
-- div,1
all c : Class | some c.Groups => some Teacher.Teaches.c
-- div,1
all c:Class,t:Teacher | some t.Teaches implies c.Groups
-- div,1
all c : Class | (Student.(c.Groups)) + (some Teaches.c)
-- div,1
all c:Class,t:Teacher | c.Groups  implies t.Teaches = c
-- div,1
all c : Class | (Group - Person.(c.Groups)) + Teaches.c
-- div,1
all c : Class | (some c.Groups) implies Teacher.Teaches
-- div,1
all c : Class | (Group - Student.(c.Groups)) + Teaches.c
-- div,1
all c : Class | (no Student.c.Groups) + (some Teaches.c)
-- div,1
all c:Class,t:Teacher | c.Groups.Group implies t.Teaches
-- div,1
all c : Class | no Teaches.c => no c.Person.Groups.Group
-- div,1
all c : Class | some Person.(c.Groups) implies Teaches.c
-- div,1
all c:Class,t:Teacher | c.Groups  implies t.Teaches in c
-- div,1
Person.(Class.Groups) implies one Class.~Teaches&Teacher
-- div,1
all c : Class | c.Groups implies some Teacher.(Teaches.c)
-- div,1
all c : Class | (some c.Groups) implies Teacher.Teaches.c
-- div,1
all c : Class | some c.Groups implies Teacher->c not none
-- div,1
all c:Class | c.Groups iff some t:Teacher| c in t.Teaches
-- div,1
all c : Class | some (Tutors.c.Groups.Group in Teaches.c)
-- div,1
all c : Class | (no Student.(c.Groups)) + (some Teaches.c)
-- div,1
all c : Class | ((Person -> Group) - c.Groups) + Teaches.c
-- div,1
all c : Class | (Teaches.c).c.Groups in (Person.(c.Groups))
-- div,1
all c:Class | c.Groups implies ( some Teacher <:Teaches.c )
-- div,1
all c : Class | c not in Teacher.Teaches => c.Groups = none
-- div,1
all c : Class | some (Tutors.(c.Groups.Group) in Teaches.c)
-- div,1
all c : Class | ( c.Groups) implies ( (Teacher<:Teaches).c)
-- div,1
all c:Class | some c in Groups implies Teacher in c.Teaches
-- div,1
all c : Class | (some c.Groups) implies (Teacher.Teaches).c
-- div,1
all c:Class,t:Teacher | c.Groups implies t.Teaches in Class
-- div,1
all c : Class | (some c.Groups) implies Teacher & Teaches.c
-- div,1
all c : Class | (some c.Groups) implies (Teacher<:Teaches).c
-- div,1
all c : Class | no Teaches.c => c.Person.Group not in Groups
-- div,1
all c : Class  |  c not in  Teacher.Teaches => not  c.Groups
-- div,1
all c : Class | ((Person -> Group) - (c.Groups)) + Teaches.c
-- div,1
all c : Class, t : Teacher | no (t.Teaches).c => no c.Groups
-- div,1
all c : Class | (some c.Groups) implies Teacher & (Teaches.c)
-- div,1
all c :Class | (some c.Groups) implies some Teacher.Teaches.c
-- div,1
all c:Class,t:Teacher | c.Groups.Group  implies t.Teaches = c
-- div,1
all c:Class,t:Teacher | some t.Teaches implies c.Groups.Group
-- div,1
all c : Class | some (Person.(c.Groups) & Teaches.c.c.Groups)
-- div,1
all c : Class | (some c.Groups) implies some Teacher.Teaches.c
-- div,1
all c : Class | no Teaches.c => (c.Person.Group not in Groups)
-- div,1
all c:Class | some c.Group iff some t:Teacher | c in t.Teaches
-- div,1
all c: Class | some t:Teacher | Group in (c.(t.Teaches)).Group
-- div,1
all c : Class  |  c not in   Teacher.Teaches =>  none c.Groups
-- div,1
all c : Class | some Student.c.Groups implies (some Teaches.c)
-- div,1
all c:Class | (lone c.Groups implies some Teaches.c) & Teacher
-- div,1
all c : Class | (some c.Groups) implies ( (Teacher<:Teaches).c)
-- div,1
all c : Class | some c.Groups => some s : Teacher | s.Teaches.c
-- div,1
all c : Class | some (Person.(c.Groups) & (Teaches.c).c.Groups)
-- div,1
all c : Class | ((some c.Groups) implies ((Teacher.Teaches)->c))
-- div,1
all c : Class | some (c.Groups) implies some (Teacher.Teaches).c
-- div,1
all c : Class | some (Groups - c.Groups) + (Teaches.c & Teacher)
-- div,1
all c : Class, t : Teacher | no (t->c in Teaches) => no c.Groups
-- div,3
all c : Class | some c.Groups implies some Teacher->c in Teaches
-- div,1
all c : Class | (some c.Groups) implies some Teacher.(Teaches.c)
-- div,2
all c : Class | some (Groups - c.Groups) :> (Teaches.c & Teacher)
-- div,1
all c: Class | ( Person - c.Groups.Group) + (Teacher & Teaches.c)
-- div,1
all c : Class | some t : Teacher | no (t.Teaches.c) => no c.Groups
-- div,1
all c: Class | some Person.(c.Groups) implies one Teacher.Teaches.c
-- div,1
all c :Class | (some c.Groups) implies some (c.~Teaches and Teacher)
-- div,1
all c: Class | some Person.(c.Groups) implies some Teacher.Teaches.c
-- div,1
all c : Class | (some (Person - c.Groups.Group)) + (some (Teaches.c))
-- div,1
all c : Class | (Teacher + Student) c.Groups.Group implies some Group
-- div,1
all c: Class | some Person.(c.Groups) implies one Teacher.(Teaches.c)
-- div,1
all c:Class | all g:Group | g in c.Groups implies c in Teacher.Teaches
-- div,1
all c : Class | some (Teaches.c) implies some c.Person.Group in Groups
-- div,1
all c : Class | some t : Teacher | no (t->c in Teaches) => no c.Groups
-- div,1
all c : Class | some (Class.Groups - c.Groups) + (Teaches.c & Teacher)
-- div,1
all c : Class | (some (c.Group) ) implies (some( c.~Teaches & Teacher))
-- div,1
all c : Class, t : Teacher | no (t->c in Teacher.Teaches) => no c.Groups
-- div,2
all c : Class | (some (c.Group) ) implies (some ( c.~Teaches) & Teacher)
-- div,1
all c : Class | (some (c.Group) ) implies some (( c.~Teaches) & Teacher)
-- div,1
all c : Class, t : Teacher | no (t->c in Teacher->Teaches) => no c.Groups
-- div,2
all c : Class | c->Person->Groups in Groups implies Teacher->c in Teaches
-- div,1
all c: Class | some Person.(c.Groups) implies some t:Teacher | t.Teaches.c
-- div,1
all c : Class | some (some (Person - c.Groups.Group)) + (some (Teaches.c))
-- div,1
all c: Class, p:Person| some p.(c.Groups) implies some Teacher in Teaches.c
-- div,1
all c : Class | some (Person.(c.Groups) -> Teaches.c) in (Group -> Teacher)
-- div,2
all c : Class | some (Teaches.c) implies some c -> Person -> Group in Groups
-- div,1
all c : Class | (#c.Groups > 0) => (#(Teaches.c & Teacher) > 0) ' #c.Groups = 0
-- div,1
all c : Class | some (((c.Groups).Person).Group) implies some (Teacher.Teaches).c
-- div,1
all c : Class | some c->Person->Group in Groups implies some Teacher->c in Teaches
-- div,1
all c:Class | all t:Teacher | some g:Group | t->c in Teaches implies c->g in Groups
-- div,1
all c : Class | #c.Teacher.Groups > 0 => (some p : Person, g : Group | c->p->g in Groups)
-- div,1
all c:Class | (some g:Group |some p:Person | c->p->g in Groups)   implies Teaches.c + Teacher
-- div,1
all c:Class, g:Groups| some c.g iff some t:Teacher | c in t.Teaches
-- div,1
all c:Class | all g:Groups| some c.g iff some t:Teacher | c in t.Teaches
-- div,2
all c:Class,g:Group | some t:Teacher,s:Student | some s in c.Groups.g implies t->c in Teaches and t->g in c.Groups
-- div,1
