(historically Protected)
-- div,2
once Protected always Protected
-- div,2
always (historically Protected)
-- div,1
always Protected since Protected
-- div,1
all f : (File & Protected) | historically (f & Protected)
-- div,1
always (some (File in Protected)) implies (historically some (File in Protected))
-- div,1
always ((some (File in Protected)) implies (historically some (File in Protected)))
-- div,1
always all f : File | (some (File in Protected)) implies (historically f in Protected)
-- div,1
