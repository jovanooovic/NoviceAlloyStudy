all f:File | f.link not in File.link
-- div,1
all f1, f2:File | f2 in f1.link and no f2.link
-- div,2
all x,y,z : File | x->y in link and y->z not in link
-- div,1
no f:File | f in File.link and f.link in File.link
-- div,1
all f1, f2, f3 : File | f1->f2 in link implies f3->f2 not in link
-- div,1
all f1,f2,f3:File | f1->f2 in link and f2->f3 not in link
-- div,2
all g,x:File | not isLink[g] and not isLink[x]
}

pred isLink[f:File]{
some g:File | g->f in link
-- div,2
all x,y : File | isLinked[x] implies not isLinked[y]
}

pred isLinked[f:File]{
some g:File | g->f in link
-- div,1
all f1,f2 : File | is_link[f1] implies not is_link[f2]
}

pred is_link[f : File]{
some g : File | f->g in link
-- div,1
all x : File | all y : File | all z : File | x->y in link and y->z not in link
-- div,1
all x : File | all y : File | all z : File | x->y in link and x->z in link implies y!=z
-- div,1
