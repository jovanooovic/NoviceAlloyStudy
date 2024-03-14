link.Trash
-- div,4
link in Trash
-- div,1
link -> Trash
-- div,1
Trash <: link
-- div,2
File.link.Trash
-- div,1
Trash.link.Trash
-- div,2
Trash link . link
-- div,1
link & Trash.link
-- div,1
Trash.link.link
-- div,1
no Trash.link.Trash
-- div,1
link.link.Trash
-- div,1
link.File -> Trash
-- div,1
File.link -> Trash
-- div,1
some link.Trash.File
-- div,1
all t : Trash | link.t
-- div,3
no Trash.link in Trash
-- div,1
link.Trash & link.link
-- div,1
link & File.link.Trash
-- div,1
(Trash.link) :> Trash
-- div,3
link.File -> File.Trash
-- div,1
link.Trash & File.Trash
-- div,1
link.Trash:>Trash
-- div,4
Trash <: link.Trash
-- div,1
some File.link in Trash
-- div,1
link.Trash -> File.Trash
-- div,1
Trash.link => link.Trash
-- div,1
link.Trash implies Trash
-- div,1
Trash.link & ~Trash.link
-- div,1
all t : Trash | link.t & t
-- div,1
File in Trash = Trash.link
-- div,1
all t : Trash | link.t + t
-- div,1
Trash.link in Trash->Trash
-- div,1
all t : Trash | t.link.Trash
-- div,1
link.Trash & File.link.Trash
-- div,1
Trash.link & Trash.File.link
-- div,1
some link.Trash => link.Trash
-- div,1
link.link & Trash = link.link
-- div,1
link.Trash implies link.Trash
-- div,1
link.Trash implies Trash.~link
-- div,1
some link.Trash => ~link.Trash
-- div,3
Trash <: link => link :> Trash
-- div,1
(link.link) & Trash = link.link
-- div,1
all t : Trash, f : File | f.link
-- div,1
all t : Trash, f : File | link.t
-- div,1
Trash.link & Trash .~link
-- div,2
link.Trash implies ^link in Trash
-- div,1
Trash.link & (link.link in Trash)
-- div,1
all f,g: File | f.link.g in Trash
-- div,1
(Trash <: link) => (link :> Trash)
-- div,1
File.link & Trash => File in Trash
-- div,1
all t : Trash, f : File | f.link.t
-- div,1
link.Trash & (Trash.link in Trash)
-- div,2
link -> Trash implies File -> Trash
-- div,1
all l : Trash.link | l => ~(l.link)
-- div,1
Trash <: link implies link :> Trash
-- div,3
File.link  & Trash => File in Trash
-- div,1
link.Trash & link.link.Trash
-- div,2
link in Trash implies ^link in Trash
-- div,1
all t : Trash, f : File | no f.link.t
-- div,3
(Trash . link) implies (link . Trash)
-- div,1
all f : File | no (f.link & f) in Trash
-- div,7
(Trash <: link) implies (link :> Trash)
-- div,1
link.File -> Trash implies File -> Trash
-- div,1
link -> Trash implies File.link -> Trash
-- div,1
File.link -> Trash implies File -> Trash
-- div,4
all f : File | f.link
f=Trash&link=Trash
-- div,2
all f:File | f in Trash -> f.link in Trash
-- div,1
all f : File | f.link in Trash & f in Trash
-- div,2
all f : File | f.link in Trash -> f in Trash
-- div,1
all f : File | f in Trash -> f.link in Trash
-- div,1
File.link -> Trash implies some File -> Trash
-- div,1
link -> Trash implies File.link -> link.Trash
-- div,1
all f : File | no f.link in Trash & f in Trash
-- div,3
all f : File | no f.link in Trash + f in Trash
-- div,1
all f:File | f.link & Trash implies f in Trash
-- div,1
all f,g : File | f.link.Trash and g.link.Trash
-- div,1
(some File.link in Trash) implies some Tash.link
-- div,1
no f: File - Trash | f.^link  and f.^link in Trash
-- div,1
all f1, f2 : File | f1.link in Trash & f1 in Trash
-- div,1
all f : File | (Trash.link.f) implies (f in Trash)
-- div,2
all f: File | link in Trash implies f.link in Trash
-- div,1
all l : File.link | l in Trash => ~(l.link) in Trash
-- div,1
all f:File | (no f in Trash) & (f.link in Protected)
-- div,1
all f: File | f.link in Trash implies f->link in Trash
-- div,1
all f, f1 : File | f->f1 in link & Trash => f in Trash
-- div,1
all f : File | some f.link in Trash implies link.f in Trash
-- div,1
all f : File | f.link and f in Trash implies f.link in Trash
-- div,1
all f : File | some f.link & f in Trash implies f.link in Trash
-- div,2
all f : File | f in Trash => f.link in Trash

File.~File in iden
-- div,1
all f, f1 : File | f->f1 in link and f->f1 in Trash => f in Trash
-- div,1
all x : Trash, y : File | x->y in link implies y in Trash
File.link.Trash
-- div,1
all fl: File.link | all f: File | fl in Trash and fl.link.f implies f in Trash
-- div,1
all fl: File.link | all f: File | fl in Trash and fl.link->f implies f in Trash
-- div,1
all x : Trash, y : File | x->y in link implies y in Trash
link.Trash.link.Trash
-- div,1
