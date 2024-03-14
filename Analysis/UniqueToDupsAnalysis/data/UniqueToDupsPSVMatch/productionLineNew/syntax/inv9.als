all
-- div,1
no begin.succ*
-- div,1
one begin in Workstation
-- div,1
begin.succ^* = Workstation
-- div,1
all x : Workstation | gt(x)
-- div,1
all x : Workstation | gt[x]
-- div,1
all b : begin | end in b.*(succs)
-- div,1
all b : begin | end in e.*(succs)
-- div,1
all e : entry | end in e.*(succs)
-- div,1
all w: Workstation| one w.^(succs)
-- div,1
one begin.succ and one succ.end and
-- div,2
all w : Workstation | w not in w.^succs
-- div,1
all w: Workstationd | (w not in w.*succ)
-- div,1
all w : Workstations | w not in w.^succs
-- div,1
all w : Workstation-w | one w.succ or w in end
-- div,1
all w : Workstation | w in begin => one w.succs
-- div,1
all w: Workstation | (w not in w.^succ
no end.succ
-- div,1
all x,y:Workstation| x in y.succ implies y.in x.succ
-- div,1
no succ.begin
no end.succ
Workstation-begin in begin.^
-- div,1
all w: Workstation | #w.succ = 1 && w.workers.size >= 0
-- div,1
all ws:Workstation-Begin| ws in Begin.^succ
no End.succ
-- div,1
all ws : Workstation| ws in begin implies some succs.end
-- div,1
all x: Workstation | x in begin or x in end or some x.succ)
-- div,2
all w: Workstation | w.succ.size = 1 && w.workers.size >= 0
-- div,1
all ws : Workstation| ws in begin implies end in ws.^(succs)
-- div,1
(all w : Workstation-begin-end | one w.succ and one succ.w))
-- div,1
all ws : Workstation| ws in begin implies ws.*(succs) in end
-- div,1
all ws : Workstation| ws in begin implies one ws.^(succs).end
-- div,1
all ws1,ws2:Workstation | (ws2 in begin and ws1 != ws2) implies
-- div,1
one fws : Workstation & begin | #ws.^succ - 1 = #ws.^succ - end
-- div,1
all ws : Workstation | one b:Begin | one e:End | end in b.succs
-- div,1
(all w : Workstation-begin-end | one w.succ and one succ.w) and
-- div,1
all w1, w2 : Worstation | w2 in w1.*succ implies w1 not in w2.*succ
-- div,1
all ws : Workstation | one b:Begin | one e:End | end in begin.succs
-- div,1
(all w: Workstation | one x: Workstation | x in w.succs && x in end)
-- div,1
all w, wb: Workstation|(wb in Begin and w!=wb) implies w in wb.^(succ)
-- div,1
(one w: end, b: begin | all x: (Workstation-w)-b | x not in (end+begin)
-- div,1
all wc: Workstation | wc not in wc.^succ and all wc1, wc2: wc.succ | wc1 == wc2
-- div,1
one begin.succ and one succ.end
all w : Workstation | one w.succs and one succs.w
-- div,1
all w : Workstation | some we : end, some wb : begin | w.succ == we or w.succ = wb
-- div,1
all x: Workstation-end-begin-x | no ^(succ).begin and no end.^(succ) and one x.^(succ)
-- div,1
all x: Workstation-end-begin | no ^(succs).begin and no end.^(succs) and one x.^(succs)
-- div,1
all ws : Workstation | one end : Workstation | one begin : Workstation | end in ws.succs
-- div,1
no end.succ
all w : Workstation - end | lone w.succ
Workstation - begin | w in begin.succ
-- div,1
all ws : Workstation | #(ws.succ) = 1 or (#ws.succ = 0 and ws = end)
-- div,1
all ws : Workstation | one end : Workstation | one begin : Workstation | end in begin.succs
-- div,1
all ws : Workstation | #(ws.succ) = 1 or (#ws.succ = 0 and ws in end)
-- div,2
all begin : Workstation, end : Workstation | begin not in begin.succs and end in begin.*succs
-- div,2
all ws : Workstations | one b : Begin | no succ.b
all ws : Workstations | one e : end | no e.succ
-- div,1
all ws : Workstation | one b : Begin | no succ.b
all ws : Workstation | one e : end | no e.^(succ)
-- div,1
all ws : Workstation | (ws in begin implies some ws.*(succ) & end) && (ws in end implies no ws.succ
-- div,1
all ws : Workstation| ws in begin implies (some ws1 : Workstation | ws1 in ws.*(succs) && ws1 in end)
-- div,1
all w: Workstation | no w.succ & w.succ.succ && ((w in begin.succ.*succ && (w = end or no)) || w = begin)
-- div,1
all w : Workstation | some we : Workstation & end, some wb : Workstation & begin | w.succ == we or w.succ = wb
-- div,1
all w : Workstation | some we : Workstation & end | some wb : Workstation & begin | w.succ == we or w.succ = wb
-- div,1
all w : Workstation | some we : Workstation & end | some wb : Workstation & begin | w.succ == we or w.succ == wb
-- div,1
all w : Workstation | w in begin => lone w.succ or w in end => lone succ.w or w in begin+end => no succ.w nad no w.succ
-- div,1
all w: Workstation | one w.succ
all w, w': Workstation | w' in w.succ implies not w' in w.succ
one begin.succ
no end.succ
-- div,1
begin.succ^* = Workstation

no w : Workstation | (w in begin.succ^*) and (w !in (begin + end))

begin.succ = end
no w:Workstation | w.succ = end
-- div,1
all ws : Workstation | (ws not in end and ws not in begin) implies one ws.succ
all ws : Workstation | (ws in end ow ws in begin) implies no ws.succ
-- div,2
no End.succ
no W:Workstation | Begin in W.succ
all W:Workstation-End | one W.succ
all W:Workstation-Begin | one W2:Workstation-Begin-W | W in W2.succ
-- div,1
all w, wb: Workstation|(wb in begin and w!=wb) implies w in wb.^(succ)
all w: Workstation| w not in end implies one w.succ
all w: Workstation| w not in w.^(succs)
-- div,1
all w : Workstation | (w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin and w in end and one Worstation)
-- div,1
(all w,wb:Workstation | (wb in begin and wb!=w) implies w in wb.^(succ))
and
(all w:Workstion | w not in w.^(succs))
and
(all w:Worsktation | w not in end implies one w.succ
-- div,1
(all w,wb:Workstation | (wb in begin and wb!=w) implies w in wb.^(succ))
and
(all w:Workstion | w not in w.^(succs))
and
(all w:Worsktation | w not in end implies one w.succ)
-- div,1
one begin.succ and one succ.end and

(no succ & iden) and ((w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin+end))
-- div,4
(all w,wb:Workstation | (wb in begin and wb!=w) implies w in wb.^(succ))
and
(all w:Workstation | w not in w.^(succs))
and
(all w:Workstation | w not in end implies one w.succ)
-- div,1
(all w,wb:Workstation | (wb in begin and wb!=w) implies w in wb.^(succ))
and
(all w:Workstation | w not in w.^(succ))
and
(all w:Workstation | w not in end implies one w.succ)
}
-- div,1
(all w1:Workstation, w2:Workstation | (w1 in begin and w1!=w2) implies w1 in w2.succ)
and
(all w: Workstation | w not in w.succ)
and
(all w:Worktation | w not in end implies one w.succ)
-- div,1
(all w1:Workstation, w2:Workstation | (w1 in begin and w1!=w2) implies w1 in w2.succ)
and
(all w1: Workstation | w not in w.succ)
and
(all w1:Worktation | w not in end implies one w1.succ)
-- div,1
all w:Workstation | ( w in begin and #w.succ=1 and #succ.w=0  ) or ( w in end and #w.succ=0 and #succ.w=1   ) or ( #w.succ=1 and #succ.w=1 ) or (w in begin and w in end adn #w.succ=0 and #succ.w=0)
-- div,1
all x: Workstation | no x.succ & x != end implies some x.succ
all x: Workstation | no x.succ & x != begin implies some x.^succ
all x: Workstation | x != begin & x != end implies some x.^succ & some x.succ
-- div,1
all ws: Workstation |
(ws = begin) => #ws.succ = 1
(ws = end) => #ws.succ = 0
(ws != begin && ws != end) => #ws.succ = 1
all ws1: Workstation, ws2: Workstation |
(ws1.succ[ws2]) => (ws2.succ[ws1] not in ws2.succ)
-- div,2
all ws : Workstation | (ws.succ = none) => ws = end
all ws : Workstation | (ws.succ != none) => ws = begin
all ws : Workstation | (ws.succ != none) => all ws' : Workstation | ws' in ws.succ => (ws' != ws) implies (ws'.succ = none) => ws' = end
-- div,1
