}


check inv1Ok {inv1 iff inv1o
}

pred inv1{

}


check inv1Ok {inv1 iff inv1o} for 4

pred inv1o{
no Trash
-- div,1
Trash
-- div,1
~Trash
-- div,1
Trash = {}
-- div,2
none Trash
-- div,1
Trash none
-- div,1
none trash{}
-- div,1
~ (some Trash)
-- div,1
Trash is empty
-- div,1
no File = Trash
-- div,1
none Trash.link
-- div,1
Trash.link = {}
-- div,1
no Trash in File
-- div,1
no File in Trash
-- div,7
lone File in Trash
-- div,1
all t:Trash | t.link={}
-- div,1
all f:File |lone Trash.f
-- div,1
all f : File | lone f.Trash
-- div,2
all f: File | no f in Trash
-- div,1
all f : File | no f in Trash
-- div,1
all t:Trash | lone File in t
-- div,1
~ (all file : File | ~ (file in Trash))
-- div,1
all files : univ | files in Trash implies none file
-- div,1
all files : univ | no files in Trash implies none Trash
-- div,1
all files : univ | no files in Trash implies none in Trash
-- div,1
all files : univ | files in Trash implies no files in Trash
-- div,1
all files : univ | no files in Trash implies none file in Trash
-- div,1
