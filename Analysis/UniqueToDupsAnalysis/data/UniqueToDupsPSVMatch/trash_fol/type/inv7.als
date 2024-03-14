1
-- div,1
no Trash & link
-- div,1
no link in Trash
-- div,10
no (link & Trash)
-- div,1
link not in Trash
-- div,1
not link in Trash
-- div,1
no File.link.Trash
-- div,1
no File.link in Trash
-- div,5
no Trash.link in Trash
-- div,2
all f:File | no f:>link
-- div,1
no (File in link & Trash)
-- div,1
all l: link | no l in Trash
-- div,1
all l:link | l not in Trash
-- div,1
no ((File in link) & Trash)
-- div,1
all f:File | no f.link.Trash
-- div,1
all l: link | l not in Trash
-- div,1
all l:link | no link in Trash
-- div,1
all f : link | f not in Trash
-- div,4
all l : link | l not in Trash
-- div,11
all l:link | l not in Trash.l
-- div,1
all l:link | l not in l.Trash
-- div,2
all f,g:File | no f->g in link
-- div,1
all  l : link | l not in Trash
-- div,1
all l:link | l not in l->Trash
-- div,1
all f:File | no f.link in Trash
-- div,10
all f:File | no link.f in Trash
-- div,1
all f: File | no f.link in Trash
-- div,2
all f:File | no f.^link in Trash
-- div,1
all f:File | no f->link in Trash
-- div,1
no ((File in File.link) & Trash)
-- div,1
all f:File | no f:>link in Trash
-- div,1
all f : File | link not in Trash
-- div,1
all f:File | none f.link in Trash
-- div,1
all f:File | f:>link not in Trash
-- div,4
all f:File,l:link | no l in Trash
-- div,1
all f:File | f->link not in Trash
-- div,3
all f:File | f<:link not in Trash
-- div,1
all l:link | no link.File in Trash
-- div,1
all l:link | no File.link in Trash
-- div,1
all f:File | f in link not in Trash
-- div,1
all f : File | f->link not in Trash
-- div,1
all f1,f2:File | f1->f2 not in Trash
-- div,2
(all t,u : File | t->u not in Trash)
-- div,1
no f:File | f in Trash and f in link
-- div,1
all f1,f2:File | (f1->f2) not in Trash
-- div,1
all f1,f2 : File | f1 -> f2 not in Trash
-- div,1
all f,g : File | f->g and g not in Trash
-- div,1
all l:link | File.link not in Trash
-- div,1
all x, y : File | x->y and y not in Trash
-- div,1
not some f1,f2: File | f1->f2 not in File
-- div,2
all l:link | link.File not in Trash
-- div,1
all f,l:File | (l in f.link) not in Trash
-- div,1
all f:File | f.link implies f not in Trash
-- div,4
all f:File | no (f in link and f in Trash)
-- div,1
all f:File | f->link implies f not in Trash
-- div,1
all disj f1,f2 : File | f1->f2 not in Trash
-- div,1
all f:File | f:>link implies f not in Trash
-- div,2
all disj f1,f2 : File |some (f1->f2) in link
-- div,2
all x,y : File | (x->y in link) not in Trash
-- div,1
all f1,f2:File | f1->f2 in link not in Trash
-- div,1
all f:File | f in link implies f not in Trash
-- div,15
all disj f1,f2 : File | (f1->f2) not in Trash
-- div,1
all f1,f2:File | f1->f2 implies f2 not in Trash
-- div,1
all f:File | no (f in File.link and f in Trash)
-- div,1
all f : File | f in Trash implies f not in link
-- div,1
all f1,f2 : File | f1 -> f2 in link not in Trash
-- div,1
all f:File,l:link | f.l not in Trash
-- div,1
all f:File,l:link | f in l implies l not in Trash
-- div,1
all f:File | f in link implies f.link not in Trash
-- div,1
all f:File | f in link implies f.^link not in Trash
-- div,1
all f1,f2:File | f1->f2 link implies f2 not in Trash
-- div,1
not some f1, f2: File | f1->f2 in link & f2 in Trash
-- div,2
all f,g:File | f->g in link implies f->g not in Trash
-- div,2
all f,x : File | f->x in link implies f->x not in Trash
-- div,2
all x,y : File | x->y in link implies x->y not in Trash
-- div,1
all f,t : File | f->t in link implies f->t not in Trash
-- div,1
all f1,f2:File| f1->f2 in link implies f2 not int Trash
-- div,1
all x, y : File | x->y in link implies x->y not in Trash
-- div,1
all f,g:File | f->g in link implies f and g not in Trash
-- div,2
(all t,u : File | t->u in link implies t->u not in Trash)
-- div,4
all f,g:File | f->g in link implies (f and g not in Trash)
-- div,1
all f,t : File | f->t in link implies f and t not in Trash
-- div,4
all x, y : File | x->y in link implies (x->y) not in Trash
-- div,1
all f,t : File | f->t in link implies t and f not in Trash
-- div,1
all f1,f2:File| f1->f2 in link implies f1 and f2 not in Trash
-- div,1
all f:File | f in link and f.link implies f.^link not in Trash
-- div,1
all f1,f2:File| f1->f2 in link implies (f1 and f2 not in Trash)
-- div,1
all f:File | (f in link and f.link) implies f.^link not in Trash
-- div,1
all f1,f2:File| f1->f2 in link implies (f1 and f2 in File-Trash)
-- div,1
all x,y : File | (x->y) implies (x not in Trash) and (y not in Trash)
-- div,1
all disj f1,f2 : File |(f1->f2) in link implies (f1->f2) not in Trash
-- div,1
all f1,f2:File, t:Trash | f1->f2 in link implies f1 and f2 not in Trash
-- div,1
all f1, f2 : File | f1->f2 in File implies f1 not in Trash and f2 not in Trash
-- div,1
all f:File | isLink[f] implies f not Trash
}

pred isLink[f:File]{
some g:File | f->g in link
-- div,2
all f:File | isLink[f] implies f not Trash
}

pred isLink[f:File]{
some g:Filel | f->g in link
-- div,1
all x,y :File | (x->y in link or Protected and y->x in link) implies x not in Trash and y not in Trash
-- div,2
all x,y :File and Protected | (x->y in link and y->x in link) implies x not in Trash and y not in Trash
-- div,1
