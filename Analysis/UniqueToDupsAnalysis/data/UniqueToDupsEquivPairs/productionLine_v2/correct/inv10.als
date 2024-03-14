-- equiv pair start,4
all c : Component | c.parts.workstation in (^succ).(c.workstation)
-- div,3
all c : Component | (c.parts & Component).workstation in c.workstation.^(~succ)
-- div,1
-- equiv pair end
