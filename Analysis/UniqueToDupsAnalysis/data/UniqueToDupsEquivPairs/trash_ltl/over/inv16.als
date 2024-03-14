-- equiv pair start,4
always Protected'=  Protected
-- div,1
always Protected = Protected'
-- div,1
always historically Protected = Protected'
-- div,1
always all p: Protected | historically p in Protected and always p in Protected
-- div,1
-- equiv pair end
-- equiv pair start,3
always all f : File | historically f in Protected
-- div,3
-- equiv pair end
-- equiv pair start,1
always ((some Protected') implies (historically Protected = Protected'))
-- div,1
-- equiv pair end
