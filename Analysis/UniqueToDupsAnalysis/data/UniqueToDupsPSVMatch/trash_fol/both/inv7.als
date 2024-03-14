#link = 2
-- div,1
no Trash.link
-- div,5
File.link in Trash
-- div,1
File.link not in Trash
-- div,1
no (link.File & Trash)
-- div,1
no f:File | link.f in Trash
-- div,1
no f:File | f.link in Trash
-- div,1
all f:File |f.link not in Trash
-- div,23
all f:File | link.f not in Trash
-- div,4
some f:File | (f.link) not in Trash
-- div,1
all f1,f2 : File | f1 -> f2 in link
-- div,2
all f:File | f.^link not in Trash
-- div,2
all disj f1,f2 : File |(f1->f2) in link
-- div,1
not some f1,f2: File | f1->f2 not in link
-- div,1
all f1 : File, f2 : File | f1 in Trash
-- div,1
all f:File | some f.link implies f not in Trash
-- div,1
all f,g:File | f->g in link implies f not in Trash
-- div,1
all l, f : File | (l->f in link) => (l not in Trash)
-- div,2
all x,y : File | x->y in link implies x not in Trash
-- div,5
(all t,u : File | t->u in link implies t not in Trash)
-- div,1
all f: File | f not in Trash implies f.link not in Trash
-- div,1
not some l, f : File | (l->f in link) and l in Trash
-- div,2
all f1,f2:File | f1 in f2.link implies f2 not in Trash
-- div,1
all f,lk1 : File | f->lk1 in link implies f not in Trash
-- div,1
all f1 : File | no t: Trash | f1.link in t
-- div,1
all f1,f2 : File | f1->f2 in link implies f2 in Trash
-- div,1
all f1,f2 : File |  f1 not in Trash implies f1->f2 in link
-- div,1
all f1,f2:File| f1->f2 in link implies f1 not in Trash
-- div,11
all f : File | some f1 : File | f->f1 in link
-- div,2
all f1,f2:File | f1->f2 in link => not f1 in Trash
-- div,6
all f : File | some l : f.link | f->l in link
-- div,1
not some f1,f2:File | f1->f2 in link and f1 in Trash
-- div,2
not some f1,f2: File | f1->f2 not in link and f2 in Trash
-- div,1
all f1,f2:File| f1->f2 in link implies (f1 in File-Trash)
-- div,1
all f:File | some f1:(File - f) | f.link not in f1.link
-- div,1
(some t,u : File | t->u in link implies (t not in Trash and u not in Trash))
-- div,1
all f : File | some f1 : File | f != f1 and f->f1 in link
-- div,1
all f:File | f in Trash implies no f2:File | f->f2 in link
-- div,1
all f1, f2 : File | f1->f2 in link implies f1  in Trash and f2  in Trash
-- div,1
all f : File | all lk : File | f->lk in link implies f not in Trash
-- div,1
(all t,u : File | t->u in link implies t in Protected and u in Protected)
-- div,2
all f1,f2 : File |  f1 not in Trash and f2 not in Trash implies f1->f2 in link
-- div,1
all f1:File | some f2:File | f1 -> f2 in link and (f2 not in Trash)
-- div,1
some f1:File | some f2:File | f1 -> f2 in link implies (f2 not in Trash)
-- div,1
some f1:File | some f2:File | f1 -> f2 in link and (f2 not in Trash)
-- div,1
all f:File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
some g:File | f->g in link
-- div,3
all f : File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
some g:File | f->g in link
-- div,2
all f:File | isLink [f] implies f not in Trash
}

pred isLink (f:File){
some g:File | f->g in link
-- div,2
all f : File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
some g : File | f->g in link
-- div,2
all x : File | isLink[x] implies x not in Trash
}

pred isLink[f : File]{
some y : File | f->y in link
-- div,1
all f : File | isLink[f] implies f not in Trash
}

pred isLink[f : File]{
some g : File | f->g in link
-- div,1
all f:File | isLinked[f] implies f not in Trash
}

pred isLinked(f:File){
some f2:File | f->f2 in link
-- div,1
all f : File | isLink[f] implies f not in Trash
}

pred isLink[f1:File]{
some f2 : File | f1->f2 in link
-- div,1
all f : File | is_link[f] implies f not in Trash
}

pred is_link[f : File]{
some g : File | f->g in link
-- div,1
all x : File | isLink[x] implies x not in Trash
}

pred isLink[f1 : File]{
some f2 : File | f1->f2 in link
-- div,1
all x,y : File | isLink[x] implies x not in Trash
}

pred isLink[f1 : File]{
some f2 : File | f1->f2 in link
-- div,1
