-- equiv pair start,17
File.link in File
-- div,3
link in File set -> set File
-- div,1
all f : File | all l : f.link | one l
-- div,1
all f : File | all l : f.link | some l
-- div,1
all f : File | all l : f.link | lone l
-- div,2
all f : File | all l : f.link | #l<2
-- div,3
all f : File | (all l : f.link | some f->l)
-- div,1
all f:File | some f1,f2:File | f->f1 in link and f->f2 in link implies f1=f2
-- div,1
all f1, f2 : File | f1.link = f2.link implies f1 = f2 and f1 != f2 implies no f1.link & f2.link
-- div,1
all f:File | some a:File | some b:File | f->a in link and f->b in link implies a=b
-- div,3
-- equiv pair end
-- equiv pair start,1
all f: File | #f.link =< 2
-- div,1
-- equiv pair end
