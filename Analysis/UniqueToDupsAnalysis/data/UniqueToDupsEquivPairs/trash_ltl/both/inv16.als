-- equiv pair start,4
always File in Protected
-- div,2
always historically File in Protected
-- div,1
always all f:File | f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
historically some Protected
-- div,1
-- equiv pair end
-- equiv pair start,7
historically File in Protected
-- div,1
all f : File | historically f in Protected
-- div,3
File in Protected historically File in Protected
-- div,1
all f : File | f in Protected since f in Protected
-- div,1
all f: File | always f in Protected since f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,11
always Protected in Protected'
-- div,2
always (all f:Protected |  f in Protected'  )
-- div,1
always (all f : Protected | always f in Protected)
-- div,1
always all f:File | f in Protected implies f in Protected'
-- div,3
always all f:File | f in Protected implies always f in Protected
-- div,3
always (all f:File |  f in Protected implies always (f in  Protected')  )
-- div,1
-- equiv pair end
-- equiv pair start,1
historically Protected = Protected'
-- div,1
-- equiv pair end
-- equiv pair start,13
all f:Protected |  always f in Protected
-- div,2
all f:Protected | always  some (f  & Protected)
-- div,1
all f:Protected |  always after f in Protected
-- div,2
all f:Protected | always  some (f  & Protected')
-- div,1
all f : File | f in Protected implies always f in Protected
-- div,1
all f:File | once f in Protected implies always f in Protected
-- div,2
all f:File |  f in Protected implies always after f in Protected
-- div,1
all f:File | f in Protected implies always (historically f in   Protected)
-- div,1
all f:File | once f in Protected implies always after f in Protected
-- div,1
all f:File | historically f in Protected implies always after f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,3
always all f:File | always f in Protected
-- div,3
-- equiv pair end
-- equiv pair start,1
always all f:File | always f in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : File | f in Protected implies once not (f in Protected)
-- div,1
always all f : File | f in Protected implies once not (f in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File | historically f in Protected implies after f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always (some f:File | f in Protected implies historically f in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
always ((some Protected') implies (historically Protected in Protected'))
-- div,1
-- equiv pair end
