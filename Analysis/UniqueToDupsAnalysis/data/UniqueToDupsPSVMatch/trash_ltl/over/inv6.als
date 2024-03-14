always Trash = Trash'
-- div,1
always all f: File | f not in Trash
-- div,1
always all f:File |  f in Trash implies Trash'=Trash
-- div,1
always all f:File |  f in Trash implies Trash'=Trash+f
-- div,1
always ( some f:File| f not in Trash  and after (always (f in Trash)))
-- div,1
always all f:File | (f in Trash) releases (f not in Trash) and after always (f in Trash)
-- div,1
always ( some f:File| f not in Trash  and after (f in Trash and after always f in Trash))
-- div,1
