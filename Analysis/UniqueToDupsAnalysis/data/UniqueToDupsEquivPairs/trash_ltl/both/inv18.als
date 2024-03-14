-- equiv pair start,1
no (Trash & Protected)
-- div,1
-- equiv pair end
-- equiv pair start,7
always no Protected & Protected' & Trash
-- div,1
always all p : Protected | p in Trash implies p not in Protected'
-- div,1
always all f : Protected | f in Trash => f not in Protected'
-- div,2
always all p:Protected | p in Trash implies after p not in Protected
-- div,1
always all f : Protected | f in Trash implies after f not in Protected
-- div,2
-- equiv pair end
-- equiv pair start,2
always no Protected & Protected' & Trash'
-- div,1
always all f : Protected | f in Trash' => f not in Protected'
-- div,1
-- equiv pair end
-- equiv pair start,1
always Protected & Protected' not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always Trash not in Protected & Protected'
-- div,1
-- equiv pair end
-- equiv pair start,1
always Protected & Protected' not in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : File | f in Protected until f in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Protected | p in Protected until p in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always Protected & Protected' not in Trash + Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File - Protected | before f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,12
always(all f : (File & Trash) |  f not in Protected)
-- div,1
always all f:File | f in Trash implies f not in Protected
-- div,1
always(all f:Protected | f in Trash implies f not in Protected)
-- div,2
always(all f:File&Protected | f in Trash implies f not in Protected)
-- div,1
always(all f:Protected | f in Trash implies always f not in Protected)
-- div,1
always(all f:Protected | always (f in Trash implies f not in Protected))
-- div,1
always all p:Protected | p in File - Protected iff p in Trash
-- div,1
always all f: File | f in Protected and f in Trash implies f not in Protected
-- div,1
always(all f:File&Protected | always (f in Trash implies f not in Protected))
-- div,1
always(all f:File&Protected | f in Trash implies always f not in Protected)
-- div,1
always all f: File | f in Protected and f in Trash implies always f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,3
all f: File | f in Trash triggered f not in Protected
-- div,1
all p : Protected | p in Trash triggered p not in Protected
-- div,1
all f : Protected | always (f in Trash triggered  f not in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : (File & Trash) | always ( f not in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,2
all f: File | (f not in Protected releases f in Trash)
-- div,1
all f: File | once (f not in Protected releases f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | always (f in Protected until f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,3
always all f: File | (f in Protected until f in Trash)
-- div,3
-- equiv pair end
-- equiv pair start,2
all p : Protected | p not in Protected since p in Trash
-- div,1
(all f:Protected | f not in Protected since f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:File | f in Protected until f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | always (f in Trash => f not in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Protected | p not in Protected' implies p in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,20
always all p: Protected | p in Protected until p in Trash
-- div,5
always all f: Protected | f in Protected until f in Trash
-- div,15
-- equiv pair end
-- equiv pair start,1
always all f:File | f not in Protected implies f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f:File | f in Trash implies f not in Protected'
-- div,2
-- equiv pair end
-- equiv pair start,1
always some f:File | f in Trash implies f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | always (f in Trash' => f not in Protected')
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Protected | always p in File - Protected iff p'=Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
always (all f : File | f in Trash triggered f in Protected)
-- div,2
-- equiv pair end
-- equiv pair start,1
all f : File | always (f not in Protected since f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected | always (f in Protected until f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:Protected |  f not in Protected   releases  f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | always (f not in Protected releases f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always(all f : (File & Trash) | always ( f not in Protected))
-- div,1
-- equiv pair end
-- equiv pair start,8
always all f : Protected | f not in Protected' => f in Trash'
-- div,3
always all p : Protected | p not in Protected' => p in Trash'
-- div,3
always all f : Protected | after (f not in Protected => f in Trash)
-- div,1
always (
all f : File | f in Protected and f not in Protected' implies f in Trash'
)
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : Protected | always (f in Trash' => f not in Protected')
-- div,2
-- equiv pair end
-- equiv pair start,1
always all p : Protected | p not in Protected' until p in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected | always (f not in Protected since f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all t: Trash | once t in Protected and t not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always all p: Protected | p not in Trash until p not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f : File | (before f in Protected) implies f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
all f:Protected | eventually f in Trash implies f not in Protected
-- div,1
all f : Protected | always (eventually f in Trash => f not in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,2
always all p:Protected | p in File - Protected iff after p in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Protected | always p in File - Protected iff after p in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : Protected | always f not in Protected' => f in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f:Protected |  f in Trash  releases f not in Protected' )
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected | always (f not in Protected triggered  f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected | always (f in Trash' => always (f not in Protected))
-- div,1
-- equiv pair end
-- equiv pair start,1
always all p:Protected | p not in Protected' implies always p in Trash'
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected | always (f in Trash' => always (f not in Protected'))
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f:Protected | f in Trash-Protected triggered f in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,3
always all p: Protected | eventually p in Trash implies p not in Protected
-- div,2
always all f : Protected | eventually f in Trash => always f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f : Protected | f in Trash triggered after f not in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected-Trash | always (f in Trash' => always (f not in Protected))
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (all f:Protected | f in Trash-Protected triggered f not in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all p : Protected | p in Protected until (p in Trash or p not in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all p : Protected | p in Protected until (p in Trash and p not in Protected )
-- div,1
-- equiv pair end
-- equiv pair start,1
always all p: Protected | eventually p in Trash implies eventually p not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected | always (f in Protected until (f in Trash => always f not in Protected))
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Protected | always (f in Trash' => f not in Protected' or f in Trash => f not in Protected)
-- div,1
-- equiv pair end
