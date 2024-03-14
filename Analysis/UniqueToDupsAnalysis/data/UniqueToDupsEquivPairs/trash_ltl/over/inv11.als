-- equiv pair start,3
always Protected' = File
-- div,1
always (Protected' =  (File - Protected) + Protected )
-- div,1
always Protected' = Protected +(File - Protected)
-- div,1
-- equiv pair end
-- equiv pair start,2
always File-Protected'=Protected
-- div,1
always all f:File | f in Protected' iff f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,6
always all f:File | f in Protected'
-- div,2
always all f:File | after f in Protected
-- div,2
always all f : File + Trash | after f in Protected
-- div,1
always all f:File | eventually f not in Protected implies f in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,4
always (File - Protected) = Protected'
-- div,2
always Protected' = File-Protected
-- div,2
-- equiv pair end
-- equiv pair start,9
always ((File - Protected) in Protected)
-- div,1
always all up:File-Protected | up' in Protected
-- div,1
always all f:File | f not in Protected implies f in Protected
-- div,1
always all up:File-Protected+Trash | up' in Protected
-- div,1
always all f:File | f in File-Protected implies (f in Protected)
-- div,1
always all f:File | f in File-Protected implies f'=Protected
-- div,2
always all f:File | f in File-Protected implies f' in Protected
-- div,2
-- equiv pair end
-- equiv pair start,1
always all f:File | Protected' = Protected + f
-- div,1
-- equiv pair end
-- equiv pair start,5
always File not in Protected after File in Protected
-- div,5
-- equiv pair end
-- equiv pair start,1
always all f:(File-Protected)| always f in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:File | f in File-Protected implies after f'=Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:File | f not in Protected implies Protected' = Protected + f
-- div,1
-- equiv pair end
