-- equiv pair start,1
all u : User | all disj w1, w2 : u.visible | w1 not in w2.^(ids.~ids)
-- div,1
-- equiv pair end
