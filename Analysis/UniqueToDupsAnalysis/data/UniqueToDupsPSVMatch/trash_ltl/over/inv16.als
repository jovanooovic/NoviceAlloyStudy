always Protected'=  Protected
-- div,1
always Protected = Protected'
-- div,1
always historically Protected = Protected'
-- div,1
always all f : File | historically f in Protected
-- div,3
always ((some Protected') implies (historically Protected = Protected'))
-- div,1
always all p: Protected | historically p in Protected and always p in Protected
-- div,1
