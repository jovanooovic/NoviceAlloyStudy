a
-- div,1
all
-- div,1
Human disj Robot
-- div,1
Workers in Human+Robot
-- div,1
Workers in Human + Robot
-- div,1
Worker in (Robots+Human)
-- div,1
Worker in Human + Robots
-- div,1
Workers in Human + Robots
-- div,1
Workers in (Human + Robot)
-- div,1
all w | w in (Human + Robot)
-- div,2
all w: Worker | Human | Robot
-- div,1
no Workers-Human&Workers-Robot
-- div,1
Workstation.worker in Human+Robot
-- div,1
all w: Workers | w in Human + Robot
-- div,1
all h:Human,r:Robot | implies Worker
-- div,1
all w : Worker | w==Robot or w==Human
-- div,1
fact
{
all w: Worker | Human | Robot
}
-- div,1
all w : Work | w in Human or w in Robot
-- div,1
all w:Worker| w in Human or w in Robots
-- div,1
all w: Worker | w in Human or W in Robot
-- div,1
all w: Workstation | w.Workers != w.succ
-- div,1
all w : Worker | a in Robot or a in Human
-- div,1
all w : Worker | w in Humam or w in Robot
-- div,1
all w: Workers | w in Human or w in Robot
-- div,2
all w : Workers | w in Robot or w in Human
-- div,1
all w : Workers | w in Human or w in Robot
-- div,4
all w in Worker | w in Human or w in Robot
-- div,1
Workers = (Human - Robot) + (Robot - Human)
-- div,1
all w : Workers | w in Robots or w in Human
-- div,1
all p : Worker implies p : Human | p : Robot
-- div,1
all p : Workers implies p in Human | p in Robot
-- div,1
all w:Worker | w in Human imples w not in Robot
-- div,1
all p in Workers implies p in Human | p in Robot
-- div,1
all w : Workers - Human - Robot | w not in Workers
-- div,1
all w:Worker | Workstation.w | (w & Human or w & Robot)
-- div,1
all w:Worker | worke in Human imples worker not in Robot
-- div,1
all w1,w2: Workers | w1 != w2 => w1 in Human and w2 in Robot
-- div,1
all w : Workstation | w.workers in Human or w.worker in Robot
-- div,1
all w1,w2: Workers | w1 != w2 => (w1 in Human and w2 in Robot)
-- div,1
all w: Workstation, w1: Worker | w->w1 in workers implies(w1 in Human or w2 in Robot)
-- div,1
all w: WorkStation, work: Worker | work in w.workers implies work in Human or work in Robot
-- div,1
fact
{
all w: Worker != Human
}

run inv1 {} for 3

}

pred inv1{

fact
{
all w: Worker != Human
}

run inv1 {} for 3
-- div,1
fact
{
all w: Worker | Human | Robot
}

run inv1 {} for 3

}

pred inv1{

fact
{
all w: Worker | Human | Robot
}

run inv1 {} for 3
-- div,1
