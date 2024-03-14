-- equiv pair start,152
no link.link
-- div,33
no File.link.link
-- div,1
all f:File| no f.link.link
-- div,5
all l : File.link | no l.link
-- div,4
all l : File.link | (#l.link)=0
-- div,1
all f:File | some link.f implies no f.link
-- div,1
all f1, f2:File | f2 in f1.link implies no f2.link
-- div,1
all f:File|(all l :f.link | no l.link)
-- div,5
all f, f1, f2 : File | (f->f1).(f1->f2) not in link.link
-- div,1
no f,f2:File | f in File.link and f2 in f.link
-- div,1
all f,u,t: File |f->t in link implies t->u not in link
-- div,2
all f,g,h:File | f->g in link implies g->h not in link
-- div,19
all x, y, z : File | x->y in link implies z->x not in link
-- div,1
all f, l, k : File | f->l in link implies l->k not in link
-- div,2
all x,y,z:File | x->y in link implies y->z not in link
-- div,11
(all t,u,x : File | t->u in link implies u->x not in link)
-- div,1
all f,x,y :File |f->x in link implies x->y not in link
-- div,2
all f,g,h:File| f->g in link implies not g->h in link
-- div,4
all f1: File | all f2 : f1.link | no f2.link
-- div,1
all f : File | all l : f.link | (#l.link)=0
-- div,1
all f1,f2:File | f1->f2 in link implies f2.link=none
-- div,1
all f,l1,l2 : File | f->l1 in link  implies l1->l2 not in link
-- div,1
all f1, f2, f3:File |f1->f2 in link => f2->f3 not in link
-- div,19
all f1,f2,f3:File | f1->f2 in link implies f3->f1 not in link
-- div,1
not some l1, l2, f : File | (l1->l2 in link) and (l2->f in link)
-- div,1
all f1,f2,f3 : File | not (f1 -> f2 in link and f2 -> f3 in link)
-- div,2
all f1,f2,f3: File | f1->f2 in link implies not f2->f3 in link
-- div,2
not some f1,f2,f3:File | f1->f2 in link and f2->f3 in link
-- div,3
not some l1, l2, l3 : File | l1->l2 in link && l2->l3 in link
-- div,1
all x : File, y, t : File | x -> y in link implies y -> t not in link
-- div,1
all f,lkdf1,lkdf2 : File | f->lkdf1 in link implies lkdf1->lkdf2 not in link
-- div,2
(all t,u : File| all x : File | t->u in link implies u->x not in link)
-- div,1
all x : File | all y,z : File | x->y in link implies y->z not in link
-- div,1
all x,y : File | x->y in link implies all z : File | y->z not in link
-- div,1
all f1, f2, f3 : File | f1->f2 in link implies f1 != f2 and f2->f3 not in link
-- div,1
all x : File , y : File , z : File | x->y in link implies y->z not in link
-- div,1
all f1,f2:File | f1->f2 in link implies no f3:File | f2->f3 in link
-- div,1
all f1, f2:File | f1 -> f2 in link implies all f3:File | f2->f3 not in link
-- div,1
all f1,f2:File | f1->f2 in link => not some f3:File | f2->f3 in link
-- div,4
all f1, f2, f3 : File | f1->f2 in link => not some f3:File | f2->f3 in link
-- div,1
all f1,f2:File | isLinked[f1] implies f1->f2 not in link
}

pred isLinked(f:File){
some f2:File | f2->f in link
-- div,1
all f,g:File | isLink[f] and isLink[g] implies f->g not in link
}

pred isLink (f:File){
some g:File | f->g in link
-- div,2
all f1,f2 : File | f1->f2 in link implies not is_link[f2]
}

pred is_link[f : File]{
some f1 : File | f->f1 in link
-- div,1
all f,g : File | isLinked[f] and isLinked[g] implies f->g not in link
}

pred isLinked[f:File]{
some g : File | g->f in link
-- div,1
all f1,f2:File | is_link[f1] and is_link[f2] implies f1->f2 not in link
}

pred is_link[f : File]{
some g : File | f->g in link
-- div,1
all f1,f2 : File | is_link[f1] and is_link[f2] implies f1->f2 not in link
}

pred is_link[f : File]{
some g : File | f->g in link
-- div,2
all f1,f2 : File | (isLink[f1] and f1->f2 in link) implies not isLink[f2]
}

pred isLink[f1:File]{
some f2 : File | f1->f2 in link
-- div,1
-- equiv pair end
