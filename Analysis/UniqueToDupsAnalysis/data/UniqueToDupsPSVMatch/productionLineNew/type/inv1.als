Human or Robot
-- div,1
no Human Robot
-- div,1
Worker = Human or Robot
-- div,2
Worker =  Human or Robot
-- div,1
Worker in ( Human or Robot)
-- div,1
all h: Human | h in workers
-- div,1
all h : Human | h in workers
-- div,1
all a:Worker | Human or Robot
-- div,1
all a:Worker | Human.a || Robot.a
-- div,1
all w:Worker | w in Human or Robot
-- div,1
all a:Human | all b:Robot | not a& b
-- div,1
all w:Worker | w in ( Human or Robot)
-- div,1
no Human Robot
Worker = Human + Robot
-- div,1
all h: Human, r: Robot | h in workers
-- div,1
all w:Worker | w in Robot & w in Human
-- div,1
all w : Worker | w is Human or w is Robot
-- div,1
all x: Worker | x in Human or x iin Robot
-- div,1
all a:Worker | one a.Human or one a.Robot
-- div,1
all w:Worker | no (w in Human and w in Robot)
-- div,1
all w:Worker | no ((w in Human) and (w in Robot))
-- div,1
all w:Worker | all h:Human | all r:Robot | w -> h & w->r
-- div,1
all w:Worker | all h:Human | all r:Robot | w -> h && w->r
-- div,1
all w:Worker | all h:Human | all r:Robot | w -> h & w -> r
-- div,1
all w:Worker | all h:Human | all r:Robot | w -> h or w -> r
-- div,1
