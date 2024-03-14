no File = Trash
-- div,1
Protected
Trash
-- div,1
Protected no Trash
-- div,2
no Protected.Trash
-- div,2
Protected - Trash
-- div,1
not Protected&Trash
-- div,1
Trash - Protected
-- div,2
Protected =  ~ Trash
-- div,1
~ Protected in Trash
-- div,1
not Protected & Trash
-- div,12
no Protected in Trash
-- div,15
Protected => no Trash
-- div,1
no Protected and Trash
-- div,1
Protected = (no Trash)
-- div,1
some File in Protected
-- div,1
(no Protected) in Trash
-- div,1
none (Protected & Trash)
-- div,1
Protected not subset Trash
-- div,1
Protected implies no Trash
-- div,2
all f:Protected | f no Trash
-- div,1
all f : File | Protected - Trash
-- div,1
all f : File | f.Protected - f.Trash
-- div,2
all f: File.Protected| f not in Trash
-- div,1
File in Protected :> File not in Trash
-- div,1
all f : File | f.Protected and not f.Trash
-- div,1
all f : File | some(Protected) and not Trash
-- div,1
all f : File | some(Protected) and (not Trash)
-- div,1
File = Trash + Protected
no Protected in Trash
-- div,1
(all f : File | f in Protected & f not in Trash)
-- div,1
all f : File | some(f.Protected) and not f.Trash
-- div,1
some f:File | one t:Trash | t -> f not in Protected
-- div,1
some f : File | f in Protected implies f not ir Trash
-- div,1
all p : Protected |
p in Protected implies p notin Trash
-- div,1
