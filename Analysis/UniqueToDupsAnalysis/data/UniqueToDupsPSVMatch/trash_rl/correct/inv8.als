no link
-- div,86
no link.File
-- div,7
no File.link
-- div,30
File.link = none
-- div,1
link = none -> none
-- div,1
all f:File | no f.link
-- div,22
all x : File | no x.link
-- div,1
all f : File | no f->link
-- div,1
all f:File | f.link = none
-- div,3
all f:File | no f.link & File
-- div,1
all file: File | file.link = none
-- div,1
all f1,f2 : univ | f1->f2 not in link
-- div,1
all f1,f2:File | not f1->f2 in link
-- div,1
not some f1,f2:File | f1->f2 in link
-- div,2
all f : File | all f1 : f.link | no f1





no File.link
-- div,1
