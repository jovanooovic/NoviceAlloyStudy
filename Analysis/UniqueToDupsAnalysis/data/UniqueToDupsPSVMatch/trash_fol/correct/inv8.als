no link
-- div,46
no link.File
-- div,3
no File.link
-- div,2
all f:File | no f.link
-- div,9
all l : File.link | no l
-- div,2
all f:File | f.link=none
-- div,1
all f:File | #(f.link) = 0
-- div,6
no f:File | f in File.link
-- div,1
all f:File | #(f.link) <= 0
-- div,2
all f,t : File |f->t not in link
-- div,4
all f,g: File | f->g not in link
-- div,9
(all t,y : File | t->y not in link)
-- div,1
all x,y: File | x->y not in link
-- div,23
(all t,u : File | t->u not in link)
-- div,3
all f,x :File |f->x not in link
-- div,2
all f,l : File | f->l not in link
-- div,3
no f1,f2:File | f1->f2 in link
-- div,1
all f, f1 : File | f->f1 not in link
-- div,1
not some l, f : File | l->f in link
-- div,2
all f,lkd : File| f->lkd not in link
-- div,1
all f1,f2:File | f1->f2 not in link
-- div,16
all f1,f2 : File | not f1->f2 in link
-- div,4
not some f1,f2:File | f1->f2 in link
-- div,10
all x: File, y: File | x->y not in link
-- div,4
all f : File | all l : f.link | no l
-- div,2
not (some f1 : File, f2 : File | f1->f2 in link)
-- div,1
all x : File | all y : File | x->y not in link
-- div,1
all f : File | all lkd : File | f->lkd not in link
-- div,2
all g:File | not isLink[g]
}

pred isLink[f:File]{
some g:File | g->f in link
-- div,2
all f:File | not isLink[f]
}

pred isLink[f:File]{
some g:File | g->f in link
-- div,8
all f:File | not isLink[f]
}

pred isLink (f:File){
some g:File | f->g in link
-- div,1
all f : File | not isLink[f]
}

pred isLink[f:File]{
some g:File | g->f in link
-- div,1
all f:File | not isLinked[f]
}

pred isLinked[f:File]{
some g:File | g->f in link
-- div,2
all f:File | not isLinked[f]
}

pred isLinked(f:File){
some g:File | g->f in link
-- div,1
all f:File | not isLinked[f]
}

pred isLinked(f:File){
some f2:File | f2->f in link
-- div,1
all f : File | not is_link[f]
}

pred is_link[f : File]{
some g : File | f->g in link
-- div,1
all x: File | not isLink[x]
}

pred isLink[f1 : File]{
some f2 : File | f1->f2 in link
-- div,1
all f : File | not is_link[f]
}

pred is_link[f : File]{
some f1 : File | f->f1 in link
-- div,2
all f:File | not isLinked[f]
}

pred isLinked[f1:File]{
some f2 : File | f1->f2 in link
-- div,1
all x: File | not isLinked[x]
}

pred isLinked[f1 : File]{
some f2 : File | f2->f1 in link
-- div,1
all f:File | not isLinked[f]
}

pred isLinked[f:File]{
some g:File | g->f in link
}

pred isLink[f:File]{
some g:File | g->f in link
-- div,2
all f:File | not isLinked[f]
}

pred isLinked[f:File]{
some g:File | g->f in link
}

/* There are no links. */

pred isLink[f:File]{
some g:File | g->f in link
-- div,1
