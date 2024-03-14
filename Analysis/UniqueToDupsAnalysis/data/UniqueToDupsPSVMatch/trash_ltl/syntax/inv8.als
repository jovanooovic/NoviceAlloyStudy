l in link
-- div,1
eventually
-- div,1
eventually (
-- div,1
Link in Trash
-- div,1
eventually Link in Trash
-- div,2
eventually f.link in Trash
-- div,1
all f,f1: in File | no Trash
-- div,1
all f,f1 in File | f.f1 in link
-- div,1
all f,f1 in File | f->f1 in link
-- div,1
all f,f1: in File | f->f1 in link
-- div,1
eventually all File.link in Trash
-- div,1
all f1, f2 : File, l : (f1->f2 ) |
-- div,1
always all f, g : File | eventually
-- div,1
eventually File.link always in Trash
-- div,1
always l in link | eventually l in Trash
-- div,1
always all link | eventually link in Trash
-- div,1
eventually some link eventually l in Trash
-- div,1
always l: File.link | eventually l in Trash
-- div,1
eventually all f:File, l.f:link | l in Trash
-- div,1
eventually all f:File, l->f:link | l in Trash
-- div,1
always (f : File | f.link eventually in Trash
-- div,1
eventually some l:Link | eventually l in Trash
-- div,1
always all l : link | eventually F.link in Trash
-- div,1
always (all f : File | f.link eventually in Trash)
-- div,1
eventually some a,b:File | a->b in link a in Trash
-- div,1
always all f:File | some f.link eventually f in Trash
-- div,1
always since all l: File.link | eventually l in Trash
-- div,1
always all f:File | some in f.link implies f in Trash
-- div,1
always all f:File | f in f.link eventually f in Trash
-- div,1
some f:File | f in Link implies eventually f in Trash
-- div,1
eventually all f:File | f in f.link implies f in trash
-- div,1
all f:File| some  f.*link eventually f.*link  in Trash
-- div,1
always (all f: File | eventually some (f.link & Trash)
-- div,1
all f : f | some f.link => eventually (f.link in Trash)
-- div,1
eventually (some f : File | f.link implies f in Trash))
-- div,1
always all l: File.link | releases eventually l in Trash
-- div,1
eventually some a,b:File | a->b in link after a in Trash
-- div,1
always all a,b:File | a->b in link eventually a in Trash
-- div,1
always all f| f in link.File implies eventually f in Trash
-- div,1
all f1,f2 : File | f1 -> f2 in link eventually f1 in Trash
-- div,1
always (some File.link implies eventually F.link in Trash)
-- div,1
eventually (some f : File | some f.link implies f in Trash))
-- div,1
always all f:File | f in f.link eventually implies f in Trash
-- div,1
always all a,b:File | eventually a->b in link after a in Trash
-- div,1
always (all f : File | some f.link implies eventually in Trash)
-- div,1
all f1,f2:File | f1->f2 in link implies eventually f1 in Trash)
-- div,1
all f1,f2 : File | f1->f2 in link eventually implies f2 in Trash
-- div,2
always all f: File | f.links implies eventually f.links in Trash
-- div,1
always (some f : File | some f.link implies eventually f in Trash
-- div,1
always all f:File | all f.link implies eventually f.link in Trash
-- div,1
always all f, g : File | f->g in link implies eventually in Trash
-- div,1
eventually( all f:File | f in link implies (eventually f.link&Trash)
-- div,1
( all f1,f2 : File | f1->f2 in link eventually implies f2 in Trash )
-- div,1
always all f:File | some f.link implies eventually all f.link in Trash
-- div,1
always (all f1,f2:File | f1->f2 in link implies eventually f1 in Trash
-- div,1
all f:File | some g:File | f->g in Link implies eventually f->g in Trash
-- div,1
all f : File | some f.link | eventually (f in Trash and f.link in Trash)
-- div,2
always (all f:File| some link^.f  implies  eventually  link^.f  in Trash)
-- div,2
always all f:File, some g:File | f->g in link implies eventually f in Trash
-- div,1
always all f:File, some f2.File| f2 in f.link implies eventually f2 in Trash
-- div,1
always all f:File, some f2:File| f2 in f.link implies eventually f2 in Trash
-- div,1
always all f:File, some g:File | some f->g in link implies eventually f in Trash
-- div,2
all : f1, f2 : File | f1 -> f2 in link implies eventually f1 in Trash and f2 in Trash
-- div,2
all : f1, f2 : File | f1 -> f2 in link implies (eventually f1 in Trash and f2 in Trash)
-- div,1
