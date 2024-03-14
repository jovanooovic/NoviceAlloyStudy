always
-- div,1
always all t : Trash | t not in File')
-- div,1
always (all f:File | f in Trash  after  f not in File
-- div,1
since all f:File  | f in Trash implies f not in File'
-- div,1
always (all f:File | f in Trash  after  f not in File)
-- div,1
all f: File | once f in Trash implies releases f' in File
-- div,1
all f: File | always f in Trash implies releases f' in File
-- div,1
always since all f:File  | f in Trash implies f not in File'
-- div,1
always all f:File  | since f in Trash implies f not in File'
-- div,1
all f: File |always (since f in Trash releases f' not in File)
-- div,1
all f: File | once f in Trash implies always releases f' in File
-- div,1
all f: File | once f in Trash implies always triggered f' in File
-- div,1
all f: File | once f in Trash implies always triggered f' not in File
-- div,1
all f: File |always ((eventually f in Trash) implies triggered File' = File - f)
-- div,1
