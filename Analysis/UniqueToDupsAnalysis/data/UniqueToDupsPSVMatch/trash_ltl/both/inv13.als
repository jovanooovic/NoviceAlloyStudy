File in Trash since File not in Trash
-- div,1
(File in Trash) implies (once (File not in Trash))
-- div,1
all f:File | historically  (f in Trash)
-- div,1
always (File in Trash implies once File not in Trash)
-- div,1
all f: File | f not in Trash until f in Trash
-- div,1
always (File in Trash implies historically File not in Trash)
-- div,1
some f : File | f in Trash implies once f not in Trash
-- div,1
always all f: File | f not in Trash until f in Trash
-- div,2
always all f : File | (f in Trash) until (f not in Trash)
-- div,1
all f: File | always f not in Trash until f in Trash
-- div,1
always some f : File | f in Trash implies once f not in Trash
-- div,2
some f : File | always f in Trash implies once f not in Trash
-- div,1
some f : File | eventually f in Trash => once f not in Trash
-- div,1
always some f : File | always f in Trash implies once f in Trash
-- div,1
always some f:File | f in Trash implies once f in File-Trash
-- div,1
always some f : File | always f in Trash implies once f not in Trash
-- div,1
always some f:File | f in Trash implies always once f in File-Trash
-- div,1
