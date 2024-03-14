-- equiv pair start,137
no link.Trash
-- div,26
no link :> Trash
-- div,1
link.Trash = none
-- div,1
no File.link & Trash
-- div,32
no Trash & File.link
-- div,1
no link & File->Trash
-- div,1
File.link & Trash = none
-- div,2
Trash in Trash - File.link
-- div,1
all t : Trash | no link.t
-- div,3
all f : Trash | no link.f
-- div,4
no l: File.link | l in Trash
-- div,1
no f:File.link | f in Trash
-- div,5
all l: File.link | l not in Trash
-- div,2
all f:File.link | f not in Trash
-- div,7
all l : File.link |
not (l in Trash)
-- div,2
all fl: File.link| fl not in Trash
-- div,1
all f: File | no f.link&Trash
-- div,9
all f : File | no Trash & f.link
-- div,2
all f: File | no (f.^link & Trash)
-- div,1
all f:File | f.link in File-Trash
-- div,4
all f: File | f in Trash => no link.f
-- div,1
all f : File, l : f.link | l not in Trash
-- div,1
all f : File, l : f.link |
not (l in Trash)
-- div,1
all f : File | some link.f => f not in Trash
-- div,7
all f:File, f2:f.link | not f2 in Trash
-- div,1
all l, f: File | l in f.link implies l not in Trash
-- div,1
all f,l : univ | f->l in link implies l not in Trash
-- div,4
all f, f1 : File | f->f1 in link => f1 not in Trash
-- div,6
all f : File |
all l : f.link |
l not in Trash
-- div,1
all f1,f2: File | f1->f2 in link implies f2 not in Trash
-- div,1
all f1,f2: File | f1->f2 in link implies not f2 in Trash
-- div,1
not some f1,f2:File | f1->f2 in link and f2 in Trash
-- div,4
no File.link & Trash

all f : File.link | f not in Trash
-- div,1
all f : File | all f1 : f.link | f1 not in Trash


no File.link & Trash
-- div,1
-- equiv pair end
