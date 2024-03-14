-- equiv pair start,1
File in Trash implies once no Trash
-- div,1
-- equiv pair end
-- equiv pair start,4
eventually all f:Trash | once f not in Trash
-- div,1
all f: File | always f in Trash implies before f not in Trash
-- div,1
eventually all f:File | f in Trash implies once f not in Trash
-- div,1
always all f : File | always f in Trash implies once f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,4
always all f : File | f in Trash implies once f in Trash
-- div,1
always all f : File | always f in Trash implies once f in Trash
-- div,3
-- equiv pair end
