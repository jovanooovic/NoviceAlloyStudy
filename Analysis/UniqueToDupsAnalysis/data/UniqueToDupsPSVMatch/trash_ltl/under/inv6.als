Trash in Trash'
-- div,2
always all f:Trash | f in Trash
-- div,3
all t:Trash | always t in Trash
-- div,6
all f:Trash | always f in Trash
-- div,8
all f:Trash | always f in Trash'
-- div,3
always ((some File) implies (always File in File))
-- div,1
always some Trash implies (always some Trash')
-- div,1
once all f: Trash | always f in Trash
-- div,3
after all f: Trash | always f in Trash
-- div,1
always File in Trash implies always File in Trash
-- div,1
always some Trash implies always Trash in Trash'
-- div,2
all f : (File & Trash) | always (f in Trash)
-- div,1
always (all f:File&Trash | f in Trash)
-- div,2
all t : Trash | t in Trash since t in Trash
-- div,2
eventually all f:Trash | always f in Trash
-- div,3
all t:Trash | eventually always ( t in Trash)
-- div,1
eventually all t:Trash | always t in Trash
-- div,2
all f: File | f in Trash implies after f in Trash
-- div,1
all t: Trash | t in Trash triggered t in Trash
-- div,1
all f : File | always (f in Trash implies (f in Trash))
-- div,1
all f : File | f in Trash => always f in Trash
-- div,33
all f : File | always f in Trash implies f in Trash
-- div,2
all f : File | always (f in Trash => f in Trash')
-- div,1
all f : File | always f in Trash implies f in Trash'
-- div,1
all f : File | f in Trash implies always f in Trash'
-- div,1
always all t : Trash | t in Trash since t in Trash
-- div,2
always all p : Trash | p in Trash since p in Trash
-- div,1
always all f : Trash | f not in Trash until f in Trash
-- div,1
all f:File | some (f & Trash) implies always (f in Trash)
-- div,1
all f : File | f' in Trash => always f' in Trash
-- div,1
all f : File | once f in Trash => always f in Trash
-- div,5
all f : File | always (f in Trash => after f in Trash)
-- div,2
all f:File | f in Trash implies (always after f in Trash)
-- div,1
all f : File | f in Trash => after always f in Trash
-- div,4
all f:File | always f in Trash implies always f in Trash
-- div,3
all f: File | always( f in Trash implies always f in Trash)
-- div,15
all f : File | always f in Trash implies always f in Trash'
-- div,1
always all p : Trash | always p in Trash since p in Trash
-- div,1
eventually all f : File | f in Trash implies always f in Trash
-- div,1
all f : File-Protected | f in Trash => always f in Trash
-- div,1
all f: File | historically f in Trash implies always f in Trash
-- div,1
eventually all f:File | f in Trash implies always f in Trash'
-- div,1
always all f:File | always f in Trash implies always f in Trash'
-- div,1
eventually all f:File | always f in Trash implies always f in Trash'
-- div,1
all f : File | f not in Trash and f in Trash' => always f in Trash'
-- div,1
