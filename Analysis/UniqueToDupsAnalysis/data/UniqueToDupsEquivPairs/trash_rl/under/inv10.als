-- equiv pair start,10
link.Trash in link.Trash
-- div,1
File in Trash implies File.link in Trash
-- div,4
no f: File - Trash | f.*link in Trash
-- div,1
all f: File | (f.link + f) in Trash implies f in Trash
-- div,1
all f: File | f.link in Trash implies f.link in Trash
-- div,1
all f, f1 : File | f->f1 in link and f1 in Trash => f1 in Trash
-- div,1
all fl: File.link | some f: File | fl in Trash and fl->f in link implies f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
no (link.File & Trash) - link.Trash
-- div,3
-- equiv pair end
-- equiv pair start,4
link.File in Trash => File.link in Trash
-- div,4
-- equiv pair end
-- equiv pair start,8
let x = File.link & Trash | x.link in Trash
-- div,1
all l: File.link | l in Trash => l.link in Trash
-- div,2
all f: File.link | f in Trash implies f.link in Trash
-- div,1
all f : File | some link.f and f in Trash implies f.link in Trash
-- div,1
all f1,f2, f3: File | f1->f2 in link and f2->f3 in link and f2 in Trash implies f3 in Trash
-- div,1
all f1,f2,f3 : univ | f1->f2 in link and f2->f3 in link and f2 in Trash implies f3 in Trash
-- div,1
all fl: File.link | all f: File | fl in Trash and fl->f in link implies f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
all f: File | f.link in Trash implies f.^link in Trash
-- div,1
all f:File | (f.link in Trash) => (f.link.link in Trash)
-- div,2
-- equiv pair end
