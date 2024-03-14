all fl:File.link | fl in Trash implies (fl in File)
-- div,1
all l : File.link | l in Trash implies l.link in Trash
-- div,5
all f,u : File |f->u in link and u in Trash implies u in Trash
-- div,2
all l : File.link | l in Trash implies (all l1 : l | l1 in Trash)
-- div,1
all l : File.link | (l in Trash implies (all li : l | li in Trash))
-- div,1
all f : File | (all l : f.link | f in Trash implies l.link in Trash)
-- div,1
all f : File | (all l : f.link | l in Trash implies l.link in Trash)
-- div,3
all link : File.link | link in Trash implies (all l : link | l in Trash)
-- div,1
all l : File.link | (l in Trash implies (all li : l.link | li in Trash))
-- div,3
all f : File, l : f.link, l1 : l.link | l in Trash => l1 in Trash
-- div,3
all f : File, l : f.link | l in Trash => (all l1 : l.link | l1 in Trash)
-- div,2
all f : File | (all l : f.link | l in Trash implies ( all li : l | li in Trash))
-- div,1
all f : File | (all l : f.link | l in Trash implies ( all li : l.link | li in Trash))
-- div,1
