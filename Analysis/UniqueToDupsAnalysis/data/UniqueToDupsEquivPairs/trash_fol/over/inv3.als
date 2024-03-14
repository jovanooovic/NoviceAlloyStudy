-- equiv pair start,2
some (File'-File)
-- div,1
some (File-File')
-- div,1
-- equiv pair end
-- equiv pair start,5
some f : File | f = Trash
-- div,4
one x : File | x in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some t : Trash, p : Protected, f : File | t->f in link implies p->f not in link
-- div,1
-- equiv pair end
