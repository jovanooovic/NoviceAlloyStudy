no Trash.link
-- div,22
some File.link
-- div,2
File in Protected
-- div,1
link[Trash] = none
-- div,1
File.link in Trash
-- div,1
File.link not in Trash
-- div,6
link.File not in Trash
-- div,6
~link . link in iden
-- div,1
link.~link in iden
-- div,1
not (File.link in Trash)
-- div,1
no link.File & Trash
-- div,7
File.link in Protected
-- div,3
File -> File = Trash -> File
-- div,1
File -> File = File -> Trash
-- div,1
all f: Trash | no f.link
-- div,8
all t: Trash | no t.link
-- div,8
all f:File | some f.link
-- div,2
some f: Trash | no f.link
-- div,1
no t: Trash | some t.link
-- div,1
all f: Trash | some f.link
-- div,1
no f: File | File.link = f
-- div,1
some f : File | some f.link
-- div,1
some f: Trash | some f.link
-- div,1
no f: File | Trash.link = f
-- div,1
all t:Trash | t.link = none
-- div,4
no t:Trash | t.link != none
-- div,1
no f:File | f.link in Trash
-- div,5
all f:File | f.link in Trash
-- div,3
all f:File | link.f in Trash
-- div,2
all f: File | f.link !in Trash
-- div,39
all f: File | link.f !in Trash
-- div,4
all o : univ | o->Trash not in link
-- div,1
all f:File | not (f.link in Trash)
-- div,2
all f:File | f.link in Protected
-- div,1
all f : File | no Trash - f.link
-- div,1
all f : File | no f.link - Trash
-- div,1
all f:File | f.^link not in Trash
-- div,1
some link.File => link.File not in Trash
-- div,1
all f: File | no link.f&Trash
-- div,1
no Trash.link
no (File.link - Trash)
-- div,1
all f:File-Trash | lone f.link
-- div,1
all file: File |
file.link not in Trash
-- div,2
not some f1, f2:File | f1->f2 not in link
-- div,1
all t : Trash, f:File | no t.link
-- div,1
all f: File | f in Trash implies no f.link
-- div,1
all f:File |  no link.f  implies f not in Trash
-- div,1
all f : File | some f.link => f in Trash
-- div,1
all f : File | one f.link => f not in Trash
-- div,1
all f: File | some f.link => f not in Trash
-- div,12
no f,g: File | f.link = g implies g not in Trash
-- div,1
all f: File | lone f.link implies f not in Trash
-- div,1
all f:File-Protected | f.link not in Trash
-- div,1
all f:File | (f in Trash) => f.link = none
-- div,4
all f : File | some f.link <=> f not in Trash
-- div,1
all f: File | some f.link => not f in Trash
-- div,3
all f,l : univ | f->l in link implies l in Trash
-- div,1
all f:File | (f.link != none) => f not in Trash
-- div,1
all f: File | f not in Trash implies f.link not in Trash
-- div,1
all f: File | f.link not in Trash implies f not in Trash
-- div,1
all f: File | f not in Trash iff f.link not in Trash
-- div,1
all f : File | some link.f => link.f not in Trash
-- div,1
all f:File |  ( some x:f.link | x not in Trash)
-- div,1
all	f1, f2:File | f1->f2 in link => f1 not in Trash
-- div,1
all file: File |
some file.link implies file not in Trash
-- div,1
not some f1, f2:File | f1->f2 in link and f1 in Trash
-- div,3
all f: File | ((some f.link) or (some link.f)) => f in Trash
-- div,1
