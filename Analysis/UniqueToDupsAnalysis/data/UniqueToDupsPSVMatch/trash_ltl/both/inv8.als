link.File in Trash
-- div,1
eventually no link
-- div,2
once File.link in Trash
-- div,1
eventually File.link in Trash
-- div,23
eventually link.File in Trash
-- div,11
(File.link + link.File) in Trash
-- div,1
some f:File | some f.link
-- div,1
(some link) implies (File.(~link) in Trash)
-- div,1
eventually always File.link in Trash
-- div,3
always eventually link.File in Trash
-- div,8
eventually (always link.File in Trash)
-- div,1
always eventually File.link in Trash
-- div,6
always (eventually (some link.File & Trash))
-- div,1
eventually File.link + link.File in Trash
-- div,2
always all f:File | f.link in Trash
-- div,1
some link implies eventually link.File in Trash
-- div,2
always(after eventually File.link in Trash)
-- div,2
some link implies eventually File.link in Trash
-- div,1
(some link) implies (eventually File.(~link) in Trash)
-- div,1
eventually (all f:File | link.f in Trash)
-- div,1
all f1:File , f2:File | f1.link = f2
-- div,1
all l: File.link | eventually l in Trash
-- div,4
all f:File | eventually f.link in Trash
-- div,1
eventually all f:File | f.link in Trash
-- div,9
eventually all l: File.link | l in Trash
-- div,3
all f : File.link | eventually f in Trash
-- div,1
eventually (some f:File | f.link in Trash)
-- div,2
eventually (some x : File | x.link in Trash)
-- div,1
all f:File | eventually f.link not in File'
-- div,1
all f:File| eventually f.*link  in Trash
-- div,3
all f:File| eventually f.^link  in Trash
-- div,1
eventually some f:File | f.link in Trash'
-- div,1
eventually some f:File | f.link not in File'
-- div,1
always (some link implies eventually link.File in Trash)
-- div,1
eventually (all f:File| f+f.link in Trash)
-- div,1
eventually  (File.link in Trash and link.File in Trash)
-- div,1
eventually all l: File.link | always l in Trash
-- div,1
all l: File.link | always (eventually l in Trash)
-- div,1
eventually always all l: File.link | l in Trash
-- div,2
all f1,f2 : File | f1 -> f2 in link implies f1 in Trash
-- div,1
( all f1,f2 : File | f1->f2 in link implies f2 in Trash )
-- div,1
always all f:File | eventually f.link in Trash
-- div,6
always all f: File.link | eventually f in Trash
-- div,7
always all l: File.link | eventually l in Trash
-- div,3
always some f : File.link | eventually f in Trash
-- div,2
always some f : File | eventually f.link in Trash
-- div,2
some link implies eventually link.(File-Protected) in Trash
-- div,1
some link implies eventually link.File-Protected in Trash
-- div,2
always (some f : link.File | eventually f in Trash)
-- div,2
always some l : File.link | eventually l in Trash
-- div,1
always (some link implies eventually (some link.File & Trash))
-- div,1
always (some link.File implies eventually link.File in Trash)
-- div,1
always (all f:File| eventually  f.*link    in Trash)
-- div,1
always (some File.link implies eventually File.link in Trash)
-- div,3
always some File.link implies eventually File.link in Trash
-- div,1
eventually some f : File | eventually f.link in Trash
-- div,1
eventually (all f : File | some f.link implies f in Trash)
-- div,1
eventually all f:File | f in f.link implies f in Trash
-- div,2
some f : File | eventually f.link + link.f in Trash
-- div,2
all f:File | some link.f implies eventually f in Trash
-- div,7
eventually all f:File | f in link.f implies f in Trash
-- div,1
eventually (some f : File | some f.link implies f in Trash)
-- div,1
always (all f: File | eventually some (f.link & Trash))
-- div,1
always all f: File.link | eventually f.link in Trash
-- div,1
always(eventually  (File.link in Trash and link.File in Trash))
-- div,1
all f : File | (some f.~link) implies (eventually f in Trash)
-- div,1
always all l: File.link | eventually always l in Trash
-- div,2
eventually some a,b:File | a->b in link implies a in Trash
-- div,1
always all f: File | always eventually f.link in Trash
-- div,2
always all l: File.link | always eventually l in Trash
-- div,4
all f : File.link | f not in Trash and eventually f in Trash
-- div,1
eventually all f:File | f in link.f implies link.f in Trash
-- div,1
eventually all f:File | f in f.link implies f.link in Trash
-- div,1
all f : File | some f.link => eventually (f.link in Trash)
-- div,4
all f1,f2 : File | f1->f2 in link implies eventually f2 in Trash
-- div,5
eventually (all f1,f2:File | f1->f2 in link implies f1 in Trash)
-- div,4
eventually ( all f1,f2 : File | f1->f2 in link implies f2 in Trash )
-- div,1
eventually ( some f1,f2 : File | f1->f2 in link implies f1 in Trash  )
-- div,1
eventually ( some f1,f2 : File | f1->f2 in link implies f2 in Trash  )
-- div,1
( some f1,f2 : File | f1->f2 in link implies eventually f2 in Trash  )
-- div,1
always all f:File | eventually f in f.link implies f in Trash
-- div,1
always (some f : File | some link.f implies eventually f in Trash)
-- div,1
always (some f : File | some f.link implies eventually f in Trash)
-- div,2
always (all f:File.^link| some f implies  eventually  f  in Trash)
-- div,1
all f,g: File| f->g in link implies eventually always f in Trash
-- div,1
always (some f : File | some f.link implies eventually f in Trash')
-- div,1
all f:File| some f.link implies (eventually f+f.link in Trash)
-- div,2
always (some f: File | f in link.File implies eventually f in Trash)
-- div,2
all disj f1,f2 : File | f1->f2 in link implies eventually f2 in Trash
-- div,1
always (all f,f2:File | f->f2 in link implies eventually (f2 in Trash))
-- div,1
all f1,f2 : File | f1->f2 in link implies eventually f1 + f2 in Trash
-- div,1
always eventually all f:File | f in link.f implies link.f in Trash
-- div,1
always (all f : File | some link.f implies eventually f.link in Trash)
-- div,1
always (all f : File | some f.link implies eventually link.f in Trash)
-- div,1
always all f : File | some f.link => eventually (f.link in Trash)
-- div,12
always (all f : File | some link.f implies eventually link.f in Trash)
-- div,2
all f1:File , f2:File | f1.link = f2 implies eventually f2 in Trash
-- div,3
always (some f : File | some f.link implies after eventually f in Trash)
-- div,1
always all f,g:File | some f.link implies eventually  f.link in Trash
-- div,1
always all l : File.link | eventually l in File.link implies l in Trash
-- div,1
all f:File| some f.^link implies (eventually f+f.^link in Trash)
-- div,1
all f1:File , f2:File | f1->f2 in link implies eventually f2 in Trash
-- div,1
always (all f:File| some f.*link implies eventually  f.*link  in Trash)
-- div,3
eventually (some x,y : File | x->y in link implies x in Trash and y in Trash)
-- div,2
always ( all f:File | some f.^link implies eventually f.^link in Trash )
-- div,4
always (all f:File| some f.^link  implies  eventually  f.*link  in Trash)
-- div,1
all f1:File , f2:File | f1.link = f2 implies eventually some f2 & Trash
-- div,1
all f1:File , f2:File | f1.link = f2 implies eventually f2 +f1 in Trash
-- div,1
always all f:File | some f.link implies always eventually f.link in Trash
-- div,1
all f : File | some z : f.link | eventually (f in Trash and z in Trash)
-- div,1
all f1, f2 : File | f1 -> f2 in link implies eventually f1 in Trash and f2 in Trash
-- div,1
all f1, f2 : File | (f1 -> f2) in link implies eventually (f1 in Trash and f2 in Trash)
-- div,1
always (all f:File| some f &f.^link  implies  eventually  f.*link  in Trash)
-- div,1
always all l : File.link | eventually l in File.link implies always l in Trash
-- div,1
always (all f:File| some f.^link  implies  eventually after f.^link  in Trash)
-- div,1
always (all f:File| some f.*link  implies always eventually  f.*link  in Trash)
-- div,1
all f:File | isLink[f] implies eventually f.link in Trash
}

pred isLink[f:File]{
some g:File | g->f in link
-- div,1
always all f:File | isLink[f] implies eventually f.link in Trash
}

pred isLink[f:File]{
some g:File | g->f in link
-- div,1
