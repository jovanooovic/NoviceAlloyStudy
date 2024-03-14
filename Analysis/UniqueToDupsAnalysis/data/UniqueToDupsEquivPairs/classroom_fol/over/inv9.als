-- equiv pair start,2
no Class.~Teaches
-- div,1
no Class.~Teaches.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
lone Teaches.Class
-- div,1
-- equiv pair end
-- equiv pair start,1
lone Class->Teaches
-- div,1
-- equiv pair end
-- equiv pair start,18
Teaches.~Teaches in iden
-- div,1
all c:Class | lone Teaches.c
-- div,10
all c:Class | lone c.~Teaches
-- div,7
-- equiv pair end
-- equiv pair start,1
all p:univ | one p.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | lone Teacher
-- div,2
-- equiv pair end
-- equiv pair start,1
Teaches in Class one -> Person
-- div,1
-- equiv pair end
-- equiv pair start,6
Teaches in Person one -> Class
-- div,6
-- equiv pair end
-- equiv pair start,4
Teaches in Teacher one -> Class
-- div,3
Teaches in Person one -> Class
  Teaches in Teacher one -> Class
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Teaches.Class | one Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
Teaches in Teacher one -> one Class
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Teacher.Teaches | one Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,t:Teacher | lone c.~Teaches
-- div,1
-- equiv pair end
-- equiv pair start,4
Teacher <: Teaches in Teacher one -> Class
-- div,1
all c:Class | one t:Teacher | t->c in Teaches
-- div,3
-- equiv pair end
-- equiv pair start,1
all c:Class |some t:Teacher | lone c.~Teaches and lone t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2 : Teacher, c : Class | t1->c in Teaches implies t2->c not in Teaches
-- div,1
-- equiv pair end
