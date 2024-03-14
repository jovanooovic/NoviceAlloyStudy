-- equiv pair start,56
always all l : link.File | eventually l in Trash
-- div,2
always all f: link.File | eventually f in Trash
-- div,18
always all f : File | some f.link => eventually f in Trash
-- div,22
always all f,g: File| f->g in link implies eventually f in Trash
-- div,4
always all f:File| f in link.File implies eventually f in Trash
-- div,3
always all a,b:File | a->b in link implies eventually a in Trash
-- div,2
always (all f1,f2:File | f1->f2 in link implies eventually f1 in Trash)
-- div,5
-- equiv pair end
