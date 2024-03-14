all ws:Workstation |  ^parts.Dangerous
-- div,1
no Dangerous.workstation.workers in Human
-- div,1
no (Dangerous.workstation.workers in Human)
-- div,1
all d : Dangerous | Human not d.workstation.workers
-- div,1
all c: Component | c in Dangerous implies c.workstation
-- div,1
no Dangerous.(parts-Material).workstation.workers & Human
-- div,1
all c: Component | c in Dangerous => (Human & c.workstation)
-- div,1
all c:Component | c in Dangerous => Human not in workers.workstation
-- div,1
all c: Component | c in Dangerous => (Human & c.workstation.workers)
-- div,1
all c: Component, ws: Workstation | c in Dangerous implies no ws.Human
-- div,1
all c:Component | c in Dangerous => Human not in c->workstation.workers
-- div,1
all c:Component | c in Dangerous => Human not in (c->workstation).workers
-- div,1
all c: Component | (c & Dangerous) implies no (c.workstation.workers & Human)
-- div,1
all c: Component, ws: Workstation | c in Dangerous implies no ws.workers.Human
-- div,1
all c:Component, ws:Workstation | c in Dangerous implies no ws.workers in Human
-- div,1
all c: Component, h:Human | c in Dangerous implies none c.workstation & workers.h
-- div,1
all c: Component, ws: Workstation | c in Dangerous implies no c.workstation.Human
-- div,1
all c : Component, w : c.workstation | c in Dangerous implies no Human in w.workers
-- div,1
all c: Component, h:Human | c in Dangerous implies none c.workstation & h.workstation
-- div,1
all c:Component, ws:Workstation |  c.^parts in Dangerous  => some Human not in workers
-- div,1
all c:Component, ws:c.Workstation | c in Dangerous implies no w:ws.workers | w in Human
-- div,3
all c:Dangerous, ws:c.Workstation | c in Dangerous implies no w:ws.workers | w in Human
-- div,1
all c:Component, ws:Workstation |  some Dangerous & c.^parts => not some Human in workers
-- div,1
all c : Component.Dangerous | c in Dangerous implies (c.workstation).workers not in Human
-- div,1
all c:Component, ws:Workstation |  some Dangerous & c.^parts => some Human not in workers
-- div,1
all c:Component, ws:Workstation |  some Dangerous & c.^parts => not some Human in ws.workers
-- div,1
all c:Component, ws:Workstation | c in Dangerous and c->ws in workstation => Human not in workers
-- div,1
all c: Component | all w: Worker | all ws: Workstation | c in Dangerous and w in c.ws implies w in Robot
-- div,1
all c : Component | all w : Workstation | c in Dangerous and w in c.workstation implies no Human in w.workers
-- div,1
all c:Component, ws:Workstation | c in Dangerous and c->ws in workstation => (not some h:Human| h in workers)
-- div,1
all c: Component | all w: Worker | all ws: Workstation | c in Dangerous and w in c.ws.workers implies w in Robot
-- div,1
