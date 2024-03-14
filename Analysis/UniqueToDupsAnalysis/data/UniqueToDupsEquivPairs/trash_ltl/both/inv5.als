-- equiv pair start,5
some Trash
-- div,1
some File releases some Trash
-- div,1
some t: Trash | once t in File
-- div,1
some t: Trash | once t in Trash
-- div,1
some f: File | eventually always f not in File since f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
after some File
-- div,1
-- equiv pair end
-- equiv pair start,7
eventually no File
-- div,3
eventually (no Trash + File)
-- div,1
eventually all f:File | f not in File
-- div,2
eventually (all t: File | File' = File - t)
-- div,1
-- equiv pair end
-- equiv pair start,9
eventually no Trash
-- div,7
some Trash implies eventually no Trash
-- div,1
eventually (all t: Trash | Trash' = Trash - t)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually no File'
-- div,1
-- equiv pair end
-- equiv pair start,1
always File in Trash
-- div,1
-- equiv pair end
-- equiv pair start,43
eventually some Trash
-- div,24
no Trash until some Trash
-- div,1
eventually some File & Trash
-- div,5
eventually some f:File | f in Trash
-- div,11
eventually ( some f:File | f' in Trash)
-- div,1
eventually (some f: File | f not in Trash implies after f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,2
eventually File' in File
-- div,2
-- equiv pair end
-- equiv pair start,5
eventually File in Trash
-- div,3
eventually (no File - Trash)
-- div,1
eventually (Trash + File = Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually #File < #File'
-- div,1
-- equiv pair end
-- equiv pair start,3
some File until some Trash
-- div,2
eventually some Trash
some File until some Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
eventually File' not in File
-- div,2
-- equiv pair end
-- equiv pair start,1
eventually always some Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (Trash' in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,3
eventually File' = File-Trash
-- div,3
-- equiv pair end
-- equiv pair start,1
some Trash releases some File
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually File.link in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually Trash.link in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
some Trash eventually no Trash
-- div,2
some File and some Trash and eventually no Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually some File-Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always (eventually some Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
some f: File | after f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
Trash' = Trash + (File' - File)
-- div,1
-- equiv pair end
-- equiv pair start,3
some File eventually some Trash
-- div,2
some f:File | eventually some Trash
-- div,1
-- equiv pair end
-- equiv pair start,6
no Trash and eventually some Trash
-- div,4
no Trash and no Trash until some Trash
-- div,1
no File & Trash and eventually some File & Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
some File eventually File in Trash
-- div,2
-- equiv pair end
-- equiv pair start,2
eventually some File
after no File
-- div,2
-- equiv pair end
-- equiv pair start,1
some f: File | after f not in Trash
-- div,1
-- equiv pair end
-- equiv pair start,19
some f:File | eventually f in Trash
-- div,18
some f: File | f not in Trash until f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
all f:File | eventually f not in File
-- div,3
all f:File | eventually no f & File
-- div,1
all f : File | f in File until f not in File
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File | File' = File - f
-- div,1
-- equiv pair end
-- equiv pair start,2
some f:Trash | eventually no Trash & f
-- div,2
-- equiv pair end
-- equiv pair start,2
some File implies eventually some Trash
-- div,2
-- equiv pair end
-- equiv pair start,6
eventually ( some f:File | f' in Trash')
-- div,4
eventually (some f:File | after f in Trash)
-- div,2
-- equiv pair end
-- equiv pair start,1
some f : File | eventually some File - f
-- div,1
-- equiv pair end
-- equiv pair start,4
all f : Trash | eventually f not in File
-- div,2
all f : Trash | f in File until f not in File
-- div,1
all f : File | f in Trash => eventually f not in File
-- div,1
-- equiv pair end
-- equiv pair start,3
eventually some ((File-Protected) & Trash)
-- div,1
eventually (some f : File-Protected | f in Trash)
-- div,2
-- equiv pair end
-- equiv pair start,1
some f : File | eventually f not  in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f : File | eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File | eventually Trash' = Trash + f
-- div,1
-- equiv pair end
-- equiv pair start,2
some f : File | eventually f+link.f in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
some f : File | eventually always f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,4
always some f : File | eventually f in Trash
-- div,4
-- equiv pair end
-- equiv pair start,1
eventually (Trash' = Trash + (File' - File))
-- div,1
-- equiv pair end
-- equiv pair start,2
eventually (File in File' and File != File')
-- div,2
-- equiv pair end
-- equiv pair start,1
some f:File-Protected | eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File | eventually some (f.link & Trash)
-- div,1
-- equiv pair end
-- equiv pair start,3
always all f: File | eventually f not in File
-- div,2
always (all f:File | eventually no f&File)
-- div,1
-- equiv pair end
-- equiv pair start,2
all f : File | always eventually f not in File
-- div,1
all f : File | always eventually f not in File + Protected + Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f : File | eventually (f+f.link) in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (
some f: Trash | f not in Trash'
)
-- div,1
-- equiv pair end
-- equiv pair start,3
all f : Trash | always eventually f not in File
-- div,2
all f : Trash | always eventually f not in File + Protected + Trash
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f : Trash | eventually f not in File
-- div,1
always all f : Trash | f in File until f not in File
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (some f : Trash | Trash' = Trash - f)
-- div,1
-- equiv pair end
-- equiv pair start,2
some f:Trash-Protected | eventually no Trash & f
-- div,2
-- equiv pair end
-- equiv pair start,1
always all f : File | eventually File' = File - f
-- div,1
-- equiv pair end
-- equiv pair start,3
some f: File | no Trash and eventually f in Trash
-- div,2
no Trash and some f: File | eventually (f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always eventually #File' < #File || #File' = #File
-- div,1
-- equiv pair end
-- equiv pair start,2
eventually some f:File | f in File-Trash-Protected
-- div,1
eventually some f:File | f not in Trash and f not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Trash | f in File until always f not in File
-- div,1
-- equiv pair end
-- equiv pair start,1
always some f : Trash | f in Trash releases f in File
-- div,1
-- equiv pair end
-- equiv pair start,1
some f: File | f not in Trash implies after f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : File | f not in Trash and eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
some f:File | eventually f in Trash and f.link in Trash
-- div,1
-- equiv pair end
-- equiv pair start,3
some f: File | f not in Trash and eventually f in Trash
-- div,3
-- equiv pair end
-- equiv pair start,1
always (some f:Trash-Protected | eventually no Trash & f)
-- div,1
-- equiv pair end
-- equiv pair start,3
some f : File | eventually f in Trash and link.f in Trash
-- div,1
some f:File | eventually f in Trash and f.~link in Trash
-- div,2
-- equiv pair end
-- equiv pair start,1
all f : File | always f in Trash => eventually f not in File
-- div,1
-- equiv pair end
-- equiv pair start,1
some f : File | f in Trash implies eventually File' = File - f
-- div,1
-- equiv pair end
-- equiv pair start,1
always (some f: File | f not in Trash implies after f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
some f : File - Protected | f not in Trash and eventually f in Trash
-- div,1
-- equiv pair end
