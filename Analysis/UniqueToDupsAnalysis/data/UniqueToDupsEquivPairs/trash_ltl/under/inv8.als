-- equiv pair start,14
all l : link.File | eventually l in Trash
-- div,2
all f : link.File | eventually f in Trash
-- div,1
all f:File | some f.link implies eventually f in Trash
-- div,5
all f,g: File| f->g in link implies eventually f in Trash
-- div,1
all f: File| f in link.File implies eventually f in Trash
-- div,1
all f1,f2:File | f1->f2 in link implies eventually f1 in Trash
-- div,3
all f1:File , f2:File | f1->f2 in link implies eventually f1 in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
eventually all f:File | one f.link implies eventually f in Trash
-- div,1
eventually(all f1,f2:File | f1->f2 in link implies eventually f1 in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all l: File.link | eventually l in Trash since l in File.link
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (all f1,f2:File | eventually (f1->f2 in link implies f1 in Trash))
-- div,1
-- equiv pair end
