no link
-- div,2
no File.link
-- div,1
all f,g:File | f->g not in link
-- div,1
all f:File | no link.f + Trash
-- div,1
all f1 : File | no t: Trash | f1 in t
-- div,1
all x, y : File | x->y in link and y not in Trash
-- div,1
all f,g : File | f->g in link and f not in Trash
-- div,1
all f,g : File | f->g in link and g not in Trash
-- div,1
all x, y : File | x->y in link and x not in Trash
-- div,2
all f,l : File | f->l in link and l not in Trash
-- div,1
all f1,f2 : File | f1 not in Trash and f2 not in Trash
-- div,1
all f:File | f.link not in Trash and f not in Trash
-- div,2
all f1,f2 : File | f1->f2 in link and f1 not in Trash
-- div,1
all f1, f2:File | f1 -> f2 in link and (f2 not in Trash)
-- div,1
all f : File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
-- div,1
all f: File | f.link not in Trash and no f.link & Trash
-- div,1
all x, y : File | x->y in link and y not in Trash and x not in Trash
-- div,1
all x, y : File | x->y in link and x not in Trash and y not in Trash
-- div,2
(all t,u : File | (t in Trash or u in Trash) implies t->u not in link)
-- div,1
all x,y :File | (x->y in link) implies x not in Trash and y not in Trash
-- div,10
all f1 : File | no t: Trash | f1 in t or f1.link in t
-- div,1
(all t,u : File | t->u in link implies t not in Trash and u not in Trash)
-- div,6
all f,g:File | f->g in link implies f not in Trash and g not in Trash
-- div,3
all f1,f2 : File | f1->f2 in link and f1 not in Trash and f2 not in Trash
-- div,1
all f,lk1 : File | f->lk1 in link implies lk1 not in Trash and f not in Trash
-- div,1
all f1,f2 : File | f1->f2 in link implies f1 not in Trash and f2 not in Trash
-- div,14
all x: File, y: File | x->y in link implies x not in Trash and y not in Trash
-- div,2
all f : File | isLink[f] and f not in Trash
}

pred isLink[f : File]{
some g : File | f->g in link
-- div,1
all f : File | all lk : File | f->lk in link implies ((f not in Trash) and (lk not in Trash))
-- div,1
all f1, f2 : File | (f1->f2 in link or f2->f1 in link) implies (f1 not in Trash and f2 not in Trash)
-- div,1
all f:File | isLinked[f] implies f not in Trash
}

pred isLinked(f:File){
some f2:File | f->f2 in link or f2->f in link
-- div,1
all f:File | isLinked[f] implies f not in Trash
}

pred isLinked(f:File){
some f2:File | f->f2 in link implies f2 in Trash
-- div,1
