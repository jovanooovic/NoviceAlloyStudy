some Protected
-- div,9
after some Protected
-- div,1
some File & Protected
-- div,2
always some Protected
-- div,5
some f:File | f in Protected
-- div,6
some f : File | after f in Protected
-- div,1
always some f : File | f in Protected
-- div,1
some f:File | eventually f in Protected
-- div,8
some f: File | eventually f' in Protected
-- div,1
always some f : File | after f in Protected
-- div,1
some f: File | always (eventually f in Protected)
-- div,1
some f: File | always (eventually f' in Protected)
-- div,1
some f: (File - Protected) | eventually f in Protected
-- div,2
some f: File | f in File implies eventually f' in Protected
-- div,1
some f: File | f in File and eventually f' in Protected
-- div,1
always (some f: (File - Protected) | eventually f in Protected)
-- div,1
eventually (some f: (File - Protected) | eventually f in Protected)
-- div,1
