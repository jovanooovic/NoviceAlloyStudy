all f:File | eventually f in Trash
-- div,9
all f:File-Trash | eventually f in Trash
-- div,4
eventually (all f:File | eventually f in Trash)
-- div,4
all f:File | eventually (f not in Trash implies f in Trash)
-- div,1
all f:File | f not in Trash implies eventually f in Trash
-- div,2
eventually(all f:File-Trash | eventually (f in Trash))
-- div,1
all f:File | eventually (f not in Trash implies after f in Trash)
-- div,1
eventually ( all f:File | f not in Trash implies eventually f in Trash)
-- div,1
