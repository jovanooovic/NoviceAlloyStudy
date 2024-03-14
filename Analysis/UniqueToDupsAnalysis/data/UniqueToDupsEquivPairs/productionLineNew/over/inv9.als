-- equiv pair start,42
all w: Workstation | (w not in w.*succ)
-- div,2
no (iden & ^succ)
Workstation in begin.^succ
-- div,1
all ws : Workstation | one ws.^(succ) && no succ.ws
-- div,1
all wc: Workstation | wc not in wc.^succ and #wc.succ = 1
-- div,2
begin.^succ = Workstation
no succ.begin
begin.succ = end
-- div,1
no (iden & ^succ)
Workstation in begin.^succ
no end.succ
-- div,1
no (iden & ^succ)
all ws : Workstation | ws in begin.^succ
-- div,1
all w1, w2 : Workstation | w2 in w1.*succ implies w1 not in w2.*succ
-- div,1
begin.^succ = Workstation
no succ.begin
no end.succ
begin.succ = end
-- div,1
no (iden & ^succ)
all ws : Workstation | ws in begin.^succ && lone ws.succ
-- div,1
no end.succ
all w : Workstation | one ws: Workstation-w | ws in w.succ
-- div,1
all w : Workstation | (w not in w.^succ) and (one w.succ)
no end.succ
no succ.begin
-- div,1
all x:Workstation | x not in succ.x and lone succ.x
all x:Workstation | (x in begin and x not in end)
-- div,1
end in begin.*succ
begin in *succ.end
succ in (Workstation-begin) one -> lone Workstation
no iden & succ
-- div,1
all w,v: Workstation | one w.succ and (w in v.*succ implies v not in w.*succ)

one begin.succ
no end.succ
-- div,1
one begin.workstation and one workstation.end and (all w : Workstation-begin-end | one w.succ and one succ.w)
-- div,3
no (iden & ^succ)
all ws : Workstation | ws in begin.^succ && lone ws.succ
no succ.begin && no end.succ
-- div,1
all ws : Workstation | ws in begin.^succ && lone ws.succ
no succ.begin && no end.succ
#begin.^succ >= 1
-- div,1
all ws : Workstation | one ws.succ
begin.^succ = Workstation
no succ.begin
no end.succ
begin.succ = end
-- div,1
all ws : Workstation | lone ws.succ
begin.^succ = Workstation
no succ.begin
no end.succ
begin.succ = end
-- div,1
no (iden & ^succ)
Workstation in begin.^succ
no end.succ
no succ.begin
all ws : Workstation | lone ws.succ
-- div,1
one begin.workstation and one workstation.end and (all w : Workstation-begin-end | one w.workstation and one workstation.w)
-- div,1
all w : Workstation | one w.succ
all w : Workstation | w not in w.^succ
all w : Workstation | begin not in w.^succ
-- div,1
all w: Workstation | one w.succ
all w, v: Workstation | v in w.succ implies not w in v.succ
one begin.succ
no end.succ
-- div,1
all ws:Workstation| one ws.succ and begin not in ws.succ
all ws:Workstation-begin| ws in begin.^succ
no end.succ
-- div,1
no (iden & ^succ)
all ws : Workstation | ws in begin.^succ && lone ws.succ
no succ.begin
no end.succ
no begin&end
-- div,2
all w: Workstation | one w.succ
all w, v: Workstation | w' in w.succ implies not w' in w.succ
one begin.succ
no end.succ
-- div,1
no (iden & ^succ)
Workstation in begin.^succ
no end.succ
no succ.begin
all ws : Workstation | lone ws.succ
begin not in end
-- div,1
no (iden & ^succ)
all ws : Workstation | ws in begin.^succ && lone ws.succ
no succ.begin && no end.succ
#begin.^succ >= 1
-- div,2
no (iden & ^succ)
Workstation in begin.^succ
no end.succ
no succ.begin
all ws : Workstation | lone ws.succ
no begin&end
-- div,1
all w,v: Workstation | one w.succ and (w in v.*succ implies v not in w.*succ)

one begin.succ iff some Workstation-begin
no end.succ
-- div,1
all w : Workstation | some we : Workstation & end | some wb : Workstation & begin | (w.succ = we or w.succ = wb) and w != we and w != wb
-- div,1
all w : Workstation | one w.succ and begin != end
all w : Workstation | w not in w.^succ
all w : Workstation | begin not in w.^succ
-- div,1
no end.succ
no begin&end
no W:Workstation | begin in W.succ
all W:Workstation-end | one W.succ

all W:Workstation-begin | one W2:Workstation-begin-W | W in W2.succ
-- div,1
no end.succ
no W:Workstation | begin in W.succ
all W:Workstation-end | one W.succ
no begin&end

all W:Workstation-begin | one W2:Workstation-begin-W | W in W2.succ
-- div,1
all ws : Workstation | ws !in ws.*succ
all ws : Workstation | ws.succ = none => ws = end
all ws : Workstation | succ.ws = none => ws = begin
all ws : Workstation | (ws.succ != none) => (all wr : Workstation | wr in ws.succ => (wr.succ = none) => wr = end)
-- div,1
-- equiv pair end
-- equiv pair start,4
no end.succ
all w : Workstation - end | lone w.succ
Workstation - begin in begin.succ
-- div,1
no end.succ
all w : Workstation - end | lone w.succ
all w :Workstation - begin | w in begin.succ
-- div,1
no end.succ
all w : Workstation - end | lone w.succ and w not in w.^succ
Workstation - begin in begin.succ
-- div,1
no end.succ
all w : Workstation - end | lone w.succ
all w : Workstation | begin not in w.succ

Workstation - begin in begin.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
no (iden & ^succ)
Workstation in begin.*succ
no end.succ
no succ.begin
all ws : Workstation | lone ws.succ
no begin&end
-- div,1
-- equiv pair end
-- equiv pair start,4
all wc: Workstation | wc not in wc.^succ and (#wc.succ = 1 or #wc.succ = 0) and all wc2: Workstation - wc | wc2 in wc.^succ
-- div,1
no end.succ
no W:Workstation | W in W.^succ
no W:Workstation | begin in W.succ

all W:Workstation-end | one W.succ
all W:Workstation-begin | one W2:Workstation-begin | W in W2.succ
-- div,1
no end.succ
no W:Workstation | W in W.^succ
no W:Workstation | begin in W.succ

all W:Workstation-end | one W.succ
all W:Workstation-begin | one W2:Workstation-begin | W in W2.succ
end not in begin.succ
-- div,2
-- equiv pair end
