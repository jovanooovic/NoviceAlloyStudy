eventually (f:File |
-- div,1
eventually f:File | f in Trash
-- div,2
eventually (f:File | f in Trash)
-- div,1
always f:File | eventually f in Trash
-- div,1
always f:File | f eventually in Trash
-- div,1
eventually f in File implies f in Trash
-- div,1
always all f:File | f eventually in Trash
-- div,1
always all f : File | eventually f in Tash
-- div,1
always (all f : File | f eventually f in Trash)
-- div,2
all f:File | f not in Trash eventually f in Trash'
-- div,1
eventually f:File | f not in Trash after f in Trash
-- div,1
eventually f:File | f not in Trash after f in Trash'
-- div,1
always (all f : File | f after eventually f in Trash)
-- div,1
