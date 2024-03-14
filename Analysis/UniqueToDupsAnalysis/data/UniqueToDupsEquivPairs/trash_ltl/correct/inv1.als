-- equiv pair start,125
no Trash+Protected
-- div,25
no Protected
no Trash
-- div,1
no Trash
no Protected
-- div,65
once (no Trash + Protected)
-- div,2
once (no Trash and no Protected)
-- div,4
historically no (Trash+Protected)
-- div,14
once no Trash and once no Protected
-- div,1
historically(no Trash and no Protected)
-- div,4
historically no Trash and no Protected
-- div,1
historically (once (no Trash + Protected))
-- div,1
historically (once (no Trash and no Protected))
-- div,1
no (Trash+Protected)
no Trash and no Protected
-- div,1
all f:File | f not in Trash and f not in Protected
-- div,1
no Trash and no Protected
no Trash && no Protected
-- div,1
all f : File | historically ((f not in (Trash+Protected)))
-- div,2
historically (no Trash and no Protected) and
once (no Trash and no Protected)
-- div,1
-- equiv pair end
