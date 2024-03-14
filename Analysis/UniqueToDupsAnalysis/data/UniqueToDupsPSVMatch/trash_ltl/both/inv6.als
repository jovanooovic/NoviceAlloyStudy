Trash' in Trash
-- div,1
always File in Trash
-- div,2
always (after File in Trash)
-- div,1
after (always File in Trash)
-- div,1
eventually always some Trash
-- div,3
always eventually some Trash
-- div,1
File in Trash since File in Trash
-- div,2
always (some File implies File in File')
-- div,2
all f:File | always f in Trash
-- div,2
File in Trash implies always File in Trash
-- div,3
some f:File | always f in Trash
-- div,4
once File in Trash since File in Trash
-- div,2
always some f:File | f in Trash
-- div,2
all f:File | always f in Trash'
-- div,1
always File in Trash since File in Trash
-- div,3
some f:File | always f in Trash'
-- div,1
always ((some File) implies (always File in File'))
-- div,3
once File in Trash implies always File in Trash
-- div,2
once some f : Trash | always f in Trash
-- div,1
always (after some f:File | f in Trash)
-- div,1
always some f:Trash | always f in Trash
-- div,3
all t : File | t in Trash since t in Trash
-- div,1
all f: File | f in Trash since f in Trash
-- div,4
all p : File | p in Trash since p in Trash
-- div,1
eventually File in Trash implies always File in Trash
-- div,1
all f : File | eventually always f in Trash
-- div,2
all f : File | f in Trash since f not in Trash
-- div,1
all f : File | f not in Trash until f in Trash
-- div,1
some f : File | eventually always f in Trash
-- div,1
some f : File | always eventually f in Trash
-- div,1
eventually always some f:File| f in Trash
-- div,1
eventually some f:File | always f in Trash
-- div,1
eventually (some f : Trash | always f in Trash)
-- div,1
all f:File | f in Trash releases (f in Trash)
-- div,1
eventually some t:Trash | always t in Trash
-- div,1
some f:File | f in Trash releases (f in Trash)
-- div,1
all f: File | f in Trash triggered f in Trash
-- div,2
eventually some f:File | always f in Trash'
-- div,1
eventually some f:File | always f not in File'
-- div,2
some f:File | f in Trash implies after f in Trash
-- div,1
one f: File | f in Trash implies always (f in Trash)
-- div,1
all f:File | f in Trash and always f in Trash
-- div,1
some f:File | f in Trash implies always f in Trash
-- div,3
all f: File | always f in Trash since f in Trash
-- div,5
all f: File |always (f in Trash since f in Trash)
-- div,4
always all t : File | t in Trash since t in Trash
-- div,1
all f:File | f in Trash and always f in Trash'
-- div,2
always all p : File | p in Trash since p in Trash
-- div,1
always some f:File | f in Trash implies f in Trash'
-- div,2
some f:File | f in Trash implies always f in Trash'
-- div,1
all f : File | always f in Trash since f not in Trash
-- div,1
always all f : File | f not in Trash until f in Trash
-- div,1
some f : File | always f in Trash since f in Trash
-- div,1
all f:File | f in Trash releases always(f in Trash)
-- div,1
all f:File | always f in Trash releases f in Trash
-- div,1
some f:File | f in Trash releases always f in Trash
-- div,2
always (
all f: File | f in Trash triggered f in Trash
)
-- div,1
all f:File | f in Trash triggered (always f in Trash)
-- div,1
all f : File | always (f in Trash and after f in Trash)
-- div,1
some f:File | once f in Trash implies always f in Trash
-- div,2
some f:File | always f in Trash implies after f in Trash
-- div,1
always some f:File |  f in Trash implies after f in Trash
-- div,1
no Trash or all f : File | (f in Trash) since (f in Trash)
-- div,1
always some f:File | f in Trash implies always f in Trash
-- div,3
some f: File | always( f in Trash implies always f in Trash)
-- div,1
always all p : File | always p in Trash since p in Trash
-- div,2
all f : File | eventually f in Trash implies always f in Trash
-- div,3
always some f:File | f in Trash implies always f in Trash'
-- div,4
eventually (some f : File | f in Trash implies always f in Trash)
-- div,1
once some f : Trash | once f in Trash implies always f in Trash
-- div,1
always (some f:File | f in Trash releases always f in Trash)
-- div,1
some f : File | always f in Trash since eventually f in Trash
-- div,1
eventually some f:File | f in Trash implies always f in Trash'
-- div,1
always some f : Trash | once f in Trash implies always f in Trash
-- div,1
eventually some f:File | f not in File' and always f not in File'
-- div,1
all f : File | f not in Trash and f in Trash' => always f in Trash
-- div,1
all f : File-Trash | eventually f in Trash => always f in Trash
-- div,1
all f : File | f not in Trash and after f in Trash => always f in Trash
-- div,1
all f: File | always( f in Trash implies always f in Trash and no f.link)
-- div,1
all f : File | always (f in Trash implies always f in Trash and f not in Protected)
-- div,1
all f : File | always (f in Trash-Protected implies always f in Trash-Protected)
-- div,1
all f : File-Protected | f not in Trash and after f in Trash => always f in Trash
-- div,1
always some f:File | (always f in Trash) releases (f in Trash and after f in Trash)
-- div,1
always some f:File | (not always f in Trash) releases (f in Trash and after f in Trash)
-- div,2
