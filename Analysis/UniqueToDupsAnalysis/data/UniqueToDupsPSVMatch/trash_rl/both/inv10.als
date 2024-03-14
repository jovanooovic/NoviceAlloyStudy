link.Trash = Trash
-- div,1
link.Trash in Trash
-- div,7
Trash->Trash in link
-- div,1
no Trash.link.link
-- div,1
Trash.link in link.Trash
-- div,1
(link.Trash).link in Trash
-- div,1
link.Trash in Trash.link
-- div,1
link.File & File in Trash
-- div,1
link.Trash & File in Trash
-- div,2
all t : Trash | no link.t
-- div,1
all t : Trash | some link.t
-- div,1
File.link in Trash implies File in Trash
-- div,1
File.link in Trash => link.File in Trash
-- div,1
no (File.link & Trash) - (link.File & Trash)
-- div,1
all t : Trash, f : File | no link.t
-- div,2
let x = File & Trash | no x.link & Trash
-- div,1
all f: Trash | some f.^link & Trash
-- div,1
no f: File - Trash | f.^link in Trash
-- div,1
let x = File.link & Trash | no x.link & Trash
-- div,1
all f: File | f.link in Trash => f in Trash
-- div,16
all f: File | link.f in Trash implies f in Trash
-- div,3
all f : File | f in Trash implies link.f in Trash
-- div,1
some f : File | f in Trash implies f.link in Trash
-- div,1
some f : File | f.link in Trash implies f in Trash
-- div,1
all f: File | f.link in Trash => no link.f
-- div,1
all f : File | f.^link in Trash implies f in Trash
-- div,1
all t: Trash | all f: File | t != f.^link
-- div,1
all t: Trash | all f: File | t != f.*link
-- div,1
all f:File | some f.link & Trash implies f in Trash
-- div,1
all l: File.link | l.link in Trash implies l in Trash
-- div,1
all f : File | link.f in Trash implies f.link in Trash
-- div,1
all f:File | f.link in Trash implies link.f in Trash
-- div,4
some f: File | f.link in Trash implies link.f in Trash
-- div,1
all l: File.link | l in Trash <=> l.link in Trash
-- div,1
all f: File | (some f.^link & Trash) implies (f in Trash)
-- div,1
all f,g : File | link.f in Trash and link.g in Trash
-- div,1
all f : File, l : f.link | l in Trash => f in Trash
-- div,2
all f: File | (f.link + f) in Trash implies link.f in Trash
-- div,1
all f : File |
(no f.link or (f.link in Trash)) implies f in Trash
-- div,1
all f, f1 : File | f->f1 in link and f1 in Trash => f in Trash
-- div,2
all f : File |
(some f.link and (f.link in Trash)) implies f in Trash
-- div,1
all f : File |
all l : f.link |
l in Trash implies f in Trash
-- div,1
all f: File | f.link in Trash implies f in Trash or f in Protected
-- div,1
all f1,f2: File | f1->f2 in link && f2 in Trash implies f1 in Trash
-- div,1
all f: File | f not in Protected and f.link in Trash implies f in Trash
-- div,1
all f1,f2 : univ | f1->f2 in link and f2 in Trash implies f1 in Trash
-- div,1
all f: File | one fl: f.link | fl in Trash implies f in Trash
-- div,1
all f: File | f.link in Trash implies f.^link in Trash and f in Trash
-- div,2
all f: File | f not in Protected and f.link in Trash implies link.f in Trash
-- div,1
