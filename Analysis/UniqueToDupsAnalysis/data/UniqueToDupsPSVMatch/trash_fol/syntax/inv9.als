all x, y |
-- div,1
(all t,u,v : File
-- div,1
all x,y,z : File |
-- div,2
all f,lkdf1,lkdf2 : File
-- div,2
all f:File | f in link implies no f in .*link
-- div,1
all f,g,h | f->g in link implies g->h not in link
-- div,1
all f:File | f->g in link implies g->h not in link
-- div,1
all f:File | some f':(File - f) | f.link in f'.link
-- div,1
all f : File | f->g in link implies g->h not in link
-- div,3
all f,g:File | f->g in link implies g->h not in link
-- div,1
all f1, f2, f3:FIle |f1->f2 in link => f2->f3 not in link
-- div,1
all f,u,t: File |f->t in link and t->u in link implies t/=u
-- div,1
all f2, f3, f4 : File | f1->f2 in link => f2->f3 not in link
-- div,1
all f,g:File | isLink[f] and isLink[g] implies f->g not in link
-- div,1
all f1, f2, f3 : Files | f1->f2 in link implies f3->f2 not in link
-- div,1
(all t,u,v,x : File | (t->u in link and v->x in link implies u->v not in link)
-- div,2
all f:File | (all g:File | f->g in link) implies (all h:File | g->h not in link)
-- div,1
all f1, f2, f3 : File | f1->f2 in link => not some f3:File | f2->f3 in link
all f1, f2 : File
-- div,1
all x,y : File | isLinked[f] implies not isLinked[y]

}

/* If a link is deleted, so is the file it links to. */

pred isLinked[f:File]{
some g:File | g->f in link
-- div,1
all x, y, z : File | isLinked[y] implies islink[z]
}

pred isLink{
some g:File | f->g in link
}

/* If a link is deleted, so is the file it links to. */

pred isLinked[f:File]{
some g:File | g->f in link
-- div,1
