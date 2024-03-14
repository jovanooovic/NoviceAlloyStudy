-- equiv pair start,3
some Trash
-- div,2
some f:File | f not in Trash implies  f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always eventually some Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
some File
eventually some Trash
-- div,2
-- equiv pair end
-- equiv pair start,42
some f:File |eventually f in Trash
-- div,34
some File
some f:File | eventually f in Trash
-- div,4
some f : File | some File implies eventually f in Trash
-- div,1
some f:File | f not in Trash implies eventually f in Trash
-- div,3
-- equiv pair end
-- equiv pair start,1
some f : File | eventually f = Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
some f:File | eventually f in Trash'
-- div,3
some f:File | eventually f' in Trash'
-- div,1
some File
some f:File | eventually f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,6
eventually (some f:File| f in Trash')
-- div,5
eventually some f:File | f' in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually( some f:File'| f in Trash')
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:Protected | eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,4
always some f:File | eventually f in Trash
-- div,4
-- equiv pair end
-- equiv pair start,1
some File && no Trash
eventually some Trash
-- div,1
-- equiv pair end
-- equiv pair start,7
some f: File | eventually always f in Trash
-- div,7
-- equiv pair end
-- equiv pair start,1
some f: File | always eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually always some f:File | f' in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
always some f : File - Trash | eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
some f: File | f not in Protected and eventually f in Trash
-- div,2
-- equiv pair end
-- equiv pair start,2
some f : File | eventually (f not in Trash and f in Trash')
-- div,2
-- equiv pair end
-- equiv pair start,2
some f: File | f not in Protected and eventually always f in Trash
-- div,1
some f: File | once f not in Protected and eventually always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f: File | eventually (always f in Trash) and eventually (always f.link in Trash)
-- div,1
-- equiv pair end
