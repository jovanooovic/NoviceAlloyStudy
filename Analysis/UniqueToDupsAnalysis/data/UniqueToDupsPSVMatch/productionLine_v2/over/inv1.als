Worker in Human
-- div,2
Worker in Human & Robot
-- div,2
all w:Worker| w in Human
-- div,2
Worker in Human || Worker in Robot
-- div,2
all w : univ | w in (Human + Robot)
-- div,1
all w:Worker |  w in Human & Robot
-- div,1
all w : Worker | w =  Human or w = Robot
-- div,1
all w: Worker| w in Human and w in Robot
-- div,2
all w : Workstation | w in Human or w in Robot
-- div,1
no Worker
all w1,w2: Worker | w1 != w2 => (w1 in Human and w2 in Robot)
-- div,1
