all f1,f2:Trash | f1->f2  not in link
-- div,1
all f1,f2:Trash | f1->f2 in link implies (f2 not in Trash)
-- div,1
(all t,u : File | t in Trash or u in Trash implies t->u not in link)
-- div,2
(all t,u : File | t in Trash and u in Trash implies t->u not in link)
-- div,1
all x,y:File | (x->y in link) implies (x not in Trash or y not in Trash)
-- div,1
(all t,u : File | t->u in link implies (t not in Trash or u not in Trash))
-- div,2
all f,x :File | f->x in link implies  (f not in Trash or x not in Trash )
-- div,1
all x : File | some y : File | y in Trash implies x -> y not in link
-- div,1
all x : File | some y : File | x -> y in link implies y not in Trash
-- div,1
all f1,f2 : File | f1 in Trash or f2 in Trash implies f1->f2 not in link
-- div,1
all f : File | some lk : File | f->lk in link implies f not in Trash
-- div,3
all f:File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
all g:File | f->g in link
-- div,1
all f:File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
all g:File | g->f in link
-- div,4
all x : File | some y : File | x in Trash or y in Trash implies x -> y not in link
-- div,1
all x,y :File | (x->y in link and y->x in link) implies x not in Trash and y not in Trash
-- div,3
all x : File | some y : File | x -> y in link implies x not in Trash and y not in Trash
-- div,2
all f:File | isLinked[f] implies f not in Trash
}

pred isLinked(f1:File){
all f2:File | f1 -> f2 in link
-- div,1
all f : File | some lk : File | f->lk in link implies f not in Trash and lk not in Trash
-- div,2
all f1, f2 : File | (f1->f2 in link or f2->f1 in link) implies (f1 not in Trash or f2 not in Trash)
-- div,1
all f1, f2 : File | (f1->f2 in link and f2->f1 in link) implies (f1 not in Trash and f2 not in Trash)
-- div,1
all f1, f2 : File | (f1 -> f2 in link) => not (f1 in Trash) && (f2 -> f1 in link) => not (f1 in Trash)
-- div,1
all f1,f2 : File | f1->f2 in link implies f1 not in Trash and f2 not in Trash and f2->f1 in link implies f1 not in Trash and f2 not in Trash
-- div,1
