-- equiv pair start,133
all t:Teacher|lone t.Teaches
-- div,94
Teacher <: Teaches in Teacher  -> lone Class
-- div,1
all t : Teacher | #t.Teaches < 2
-- div,5
(~Teaches:>Teacher).(Teacher<:Teaches) in iden
-- div,4
~(Teacher<:Teaches).(Teacher<:Teaches) in iden
-- div,12
let c = ~Teaches :> Teacher | c.~c in iden
-- div,2
all t:Teacher{ lone c:Class | c in t.Teaches}
-- div,3
all t : Teacher | lone c : Class | t->c in Teaches
-- div,2
let Teachers = Teacher <: Teaches | ~Teachers.Teachers in iden
-- div,1
all t : Teacher | #t.Teaches >= 0 && #t.Teaches <= 1
-- div,2
all t : Teacher, c, c1 : Class | (t->c + t->c1) in Teaches => c = c1
-- div,1
all t: Teacher, c1,c2: Class | c1 in t.Teaches and c2 in t.Teaches implies c1 = c2
-- div,1
all t:Teacher, c1,c2:Class | t->c1 in Teaches and t->c2 in Teaches implies c1=c2
-- div,3
all t:Teacher | all c1, c2:Class | t->c1 in Teaches and t->c2 in Teaches implies c1 = c2
-- div,1
all x : Teacher | all c : Class | all d : Class | x->c in Teaches and c!=d implies x->d not in Teaches
-- div,1
-- equiv pair end
