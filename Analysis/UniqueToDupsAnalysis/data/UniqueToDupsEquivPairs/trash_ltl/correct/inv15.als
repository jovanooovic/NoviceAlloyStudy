-- equiv pair start,49
always all f:File | eventually f in Trash
-- div,48
always(all f : (File - Trash) | eventually f in Trash)
-- div,1
-- equiv pair end
