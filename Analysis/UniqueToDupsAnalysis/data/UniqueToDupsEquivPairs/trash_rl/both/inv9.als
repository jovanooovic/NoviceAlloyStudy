-- equiv pair start,2
#link = 1
-- div,1
one ^link
-- div,1
-- equiv pair end
-- equiv pair start,2
lone ^link
-- div,1
lone ~link
-- div,1
-- equiv pair end
-- equiv pair start,1
lone File.^link
-- div,1
-- equiv pair end
-- equiv pair start,2
File.^link = File
-- div,1
File.*link = File.link
-- div,1
-- equiv pair end
-- equiv pair start,1
~link.link in link
-- div,1
-- equiv pair end
-- equiv pair start,10
link.~link in iden
-- div,3
all f : File | lone link.f
-- div,1
all disj f1,f2:File | disj[f1.link,f2.link]
-- div,1
all disj f1,f2:File | f1.link & f2.link = none
-- div,2
all a,b : File| a != b => no (a.link & b.link)
-- div,1
all f1, f2 : File |
f1 != f2 implies (no f1.link & f2.link)
-- div,2
-- equiv pair end
-- equiv pair start,1
link.~link in link
-- div,1
-- equiv pair end
-- equiv pair start,4
link.link not in link
-- div,4
-- equiv pair end
-- equiv pair start,1
~link.link not in link
-- div,1
-- equiv pair end
-- equiv pair start,1
link.~link not in link
-- div,1
-- equiv pair end
-- equiv pair start,4
all f:File | lone f.link
-- div,3
all a,b : File| a != b => no (link.a & link.b)
-- div,1
-- equiv pair end
-- equiv pair start,3
all f: File | one link.f
-- div,3
-- equiv pair end
-- equiv pair start,1
all f:File | lone f.^link
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | one f.link
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File | f.link != none
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File |  f.link in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all o : univ | File->o not in link
-- div,1
-- equiv pair end
-- equiv pair start,1
all f1:File,f2:File | not f1.link = f2
-- div,1
-- equiv pair end
-- equiv pair start,4
no disj f1,f2: File | f1.link = f2.link
-- div,1
all a,b : File| a != b => a.link != b.link
-- div,1
all f1, f2 : File |
f1.link = f2.link implies f1 = f2
-- div,1
all f1, f2 : File |
f1 != f2 implies f1.link != f2.link
-- div,1
-- equiv pair end
-- equiv pair start,1
all f1, f2 : File | no f1.link - f2.link
-- div,1
-- equiv pair end
-- equiv pair start,1
all file: File | file.^link = file.*link
-- div,1
-- equiv pair end
-- equiv pair start,1
all f1, f2 : File | no f1.link - f2.^link
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj f1,f2:File | f1.*link & f2.*link = none
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj f1,f2:File | f1.^link & f2.^link = none
-- div,2
-- equiv pair end
-- equiv pair start,1
all f1,f2 : univ | f1->f2 in link implies File.link not in f2
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj f1,f2:File | f1.link & f2.link = none
all f:File | disj[f,f.link]
-- div,1
-- equiv pair end
