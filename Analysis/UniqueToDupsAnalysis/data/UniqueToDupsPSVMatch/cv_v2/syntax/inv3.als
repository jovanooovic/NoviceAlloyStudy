all disj w1,w2 : Work | w1.id != w2.id
-- div,1
all u:User and some w1,w2:u.profile | no User
-- div,1
all u:User | w1,w2 : u.profile | w1.ids = w2.ids implies w1=w2
-- div,1
all u:User | (all w1,w2 :u.profile |w1.ids = w2.ids implies w1=w2))
-- div,1
id1,id2 : Id | all u:User | (id1.ids in u.profile and id2.ids in u.profile) implies id1!=id2
-- div,2
all u:User | all w1,w2 : Work | (w1 in u.profile and w2 in u.profile and w1.ids=w2.ids) implies w1=w2)
-- div,1
