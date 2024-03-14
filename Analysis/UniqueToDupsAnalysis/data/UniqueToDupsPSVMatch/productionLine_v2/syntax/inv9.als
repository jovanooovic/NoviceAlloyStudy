^w.succ
-- div,1
Worstation.^succs = Workstation
-- div,1
Workstation.^succs = Workstation
-- div,1
^(w : Workstation | some w.succ)
-- div,1
one b:begin, e:end | e in b.*succs
-- div,1
all b:begin  e:end | end in b.^succ
-- div,1
all w1:Workstation-last | one w1.succ
-- div,1
all wk:Workstation | wk in wk.^(succs)
-- div,1
aWorkstation in begin.^succ & ^succ.end
-- div,1
end in begin.*succ
all w: begin.^succ |
-- div,1
one begin.^(w : Workstation | some w.succ)
-- div,1
Workstation in begin^succs and no end.succs
-- div,1
(Workstation in begin*succ) and (no end.succ)
-- div,2
one begin.^(w : Workstation | some w.succ).end
-- div,1
all w:Workstation-end | one w.succ
no end.succ.
-- div,1
all w: Workstation | w not in end implies and w not in w.^succ
-- div,1
all w1,w2,w3: Workstatiion | w1 in begin & w3 in begin & w2.^succ
-- div,1
all b : Begin | all e : End | b.succ in Workstation and no e.succ
-- div,1
no (Workstations & begin & end) implies one (begin.^succ :> end - begin)
-- div,1
all w:Workstation | w not in w.^succ

begin.^succ == Workstation - begin
-- div,1
all w:Workstation - end | one w.succ
no end : succ
Workstation in begin.*succ
-- div,2
one Workstation & Begin
one Workstation & End
all w : Workstation | w not in w.^succ
-- div,1
all w: Workstation - end | one w.succ
no end.succ
all w: Workstaion | w in begin.*succ
-- div,1
all b : begin | b not in Workstation.succ
all c : Component | all e : end | c in b.^succ
-- div,1
all w : Worksation | one wb, we : Worksation | wb in w.^workstation and we in w.^workstation
-- div,1
all w : Worksation | one wb, we : Workstation | wb in w.^workstation and we in w.^workstation
-- div,1
disj all ws1, ws2:Workstation | ws1->ws2 in succ => not some ws3:Workstation | ws3->ws2 in succ
-- div,2
all w : Workstation | one wb, we : Workstation | wb in w~.^workstation and we in w.^workstation
-- div,1
all w : Workstation | no succ.w w in begin and (no w.succ <=> w in end) and lone w.succ and w not in w.^succ
-- div,1
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
}
-- div,1
one b : begin | one e : end | all w : Workstation | w not in w.^succ | (b.^succ in (Workstation-b)) and (no e.^succ) and
-- div,1
one b : begin | one e : end | all w : Workstation | w not in w.^succ and (b.^succ in (Workstation-b)) and (no e.^succ) and
-- div,1
all w : Workstation | one w.succ
all w : Workstation | w not in w.^succ
one begin
one end
no end.succ
no beguin & Workstation.succ
-- div,1
all w:Workstation | w not in w.^succ
one w:Workstation | w.^succ = Workstation - w
no end.succ
no succ.begin
all w.Workstation | lone w.succ
-- div,2
begin not in Workstation.succ
all ws : Workstation-begin | in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
-- div,1
all b, w : Workstation | b in begin and b != w implies w in b.^succ
all w : Workstation | w not in w.^succ
all w : Workstation | w no in end implies some w.succ
-- div,1
all b, w in Workstation | b in begin and b != w implies w in b.^succ
all w : Workstation | w not in w.^succ
all w in Workstation | w no in end implies one w.succ
-- div,1
all b, w in Workstation | b in begin and b != w implies w in b.^succ
all w : Workstation | w not in w.^succ
all w : Workstation | w no in end implies some w.succ
-- div,1
all b, w in Workstation | b in begin and b != w implies w in b.^succ
all w : Workstation | w not in w.^succ
all w in Workstation | w no in end implies some w.succ
-- div,1
all b, w in Workstation | b in begin and b != w implies w in b.^succ
all w : Workstation | w not in w.^succ
all w : Workstation | w no in end implies somee w.succ
-- div,1
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
ll w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
all w, wb : Workstation | wb in begin and w!=wb implies w in wb.^(succ)
all w : Workstation | w not in w.^succ
all w : Worksation | w not in end implies one w.succ
-- div,1
all w : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
no end.succ+succ.begin
one succ.end
one begin.succ
all w : Workstation | w != begin&suc
all w : Workstation-end-begin | one w.succ && one succ.w && w.succ != succ.w
-- div,1
all b, w in Workstation | (b in begin and b != w) implies w in b.^succ
all w : Workstation | w not in w.^succ
all w in Workstation | w no in end implies some w.succ
-- div,1
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
}
-- div,2
all w,wb : Workstation | (wb in begin and w != wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not int end implies one w.succ
-- div,2
all w1, w2: Workstation | (w1 != w2 and w1 in begin) implies w2 in w1.^(succ)
all w: Workstation | w not in w.^(succs)
all w: Workstation | w not in end implies one w.succ
-- div,1
all w1, w2: Workstations | (w1 != w2 and w1 in begin) implies w2 in w1.^(succ)
all w: Workstation | w not in w.^(succs)
all w: Workstation | w not in end implies one w.succ
-- div,1
all w: Workstation | w not in w.^succ
all all w, wb : Workstation | (wb in begin and w != wb) implies w in wb.^(succ)
all w : Workstation | w not in end implies some w.succ
-- div,1
all ws1,ws2: Workstation | ws2 in begin and ws1 != ws2 implies ws1 in ws2.^(succ)
all ws: Workstation | ws not in ws.succ
all ws: Workstation | ws not in end implies one w.succ
-- div,1
all ws : Workstation | ws&beguin or ws&end
all b : begin | b not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | all e : end | e in ws.^succ
-- div,1
all ws: Workstation | w not in w.^(succ)
all ws: Workstation | w not in end implies one ws.succ
all ws1,ws2: Workstation | ws2 in begin and ws1 != ws2 implies ws1 in ws2.^(succ)
-- div,1
all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)
all ws : Workstation | ws not in ws.^(succ)
all ws : Workstaion | ws not in end implies w.succ
-- div,1
all ws, wsb : Workstation | (wsb in begin and ws != wsb) implies ws in wsb.^(succ)
all ws : Workstation | ws not in ws.^(succ)
all ws : Workstation | ws not in end implies w.succ
-- div,1
all ws, wsb : Workstation | (wsb in begin and ws = != wsb) implies ws in wsb.^(succ)
all ws : Workstation | ws not in ws.^(succ)
all ws : Workstaion | ws not in end implies w.succ
-- div,3
all w0, w1 : Workstations | w0 in begin and w0!=w1 implies w1 in w0.^parts
all w : Workstation | w not in w.^succ
all w0, w1 : Workstation | w0 in end and w0!=w1 implies w0->w1 not in succ
-- div,1
all ws : Workstation | ws in beguin implies ws not in end
all b : begin | b not in Workstation.succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation | all e : end | e in ws.^succ
-- div,1
all w0, w1 : Workstation | w0 in begin and w0!=w1 implies w1 in w0.^parts
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one w.succ
-- div,2
all w, wb : Workstation | wb in begin and w!=wb implies w in wb.^(succ)
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one we : Workstation | some ws : Worksation| we in w.^succ and we in end and ws in w.succ
-- div,1
