always(f:Trash | once f not in Trash)
-- div,1
always t: Trash | once t not in Trash
-- div,3
File in Trash implies once not in Trash
-- div,1
always (f : Trash | once f not in Trash)
-- div,1
f:File in Trash implies once f not in Trash
-- div,1
all File in Trash implies once File not in Trash
-- div,2
always (File in Trash historically File not in Trash)
-- div,1
all f: File | always f not in Trash before f in Trash
-- div,1
always all f : File | f in Trash implies once in trash
-- div,1
always all f : File | f in Trash implies once f in trash
-- div,1
always all f:File | f in Trash implies once not in Trash
-- div,1
allways all f:File | f in Trash implies once not in Trash
-- div,1
always all f: File | always f not in Trash before f in Trash
-- div,1
all f:File | historically  (f in Trash) implies historically f not in Trash)
-- div,1
all f : File | historically  (f in Trash) implies historically f not in Trash)
-- div,2
all f:File | historically  (f in Trash) implies historically once f not in Trash)
-- div,1
