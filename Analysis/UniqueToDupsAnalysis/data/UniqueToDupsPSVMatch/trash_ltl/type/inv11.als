after Protected
-- div,1
no Protected in Protected'
-- div,1
always File after File in Protected
-- div,1
(not Protected) + Protected' = File
-- div,1
all f:File | f after f in Protected
-- div,1
Protected' =  (File not in Protected )
-- div,1
(File - Protected) after (File - Protected) in Protected
-- div,1
all f : File | some f not in Protected => f in Protected'
-- div,1
always all up:File-Protected | up implies up' in Protected
-- div,1
always all up:File-Protected | up implies afte up in Protected
-- div,1
