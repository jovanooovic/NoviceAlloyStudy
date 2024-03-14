-- equiv pair start,3
no begin - end
-- div,1
all wk:Workstation | wk in begin => wk in end
-- div,2
-- equiv pair end
-- equiv pair start,1
begin.succ = end
-- div,1
-- equiv pair end
-- equiv pair start,4
no (begin & end)
-- div,1
no (begin & end) and lone (begin.^succ :> end - begin)
-- div,1
all w1, w2: Workstation | (begin in w1 and end in w2) implies w1 != w2
-- div,1
no (Workstation & begin & end) and lone (begin.^succ :> end - begin)
-- div,1
-- equiv pair end
-- equiv pair start,1
begin.*succ = end
-- div,1
-- equiv pair end
-- equiv pair start,2
begin.succ in end
-- div,1
all wk:Workstation | wk in begin => wk.succ in end
-- div,1
-- equiv pair end
-- equiv pair start,2
begin.^succ = end
-- div,2
-- equiv pair end
-- equiv pair start,2
begin.^succ in end
-- div,1
no (begin.^succ :> (Workstation - end))
-- div,1
-- equiv pair end
-- equiv pair start,7
end in begin.^succ
-- div,3
one (begin.^succ :> end)
-- div,1
one b:begin, e:end | e in b.^succ
-- div,1
all b:begin, e:end | end in b.^succ
-- div,1
all b : begin | all e : end | e in b.^succ
-- div,1
-- equiv pair end
-- equiv pair start,2
begin.^succ = Workstation
-- div,1
Workstation in begin.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
begin.^succ - begin in end
-- div,1
-- equiv pair end
-- equiv pair start,7
all w: Workstation | one w.succ
-- div,6
all ws : Workstation | one ws.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
Workstation.^succ = Workstation
-- div,1
-- equiv pair end
-- equiv pair start,1
Workstation.*(succ)	in begin+end
-- div,1
-- equiv pair end
-- equiv pair start,6
one (begin.^succ :> (end - begin))
-- div,1
one (begin.^succ :> end - begin)
-- div,1
one ((begin.^succ :> (end + begin)) - begin)
-- div,1
all b:begin, e:end | end in b.^succ and b != e
-- div,1
no (Workstation & begin & end) and one (begin.^succ :> end - begin)
-- div,1
all b : begin | all e : end | b!=e and e in b.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | one (w.succ & w)
-- div,1
-- equiv pair end
-- equiv pair start,1
all wk:Workstation | wk in wk.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,2
Workstation = begin.^succ
no end.succ
-- div,1
Workstation in begin.^succ
no end.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
Workstation in begin.^succ & ^succ.end
-- div,1
all w:Workstation | w in begin.^succ & ^succ.end
-- div,1
-- equiv pair end
-- equiv pair start,1
one (begin.^succ :> (Workstation - begin))
-- div,1
-- equiv pair end
-- equiv pair start,1
lone (begin.^succ :> (Workstation - begin))
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w.^succ = Workstation
-- div,1
-- equiv pair end
-- equiv pair start,1
one w:Workstation | w.^succ in Workstation - w
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : Workstation | one x.succ
end in begin.^succ
-- div,2
-- equiv pair end
-- equiv pair start,1
all x : Workstation | lone x.succ
end in begin.^succ
-- div,1
-- equiv pair end
-- equiv pair start,4
all w: Workstation | one (w.succ) and w not in w.succ
-- div,2
all w : Workstation | w not in w.succ and one w.succ
-- div,1
all w : Workstation | one w.succ
no iden & succ
-- div,1
-- equiv pair end
-- equiv pair start,5
all w : Workstation | not w in w.^succ and begin != end
-- div,1
all w: Workstation | no (w.^succ & w) and (begin != end)
-- div,1
all w1, w2: Workstation | (w1 = begin and w2 = end) implies w1 != w2
all w: Workstation | w not in w.^succ
-- div,1
all w1, w2: Workstation | (begin in w1 and end in w2) implies w1 != w2
all w: Workstation | w not in w.^succ
-- div,1
one Workstation & begin
one Workstation & end
no Workstation & begin & end
all w : Workstation | w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | one w2 : Workstation | w.^succ in w2
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | not w in w.^succ and end in begin.^succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all w1:Workstation-end | one w1.succ
Workstation in begin.^succ
-- div,2
-- equiv pair end
-- equiv pair start,2
all w: Workstation | w.*(succ) in begin+end && w not in w.^(succ)
-- div,2
-- equiv pair end
-- equiv pair start,2
all w:Workstation - end | one w.succ
no end.succ
some begin.^succ
-- div,1
one begin.succ
all w : Workstation | w not in begin and w not in end implies one w.succ
no end.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all w:Workstation-end | one w.succ
no end.succ
end in begin.^succ
-- div,1
begin not in begin.^succ
end in begin.^succ
no end.succ
all w : Workstation - end | one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation | w in begin.^succ & ^succ.end and begin != end
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj w1,w2: Workstation | w2 in w1.succ and w2 not in w1.^succ
-- div,1
all w : Workstation | some w.succ or one Workstation
all w : Workstation | w not in w.^(succ) or one Workstation
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | one w2 : Workstation | w2!=w and w.^succ in w2
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | lone w2 : Workstation | w2!=w and w.^succ in w2
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws:Workstation | some wss:Workstation | ws->wss in succ and ws!= wss
-- div,1
-- equiv pair end
-- equiv pair start,1
succ in Workstation one -> one Workstation
(begin . *succ) in Workstation
-- div,1
-- equiv pair end
-- equiv pair start,1
no end.succ
all w:Workstation-end | one succ.w
Workstation in begin.*succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | (w in begin implies some w.succ) and w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
#Workstation > 1
all w: Workstation | w = begin or w = end or end in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all b: begin | Workstation in b.*succ
all e: end | e in (Workstation-e).*succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w in begin implies (some k : Workstation | w->k in succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | w = begin or w = end
all b: begin | Workstation in b.*succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | one wb, we : Workstation | wb in w.^succ and we in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | one wb, we : Workstation | w in wb.^succ and we in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
Workstation in begin.*succ
succ in Workstation lone -> lone Workstation
no succ.end
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj w,w1: Workstation | w not in begin implies w1 in w.succ and w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | some w.succ
all w : Workstation | w not in w.^(succ) or w in end
-- div,1
-- equiv pair end
-- equiv pair start,2
all w:Workstation | w not in w.^succ
begin != end

begin.^succ = (Workstation - begin)
-- div,1
all w:Workstation | w not in w.^succ
all w:Workstation | w in begin implies w not in end

begin.^succ = (Workstation - begin)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj w,w1: Workstation | (w not in begin implies w1 in w.succ) and w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,6
all b : begin | b not in Workstation.succ
all c : Component | all e : end | e in c.^succ
-- div,1
all b : begin | b not in Workstation.succ
all c : Component | some e : end | e in c.^succ
-- div,1
all b : begin | b not in Workstation.succ
all c : Component | some e : end | e in c.^succ and c not in c.^succ
-- div,1
all b : begin | b not in Workstation.succ
all c : Component | c not in c.^succ
all c : Component | all e : end | e in c.^succ
-- div,2
all b : begin | b not in Workstation.succ
all c : Component | c not in c.^succ
all c : Component | some e : end | e in c.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation-end | one succ
all w: Workstation | w = begin => Workstation in w.*succ
-- div,1
-- equiv pair end
-- equiv pair start,2
one Workstation & begin
one Workstation & end
all w : Workstation | w in ^succ.Workstation
-- div,1
one Workstation & begin
one Workstation & end
all w : Workstation | one w & ^succ.Workstation
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w in begin implies (some k : Workstation | w->k in succ and k in end)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | one wb, we : Workstation | w in wb.^succ and we in w.^succ and wb!=we
-- div,1
-- equiv pair end
-- equiv pair start,1
all b : begin | b not in Workstation.succ

all ws : Workstation | all e : end | e in ws.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | some w.succ
all w : Workstation | w not in w.^(succ) or one Workstation
-- div,1
-- equiv pair end
-- equiv pair start,2
all b : begin | b not in Workstation.succ
all b : begin | all e : end | b!=e and e in b.^succ
-- div,2
-- equiv pair end
-- equiv pair start,3
all disj ws1, ws2:Workstation | ws1->ws2 in succ => not some ws3:Workstation | ws3->ws2 in succ
-- div,1
all disj ws1, ws2:Workstation | ws1->ws2 in succ => not some ws3:Workstation | ws3->ws2 in succ
all disj ws1, ws2:Workstation | ws1->ws2 in succ and (not some ws3:Workstation | ws3->ws1 in succ) => ws1 in begin
-- div,1
all disj ws1, ws2:Workstation | ws1->ws2 in succ => not some ws3:Workstation | ws3->ws2 in succ
all disj ws1, ws2:Workstation | ws1->ws2 in succ and (not some ws3:Workstation | ws3->ws1 in succ) => ws1 in begin
all disj ws1, ws2:Workstation | ws1->ws2 in succ and (not some ws3:Workstation | ws2->ws3 in succ) => ws2 in end
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Workstation-end | one x.succ
all x : Workstation | begin not in x.succ
end in begin.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
begin not in begin.^succ
end in begin.^succ
no end.succ
all w : Workstation - end - begin | one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Workstation | lone x.succ

no end.succ

no begin & (Workstation-begin).succ

end in begin.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | one wb, we : Workstation | wb != w and w in wb.^succ and we in w.^succ and wb!=we
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Workstation-end | one x.succ

no end.succ

no begin & (Workstation-begin).succ

end in begin.^succ
-- div,1
-- equiv pair end
-- equiv pair start,4
no end.succ+succ.begin
one succ.end
one begin.succ
all w : Workstation-end-begin | one w.succ && one succ.w
-- div,1
no end.succ+succ.begin
one succ.end
one begin.succ
begin != end
all w : Workstation-end-begin | one w.succ && one succ.w
-- div,2
no end.succ+succ.begin
one succ.end
one begin.succ
begin not in end
all w : Workstation-end-begin | one w.succ && one succ.w
-- div,1
-- equiv pair end
-- equiv pair start,1
one b : begin | one e : end | all w : Workstation | lone w.^succ and (b.^succ in Workstation) and (no e.succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w not in w.succ and begin not in w.succ
all w : Workstation - end | one w.succ
begin != end
-- div,1
-- equiv pair end
-- equiv pair start,1
begin not in begin.^succ
end in begin.^succ
no end.succ
all w : Workstation - end | one w.succ and w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
one Workstation & begin
one Workstation & end
all w : Workstation | one w & (^succ.Workstation + Workstation.^succ)
-- div,1
-- equiv pair end
-- equiv pair start,2
begin not in Workstation.succ
no end.succ
Workstation-begin in begin.^succ

all ws : Workstation-end | end in ws.succ
-- div,2
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (w in begin implies (some k : Workstation | w->k in succ and k in end)) or (w in begin and w in end)
-- div,1
-- equiv pair end
-- equiv pair start,1
one begin.succ
begin.succ != end
all w : Workstation | w not in begin and w not in end implies one w.succ
no end.succ
begin != end
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w in begin implies (some k : Workstation | w->k in succ and (k in end or (k not in end and k not in begin)))
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation - end | one w2 : Workstation | w2 in w.^succ
all w : Workstation - begin | one w2 : Workstation | w in w2.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation - end | one w2 : Workstation | w2!=w and w2 in w.^succ
all w : Workstation - begin | one w2 : Workstation | w2!=w and w in w2.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w1,w2: Workstation | ((w1 in begin and w2 in end) implies (some w1.succ and w1 not in succ.Workstation and no w2.succ)) or w1=w2 and w1 not in w2.succ
-- div,1
-- equiv pair end
-- equiv pair start,6
begin not in Workstation.succ
no end.succ
Workstation-begin in begin.^succ
all ws : Workstation | ws not in ws.succ
all ws : Workstation-end | end in ws.succ
-- div,4
begin not in Workstation.succ
no end.succ
Workstation-begin in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.succ
-- div,1
all w, wb : Workstation | wb in begin and w!=wb implies w in wb.^(succ)
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one we : Workstation | we in w.succ and we in end
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies no w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
one Workstation & begin
one Workstation & end
begin not in Workstation.^succ
end not in ^succ.Workstation
all w : Workstation | one w & (^succ.Workstation + Workstation.^succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w in end implies w not in Workstation.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
begin not in Workstation.succ
no end.succ
Workstation-begin in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
one Workstation.workers
-- div,1
-- equiv pair end
