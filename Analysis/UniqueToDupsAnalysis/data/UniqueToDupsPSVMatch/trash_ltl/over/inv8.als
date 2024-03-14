always all f : File | eventually f in Trash
-- div,1
always all f:File | some f.link implies f in Trash
-- div,1
always all f,g:File | eventually f->g in link implies f in Trash
-- div,1
always all f:File | some f.link implies always eventually f in Trash
-- div,1
always all f,g: File| f->g in link implies eventually always f in Trash
-- div,1
always (all f:File| some f.^link  implies  eventually  f+f.^link  in Trash)
-- div,1
always (all f,f2:File | f->f2 in link implies eventually ( f in Trash and f2 in Trash))
-- div,1
always (all f:File| some f.^link  implies  eventually after f+f.^link  in Trash)
-- div,1
always(all f1, f2 : File | f1 -> f2 in link implies eventually f1 in Trash and f2 in Trash )
-- div,1
always(all f1, f2 : File | (f1 -> f2) in link implies eventually (f1 in Trash and f2 in Trash))
-- div,1
