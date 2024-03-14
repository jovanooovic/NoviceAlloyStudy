always Trash in Trash'
-- div,30
always all f:Trash | f in Trash'
-- div,5
always (all t:Trash | after t in Trash)
-- div,1
always (all f:Trash | after f in Trash)
-- div,3
always (some Trash implies always Trash in Trash')
-- div,13
always all t:Trash | always t in Trash
-- div,8
always all f:Trash | always f in Trash
-- div,18
always(all f : (File & Trash) | always (f in Trash))
-- div,1
always all f : File | f in Trash implies f in Trash'
-- div,1
always all f:File | f in Trash implies after f in Trash
-- div,7
always all f : File | f in Trash => always f in Trash
-- div,23
always (all f:Trash | f in Trash implies always f in Trash)
-- div,1
always all f: Trash | once f in Trash implies always f in Trash
-- div,1
always all f:File | f in Trash implies after always f in Trash
-- div,5
always all f : Trash | eventually f in Trash implies always f in Trash
-- div,1
