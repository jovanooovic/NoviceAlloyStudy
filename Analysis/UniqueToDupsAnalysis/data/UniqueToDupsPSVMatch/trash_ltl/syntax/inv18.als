always (f in Trash triggered F in Protected)
-- div,1
always all p:Protected | until p not in Trash
-- div,4
always f : File - Protected | before f in Trash
-- div,1
always (all f : File | f in Protected f in Trash)
-- div,1
always all f: File | (f in Trash releases f in Protectd)
-- div,1
always f : Protected | f not in Protected since f in Trash
-- div,2
always f : Protected | f not in Protected until f in Trash
-- div,1
always (all f : File | f in Trash triggered F in Protected)
-- div,1
always f:Protected | f not in Protected' implies f in Trash'
-- div,1
all f:Protected | | f not in Protected  releases  f in Trash
-- div,1
all p: Protected | always p not in Protected implies p before in Trash
-- div,1
always (
(once f in Protected) and f not in Protected implies (
f once in Trash
)
)
-- div,1
all f : Protected | always (f in Protected until (f in Trash => always f not in Protected)
-- div,1
always ( all f : File |
(once f in Protected) and f not in Protected implies (
f once in Trash
)
)
-- div,1
