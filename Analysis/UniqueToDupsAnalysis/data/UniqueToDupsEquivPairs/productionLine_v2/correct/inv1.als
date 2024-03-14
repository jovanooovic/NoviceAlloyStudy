-- equiv pair start,241
Worker = Human + Robot
-- div,21
Human + Robot = Worker
-- div,1
Worker in Human+Robot
-- div,48
Worker in Robot + Human
-- div,7
no Worker - Robot - Human
-- div,1
no Worker-Human-Robot
-- div,3
no Worker-(Human+Robot)
-- div,1
(Human + Robot) & Worker = Worker
-- div,1
(Human + Robot) <: Worker = Worker
-- div,1
no Worker-Human&Worker-Robot
-- div,1
Worker = (Human - Robot) + (Robot - Human)
-- div,1
all w:Worker | w in Human+Robot
-- div,21
(Human & Worker) = Worker - (Robot & Worker)
-- div,1
all w : Worker | w in Robot+Human
-- div,2
Human <: Worker = Worker - (Robot <: Worker)
-- div,3
not some w : Worker | not w in Human+Robot
-- div,3
all w:Worker | w in Robot or w in Human
-- div,6
all w:Worker| w in Human or w in Robot
-- div,101
all w: Worker | w in Human <=> w not in Robot
-- div,4
all w1: Worker | (w1 in Human or w1 in Robot)
-- div,1
all ws: Worker | ws in Human or ws in Robot
-- div,1
all w : Worker - Human - Robot | w not in Worker
-- div,2
all work: Worker | work in Human or work in Robot
-- div,1
all x : Worker | one x & Human or one x & Robot
-- div,1
all w : Worker | w in (Human + Robot) - (Human & Robot)
-- div,1
all worker : Worker | worker in Human or worker in Robot
-- div,1
no ((Human <: Worker) & (Robot <: Worker))
Human + Robot = Worker
-- div,1
all w: Worker | w in Human => w not in Robot
all w: Worker | w not in Human => w in Robot
-- div,1
all w : Worker | w in Human or w in Robot
all w : Worker | w in Human implies w not in Robot
all w : Worker | w in Robot implies w not in Human
-- div,4
-- equiv pair end
