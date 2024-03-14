-- equiv pair start,64
eventually File not in File'
-- div,5
eventually some File - File'
-- div,1
eventually some f:File | f not in File'
-- div,35
eventually some f:File | no f & File'
-- div,1
eventually some f:File | after f not in File
-- div,8
eventually some f: File | eventually f not in File
-- div,8
eventually (some f:File | eventually no f&File)
-- div,2
eventually(some f:File | f in File implies eventually f not in File)
-- div,4
-- equiv pair end
