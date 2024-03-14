link.link in iden
-- div,6
link.link in link
-- div,1
File.*link = File
-- div,1
File.^link = File.link
-- div,1
all d : File | d not in d.link
-- div,1
all f:File | f not in f.link
-- div,1
all f:File | f not in (f.~link)
-- div,1
all f:File | disj[f,f.link]
-- div,1
no disj l1,l2: File.link | l1 = l2
-- div,1
all f:File |  f.link.link in Trash
-- div,1
all f1 : File | no link.f1 & f1.link
-- div,1
all f1, f2 : File | no link.f1 & f1.link
-- div,1
all f1, f2 : File | no f1.link & link.f1
-- div,1
all f: File,disj a,b: f.link | a!= b
-- div,1
all d : File | (d not in d.link) or (d not in d.*link)
-- div,1
all f1,f2:File | not f1 in f1.link && not f2 in f2.link
-- div,1
all disj f1,f2:File | not f1 in f1.link && not f2 in f2.link
-- div,1
