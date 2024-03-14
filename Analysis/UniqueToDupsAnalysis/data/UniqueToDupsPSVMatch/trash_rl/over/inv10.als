File != File
-- div,1
File in Trash
-- div,1
File.link in Trash
-- div,2
link in Trash->Trash
-- div,4
File.link & File in Trash
-- div,1
link.File + File in Trash
-- div,1
link.Trash + File in Trash
-- div,1
File in Trash and File.link in Trash
-- div,1
all f:File | f.link in Trash
-- div,2
all f:File | f.*link in Trash
-- div,1
all t : Trash, f : File | no f.link
-- div,2
all f,g:File | f in Trash implies f->g not in link
-- div,1
all f,g : File | f.link in Trash and g.link in Trash
-- div,1
all f: File | (some f.^link & Trash) and (f in Trash)
-- div,1
