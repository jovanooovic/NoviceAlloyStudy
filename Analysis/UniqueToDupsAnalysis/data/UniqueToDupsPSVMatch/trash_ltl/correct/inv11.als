always File - Protected in Protected'
-- div,12
always all f:(File-Protected)|  f in Protected'
-- div,6
always(all f:File-Protected | after f in Protected)
-- div,13
always all f:File | f not in Protected implies f in Protected'
-- div,17
always (some (File - Protected) implies ((File - Protected) in Protected'))
-- div,6
always all f:File | f not in Protected implies after f in Protected
-- div,18
always(all a : File - (File & Protected) |  after (a in Protected))
-- div,1
always all f:File | f in File-Protected implies after f in Protected
-- div,8
