always no Protected + Trash
-- div,2
always all f: File | f not in Trash
-- div,1
always (all f : Trash | f not in Trash)
-- div,1
always all f:Protected | always f not in Trash
-- div,2
always all p: Protected | always p not in Trash
-- div,7
always all p:Protected | no Protected + Trash
-- div,1
always Protected not in Trash
always all p:Protected | p not in Trash
-- div,1
always (all f:Protected | f not in Trash' and historically f not in Trash)
-- div,1
always no Protected & Trash
always all p: Protected | always p not in Trash
-- div,2
