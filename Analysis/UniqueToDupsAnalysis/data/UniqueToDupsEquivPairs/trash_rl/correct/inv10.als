-- equiv pair start,127
Trash.link in Trash
-- div,37
Trash.^link in Trash
-- div,1
(File & Trash).link in Trash
-- div,2
no link.(File-Trash) & Trash
-- div,3
all l: Trash | l.link in Trash
-- div,1
all t:Trash | t.link in Trash
-- div,4
all f:Trash | f.link in Trash
-- div,12
all f: Trash | f.^link in Trash
-- div,1
let x = File & Trash | x.link in Trash
-- div,1
all f: File | f in Trash => f.link in Trash
-- div,32
all f:File | f in Trash implies f.^link in Trash
-- div,6
all f : File, l : f.link | f in Trash => l in Trash
-- div,3
all f:Trash,g:File | f->g in link implies g in Trash
-- div,1
all x : Trash, y : File | x->y in link implies y in Trash
-- div,1
all t:Trash, f:File | t->f in link implies f in Trash
-- div,1
all f:File, f2:f.link | f in Trash => f2 in Trash
-- div,1
all l,f : File | l->f in link and l in Trash implies f in Trash
-- div,2
all w, f : File | (((w->f) in link) and (w in Trash)) implies f in Trash
-- div,1
all f,f1:File | f->f1 in link and f in Trash implies f1 in Trash
-- div,1
all f : File | some f.link and f in Trash implies f.link in Trash
-- div,2
all f : File | all l : f.link | f in Trash implies l in Trash
-- div,1
all f1,f2 : univ | f1->f2 in link and f1 in Trash implies f2 in Trash
-- div,2
all f1, f2:File | f1->f2 in link and f1 in Trash => f2 in Trash
-- div,3
all disj f1, f2:File | f1->f2 in link and f1 in Trash => f2 in Trash
-- div,1
all f : File | f in Trash implies f.link in Trash



Trash.link in Trash
-- div,2
all f:File | all f1:File | f->f1 in link and f in Trash implies f1 in Trash
-- div,4
all f: File | all fl : f.link |  (fl in Trash and f in Trash) or f not in Trash
-- div,1
-- equiv pair end
