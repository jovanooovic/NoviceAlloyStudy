all f:File
-- div,1
all f : File |
-- div,2
all f,g:File |
-- div,5
all f,u : File |
-- div,2
(some x,y : File |
-- div,1
all f1,f2 : File |
-- div,2
all l : File.link |
-- div,1
all g,x:File | f in Trash and
-- div,5
all t:Trash, fl:File | f1 in Trash
-- div,1
all t:Trash, fl:File.link | f1 in Trash
-- div,1
all f,g:File | f->g in link | g in Trash
-- div,1
f:File | link.f in iden implies f in Trash
-- div,1
all f,g:File | (f->g in link) and in Trash
-- div,1
all l1, l2 | l1->l2 in Trash => l2 in Trash
-- div,1
all x in Trash | all y : File | x->y in link
-- div,1
all f,g : File | f in trash implies g in Trash
-- div,1
all f:file | f.link in Trash implies f in Trash
-- div,1
all f:File | f.~Link in Trash implies f in Trash
-- div,1
all F:File | link.f in Trash implies f.link in Trash
-- div,1
all f1,f2:File | f1->f2 in Trahs implies f1 in Trash
-- div,1
all f,l : File, f.link | l in Trash implies f in Trash
-- div,1
all f:File | f.link in Trash implies f:>linkn in Trash
-- div,1
all f.g:File | (f->g and f in Trash) implies g in Trash
-- div,1
all x, y : File | x->y in not in link implies y in Trash
-- div,1
all f,g:File | (f->g in link) and in Trash implies g in Trash
-- div,1
all f,g : File | f->g in link and f in Trah implies g in Trah
-- div,1
all f:File | (f in link and in Trash) implies f.link in Trash
-- div,1
all f,x:File | f->x in link | f->x in Trash implies x in Trash
-- div,1
all x in Trash | all y : File | x->y in link implies y in Trash
-- div,1
all t:Trash, fl:File.link | f1 in Trash implies (no f1 in File)
-- div,2
all f,l : File | (f.l in link and f i Trash) implies l in Trash
-- div,1
all f,l : File | (l in f.link and f i Trash) implies l in Trash
-- div,1
all x, y : File | x->y in link and x in Trash implies y in trash
-- div,1
all f1, f2:File | f1 -> f2 in link | f1 in Trash and f2 in Trash
-- div,1
all t:Trash, fl:File.links | f1 in Trash implies (no f1 in File)
-- div,1
all x, y : File | x->y in link and x- in Trash implies y in trash
-- div,1
all f : File, l : f.link, l' : l.link | l in Trash => l' in Trash
-- div,1
all f1,f2:File | fi->f2 in link and f2 in Trash implies f1 in Trash
-- div,1
all f,g:File | (f->g in link) and in Trash implies f and g in Trash
-- div,1
all f : File | (all l : f.link | l in Trash implies (all f in Trash)
-- div,1
all all f,b : File | (f->b in link and f in Trash) implies b in Trash
-- div,3
all f: File | (f.link in Trash and f not Protected) implies f in Trash
-- div,1
all all f,b : File | (f->b in link and f in Trash) implies  b in Trash
-- div,1
all f,u : File |  f->u in Link implies f->u in Trash implies u in Trash
-- div,1
all l : File.link | (l in Trash implies (all li : l.links | li in Trash))
-- div,1
all l : File.link | l in Trash implies ( all li : l.links | li in Trash )
-- div,1
all f1, f2:File | f1 -> f2 in link and f1 in Trash implies and f2 in Trash
-- div,1
all f1, f2:File | f1 -> f2 in link and (f1 in Trash implies and f2 in Trash)
-- div,1
all l : File.link | l in Trash implies (all f : File | f == l and l in Trash)
-- div,1
all f : File | (all l : f.link | l in Trash implies (all f :File| f in Trash)
-- div,1
all l : File.link | l in Trash implies (all f : File | (f == l) and (l in Trash))
-- div,1
all x, y : File | isLink[x] is in Trash implies isLinked[x]
}


pred isLinked[f:File]{
some g:File | g->f in link
}

/* There are no links. */

pred isLink[f:File]{
some g:File | f->g in link
-- div,1
