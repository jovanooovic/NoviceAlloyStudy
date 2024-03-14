all u:User, p:u.profile | some p.ids
-- div,1
always (all u : User, p : u.profile | some p.ids)
-- div,1
all s: Source | all disj id1, id2: ((source.s) & User.profile).ids | id1 != id2
-- div,1
