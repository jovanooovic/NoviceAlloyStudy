eventually
-- div,1
all f:file | eventually always f in Trash
-- div,1
eventually some f:File | f always in Trash
-- div,1
eventually (some f:File | f always in Trash)
-- div,1
eventually f:File | f in Trash always f in Trash
-- div,1
some f : File | f in Trash after always f in Trash
-- div,1
eventually (all f:File&Trash | always f in Trash))
-- div,1
eventually some f:File | f in Trash after f in Trash
-- div,1
eventually f:File | f in Trash implies  (f in Trash)
-- div,1
some f:File | eventually f in Trash after f in Trash
-- div,1
since some f:File | f not in Trash implies f in Trash
-- div,1
since  some f:File | f not in Trash implies f in Trash'
-- div,1
eventually f: File | f in Trash implies always f in Trash
-- div,2
always (some f: File | (eventually and always) f in Trash)
-- div,1
eventually f:File | f in Trash implies always (f in Trash)
-- div,1
always f : File | eventually f in Trash implies f in Trash'
-- div,1
eventually always f:File | f not in Trash after f in Trash'
-- div,1
eventually all f:File | f in Trash always implies f in Trash
-- div,1
always all f:File | eventually f in Trash && f in Trash until
-- div,1
eventually some f:File | f in Trash always implies f in Trash
-- div,1
eventually always f:File | f not in Trash implies f in Trash'
-- div,1
eventually all f:File | f in Trash implies  f always in Trash
-- div,1
always all f:File | eventually (f not in Trash after f in Trash)
-- div,1
eventually all f: File | eventually f in Trash after not in Trash
-- div,1
always f : File | eventually f in Trash implies always f in Trash
-- div,2
always all f:File | eventually (f not in Trash after f in Trash')
-- div,1
all f:File |  eventually f in Trash after (always some (f& Trash))
-- div,1
(all f:File |  eventually f in Trash after always some (f& Trash))
-- div,1
(some f:File | (eventually f in Trash) implies (always f in Trash)
-- div,1
eventually always f:File | f not in Protected after f in Protected'
-- div,1
always all f : File | some eventually f in Trash implies f in Trash'
-- div,1
eventually always f:File | f not in Protected implies f in Protected'
-- div,1
always (all f:File |  eventually f in Trash after always some (f& Trash)
-- div,1
always (all f:File |  eventually f in Trash after always some (f& Trash))
-- div,1
-
always (all f:File | eventually f in Trash implies always  some (f &Trash) )
-- div,1
eventually some Trash and always all f: File | f in Trash implies always f in Trash
-- div,2
eventually (some f:File | (f in Trash) implies ((f not in Trash) releases (f in Trash))
-- div,1
always (all f:File | eventually f in Trash implies (f not in Trash) releases (f in trash))
-- div,1
