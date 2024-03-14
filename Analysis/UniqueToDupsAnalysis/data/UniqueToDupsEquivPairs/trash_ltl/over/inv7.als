-- equiv pair start,17
some Protected
-- div,9
some File & Protected
-- div,2
some f:File | f in Protected
-- div,6
-- equiv pair end
-- equiv pair start,1
after some Protected
-- div,1
-- equiv pair end
-- equiv pair start,6
always some Protected
-- div,5
always some f : File | f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
some f : File | after f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,11
some f:File | eventually f in Protected
-- div,8
some f: File | eventually f' in Protected
-- div,1
some f: File | f in File implies eventually f' in Protected
-- div,1
some f: File | f in File and eventually f' in Protected
-- div,1
-- equiv pair end
-- equiv pair start,1
always some f : File | after f in Protected
-- div,1
-- equiv pair end
-- equiv pair start,2
some f: File | always (eventually f in Protected)
-- div,1
some f: File | always (eventually f' in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,2
some f: (File - Protected) | eventually f in Protected
-- div,2
-- equiv pair end
-- equiv pair start,1
always (some f: (File - Protected) | eventually f in Protected)
-- div,1
-- equiv pair end
-- equiv pair start,1
eventually (some f: (File - Protected) | eventually f in Protected)
-- div,1
-- equiv pair end
