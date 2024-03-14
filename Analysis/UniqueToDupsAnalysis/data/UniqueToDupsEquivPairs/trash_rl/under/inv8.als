-- equiv pair start,1
no link.Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | no g: File | f.link = g
-- div,1
-- equiv pair end
-- equiv pair start,2
all f,l : univ | f->l in link implies l in Trash
-- div,2
-- equiv pair end
