some Trash
-- div,1
after some File
-- div,1
eventually no File
-- div,3
eventually no Trash
-- div,7
always File in Trash
-- div,1
eventually no File'
-- div,1
eventually some Trash
-- div,24
eventually File in Trash
-- div,3
eventually File' in File
-- div,2
no Trash until some Trash
-- div,1
eventually File' not in File
-- div,2
eventually (Trash' in Trash)
-- div,1
some File until some Trash
-- div,2
eventually (no File - Trash)
-- div,1
eventually (no Trash + File)
-- div,1
eventually always some Trash
-- div,1
always (eventually some Trash)
-- div,1
eventually some File & Trash
-- div,5
some Trash releases some File
-- div,1
eventually #File < #File'
-- div,1
some File releases some Trash
-- div,1
eventually File.link in Trash
-- div,1
eventually Trash.link in Trash
-- div,1
eventually (Trash + File = Trash)
-- div,1
eventually some File-Protected
-- div,1
eventually File' = File-Trash
-- div,3
Trash' = Trash + (File' - File)
-- div,1
no Trash and eventually some Trash
-- div,4
some Trash implies eventually no Trash
-- div,1
some Trash eventually no Trash
-- div,2
some File implies eventually some Trash
-- div,2
some File eventually some Trash
-- div,2
some t: Trash | once t in File
-- div,1
some File eventually File in Trash
-- div,2
some t: Trash | once t in Trash
-- div,1
some f: File | after f in Trash
-- div,1
some f: File | after f not in Trash
-- div,1
no Trash and no Trash until some Trash
-- div,1
eventually some File
after no File
-- div,2
eventually some ((File-Protected) & Trash)
-- div,1
eventually all f:File | f not in File
-- div,2
all f:File | eventually f not in File
-- div,3
some f:File | eventually some Trash
-- div,1
eventually some f:File | f in Trash
-- div,11
some f:File | eventually f in Trash
-- div,18
all f : Trash | eventually f not in File
-- div,2
some f : File | eventually f not  in Trash
-- div,1
eventually (Trash' = Trash + (File' - File))
-- div,1
all f:File | eventually no f & File
-- div,1
eventually (File in File' and File != File')
-- div,2
eventually ( some f:File | f' in Trash)
-- div,1
some f:Trash | eventually no Trash & f
-- div,2
always all f : File | File' = File - f
-- div,1
eventually (
some f: Trash | f not in Trash'
)
-- div,1
some f : File | eventually some File - f
-- div,1
eventually ( some f:File | f' in Trash')
-- div,4
some File and some Trash and eventually no Trash
-- div,1
all f : File | f in File until f not in File
-- div,1
all f : Trash | f in File until f not in File
-- div,1
always all f : File | eventually f in Trash
-- div,1
always all f: File | eventually f not in File
-- div,2
eventually (some f:File | after f in Trash)
-- div,2
all f : File | always eventually f not in File
-- div,1
some f: File | f not in Trash until f in Trash
-- div,1
all f : Trash | always eventually f not in File
-- div,2
some f : File | eventually always f in Trash
-- div,1
no File & Trash and eventually some File & Trash
-- div,1
eventually (all t: File | File' = File - t)
-- div,1
always all f : Trash | eventually f not in File
-- div,1
always some f : File | eventually f in Trash
-- div,4
always (all f:File | eventually no f&File)
-- div,1
eventually (all t: Trash | Trash' = Trash - t)
-- div,1
all f:File | eventually some (f.link & Trash)
-- div,1
some f:File | eventually Trash' = Trash + f
-- div,1
eventually (some f : Trash | Trash' = Trash - f)
-- div,1
some f : File | eventually (f+f.link) in Trash
-- div,1
eventually some Trash
some File until some Trash
-- div,1
some f : File | eventually f+link.f in Trash
-- div,2
eventually (some f : File-Protected | f in Trash)
-- div,2
some f:File-Protected | eventually f in Trash
-- div,1
some f: File | f not in Trash implies after f in Trash
-- div,1
always all f : Trash | f in File until f not in File
-- div,1
some f: File | no Trash and eventually f in Trash
-- div,2
no Trash and some f: File | eventually (f in Trash)
-- div,1
all f : Trash | f in File until always f not in File
-- div,1
all f : File | f in Trash => eventually f not in File
-- div,1
all f : File | f not in Trash and eventually f in Trash
-- div,1
always all f : File | eventually File' = File - f
-- div,1
some f:Trash-Protected | eventually no Trash & f
-- div,2
some f: File | f not in Trash and eventually f in Trash
-- div,3
always some f : Trash | f in Trash releases f in File
-- div,1
always eventually #File' < #File || #File' = #File
-- div,1
eventually some f:File | f in File-Trash-Protected
-- div,1
always (some f: File | f not in Trash implies after f in Trash)
-- div,1
eventually some f:File | f not in Trash and f not in Protected
-- div,1
some f : File | eventually f in Trash and link.f in Trash
-- div,1
some f:File | eventually f in Trash and f.link in Trash
-- div,1
all f : File | always f in Trash => eventually f not in File
-- div,1
eventually (some f: File | f not in Trash implies after f in Trash)
-- div,1
some f:File | eventually f in Trash and f.~link in Trash
-- div,2
some f : File | f in Trash implies eventually File' = File - f
-- div,1
always (some f:Trash-Protected | eventually no Trash & f)
-- div,1
some f: File | eventually always f not in File since f in Trash
-- div,1
all f : File | always eventually f not in File + Protected + Trash
-- div,1
some f : File - Protected | f not in Trash and eventually f in Trash
-- div,1
all f : Trash | always eventually f not in File + Protected + Trash
-- div,1
