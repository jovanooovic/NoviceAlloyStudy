~(no link)
-- div,1
File = link
-- div,1
no(no link)
-- div,1
Trash.link
-- div,1
link & Trash
-- div,1
link in Trash
-- div,1
link no Trash
-- div,1
no link & Trash
-- div,5
no Trash & link
-- div,1
no Trash :> link
-- div,1
no link <: Trash
-- div,1
no link in Trash
-- div,2
Trash not in link
-- div,2
link not in Trash
-- div,8
no (link & Trash)
-- div,1
no (link in Trash)
-- div,1
no Trash.File.link
-- div,1
all f:File | link.f
-- div,1
(Trash-link) = Trash
-- div,1
no File.link = Trash
-- div,1
no t: Trash | t.link
-- div,2
no t: Trash | ^t.link
-- div,1
File.link & Trash
-- div,1
no File.link in Trash
-- div,12
no (File . File.link)
-- div,4
all f: Trash | f.link
-- div,1
no (File.link . File)
-- div,1
no t: Trash | ~t.link
-- div,1
link in (File - Trash)
-- div,1
all f : File |  link.f
-- div,1
no ~link.link in Trash
-- div,1
no File . link in Trash
-- div,1
all f,x:File | f.link x
-- div,1
no (File.link in Trash)
-- div,1
no (File.link && Trash)
-- div,1
all l: link | no l&Trash
-- div,1
all l: link| l = l
-- div,1
no File.link.univ & Trash
-- div,1
no t:Trash{link not none}
-- div,1
all f: Trash | none f.link
-- div,1
all l:link | l not in Trash
-- div,3
all f: File | no f in Trash
-- div,1
no t:Trash{ t.link not none}
-- div,1
all f:File | no link in Trash
-- div,1
all f : link | f not in Trash
-- div,1
all f: File | f.link no Trash
-- div,1
all f : File | f.link <: Trash
-- div,1
no t:Trash{Trash.link not none}
-- div,1
all f:File | no link.f in Trash
-- div,1
all f:File | no f.link in Trash
-- div,8
all f,x:File | f.link x in link
-- div,1
all f: File | no f.link in Trash
-- div,7
all l: File.link | no l in Trash
-- div,2
all f : File | ~ f.link in Trash
-- div,1
all f:File | no (f.link in Trash)
-- div,1
all f : File | no f.link in Trash
-- div,1
all f:File | no (link.f in Trash)
-- div,1
all l: File.link | none l in Trash
-- div,1
all f1, f2 : link | f1 not in Trash
-- div,1
all f : File | f->link not in Trash
-- div,5
all l: File.link | l in Trash = none
-- div,1
all f : File | (f->link) not in Trash
-- div,1
all l: File.link | no l in Trash.link
-- div,2
no l: link | l in File -> Trash
-- div,1
all f: File | f.link => (f !in Trash)
-- div,1
all f : File | f.link implies no Trash
-- div,1
all file: File | no file.link in Trash
-- div,1
all f : File | lone f->link not in Trash
-- div,1
all f:File |  (link.f) implies f & Trash
-- div,1
all f: File | f.link => f.link !in Trash
-- div,1
all f:File |f.link implies f not in Trash
-- div,1
all f:File | link.f implies f not in Trash
-- div,3
all file: File | file.link in Trash = none
-- div,1
all f: File | f.link => (f.link !in Trash)
-- div,1
all f,x:File | f->x in link implies x-Trash
-- div,1
all x:File | x.link implies  x not in Trash
-- div,1
all x:File | link.x implies  x not in Trash
-- div,1
all f:File |  link.f  implies f not in Trash
-- div,6
all f : File | f.link implies f not in Trash
-- div,2
all f:File |  (link.f implies f not in Trash)
-- div,1
no Trash.link
all f: File.link | no f in Trash
-- div,1
all f:File | some f.link implies no f.link in Trash
-- div,1
all	f1, f2:File | f1->f2 in link => f1->f2 in Trash
-- div,1
all	f1, f2:File | f1->f2 in link => f1->f2 not in Trash
-- div,1
all f,x:File | f.link = x in link implies x not in Trash
-- div,1
not some f1,f2:File | f1->f2 in link and f1->f2 in Trash
-- div,1
not some f1, f2:File | (f1->f2 in link) and (f1->f2 in Trash)
-- div,1
