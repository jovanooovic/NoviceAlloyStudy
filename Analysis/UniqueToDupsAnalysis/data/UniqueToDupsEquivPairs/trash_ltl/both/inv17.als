-- equiv pair start,6
always Trash not in File'
-- div,3
always File & Trash not in File'
-- div,1
always (Trash-Trash' not in File')
-- div,1
always (some f:Trash | after no File&f)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f : Trash | File' = File - f
-- div,1
-- equiv pair end
-- equiv pair start,2
always (all f : File | after f in Trash)
-- div,2
-- equiv pair end
-- equiv pair start,3
always File & Trash not in File' & Trash'
-- div,1
always (some f:Trash | after no Trash&f)
-- div,2
-- equiv pair end
-- equiv pair start,2
all f : File | f not in File since f in Trash
-- div,1
all f: File |(always f' not in File since f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,4
all f : File | f in Trash implies f not in File
-- div,1
all f: File | once f in Trash implies always f' not in File
-- div,1
all f: File |once f in Trash implies always f' not in File and f' not in Trash and f' not in Protected
-- div,1
all f: File |always (once f in Trash ) implies always f' not in File and f' not in Trash and f' not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | once f in Trash releases f' in File
-- div,1
-- equiv pair end
-- equiv pair start,3
all f: File | always f in Trash releases f' in File
-- div,1
all f: File | once f in Trash releases always f' in File
-- div,1
all f: File |always (eventually f in Trash releases f' in File)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f:File | f in Trash implies after f not in File'
-- div,1
-- equiv pair end
-- equiv pair start,2
always all f : File | f not in File since f in Trash
-- div,1
always all f : File | f not in File since f in Trash and eventually f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,5
all f: File | once f in Trash releases f' not in File
-- div,1
all f: File | always f in Trash releases f' not in File
-- div,1
all f: File |always  (once f in Trash releases f' not in File)
-- div,1
all f: File | once f in Trash releases always f' not in File
-- div,1
all f: File |always (eventually f in Trash releases f' not in File)
-- div,1
-- equiv pair end
-- equiv pair start,1
always some f:File | f in Trash implies f not in File'
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:File | f in Trash implies after f in Trash
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | always (File' = File - f since f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File |always ( f in Trash implies File' = File - f)
-- div,1
-- equiv pair end
-- equiv pair start,4
all f: File | (File' = File - f since eventually f in Trash)
-- div,1
all f: File |(always f' not in File since eventually f in Trash)
-- div,1
all f: File |eventually (always f' not in File since f in Trash)
-- div,1
all f: File |(always File' = File - f since eventually f in Trash)
-- div,1
-- equiv pair end
-- equiv pair start,1
always (all f:File | f in Trash implies after f not in File')
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File | once f in Trash implies always after f not in File
-- div,1
-- equiv pair end
-- equiv pair start,2
all f: File |always (File' = File - f since eventually f in Trash)
-- div,2
-- equiv pair end
-- equiv pair start,2
all f: File |always (eventually f in Trash) implies File' = File-f
-- div,2
-- equiv pair end
-- equiv pair start,1
all f: File |eventually (once f in Trash implies File' = File - f)
-- div,1
-- equiv pair end
-- equiv pair start,2
all f: File |always ((eventually f in Trash) implies File' = File - f)
-- div,2
-- equiv pair end
-- equiv pair start,1
all f: File |eventually (once f in Trash implies always f not in File)
-- div,1
-- equiv pair end
-- equiv pair start,2
all f: File |always (eventually f in Trash) implies after f not in File
-- div,1
all f: File |always (eventually f in Trash) implies after File = File-f
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File |always ((eventually f in Trash) triggered File' = File - f)
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File |always (eventually f in Trash) implies after File' = File-f
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File |always (eventually f in Trash implies always f' not in File)
-- div,1
-- equiv pair end
-- equiv pair start,4
all f: File | always eventually f in Trash implies always after f not in File
-- div,2
all f: File |always (eventually f in Trash ) implies always f' not in File and f' not in Trash and f' not in Protected
-- div,1
all f: File |always (eventually f in Trash) implies always after f not in File and f' not in Trash and f' not in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
all f: File |always ((eventually f in Trash) implies always File' = File - f)
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:File | f not in Trash and eventually f in Trash implies f not in File
-- div,1
-- equiv pair end
-- equiv pair start,1
always all f:File | f not in Trash and eventually f in Trash implies after f not in File''
-- div,1
-- equiv pair end
