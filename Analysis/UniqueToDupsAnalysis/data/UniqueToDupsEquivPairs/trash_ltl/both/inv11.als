-- equiv pair start,6
Protected' = File
-- div,3
Protected' =  (File - Protected) + Protected
-- div,1
Protected' =Protected + (File-Protected )
-- div,2
-- equiv pair end
-- equiv pair start,10
after File in Protected
-- div,3
after Trash + File in Protected
-- div,1
after File - Protected in Protected
-- div,2
after (all f:(File) | f in Protected)
-- div,2
after File - Protected + Trash in Protected
-- div,1
after all f:File | f not in Protected implies f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
after File in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File' | f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,3
all f:File | f in Protected'
-- div,1
all f : File + Trash | after f in Protected
-- div,1
all f : File | eventually f not in Protected => f in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,1
Protected + Trash = Protected'
-- div,1
-- equiv pair end
-- equiv pair start,1
Protected' = (File - Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
some File after File in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
not Protected & Protected' = File
-- div,1
-- equiv pair end
-- equiv pair start,1
Protected' = ((File - Protected)-Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
after (all f:(File-Trash) | f in Protected)
-- div,1
after (all f:(File-Trash) | f not in Protected implies f in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
always Protected' = Protected + (File-Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
File not in Protected after File in Protected
-- div,1
(File - Protected) not in Protected after (File - Protected) in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File - Protected | f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,3
always after ((File - Protected) in Protected)
-- div,3
-- equiv pair end
-- equiv pair start,3
all f:(File-Protected)| always f in Protected'
-- div,1
all f : File - Protected | always (after f in Protected)
-- div,1
all f : File | f not in Protected => after always f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:File | after Protected' = Protected + f
-- div,1
-- equiv pair end
-- equiv pair start,1
always File not in Protected after File in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,2
all f: File | f not in Protected implies f' in Protected
-- div,1
all up:File-Protected | always up' in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | f not in Protected and after f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : File | always (f not in Protected => f in Protected')
-- div,1
all f:File | always (f not in Protected implies after f in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | f not in Protected implies after f in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually all f:File | f not in Protected implies f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | always (f not in Protected implies f' in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (some f: File | f not in Protected implies f in Protected')
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File | f not in Protected implies after f in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,1
some (File - Protected) implies (after (File - Protected) in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
(File - Protected)-Trash  not in Protected after (File - Protected) in Protected
-- div,1
-- equiv pair end
-- equiv pair start,2
always (some (File - Protected) implies (after((File - Protected) in Protected)))
-- div,2
-- equiv pair end
