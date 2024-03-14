eventually File & Trash
-- div,1
eventually link in Trash
-- div,6
eventually (link in Trash)
-- div,1
eventually File.link & Trash
-- div,1
eventually some link in Trash
-- div,1
eventually link.link in Trash
-- div,1
eventually link.~link in Trash
-- div,1
eventually some (link in Trash)
-- div,1
eventually some (link &  Trash)
-- div,1
eventually (File:>link in Trash)
-- div,1
eventually (File<:link in Trash)
-- div,1
eventually all l:link | l in Trash
-- div,4
eventually some File.link in Trash
-- div,2
eventually all l:link | l in Trash'
-- div,1
eventually (some File.link in Trash)
-- div,1
all l : link | eventually l in Trash
-- div,2
eventually all l:link | link in Trash
-- div,1
all f1, f2 : link | some f1.link
-- div,1
eventually (all l:link | link in Trash)
-- div,1
eventually all f:File | f->link in Trash
-- div,1
eventually( all f:File | f.link in link)
-- div,1
eventually (some f:File | f.link & Trash)
-- div,1
some link implies eventually link in Trash
-- div,1
eventually all f:File | f in link in Trash
-- div,1
all f:File| eventually some link  in Trash
-- div,1
always all l : link | eventually l in Trash
-- div,1
eventually (some x,y : File | x->y in Trash)
-- div,1
eventually all f:File, l:link | l->f in Trash
-- div,1
always all f,g:File | eventually f->g in Trash
-- div,1
all l : link | eventually File.l in Trash
-- div,3
all l : link | eventually l.File in Trash
-- div,2
some l : link | eventually l.File in Trash
-- div,1
all f:File | link.f implies (eventually f in Trash)
-- div,2
eventually all f:File | f in link implies f in trash
-- div,2
eventually all l:link | File.link in Trash
-- div,1
eventually all l:link | l.File in Trash'
-- div,1
always all f,g:File | eventually f->g in link in Trash
-- div,3
all f1:File , f2:File | f1.link = f2 implies f2 & Trash
-- div,1
always all f:File | some f in f.link implies f in Trash
-- div,1
eventually all f:File | f in f.link implies link in Trash
-- div,1
always all l: File.link | l releases eventually l in Trash
-- div,1
all f:File | some File.link.f implies eventually f in Trash
-- div,1
always all l : link | eventually File.l in Trash
-- div,4
all f:File | some link.f implies (eventually link in Trash)
-- div,1
eventually all l:link,f:File | l.f in Trash
-- div,1
always all l : link | eventually File.link in Trash
-- div,1
always all f: File | f.link implies eventually f.link in Trash
-- div,1
always(all f: File | f.link implies eventually f.link in Trash)
-- div,1
all f1,f2 : File | f1->f2 in link implies eventually f2 ib Trash
-- div,1
always (all f : File | f.link implies eventually f.link in Trash)
-- div,2
all f1:File , f2:File | f1.link = f2 implies eventually f2 & Trash
-- div,1
always (all f:File|  f.*link implies eventually  f.*link  in Trash)
-- div,1
eventually (all f1,f2:File | f1->f2 in link implies f1->f2 in Trash)
-- div,1
always all f,g:File | f->g in link implies eventually  f->g in Trash
-- div,1
eventually( all f:File | f in link implies (eventually f.link&Trash))
-- div,1
always all f,g:File | some f->g in link implies eventually f in Trash
-- div,1
always all f, g : File | f->g in link implies eventually link in Trash
-- div,1
all f1:File , f2:File | f1.link = f2 implies eventually f2 and f1 in Trash
-- div,1
always (all f,f2:File | some f->f2 in link implies eventually ( f in Trash and f2 in Trash))
-- div,1
all f1, f2 : File | f1 -> f2 in link implies eventually f1 in Trash and f2 in Trash and f1 -> f2 in Trash
-- div,1
0
all f1, f2 : File | f1 -> f2 in link implies eventually f1 in Trash and f2 in Trash and f1 -> f2 in Trash
-- div,1
all f1, f2 : File | f1 -> f2 in link implies eventually (f1 in Trash and f2 in Trash and f1 -> f2 in Trash)
-- div,4
0
all f1, f2 : File | f1 -> f2 in link implies eventually (f1 in Trash and f2 in Trash and f1 -> f2 in Trash)
-- div,1
