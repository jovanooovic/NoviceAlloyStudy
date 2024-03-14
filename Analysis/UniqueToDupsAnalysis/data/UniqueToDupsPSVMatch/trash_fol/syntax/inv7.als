/* There are no links. */
-- div,2
all f
-- div,1
no trash.link
-- div,1
all link.File
-- div,7
no links in Trash
-- div,1
all links not in Thrash
-- div,1
all f->f' in link | true
-- div,1
no (File in link & Trass)
-- div,1
all l : Link | l not in Trash
-- div,1
all l:Link | link not in Trash
-- div,1
all f:File, a,b:File, c:Trash |
-- div,1
all f,g:File | f,g not in Trash
-- div,1
all f:FIle | no f.link in Trash
-- div,1
all f : File  | f.l not in Trash
-- div,1
all f1,f2:File | f1 -> f2 in Link
-- div,1
all f: Files | no f.link in Trash
-- div,2
all f:file | none f.link in Trash
-- div,1
all f1,f2:File | f1->f2 in link =>
-- div,1
all f1->f2 : link | f2 not in Trash
-- div,1
all (f1,f2) : link | f2 not in Trash
-- div,1
all f1,f2 : File | f1,f2 not in Trash
-- div,1
(all t,u : File | t->u in link implies)
-- div,1
(all t,u : File | t->u in link implies )
-- div,6
all f1 -> f2 : link | no t: Trash | f2 in t
-- div,1
all f1 -> f2 in link | no t: Trash | f2 in t
-- div,1
all f,t : File | f->t in link | t not in Trash
-- div,2
all f : File | some l : f.link | f->l in links
-- div,1
all f : File | isLink[f] implies f not in Trash
-- div,1
all f,g:File | f->g in link and (f,g) not in Trash
-- div,1
all f,l : File | f->l in linked and l not in Trash
-- div,1
all f,g:File | f->g in link implies f,g not in Trash
-- div,1
all f1,f2 : File | f1->f2 in link => not f1 in trash
-- div,4
all f1,f2 : File | f1->f2 in link => not (f1 in trash)
-- div,1
all f,t : File |( f->t in link)) implies t not in Trash
-- div,1
all f1,f2:File| f1->f2 in link implies f1,f2 not in Trash
-- div,1
all f1,f1:File | f1 -> f2 in link implies f2 not in Trash
-- div,1
all f1,f2:File | f1 -> f2 in Link implies f1 not in Trash
-- div,1
all f,lk1 : File | f->lk1 in link implies lkd not in Trash
-- div,1
all (f1->f2):link | (f1 not in Trash) and (f2 not in Trash)
-- div,1
all f:File | f in Trash implies no f2:File | f1->f2 in link
-- div,1
all f,t : File,  | f->t in link implies f and t not in Trash
-- div,4
all f,t : File | f->t in link implies f and t not in Trash*/
-- div,3
all f1, f2 : File | f1->f2 in link implies f1,f2 not in Trash
-- div,1
all f,t : File | f->t in link implies t not in Trash

/* There are no links. */
-- div,1
all x, y : File | x->y in and x not in Trash and y not in Trash
-- div,1
all f, f1: File | f->f1 in link implies f1 not in Trash

/* There are no links. */
-- div,3
all f : File | (all t : File f->t in link) implies t not in Trash
-- div,1
all f : File | (all t : File | f->t in link) implies t not in Trash
-- div,1
all f:File |no (f in link and f in Trash)

/* There are no links. */
-- div,2
all f,g : File | f->g in link implies f not in Trash an g not in Trash
-- div,1
all f, f1: File | f->f1 implies not in Trash

/* There are no links. */
-- div,1
all f:File |f in link implies f not in Trash

/* There are no links. */
-- div,1
all x, y : File | x->y in link implies x not in Trash) and y not in Trash
-- div,1
all f, f1: File | f->f1 implies File not in Trash

/* There are no links. */
-- div,1
all x, y : File | x->y in link implies (x (not in Trash) and y (not in Trash))
-- div,1
all f, f1: File | f->f1 implies f.link not in Trash

/* There are no links. */
-- div,1
all f, f1: File | f->f1 implies f1.link not in Trash

/* There are no links. */
-- div,1
(all t,u : File | t in Trash or u in Trash implies t->u not in link)

/* There are no links. */
-- div,1
all f1 : File | all f2: f1.link | no t: Trash | f2 in t

/* There are no links. */
-- div,1
all f, f1: File | f->f1 implies f.link and f1.link not in Trash

/* There are no links. */
-- div,2
all f:File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
g:File | f->g in link
-- div,3
all f:File | isLink[f] implies f not in Trash
}

pred isLink[f:File]{
g:File | g->f in link
-- div,2
all f:FIle | isLink(f) implies f not Trash
}

pred isLink[f:File]{
some g:File | f->g in link
-- div,1
all f, f1: File | f.links f1 implies f.link and f1.link not in Trash

/* There are no links. */
-- div,1
all f:File | isLink[f]
}

/* There are no links. */

pred isLink[f]{
some g:File | g->f in link
-- div,1
all f:File | isLinked[f] implies f not in Trash
}

pred isLinked[f:File]{
g:File | g->f in link
-- div,1
all f:File | isLink (f) implies f not in Trash
}

pred isLink (f:File){
some g:File | f->g in link
-- div,1
all f:File | isLinked[f] implies f not in Trash
}

pred isLinked[g:file]{
some f:File | f->g in link
-- div,1
all f : File | isLink[f] implies f not in Trash
}

pred isLink[f : Link]{
some g : File | f->g in link
-- div,1
all f1 : File | is_link[f] implies f not in Trash
}

pred is_link[f : File]{
some g:File | f->g in link
-- div,2
all f1 : File | is_link[f1] implies f not in Trash
}

pred is_link[f : File]{
some g:File | f->g in link
-- div,1
all f:File | isLinked[f] implies f not in Trash
}

pred isLinked(f1:File){
all f2:File | f1 -> f2 in Link
-- div,1
all f:File | isLink[f] implies f not in Trash
}

/* There are no links. */

pred isLink[f]{
some g:File | g->f in link
-- div,1
all f:File | isLink[f] implies not in Trash
}

/* There are no links. */

pred isLink[f:File]{
all g:File | g->f in link
-- div,1
all f:File | isLink[f] implies not in Trash
}

/* There are no links. */

pred isLink[f:File]{
all f:File | f->g in link
-- div,1
all f:File | isLink[f] implies f not in Trash
}
}

/* There are no links. */

pred isLink[f:File]{
some g:File | g->f in link
-- div,1
all f:File | isLinked[f] implies f not in Trash
}

/* There are no links. */

pred isLinked(f1:File){
all f2:File | f1 -> f2 in Link
-- div,1
all f:File | isLink[f] implies not in Trash
}

/* There are no links. */

pred isLink[f:File]{
all f:File | isLink[f] implies f not in Trash
-- div,1
all f : File | is_linked[f] implies f not in Trash
}

pred is_linked[f : File]{
some f1 : File | f1->f in link
}


/* The set of files in the trash. */
sig Trash in File {}
/* The set of protected files. */
sig Protected in File {}

/* The trash is empty. */

pred is_link[f : File]{
some f1 : File | f->f1 in link
-- div,1
