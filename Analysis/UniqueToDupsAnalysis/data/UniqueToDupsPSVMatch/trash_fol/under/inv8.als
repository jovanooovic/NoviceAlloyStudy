all l : File.link | l in Trash
-- div,2
all f : File.link | f in Trash
-- div,1
all l : File.link | l not in Trash
-- div,1
all f:File, l : f.link | l in Trash
-- div,1
all f : File | all l : f.link | l in Trash
-- div,1
