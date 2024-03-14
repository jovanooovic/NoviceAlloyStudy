end in ^begin.succ
-- div,1
no (iden & begin.^succ)
-- div,1
one begin -> end in *succ
-- div,1
one Workstation.succ or end
-- div,1
(all w: Workstation | one end in w.succs)
-- div,1
no succ.begin
all w : Workstation | succ.w
-- div,1
all ws : Workstation | end in begin.ws.succs
-- div,1
all ws : Workstation | begin->end in ws.^succ
-- div,1
all ws : Workstation | begin->end in ws.*succ
-- div,1
all w:Workstation|  end => w in begin.^(succ)
-- div,1
all ws : Workstation | one begin->end in *succ
-- div,1
all ws : Workstation | ws.end in ws.begin.succs
-- div,1
all ws : Workstation | ws->end in ws.begin.succs
-- div,1
all w: Workstation | one begin in w && one end in w
-- div,1
all w: Workstation | one w in begin && one w in end
-- div,1
all ws : Workstation | ws in begin implies ws.*(succ) & end
-- div,1
all ws : Workstation| ws in begin implies one ws.^(succ).end
-- div,1
all ws : Workstation| ws in begin implies one ws.^(succ) in end
-- div,1
all w1, w2 : Workstation | (w1 in succ.w2) => (w2 in succ.*succ)
-- div,2
all w1, w2 : Workstation | (w1 in succ.w2) implies (w2 in succ.*succ)
-- div,1
all ws : Workstation | end in begin.ws.succs and one end and one begin
-- div,1
all w : Workstation | w in begin => set w.succ && w in end => set succ.w
-- div,1
all ws : Workstation | one ws.begin
all ws : Workstation | no ws.^(succ)
-- div,1
(all w: Workstation | one begin in w) && (all w: Workstation | one end in w)
-- div,1
(all w: Workstation | one end in w.succs) && (all w: Workstation | one end in w)
-- div,1
not succ & iden
all ws : (Workstation-end) | one ws.succ
no end.succ
no succ.begin
-- div,1
all ws : Workstation | one end : Workstation | one begin : Workstation | end in begin.ws.succs
-- div,1
one begin
all ws: Workstation | (ws.succ = {} => ws = end) and (ws.succ != {} => #ws.succ = 1)
one end
-- div,1
no (iden & ^succ)
all ws : Workstation | ws in begin.^succ && lone ws.succ
no succ.begin && end.succ
no begin&end
-- div,1
no begin->end in succ and (one begin.succ and one succ.end and (all w : Workstation-begin-end | one w.succ and one succ.w))
-- div,1
all w:workstation | ( w in begin and #w.succ=1 and #succ.w=0  ) or ( w in end and #w.succ=0 and #succ.w=1   ) or ( #w.succ=1 and #succ.w=1 )
-- div,1
all w:workstation | ( w in begin and #w.succ=1 and #succ.w=0   ) or ( w in end and #w.succ=0 and #succ.w=1   ) or ( #w.succ=1 and #succ.w=1 )
-- div,1
