-- equiv pair start,1
all f:File | f in File.link
-- div,1
-- equiv pair end
-- equiv pair start,2
all f: File.link | link.f in Trash
-- div,1
all f1,f2 : File | f1->f2 in link implies f1 in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Trash, y : Trash | x->y in link
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Trash | all y : File | x->y in link
-- div,1
-- equiv pair end
-- equiv pair start,4
all f:File | f.link in Trash implies f in Trash
-- div,4
-- equiv pair end
-- equiv pair start,1
all f:File | some f.link implies link.f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | f.link in Trash implies no f.link
-- div,1
-- equiv pair end
-- equiv pair start,1
all l : File.link | l in Trash implies no l.link
-- div,1
-- equiv pair end
-- equiv pair start,1
some f1,f2:File | f1->f2 in link implies f2 in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File | link.f in Trash implies f.link in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
all f:File | f.link in Trash implies link.f in Trash
-- div,3
-- equiv pair end
-- equiv pair start,7
all l:File.link | l in Trash implies (l not in File)
-- div,1
all f,g:File | g in Trash implies f->g not in link
-- div,1
all fl:File.link | fl in Trash implies (fl not in File)
-- div,3
all f1,f2:File | f2 in Trash implies f1->f2 not in link
-- div,2
-- equiv pair end
-- equiv pair start,4
all x, y : File | x->y not in link implies y in Trash
-- div,1
all f1,f2:File | f1->f2 not in link implies f2 in Trash
-- div,3
-- equiv pair end
-- equiv pair start,1
all f:File | f.link in Trash implies f.*link in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f1,f2:File | f1->f2 not in link implies f2 in Trash
-- div,1
-- equiv pair end
-- equiv pair start,17
all f: File.link | (f in Trash) implies (link.f in Trash)
-- div,1
all x, y : File | x -> y in link and y in Trash implies x in Trash
-- div,1
all l, f : File | (l->f in link) and (f in Trash) => (l in Trash)
-- div,1
all f, l : File | (f->l in link and l in Trash) implies f in Trash
-- div,1
all f : File | (all l : f.link | l in Trash implies f in Trash)
-- div,3
all f,lkd : File | (lkd in Trash and f->lkd in link) implies f in Trash
-- div,1
all f1,f2: File | f1->f2 in link and f2 in Trash => f1 in Trash
-- div,8
all x : File, y : File | x -> y in link and y in Trash implies x in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all l : File.link | l in Trash implies no (l.link & Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
all f,g:File | g in Trash and g!=f implies f->g not in link
-- div,2
-- equiv pair end
-- equiv pair start,1
all f : File, l : f.link, l1 : l.link | l1 in Trash => l in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | (some l : f.link | l in Trash implies f in Trash )
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File, l : f.link, l1 : l.link | l in Trash <=> l1 in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | (f.link in Trash and f not in Protected) implies f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | (all l : f.link | l in Trash implies (all f :File| f in Trash))
-- div,1
-- equiv pair end
-- equiv pair start,2
all l : File.link | l in Trash implies (all f : File | (f = l) and (l in Trash))
-- div,2
-- equiv pair end
-- equiv pair start,1
inv4[]
all f : File | (all l : f.link | l in Trash implies l.link in Trash)
}

pred inv4{
no (Protected & Trash)
-- div,1
-- equiv pair end
