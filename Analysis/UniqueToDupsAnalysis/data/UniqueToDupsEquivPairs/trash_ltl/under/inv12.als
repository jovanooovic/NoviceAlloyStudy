-- equiv pair start,22
eventually some Trash
-- div,5
eventually some f: File | f in Trash
-- div,2
eventually some f: File | eventually f in Trash
-- div,4
eventually some f:File | f not in Trash implies f in Trash'
-- div,2
eventually some f: File | f not in Trash until f in Trash
-- div,1
eventually some f:File | f in Trash releases f in Trash
-- div,1
eventually some f : File | f not in Trash implies always f in Trash
-- div,1
eventually some f: File | f in File - Trash until f in Trash
-- div,1
eventually some f:File | always f not in Trash implies f in Trash'
-- div,1
eventually some f:File | f not in Trash implies always f in Trash'
-- div,2
eventually some f:File | f not in Trash implies f in Trash since f in Trash
-- div,1
eventually some f : Trash | after eventually f not in Trash or f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | eventually some Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually some f:File | f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,8
always (all f:File&Trash | f in Trash)
-- div,1
always all f:File | f in Trash implies  f in Trash
-- div,1
eventually all f:File | f in Trash implies f in Trash
-- div,2
eventually all f:File | always f in Trash implies f in Trash
-- div,1
all f:File | eventually f in Trash implies eventually f in Trash
-- div,1
eventually (all f:File | eventually (f in Trash implies always f in Trash))
-- div,1
always all f : File | eventually f in Trash => eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
eventually always some f:File | f in Trash
-- div,3
eventually always some f : File | f not in Trash implies always f in Trash
-- div,1
eventually always some f : File | f not in Trash implies always f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (some f : File | eventually after f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually some f:File | f in Trash implies after f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually some f:File | f in Trash releases after f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,10
eventually some f:File | f in Trash implies always f in Trash
-- div,8
eventually some f:File | f in Trash implies always f in Trash'
-- div,1
eventually (some f:File | (f in Trash) implies ((f not in Trash) releases (f in Trash)))
-- div,1
-- equiv pair end
-- equiv pair start,7
eventually some f:File | f in Trash' implies always f in Trash'
-- div,1
eventually (some f:File | eventually (f in Trash implies always (f in Trash)))
-- div,1
eventually (some f : File | eventually always f in Trash implies f in Trash')
-- div,1
eventually some f:File | ((f not in Trash)and(f in Trash')) implies always f in Trash'
-- div,1
eventually some f : File | f in Trash => after eventually f not in Trash or f in Trash
-- div,1
eventually some f : File | f in Trash => after (eventually f not in Trash or f in Trash)
-- div,1
eventually some f : File | f in Trash => after (always eventually f not in Trash or f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,9
eventually always some f:File | f not in Trash implies f in Trash'
-- div,9
-- equiv pair end
-- equiv pair start,1
always eventually some f : File | f not in Trash implies f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (some f : File | eventually f in Trash implies f in Trash')
-- div,1
-- equiv pair end
-- equiv pair start,5
eventually (some f:File | eventually f in Trash implies always f in Trash)
-- div,5
-- equiv pair end
-- equiv pair start,1
eventually (always some f:File | f not in (Trash & Protected) implies f in Trash')
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (always some f:File | (f not in Trash and f not in Protected ) implies f in Trash')
-- div,1
-- equiv pair end
