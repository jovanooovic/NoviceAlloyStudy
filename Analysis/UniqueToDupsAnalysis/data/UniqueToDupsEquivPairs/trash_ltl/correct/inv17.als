-- equiv pair start,47
always no Trash & File'
-- div,1
always no File' & File & Trash
-- div,1
always all t : Trash | t not in File'
-- div,5
always all f:Trash | f not in File'
-- div,7
always all t: Trash | after t not in File
-- div,5
always all f : Trash | after f not in File
-- div,8
always (all f:Trash | after no File&f)
-- div,2
always ( all f : (File & Trash) | after f not in File)
-- div,2
always all f : File | f in Trash => f not in File'
-- div,5
always all f:File | f in Trash implies after f not in File
-- div,9
always (all f : File | f in Trash implies after File = File - f)
-- div,1
always (all f : File | before f in Trash implies File = File - f)
-- div,1
-- equiv pair end
