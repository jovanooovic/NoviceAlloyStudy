-- equiv pair start,3
some File
-- div,3
-- equiv pair end
-- equiv pair start,8
eventually File in Trash
-- div,8
-- equiv pair end
-- equiv pair start,1
eventually( File' in Trash')
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : File | eventually f in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
all f : File | eventually always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f: File | f not in Protected implies f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f: File | always f not in Protected implies f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f: File | always( f in Trash implies always f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,4
some f: File | eventually f in Trash since f not in Protected
-- div,1
some f: File | eventually always f in Trash since f not in Protected
-- div,2
some f: File | always eventually f in Trash since f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
some f: File | eventually f in Trash implies f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,3
some f: File | f not in Protected implies eventually f in Trash
-- div,3
-- equiv pair end
-- equiv pair start,1
eventually some File and File not in Protected implies File in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
some f: File | f not in Protected implies eventually always f in Trash
-- div,2
some f: File | once f not in Protected implies eventually always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f: File | always( eventually f in Trash implies always f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,3
some f: File | (always f not in Protected) implies eventually f in Trash
-- div,3
-- equiv pair end
-- equiv pair start,1
some f: File | after f not in Protected implies eventually always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f: File | f not in Protected implies eventually f in Trash and no f.link
-- div,1
-- equiv pair end
-- equiv pair start,2
some f: File | f not in Protected implies eventually (always f in Trash) and eventually (always f.link in Trash)
-- div,1
some f: File | (once f not in Protected) implies eventually (always f in Trash) and eventually (always f.link in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
some f: File | always f not in Protected implies eventually (always f in Trash) and eventually (always f.link in Trash)
-- div,2
-- equiv pair end
