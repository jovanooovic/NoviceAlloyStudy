all f:Trash | once f not in Trash
-- div,4
all t: Trash | once t not in Trash
-- div,6
all t : Trash | once t in File - Trash
-- div,1
always all f:Trash | once f not in Trash
-- div,15
all f : (File&Trash) | once f not in Trash
-- div,2
always all t: Trash | once t not in Trash
-- div,3
all f:File | f in Trash since f not in Trash
-- div,4
once all f:File | f in Trash implies f not in Trash
-- div,4
all f : File | f in Trash => once f not in Trash
-- div,20
all f : File | f in Trash implies historically f not in Trash
-- div,2
all f:File | f in Trash implies once f in File-Trash
-- div,1
always all f:File | f in Trash implies once f not in Trash
-- div,13
all f: File | always (f in Trash implies once f not in Trash)
-- div,1
all f : File | eventually f in Trash => once f not in Trash
-- div,3
all f:File |  (f in Trash) implies historically once (f not in Trash)
-- div,1
always all f: File | always (f in Trash implies once f not in Trash)
-- div,1
