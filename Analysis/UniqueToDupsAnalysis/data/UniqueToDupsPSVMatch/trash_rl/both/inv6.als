some link
-- div,2
one link.link
-- div,1
no link.Trash
-- div,1
lone link.link
-- div,1
some link.link
-- div,1
lone link.File
-- div,4
some link.File
-- div,1
some File.link
-- div,1
one (link - iden)
-- div,1
lone (link - iden)
-- div,5
one link.~link
-- div,1
no (iden & ^link)
-- div,1
link.~link in iden
-- div,14
link in File one -> File
-- div,2
no File.link & Trash
-- div,1
link in File lone -> File
-- div,2
File = File & File.link
-- div,1
(link . ~link) in (~link . link)
-- div,1
all f : File | one link.f
-- div,1
lone f:File | f.link = f
-- div,2
all l : File | lone link.l
-- div,1
all f : File | some link.f
-- div,1
all f: File | lone link.f
-- div,4
all f:File | some f.link
-- div,4
some f : File | lone f.link
-- div,2
all f : File | lone link:>f
-- div,2
some f : File | lone link :> f
-- div,1
some f: File | f.link in File
-- div,2
all f1: File | lone f2: File | f2.link = f1
-- div,1
all f1: File | lone f2: File | f1.link in f2
-- div,1
(	all f:File| f->f not in link )and( link.~link in iden )
-- div,1
all f,f1:File | f->f1 in link and f not in Trash implies f1 not in Trash
-- div,1
all l,f1,f2 : File | f1->l in link and f2->l in link implies f1 = f2
-- div,1
all f1,f2 : File, l : univ | f1->l in link and f2->l in link implies f1 = f2
-- div,1
all e1,e2 : univ, f : File | e1->f in link and e2->f in link implies e1 = e2
-- div,1
all d,e1,e2 : univ | d in File and e1->d in link and e2->d in link implies e1 = e2
-- div,2
all f:File | some f1,f2:File-f | f->f1 in link and f->f2 in link implies f1=f2
-- div,3
all d,e1,e2 : univ, f : File | d in File and e1->d in link and e2->d in link implies e1 = e2
-- div,1
all e1,e2 : univ, f : File | e1->f in link and e2->f in link implies e1 = e2 and lone link.f
-- div,1
all e1,e2 : univ, f : File | e1->f in link and e2->f in link implies e1 = e2
all f : File | lone link.f
-- div,1
all e1,e2 : univ, f : File | e1->f in link and e2->f in link implies e1 = e2
all f1,f2 : File, l : univ | f1->l in link and f2->l in link implies f1 = f2
-- div,1
