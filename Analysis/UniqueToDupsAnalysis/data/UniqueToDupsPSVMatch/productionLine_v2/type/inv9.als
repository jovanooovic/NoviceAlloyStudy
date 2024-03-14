^begin.succ
-- div,1
begin.^succ.end
-- div,2
begin.^succ
-- div,2
^Workstation.succ
-- div,1
none (begin & end)
-- div,1
one begin.^succ.end
-- div,1
begin . ^ succ . end
-- div,1
one begin.(^succ).end
-- div,1
one begin.^(succ.end)
-- div,1
one ^Workstation.succ
-- div,1
(begin . ^ succ) . end
-- div,2
one begin.^(begin.succ.end)
-- div,1
one begin.(^begin.succ).end
-- div,1
one begin.^succ.Workstation
-- div,1
no Workstation.^succ & iden
-- div,1
begin.^succ.end in Workstation
-- div,1
one begin.^succ.Workstation.end
-- div,1
one (begin.^succ :> end - iden)
-- div,1
all b:begin | one end in b.^succ
-- div,1
lone (begin.^succ :> end - iden)
-- div,1
one begin.^(succ.Workstation).end
-- div,1
begin.(^succ - ^(succ).end) = end
-- div,1
one Workstation.^Workstation.succ
-- div,1
(begin.^succ :> (end - begin))
-- div,1
all w: Workstation | w.begin != w.end
-- div,1
one w : Workstation | begin.^succ.end
-- div,1
all ws:Workstation | no ws in ws.^succ
-- div,1
all w : workstation | one w.succ
-- div,1
all ws:Workstation | no ws in ws.^(succ)
-- div,1
all ws:Workstation | no ws in ws.(^succ)
-- div,2
Workstation in begin^succ and no end.succ
-- div,1
one begin.^{w : Workstation | one succ.w}
-- div,1
one w : Workstation | begin.^(succ.w).end
-- div,1
begin in ^{w : Workstation | one w.succ}.end
-- div,1
succ un Workstation lone -> lone Workstation
-- div,1
end in begin.^{w : Workstation | one succ.w}
-- div,1
one begin.^{w,z : Workstation | one w.succ.z}
-- div,1
one begin.^{w : Workstation | one succ.w}.end
-- div,3
one begin.^{w : Workstation | some succ.w}.end
-- div,1
one begin.^({ w:Workstation | some succ.w}).end
-- div,1
all x : Workstation | one x.succ
begin.^succ.end
-- div,1
one begin.^{w,z : Workstation | one w.succ.z}.end
-- div,2
one begin.^{some w : Workstation | one succ.w}.end
-- div,1
all x : Workstation | one x.succ
begin.(^succ).end
-- div,1
all x : Workstation | one x.succ
one begin.^succ.end
-- div,1
one begin.^{all w,z : Workstation | one w.succ.z}.end
-- div,2
all w:Workstation-end | one w.succ
no end.succ
begin.*succ
-- div,2
all w1,w2,w3: Workstation | w1 in begin & w3 in begin & w2.^succ
-- div,1
some w : Workstation | one begin.^{y : Workstation | one w.succ.y}.end
-- div,1
one Workstation & begin
one Workstation & end
all w : Workstation | w in ^succ
-- div,1
all w: Workstation | (Workstation-w or w in end or some w.succ) and w not in w.^succ
-- div,2
all w : Workstation | no succ.w <=> w = begin
all w : workstation | no w.succ <=> w = end
-- div,2
begin.*succ = Workstation
no Workstation.^succ & iden
all w : Workstation-end | one w.succ
-- div,2
all w : Workstation | no succ.w <=> w in begin
all w : workstation | no w.succ <=> w in end
-- div,1
begin not in begin.^succ
end begin.^succ
no end.succ
all w : Workstation - end | one w.succ
-- div,1
one w : Workstation | w in end and no w.succ
one w : Workstation | w in begin and w not in succ
-- div,2
one w : Workstation | w in end and no w.succ
one w : Workstation |

w in begin and w not in succ
-- div,1
all w: workstation | w not in Workstation.succ => w in begin
all w: Workstation | w not in w.^(succ)
all w: Workstation | no w.succ => w in end
-- div,1
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w in end implies not w.succ
-- div,1
all w : Workstation | no succ.w iff w = begin
all w : Workstation | no w.succ iff w = end
all w : Workstation | end in w.^succ and begin in w.^~succ
none end & begin
-- div,1
all w,wb : Workstation | wb in begin and w != wb implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not int end implies one w.succ
-- div,1
all w,wb : Workstation | (wb in begin and w != wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not int end implies one w.succ
-- div,3
one Workstation & begin
one Workstation & end
no begin in Workstation.^succ
no end in ^succ.Workstation
all w : Workstation | one w & (^succ.Workstation + Workstation.^succ)
-- div,1
all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)
all ws : Workstation | ws not in ws.^(succ)
all ws : Workstation | ws not in end implies ws.succ
-- div,1
all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)
all ws : Workstation | ws not in ws.^(succ)
all ws : Workstation | (ws not in end) implies ws.succ
-- div,1
