always no Trash & Protected
-- div,1
always no Protected & Trash
-- div,44
always (Trash-Protected) = Trash
-- div,1
always Protected in File-Trash
-- div,1
always all p:Protected | p not in Trash
-- div,7
always all f:Protected | f not in Trash
-- div,17
always (all p:Protected | no p&Trash)
-- div,3
always all f:File | f in Protected implies f not in Trash
-- div,14
