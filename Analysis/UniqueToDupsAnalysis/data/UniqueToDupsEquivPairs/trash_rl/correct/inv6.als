-- equiv pair start,173
~link.link in iden
-- div,34
link in File -> lone File
-- div,3
all f:File |lone f.link
-- div,109
all x : File | lone x.link
-- div,1
all f: File | #f.link<2
-- div,2
all f : File | lone f<:link
-- div,1
all file: File |
lone file.link
-- div,5
all f: File | lone l: File | l in f.link
-- div,1
all f1: File | lone f2: File | f2 in f1.link
-- div,2
all f, f1, f2 : File | f->f1 + f->f2 in link => f1 = f2
-- div,1
all f,g,h:File | f->g in link and f->h in link implies g=h
-- div,1
all f,f1,f2:File | f->f2 in link and f->f1 in link implies f1=f2
-- div,1
all l,f1,f2 : File | l->f1 in link and l->f2 in link implies f1 = f2
-- div,3
all f,f1,f2 : univ | f->f1 in link and f->f2 in link implies f1=f2
-- div,1
all f1, f2, f3: File | f2 in f1.link and f3 in f1.link implies f2 = f3
-- div,1
all f1, f2, f3:File | f1->f2 in link and f1->f3 in link => f2=f3
-- div,4
all f,f1,f2 : File | f->f1 + f->f2 in link implies f1=f2



all f : File | lone f.link
-- div,2
all f: File | #(f.link) < 2
all f1,f2,f3: File | f1->f2 in link && f1->f3 in link implies f2=f3
-- div,1
-- equiv pair end
