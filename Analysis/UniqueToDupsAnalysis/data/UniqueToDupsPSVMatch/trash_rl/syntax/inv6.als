link lone
-- div,1
File.links
-- div,1
lone f:File
-- div,1
lone link.f
-- div,1
lone f.link
-- div,1
one File.links
-- div,1
lone Link.Link
-- div,1
lone File.links
-- div,2
link.~link in id
-- div,1
link.-link in iden
-- div,1
-link.link in iden
-- div,2
all f:File | f.lone
-- div,1
-link .link in iden
-- div,1
-link . link in iden
-- div,14
lone link: File.link
-- div,1
- link . link in iden
-- div,1
File : lone file.link
-- div,1
all f:File lone f.link
-- div,1
file.link -> lone file
-- div,1
~link . link in iden

/* There is no deleted link. */
-- div,1
all f | File :one f.link
-- div,1
all f:File | lone f.links
-- div,2
all f: File | one f.links
-- div,1
all f : File | lone f.Link
-- div,1
all f: File | lone f.links
-- div,1
All f : File | some f.link
-- div,1
f:File| f.link -> lone File
-- div,1
all f in File | lone f.link
-- div,1
f:File | f.link -> lone File
-- div,1
link : File.link | lone link
-- div,1
all link in File.link | link
-- div,1
file in File : lone file.link
-- div,1
file: File |  lone file.^link
-- div,1
all f:File{
f.link = one File
}
-- div,1
all f : File.link | f.link lone
-- div,1
all f:File{
f.link = lone File
}
-- div,1
all file in File : lone file.link
-- div,1
all file : File. | lone file.link
-- div,1
all file : File. | lone file.^link
-- div,1
all f : File.link | f.link is lone
-- div,1
all f: File | lone f.links in File
-- div,1
all file: File |  file.^link = lone
-- div,1
file in File | file.link -> lone file
-- div,1
all f: File, lone g: File | f.link = g
-- div,1
all f: File | lone g: File | f.file = g
-- div,1
all file: File |  file.^link = lone file
-- div,1
all f:File | lone l: File | f.link = l
}
-- div,1
all f: File | lone l: File | l in f.links
-- div,1
all file : File. | file.link -> lone file
-- div,1
all file : File. | file.^link -> lone file
-- div,1
all f1: File | lone f2: File | f1.link == f2
-- div,1
all f:File | lone l: File | f.link exactly l
-- div,1
link: File.link, file:File |.link -> lone file
-- div,2
all file : File. | file - file.link  lone file
-- div,1
all link : File.link | f: File | link -> lone file
-- div,1
link : File.link | f: File | one link -> lone file
-- div,1
all link : File.link | f: File | one link -> lone file
-- div,1
all f1,f2, f3 | f1->f2 in links and f1->f3 in links implies f2=f3
-- div,1
all f, f', f'': File | f.link = f'' and f'.link = f'' implies f = f'
-- div,1
all f1,f2,f3 : File | f1->f2 in link and f1->f3 in links implies f2=f3
-- div,1
all f1,f2,f3 : File | f1->f2 in links and f1->f3 in links implies f2=f3
-- div,1
all e1,e2 : univ, f : File | and e1->f in link and e2->f in link implies e1 = e2
-- div,1
all e1,e2 : univ, all f : File | e1->f in link and e2->f in link implies e1 = e2
-- div,2
all e1,e2 : univ , all f : File | e1->f in link and e2->f in link implies e1 = e2
-- div,1
all e1,e2 : univ, f : File | e1->f in link and e2->f in link implies e1 = e2, lone link.f
-- div,1
all d,e1,e2 : univ, all f : File | d in File and e1->d in link and e2->d in link implies e1 = e2
-- div,1
