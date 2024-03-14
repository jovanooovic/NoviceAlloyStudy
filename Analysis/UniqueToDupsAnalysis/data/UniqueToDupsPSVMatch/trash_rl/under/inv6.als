File = File
-- div,2
all link: File.link | lone link
-- div,3
all f : File.link | lone f.link
-- div,1
all f: File | lone g: File | f.link = g
-- div,2
all f:File | lone l: File | f.link = l
-- div,4
lone f1: File | all f2: File | f1.link = f2
-- div,1
all f1: File | lone f2: File | f1.link = f2
-- div,5
all link : File.link | lone file: File | file in link
-- div,1
all f1: File | lone f2: File | f1 != f2 and f1.link = f2
-- div,1
all f1: File | lone f2: File | f1.link = f2 and f1 != f2
-- div,2
lone f1: File | all f2: File | f1.link = f2 and f1 != f2
-- div,1
all f1: File | lone f2: File | f1.link = f2 and f1.link != f2
-- div,1
all f1: File | lone f2: File | f1 != f2 and f2.link != f1 and f1.link = f2
-- div,1
all f:File | some f1,f2:File | f->f1 in link and f->f2 in link implies f1=f2
-- div,4
all f:File | some f1,f2:File | f->f1 in link and f->f2 in link and f1!=f implies f1=f2
-- div,1
all f:File | some f1,f2:File | f->f1 in link and f->f2 in link and f1!=f2 implies f1=f2
-- div,1
all f:File | some f1:File | some f2:File | (f->f1 in link and f->f2 in link) implies f1=f2
-- div,1
all f:File | some f1,f2:File | (f->f1 in link and f->f2 in link) implies f1=f2 or f=f1 or f=f2
-- div,1
all f:File | some f1,f2:File | f->f1 in link and f->f2 in link and f1!=f and f2!=f implies f1=f2
-- div,3
