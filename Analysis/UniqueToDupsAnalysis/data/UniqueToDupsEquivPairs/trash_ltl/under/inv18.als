-- equiv pair start,20
all p:Protected | p in File - Protected implies p in Trash
-- div,1
all p: Protected | always p not in Protected implies p in Trash
-- div,1
all p: Protected | p not in Protected implies before p in Trash
-- div,1
always all p: Protected | p not in Protected implies p in Trash
-- div,1
always all f:Protected | f not in Protected implies f in Trash
-- div,3
always (all f : Protected | f not in Protected implies once f in Trash)
-- div,1
always (all f : Protected | f not in Protected implies after f in Trash)
-- div,1
always all p:Protected | p in File - Protected implies p in Trash
-- div,1
always all p: Protected | p not in Protected implies after p in Trash
-- div,1
always all p: Protected | p not in Protected implies before p in Trash
-- div,1
always (all f : Protected | f not in Protected implies before f in Trash)
-- div,1
always all p : Protected | always p not in Protected => p in Trash
-- div,1
all p: Protected | always p not in Protected implies before p in Trash
-- div,2
always all p : Protected | always p not in Protected => once p in Trash
-- div,1
always all p:Protected | p in File - Protected implies after p in Trash
-- div,1
always all p: Protected | always p not in Protected implies after p in Trash
-- div,1
always all p: Protected | always p not in Protected implies before p in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:Protected | after f not in Protected implies f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always all p: Protected | eventually p not in Protected implies eventually p in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always ( all f : File |
(once f in Protected) and f not in Protected implies (
once f in Trash
)
)
-- div,1
-- equiv pair end
