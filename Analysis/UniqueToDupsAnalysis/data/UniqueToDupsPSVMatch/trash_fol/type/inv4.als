univ
-- div,1
not Protected & Trash
-- div,1
~(Protected in Trash)
-- div,1
no Protected in Trash
-- div,4
no Protected and Trash
-- div,1
not (Protected & Trash)
-- div,1
(no Protected) in Trash
-- div,1
Protected in Trash = none
-- div,1
(File in Protected) not in Trash
-- div,1
all f:File | no Protected and Trash
-- div,1
all p : File.Protected | p not in Trash
-- div,3
all f:File in Trash | f not in Protected
-- div,1
all f:File | f not in Trash and Protected
-- div,1
some f:File, t:Trash | t -> f not in Protected
-- div,1
all f : File | all p : f.Protected | p not in Trash
-- div,1
some f:File | some t:Trash | t -> f not in Protected
-- div,1
