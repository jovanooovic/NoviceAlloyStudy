all f: File |
-- div,3
link.Trash in
-- div,1
all f : File |
-- div,2
Trash. in Trash
-- div,1
all l : File.link |
-- div,3
File.link in Trash and
-- div,1
Link.link & File in Trash
-- div,1
all t : Trash | all link.t
-- div,1
link.Trash & File.link,Trash
-- div,1
link.Trash implies Trash.link~
-- div,1
all f: File | f+.link in Trash
-- div,1
link.Trash implies Trash.linkº
-- div,1
all l : File.link | l in Trash =>
-- div,1
all f: Deleted | f.link in Deleted
-- div,1
for f: Deleted | f.link in Deleted
-- div,1
all f:File | f in Trash | f.link in Trash
-- div,1
!(any f: File - Trash | f.^link in Trash)
-- div,1
all f:File | f in Trash { f.link in Trash}
-- div,1
(f.link in Trash) => (f.link.link in Trash)
-- div,1
let x = File.link & Trash | x.Link in Trash
-- div,1
all f : f in Trash  implies f.link in Trash
-- div,1
all l: Filel.ink | l in Trash => l.link in Trash
-- div,1
all f : File | f in Trash implies f^.link in Trash
-- div,1
any f: File | (some f.^link & Trash) and f in Trash
-- div,1
any f: File | (some f.^link & Trash) and (f in Trash)
-- div,1
no f: File - Trash | f.^link != empty and f.^link in Trash
-- div,1
all f : File | f in Trash => f.link in Trash

f.~f in iden
-- div,1
all f: File | f.link in Trash implies all f.^link in Trash
-- div,2
File.link = one and File in Trash implies File.link in Trash
-- div,1
all f : (f.link = one and f in Trash ) implies f.link in Trash
-- div,1
all f : File | some f.link | f in Trash implies f.link in Trash
-- div,1
all f : File | f in Trash => f.link in Trash

File.File~ in iden
-- div,1
all f : File | some link.f and f in trash implies f.link in Trash
-- div,1
all f: File | f.link in Trash implies f.+link in Trash and f in Trash
-- div,1
all f: File | all fl in f.link |  (fl in Trash and f in Trash) or f not in Trash
-- div,2
all fl: File.link | set f: File | fl in Trash and fl->f in link implies f in Trash
-- div,1
all f1,f2, f3 | f1->f2 in link and f2->f3 in link and f2 in Trash implies f3 in Trash
-- div,1
