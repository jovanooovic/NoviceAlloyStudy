Teaches in Person -> Class
-- div,1
Teacher <:Teaches in Person -> Class
-- div,1
all t:Teacher | lone Teaches.t
-- div,1
all t:Teacher | all c:Class | t->c in Teaches implies one c
-- div,1
all t1:Teacher , c:Class | t1->c in Teaches or not t1->c in Teaches
-- div,1
all x : Teacher | all c : Class | some d : Class | x->c in Teaches and c!=d implies x->d not in Teaches
-- div,1
