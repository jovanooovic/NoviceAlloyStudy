-- equiv pair start,3
no Trash.link
-- div,2
all f,g:File | f in Trash implies f->g not in link
-- div,1
-- equiv pair end
-- equiv pair start,8
all f:File | f.link in Trash
-- div,2
all fl:File.link | fl in Trash
-- div,1
all f,g:File | f->g in link implies g in Trash
-- div,1
all l1, l2 : File | l1->l2 in link => l2 in Trash
-- div,1
all f1,f2 : File | f1->f2 in link implies f2 in Trash
-- div,2
all l : File.link | l in Trash and l.link in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f,u : File |f->u in link and u in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f1, f2 : File | f2 in Trash implies f1 in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
all f1,f2 : File | f1->f2 in link implies f1 in Trash and f2 in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
all f : File | ( f not in Trash and all l : f.link | l in Trash implies f in Trash )
-- div,1
-- equiv pair end
