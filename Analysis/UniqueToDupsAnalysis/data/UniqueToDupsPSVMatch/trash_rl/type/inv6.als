link
-- div,1
~link.link
-- div,1
lone File.File
-- div,1
link.~link
-- div,1
File.link in iden
-- div,1
lone (File - iden)
-- div,1
lone File.link.File
-- div,1
lone link.(some File)
-- div,1
no (iden & ^link.File)
-- div,1
File.link -> lone File
-- div,1
no (iden & ~(link.File))
-- div,1
no (iden & ^(link.File))
-- div,1
all f:File | lone f.File
-- div,1
all link : File.link | link
-- div,1
all l : File | l lone link.f
-- div,1
all f,g: File | f.link -> lone g
-- div,1
all f: File | lone f.link in File
-- div,1
all file: File | lone file in file.^link
-- div,1
all file: File |  lone file in file.^link
-- div,1
all f : File | lone f.link
-link.link in iden
-- div,1
all f,f2,f3:File | f-> f2 and f->f3 implies f2=f3
-- div,1
all f,f1,f2:File | f->f2 in link and f->f1 = f1=f2
-- div,1
all f,f2,f3:File | (f-> f2 and f->f3 )implies f2=f3
-- div,1
all f,f2,f3:File | {f-> f2 and f->f3 }implies f2=f3
-- div,1
all f,f1,f2:File | f->f2 in link and f->f1 implies f1=f2
-- div,1
all f1, f2, f3:File | f1->f2 in link and f1->f3 => f2=f3
-- div,1
no (all f:File| f->f in link ) and( link.~link in iden )
-- div,1
(no (all f:File| f->f in link )) and( link.~link in iden )
-- div,1
(no (some f:File| f->f in link )) and( link.~link in iden )
-- div,1
