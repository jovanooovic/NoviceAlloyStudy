-- equiv pair start,3
(some f:File&Trash | always f in Trash)
-- div,1
always (some f:File&Trash | always f in Trash)
-- div,1
always (some f: File | eventually f in Trash and always f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
some f : File | always after f in Trash
-- div,1
some f: File | eventually f in Trash and after always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,8
some f: File |eventually always f in Trash
-- div,6
some f: File |always( eventually always f in Trash)
-- div,2
-- equiv pair end
-- equiv pair start,4
always(some f:File | eventually always f in Trash)
-- div,4
-- equiv pair end
-- equiv pair start,1
some f:File-Protected | eventually always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually some f:File | f in Trash releases always f'=Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
eventually some Trash and always (all t: Trash | always t in Trash)
-- div,1
eventually some Trash and (always all f: File | f in Trash implies always f in Trash)
-- div,4
-- equiv pair end
-- equiv pair start,2
always( some f: File | f not in Trash and eventually always f in Trash)
-- div,1
always( some f: File | f not in Trash and eventually f in Trash and after always f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (some Trash and (always all f: File | f in Trash implies always f in Trash))
-- div,1
-- equiv pair end
