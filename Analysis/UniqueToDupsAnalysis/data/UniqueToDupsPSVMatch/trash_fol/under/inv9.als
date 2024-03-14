all f1, f2 : File | f1->f2 in link implies f1 != f2
-- div,1
all f,g:File | f->g in link implies g->f not in link
-- div,1
all f1,f2,f3:File | f1->f2 in link and f2->f3 in link implies f1=f2
-- div,1
(all t,u : File| some x : File | t->u in link implies u->x not in link)
-- div,1
(all t,u,v,x : File | (t->u in link and v->x in link) implies u->v not in link)
-- div,1
all f1,f2,f3,f4:File | f1->f2 in link and f3->f4 in link implies f2->f3 not in link
-- div,1
all x : File | all y : File | all z : File | x->y in link and y->z in link implies y!=z
-- div,1
