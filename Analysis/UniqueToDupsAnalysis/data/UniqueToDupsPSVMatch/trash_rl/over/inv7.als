(0 = 1)
-- div,1
no link
-- div,1
no Trash
-- div,1
no File.link
-- div,3
no link -> Trash
-- div,1
File.link not in File
-- div,1
all t : Trash | no link
-- div,1
no f: File | f in Trash
-- div,1
all f: File | f !in Trash
-- div,1
all f:File |  no link.f
-- div,4
all f: File | no f.link
-- div,2
all f,l : univ | f->l in link
-- div,1
no ((link.univ + univ.link) & Trash)
-- div,1
no (File.link + link.File) & Trash
-- div,3
all f : link.File | f not in File
-- div,3
all f : File.link | f not in File
-- div,1
all o : univ | o->Trash in link
-- div,1
no f:File | link.f & f in Trash
-- div,1
all f: File | f in Trash and no f.link
-- div,1
all f:File |  no link.f  and f not in Trash
-- div,1
all t: Trash | no t.link and no link.t
-- div,1
File = Trash
all f : File | no f.link
-- div,1
no f:File | (f in Trash) => (f.link != none)
-- div,1
all t: Trash| no t.link and no t.~link
-- div,1
all f : File.link + link.File | f not in Trash
-- div,1
all f,g : File | f->g in link and g not in Trash
-- div,1
all f:File | f.link in File implies f not in Trash
-- div,1
all f: File | no ((f.link & Trash) + (link.f & Trash))
-- div,1
all	f1, f2:File | f1->f2 in link => f1->f2 not in link
-- div,1
File.link not in Trash

all f : File.link | f not in Trash
-- div,1
no Trash & Protected and all f:File | f.link in Protected
-- div,1
all f: File | ((some f.link) or (some link.f)) => f not in Trash
-- div,1
all x, y : File | x->y in link implies (x not in Trash and y not in Trash)
-- div,1
all l1,l2 : File | l1->l2 in link implies (l1 not in Trash and l2 not in Trash)
-- div,1
all	f1, f2:File | f1->f2 in link => f1 not in Trash and f2 not in Trash
-- div,1
