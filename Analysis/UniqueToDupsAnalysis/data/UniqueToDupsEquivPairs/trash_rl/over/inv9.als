-- equiv pair start,25
no File.link
-- div,1
no link.~link
-- div,1
all f : File | no link.f.link
-- div,1
File.^link = File.link - File.iden
-- div,1
all f1: File |   f1.^link = none
-- div,1
all l1,l2:File.link | disj [l1,l2]
-- div,1
all f1, f2 : File | no f1.link -> f2.link
-- div,2
all f1, f2 : File | no f1.link & f2.link
-- div,2
all f1, f2 : File | no link.f1 & link.f2
-- div,1
all f1, f2 : File | no link.f1 & link.f1
-- div,1
all f1, f2 : File | no f1.link + f2.link
-- div,1
all f1,f2:File | disj[f1.link,f2.link]
-- div,1
all f1, f2 : File | no f1.link & f2.*link
-- div,1
all f1, f2 : File | no f1.link & f2.^link
-- div,1
all f1,f2:File | f1.link & f2.link = none
-- div,1
all f,l : File | f->l in link implies l not in File.link
-- div,1
all f,l : univ | f->l in link implies l not in File.link
-- div,2
all f1, f2 : File |
some f1.link implies f1.link != f2.link
-- div,1
all l1: File.link |   all l2: File.link | l2 & l1 = none
-- div,1
all f1: File | all f2: File | f1.link & f2.link = none
-- div,2
all f1,f2,f3 : univ | f1->f2 in link implies (f1->f3 not in link and f2->f3 not in link)
-- div,1
-- equiv pair end
-- equiv pair start,1
link not in ^link
-- div,1
-- equiv pair end
-- equiv pair start,10
no f: File | f.link.link in File
-- div,1
all a,b : File|a.link != b.link
-- div,2
all f1, f2 : File |
f1.link != f2.link
-- div,1
all f: File | f.link.link not in File.link
-- div,1
all f1:File,f2:File | not f1.link = f2.link
-- div,1
all f1: File | all f2: File | f1.link != f2.link
-- div,1
all f1,f2:File | not f1 in f1.link && not f2 in f2.link && not f1.link = f2.link
-- div,2
all f1,f2:File | f1 & f1.link = none and f2 & f2.link = none and not f1.link = f2.link
-- div,1
-- equiv pair end
