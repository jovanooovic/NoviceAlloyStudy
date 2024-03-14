one (File <: link)
-- div,1
lone link
-- div,9
link in iden
-- div,1
no File.link
-- div,1
one File.link
-- div,4
lone File.link
-- div,31
lone (iden - link)
-- div,1
link in File -> one File
-- div,1
link in File one -> one File
-- div,1
link in File lone -> one File
-- div,1
link in File lone -> lone File
-- div,2
all f: File | one link
-- div,1
all f: File | lone link
-- div,2
all x : File | lone link
-- div,1
all f:File | lone File
-- div,1
all f:File | one f.link
-- div,7
all f:File | f.link = none
-- div,2
all f : File | #f.link = 1
-- div,1
one f: File | f.link in File
-- div,1
lone f: File | f.link in File
-- div,2
all file: File |
one file.link
-- div,1
lone f2: File | f2 in File.link
-- div,1
all f:File | one l: File | f.link = l
-- div,1
all f1: File | some f2: File | f1.link = f2
-- div,1
all f,f1 : File | f1 in f.link => f1 != f
lone (File <: link)
-- div,1
all f,f1,f2 : File | f->f1 + f->f2 in link implies f1=f



all f : File | lone f.link
-- div,1
