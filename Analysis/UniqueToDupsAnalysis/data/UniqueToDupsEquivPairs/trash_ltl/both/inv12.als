-- equiv pair start,10
eventually (File in Trash)
-- div,3
eventually all f:File | f in Trash
-- div,5
File in Trash since eventually File in Trash
-- div,1
eventually all f : File | f in Trash releases f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File |always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | after f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually always File in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f : File | after f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,6
(some f:File&Trash | f in Trash)
-- div,1
some f:File | f in Trash since f in Trash
-- div,3
some f:File | f not in Trash implies f in Trash since f in Trash
-- div,1
some f : Trash | after eventually f not in Trash or f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
always (eventually File in Trash)
-- div,1
always eventually all f:File | f in Trash
-- div,2
-- equiv pair end
-- equiv pair start,7
always all f : Trash | f in Trash'
-- div,1
always (all f:File&Trash | always f in Trash)
-- div,1
always all f: File | f in Trash implies always f in Trash
-- div,1
always all t : Trash | after t in Trash or t not in Trash
-- div,1
always all f:File | f in Trash implies always f in Trash'
-- div,2
always all f: File | eventually some Trash and f in Trash implies always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
some f:File | eventually f in Trash
-- div,2
some f : File | f not in Trash until (eventually f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,5
all f : File | eventually f in Trash
-- div,2
once all f: File | eventually f in Trash
-- div,1
all f : File | f in Trash since eventually f in Trash
-- div,1
(all f:File | always some (f &Trash) since eventually f in Trash )
-- div,1
-- equiv pair end
-- equiv pair start,1
one f : File | eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some t : Trash | after t not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
(all f:File&Trash | always f in Trash)
-- div,1
all f:File | f in Trash implies always f in Trash
-- div,1
all f:File | once f in Trash implies always some (f &Trash)
-- div,1
all f: File | eventually some Trash and once f in Trash implies always f in Trash
-- div,2
-- equiv pair end
-- equiv pair start,2
always (some f:File&Trash | f in Trash)
-- div,1
always some f : File | f in Trash since f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
all f:File | eventually always f in Trash
-- div,5
-- equiv pair end
-- equiv pair start,18
always all f:File | eventually f in Trash
-- div,9
always all f: File | f not in Trash until f in Trash
-- div,1
always all f:File | f in File implies eventually f in Trash
-- div,1
always all f: File | f in Trash or eventually f in Trash
-- div,1
always (all f:File | f in Trash  since eventually f in Trash )
-- div,1
always all f:File | eventually (f not in Trash implies f in Trash')
-- div,1
always all f : File | f in Trash releases eventually f in Trash
-- div,1
always (all f:File |  f in Trash since  eventually some (f& Trash) )
-- div,1
always (all f:File |some (f &Trash)  since eventually f in Trash    )
-- div,1
always (all f:File | eventually f in Trash since  eventually some (f& Trash) )
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File |always eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always some f: File | eventually some Trash
-- div,1
-- equiv pair end
-- equiv pair start,4
always some f: File | eventually f in Trash
-- div,3
always some f : File | f not in Trash until (eventually f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
one f : File |always( eventually f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,3
eventually all f:File | eventually f in Trash
-- div,3
-- equiv pair end
-- equiv pair start,2
some f:File | f in Trash since f not in Trash
-- div,2
-- equiv pair end
-- equiv pair start,14
eventually (all f: Trash | always f in Trash)
-- div,2
eventually (all f:File&Trash | always f in Trash)
-- div,1
eventually all f:File | f in Trash implies always f in Trash
-- div,8
eventually all f:File | f in Trash implies always f in Trash'
-- div,2
eventually (all f:File | f in Trash implies (f not in Trash) releases (f in Trash))
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually all t : Trash | after t not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File | f not in Trash implies f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,3
eventually some t : Trash | after t not in Trash
-- div,1
eventually some f : Trash | eventually f not in Trash
-- div,1
eventually some f : Trash | after eventually f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always some f : File | eventually Trash = Trash'
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f : File | always eventually f in Trash
-- div,1
always all f:File | f in File implies always eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
always (all f: File | eventually always f in Trash)
-- div,2
-- equiv pair end
-- equiv pair start,1
all f:File-Protected | eventually always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
(some f:File | f in Trash implies always f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f: File | f not in Trash since f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
always all f : File | f in Trash releases f in Trash
-- div,1
always (all f:File |  f in Trash since  some (f& Trash) )
-- div,1
always (all f:File |some (f &Trash)  since  f in Trash )
-- div,1
always (all f:File |  always f in Trash since  some (f& Trash) )
-- div,1
always all f : File | eventually f in Trash releases f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,7
always all f: File | f in Trash until f not in Trash
-- div,1
always all t : Trash | eventually after t not in Trash
-- div,1
always all f : File | eventually f in Trash => eventually f not in Trash
-- div,3
always all f:File | eventually f in Trash implies (f in Trash until f not in Trash)
-- div,1
always all f : File | f not in Trash until (eventually f in Trash => eventually f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually File in Trash implies always File in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually all f : File | always eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File | eventually f in Trash implies  f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
eventually all f:File | f in Trash implies f in Trash'
-- div,4
eventually all t : Trash | after t in Trash or t not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File | f not in Trash implies always f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
always some f:File | f not in Trash implies f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
(all f:File | always some (f &Trash) since f in Trash )
-- div,1
-- equiv pair end
-- equiv pair start,6
always all f: File | f in Trash releases f not in Trash
-- div,2
always all t:Trash | t in Trash releases t not in Trash
-- div,2
always all f: File | eventually f in Trash releases f not in Trash
-- div,1
always all t:Trash | (once t not in Trash and t in Trash) releases t not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f : File | f not in Trash releases f in Trash
-- div,1
always all f: File | f in Trash triggered always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,6
all f : File | eventually f in Trash => always f in Trash
-- div,5
all f : File | always (
eventually f in Trash => always f in Trash
)
-- div,1
-- equiv pair end
-- equiv pair start,8
some f : File | eventually f in Trash => always f in Trash
-- div,8
-- equiv pair end
-- equiv pair start,1
always some t : Trash | after t in Trash or t not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always (some f:File | f in Trash implies always f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,3
eventually all f : File | f not in Trash implies f in Trash'
-- div,3
-- equiv pair end
-- equiv pair start,2
eventually all f : File | f not in Trash releases f in Trash
-- div,1
eventually (all f:File | f in Trash and (f not in Trash) releases (f in Trash))
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File | after f in Trash implies always some (f &Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually some f: File | f in Trash releases f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File | eventually f in Trash implies after f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
always all f:File | eventually f in Trash implies f in Trash
-- div,3
-- equiv pair end
-- equiv pair start,1
always all f:File | f in Trash implies eventually f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
always eventually all f : File | always eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,6
always all f : File | eventually f in Trash implies f in Trash'
-- div,1
always all f:File | eventually f in Trash implies always f in Trash'
-- div,4
always (all f:File | eventually f in Trash implies after some (f &Trash) )
-- div,1
-- equiv pair end
-- equiv pair start,3
always some f : File | eventually f in Trash implies f in Trash
-- div,3
-- equiv pair end
-- equiv pair start,1
all f: File | eventually f in Trash and after always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always some f : File | eventually f in Trash implies f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f:File | after f in Trash implies  some (f &Trash) )
-- div,1
-- equiv pair end
-- equiv pair start,7
always all f : File | eventually f in Trash => always f in Trash
-- div,5
always (all f:File | eventually f in Trash implies always  some (f &Trash) )
-- div,1
always (all f:File | eventually f in Trash implies (f not in Trash) releases (f in Trash))
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually all f:File | eventually f in Trash implies f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File | f not in Trash implies eventually always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f:File | eventually f not in Trash implies f in Trash'
-- div,1
always (all f:File |  always f in Trash since  after some (f& Trash) )
-- div,1
-- equiv pair end
-- equiv pair start,4
all f : File | eventually f in Trash => eventually f not in Trash
-- div,2
all f : File | (always eventually f in Trash) implies (eventually f not in Trash)
-- div,1
all f : File | f not in Trash until (eventually f in Trash => eventually f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,5
always some f : File | eventually f in Trash => always f in Trash
-- div,5
-- equiv pair end
-- equiv pair start,7
eventually always all f:File | f not in Trash implies f in Trash'
-- div,7
-- equiv pair end
-- equiv pair start,2
eventually some f : File | f in Trash => eventually f not in Trash
-- div,1
eventually some f : File | f in Trash => after  eventually f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
some f : File | eventually f in Trash => eventually f not in Trash
-- div,2
some f : File | f not in Trash until (eventually f in Trash => eventually f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : File | eventually f in Trash and eventually f not in Trash
-- div,1
all f : File | eventually f in Trash iff eventually f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always eventually all f : File | f not in Trash implies f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,2
(some f:File | eventually (f in Trash implies always (f in Trash)))
-- div,1
some f : File | eventually f in Trash => eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
eventually always all f:File | f in Trash implies always f in Trash'
-- div,4
eventually always all f:File | eventually f in Trash implies always f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
always eventually all f:File | f in Trash implies always f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f:File |  eventually f in Trash since  some (f& Trash) )
-- div,1
-- equiv pair end
-- equiv pair start,5
eventually all f:File |eventually f in Trash implies always f in Trash
-- div,5
-- equiv pair end
-- equiv pair start,3
always all f:File | eventually f in Trash && eventually f not in Trash
-- div,1
always all f:File | eventually f in Trash && f in Trash until f not in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
all f : File | eventually f in Trash => after eventually f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually all f:File | f in Trash implies eventually always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
eventually (some f : File-Trash | f in Trash implies always f in Trash)
-- div,2
-- equiv pair end
-- equiv pair start,1
some f:File | eventually f in Trash implies eventually always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (some f : File-Trash | f in Trash' implies always f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,5
always all f:File | eventually f in Trash && historically f not in Trash
-- div,1
always all f: File | eventually f in Trash and f in Trash releases f not in Trash
-- div,2
always( all f: File | f not in Trash and eventually f in Trash and after always f in Trash)
-- div,1
always all f: File | eventually f in Trash and eventually f in Trash releases f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
eventually some f : File | eventually f in Trash => after f not in Trash
-- div,1
eventually some f : File | after eventually f in Trash => after f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f:File |  after some (f& Trash) implies  always f in Trash  )
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (some f : File-Trash | f in Trash' implies always f in Trash')
-- div,1
-- equiv pair end
-- equiv pair start,3
always some f : File | eventually f in Trash => eventually f not in Trash
-- div,2
always some f : File | f not in Trash until (eventually f in Trash => eventually f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (some f:File | f not in Trash implies eventually always f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : File | eventually f in Trash => always (eventually f not in Trash)
-- div,1
all f : File | (always eventually f in Trash) implies (always eventually f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File | ((f not in Trash)and(f in Trash')) implies always f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,3
eventually some Trash and all f: File | f in Trash implies always f in Trash
-- div,2
eventually some Trash and all f: File | once f in Trash implies always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : File-Trash | eventually f in Trash => after eventually f not in Trash
-- div,1
all f : File-Trash | eventually f in Trash => eventually after  f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f : File | eventually f in Trash
always all f : Trash | f in Trash'
-- div,2
-- equiv pair end
-- equiv pair start,1
always some f : File | eventually f in Trash => after eventually f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually some f : File | f in Trash => after (always eventually f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always eventually some Trash and all f: File | f in Trash implies always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f : File | (always eventually f in Trash) implies (always eventually f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | eventually f in Trash => always ( f in Trash and eventually f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected | (always eventually f in Trash) implies (always eventually f not in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File - Protected | eventually f in Trash
always all f : Trash - Protected | f in Trash'
-- div,1
-- equiv pair end
