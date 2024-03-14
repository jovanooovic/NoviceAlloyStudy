Trash.link in Trash
-- div,25
all f:Trash | f.link in Trash
-- div,1
all f : File | f in Trash => f.link in Trash
-- div,8
all f: link.File | (f in Trash) implies (f.link in Trash)
-- div,1
all f : File, l : f.link | f in Trash => l in Trash
-- div,3
all f:File,t:Trash | t->f in link implies f in Trash
-- div,2
all f:Trash,g:File | f->g in link implies g in Trash
-- div,13
all x : Trash, y : File | x->y in link implies y in Trash
-- div,2
all t:Trash,f:File | t->f in link implies f in Trash
-- div,1
all f,l : File | (l in f.link and f in Trash) implies l in Trash
-- div,1
all f,x:File | f in Trash and f->x  in link implies x in Trash
-- div,1
all x,y: File | x->y in link and x in Trash implies y in Trash
-- div,11
(all t,u : File | t->u in link and t in Trash implies u in Trash)
-- div,1
all f,g:File | (f->g in link and f in Trash) implies g in Trash
-- div,8
all f,b : File | (f->b in link and f in Trash) implies b in Trash
-- div,1
all f, l : File | (f->l in link and f in Trash) implies l in Trash
-- div,2
all l, f : File | (l->f in link) and (l in Trash) => (f in Trash)
-- div,3
all f : File | (all l : f.link | f in Trash implies l in Trash)
-- div,8
all t:Trash | all f:File | t->f in link implies f in Trash
-- div,1
all x : Trash | all y : File | x->y in link implies y in Trash
-- div,1
all f1,f2:File | f1->f2 in link and f1 in Trash => f2 in Trash
-- div,28
all f,lkd : File | (f in Trash and f->lkd in link) implies lkd in Trash
-- div,3
all l1, l2 : File | (l1->l2 in link && l1 in Trash) => l2 in Trash
-- div,1
all f1, f2 : File | f1 in Trash and f1 -> f2 in link implies f2 in Trash
-- div,2
not some f1,f2 : File | f1->f2 in link and f1 in Trash and not f2 in Trash
-- div,1
all x : File, y : File | x -> y in link and x in Trash implies y in Trash
-- div,1
all f1,f2 : File | isLink[f1] and f1->f2 in link and f1 in Trash implies f2 in Trash
}

pred isLink[f1:File]{
some f2 : File | f1->f2 in link
-- div,1
