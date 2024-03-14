Worker = Human + Robot
-- div,29
Worker = Robot + Human
-- div,1
Worker in Human+Robot
-- div,4
no Worker - Robot - Human
-- div,1
no Worker - (Robot + Human)
-- div,1
no (Worker-Human-Robot)
-- div,1
all w : Worker | w in Human+Robot
-- div,9
all x : Worker | x in Robot + Human
-- div,1
all x : Worker | x in Human+Robot
-- div,1
all h : Worker | h in (Human + Robot)
-- div,1
no Human&Robot
Worker = Human + Robot
-- div,2
all a:Worker | a in Human or a in Robot
-- div,1
all p: Worker | p in Human or p in Robot
-- div,1
all u : Worker | u in Human or u in Robot
-- div,1
all w:Worker | w in Robot or w in Human
-- div,5
Human & Robot = none
Worker = Human + Robot
-- div,1
all x:Worker| x in Human or x in Robot
-- div,15
all w:Worker| w in Human or w in Robot
-- div,62
all x : Worker - Human - Robot | #x = 0
-- div,1
all x: Worker| x in Robot or x in Human
-- div,1
all w : Worker | w in Human iff w !in Robot
-- div,3
Worker - Human = Robot
Worker - Robot = Human
-- div,1
no Worker - (Robot + Human)
Worker = Robot + Human
-- div,1
all x : Worker | x in Robot + Human - Robot&Human
-- div,2
all x : Worker | x in Human-Robot || x in Robot-Human
-- div,3
all x : Worker | x in Robot+Human and x not in Robot&Human
-- div,1
no Worker - (Robot + Human)
Worker = Robot + Human


no Robot & Human
-- div,2
all x : Worker | (x in Human or x in Robot) and (x not in Human or x not in Robot)
-- div,2
all w : Worker | (w in Human or w in Robot) and (w not in Human or w not in Robot)
-- div,1
all w:Worker| w in Human or w in Robot and (w not in Human or w not in Robot)
-- div,3
no Worker - (Robot + Human)
Worker = Robot + Human
all x : Worker | x in Human or x in Robot
-- div,1
