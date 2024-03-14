-- equiv pair start,10
no (iden & ^succ)
-- div,2
all x: Workstation | x not in x.^succ
-- div,1
all w : Workstation | w not in w.^succ
-- div,3
all ws: Workstation | ws not in ws.^succ
-- div,2
all wc: Workstation | wc not in wc.^succ
-- div,1
all w : Workstation | (w not in w.^succ) and (w not in w.^(~succ))
-- div,1
-- equiv pair end
-- equiv pair start,17
end in begin.*succ
-- div,1
begin->end in *succ
-- div,2
all b: begin | end in b.*(succ)
-- div,1
all ws : Workstation | begin->end in *succ
-- div,1
all ws : Workstation| ws in begin implies end in ws.*(succ)
-- div,1
all ws : Workstation | ws in begin implies one (ws.*(succ) & end)
-- div,1
all ws : Workstation | ws in begin implies some ws.*(succ) & end
-- div,1
all disj w,x:Workstation| w in begin and x in end => x in w.^(succ)
-- div,1
all disj w,x:Workstation| w in begin and x in end => x in w.*(succ)
-- div,1
all disj b,e:Workstation| b in end and e in begin => b in e.^(succ)
-- div,1
all disj b,e:Workstation| b in end and e in begin => b in e.*(succ)
-- div,1
all b,e:Workstation| b in end and e in begin and b !=e => b in e.*(succ)
-- div,1
all b,e:Workstation| b in end and e in begin => b in e.*(succ) or b = e
-- div,1
all ws : Workstation| ws in begin implies (some ws1 : end | ws1 in ws.^(succ)) or ws in end
-- div,1
all ws : Workstation| ws in begin implies (some ws1 : Workstation | ws1 in ws.*(succ) && ws1 in end)
-- div,2
-- equiv pair end
-- equiv pair start,1
begin.*succ = *succ.end
-- div,1
-- equiv pair end
-- equiv pair start,8
begin.*succ = Workstation
-- div,2
Workstation in begin.*succ
-- div,1
begin.^*succ = Workstation
-- div,1
#begin.*succ = #Workstation
-- div,1
all ws : Workstation - begin | #(begin.^succ & ws) = 1
-- div,1
all w,wb:Workstation | (wb in begin and wb!=w) implies w in wb.^(succ)
-- div,1
all w, wb: Workstation|(wb in begin and w!=wb) implies w in wb.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
#(*succ.end) = #Workstation
-- div,1
-- equiv pair end
-- equiv pair start,2
end in begin.*succ && no end.succ
-- div,1
all ws : Workstation | (ws in begin implies some ws.*(succ) & end) && (ws in end implies no ws.succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | w not in w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
lone ((begin.^succ :> (end + begin)))
-- div,1
-- equiv pair end
-- equiv pair start,1
begin.*succ = *succ.end
no iden & succ
-- div,1
-- equiv pair end
-- equiv pair start,1
no succ.begin
#(begin.*succ) = #Workstation
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation | one w.succ or w in end
-- div,2
-- equiv pair end
-- equiv pair start,1
all x:Workstation | x in begin or one succ.x
-- div,1
-- equiv pair end
-- equiv pair start,16
lone ((begin.^succ :> (end + begin)) - begin)
-- div,4
one (Workstation & end)
one (Workstation & begin)
-- div,2
all w : Workstation | one w.succ or w in end or w = w
-- div,1
all ws : Workstation| ws in begin implies (some ws1 : end | end in ws1.*(succ))
-- div,1
one w: end, b: begin | all x: (Workstation-w)-b | x not in (end+begin)
-- div,1
one w: end, b: begin | all x: (Workstation-w)-b | no x&(end+begin)
-- div,1
all ws : Workstation | (ws in begin implies no succ.ws) or (ws in end implies no ws.succ) or (some (ws.*(succ) & end))
-- div,1
all ws : Workstation | (ws in begin implies no succ.ws) or (ws in end implies no ws.succ) or (some (ws.*(succ) & end)) or begin = end
-- div,1
(one w: end | all x: Workstation-w | x not in end) && (one w: begin | all x: Workstation-w | x not in begin)
-- div,1
all ws : Workstation | (ws in begin implies no succ.ws) or (ws in end implies no ws.succ) or (some (ws.*(succ) & end)) or (begin.succ in end)
-- div,1
all ws : Workstation | (ws in begin implies no succ.ws) or (ws in end implies no ws.succ) or (some (ws.*(succ) & end)) or (ws in begin && ws in end)
-- div,1
all ws : Workstation | (ws in begin implies no succ.ws) or (ws in end implies no ws.succ) or (some (ws.*(succ) & end)) or (ws in begin and ws.succ in end)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w in begin => no succ.w
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | (w not in w.^succ)
no end.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all x:Workstation | x not in succ.x and lone succ.x
-- div,1
all x:Workstation | x not in succ.x and lone succ.x
all x:Workstation | (one Workstation implies x in begin and x in end) or (not (x in begin iff x in end)) or x in succ.x
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation - end | one w.succ or begin=end
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | ws in end implies no ws.succ
-- div,1
-- equiv pair end
-- equiv pair start,4
no succ.begin
no end.succ
#(begin.*succ) = #Workstation
-- div,1
no succ.begin
no end.succ
(Workstation-begin) in begin.^succ
-- div,1
no succ.begin
no end.succ
all ws : Workstation-begin | ws in begin.^succ
-- div,1
all ws:Workstation| begin not in ws.succ
all ws:Workstation-begin| ws in begin.^succ
no end.succ
-- div,1
-- equiv pair end
-- equiv pair start,3
all ws:Workstation-begin| ws in begin.^succ
no end.succ
-- div,1
all ws:Workstation| ws!=begin implies ws in begin.^succ
no end.succ
-- div,1
all ws:Workstation| ws not in begin implies ws in begin.^succ
no end.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all x,y:Workstation| x in y.succ implies y not in x.succ
-- div,1
all ws,ws1 : Workstation | ws1 in ws.succ implies ws not in ws1.succ
-- div,1
-- equiv pair end
-- equiv pair start,3
all w : Workstation-begin-end | one w.succ and one succ.w
-- div,3
-- equiv pair end
-- equiv pair start,1
all w: Workstation-end | (w not in w.succ) and one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,5
#(*succ.end) = #Workstation
#(begin.*succ) = #Workstation
-- div,1
all w: Workstation | one (*succ.w & begin) && one (w.*succ & end)
-- div,2
all w: Workstation | (one (*succ.w & begin)) && (some (w.*succ & end))
-- div,1
all w : Workstation | one c: begin.*succ | one d: *succ.end | w in c and w in d
-- div,1
-- equiv pair end
-- equiv pair start,2
all x: Workstation | x in begin or x in end or some x.succ
-- div,2
-- equiv pair end
-- equiv pair start,1
all w: Workstation-end | (w not in w.^succ) and one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | ws in begin implies ws not in ws.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation-end | one ws: Workstation-w | ws in w.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all x:Workstation | x in begin or one succ.x and x not in x.succ
-- div,1
all x:Workstation | x in begin or one succ.x and x not in succ.x
-- div,1
-- equiv pair end
-- equiv pair start,10
all w: Workstation | w in begin || w in end || w in (begin.*succ)
-- div,1
all w: Workstation | w in begin || w in end || w in (begin.*succ) && w not in end
-- div,4
all w: Workstation | (w in begin || (w in begin.^succ && w not in (begin+end)) || w in end)
-- div,1
all w: Workstation | (w in begin || (w in begin.*succ && w not in (begin+end)) || w in end)
-- div,2
all w: Workstation | w in begin || (w in begin.^succ && w not in begin && w not in end) || w in end
-- div,1
all w: Workstation | (w in begin || (w in (begin.succ).*succ && w not in (begin+end)) || w in end)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : (Workstation-end) | one ws.succ
no end.succ
no succ.begin
-- div,1
-- equiv pair end
-- equiv pair start,2
all w: Workstation | (w not in w.^succ) and (one w.succ or w in end)
-- div,1
all w : Workstation | one w.succ or w = end
all w : Workstation | w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,2
one end : Workstation | one begin : Workstation | end in begin.*succ
-- div,1
all ws : Workstation | one end : Workstation | one begin : Workstation | end in begin.*succ
-- div,1
-- equiv pair end
-- equiv pair start,3
all w1, w2: Workstation | (w1 in w2.succ && w2 in w1.succ) => w1 = w2
-- div,2
all ws,ws1 : Workstation | ws1 in ws.succ && ws != ws1 implies ws not in ws1.succ
-- div,1
-- equiv pair end
-- equiv pair start,3
no (iden & ^succ)
Workstation in begin.*succ
no end.succ
no succ.begin
-- div,2
no succ.begin
no end.succ
#(begin.*succ) = #Workstation
all w : Workstation | w not in w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w in begin => one w.succ && w in end => one succ.w
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation | w in begin => lone w.succ && w in end => lone succ.w
-- div,2
-- equiv pair end
-- equiv pair start,2
all wc: Workstation | wc not in wc.^succ and (#wc.succ = 1 or #wc.succ = 0)
-- div,1
all wc: Workstation | wc not in wc.^succ and all wc1, wc2: wc.succ | wc1 = wc2
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w in begin => lone w.^succ && w in end => lone ^succ.w
-- div,1
-- equiv pair end
-- equiv pair start,1
no succ.begin
all ws : Workstation-begin | one w : Workstation | ws in w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y: Workstation | no succ.x and  no y.succ implies x = begin and y = end
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Workstation | x not in succ.x
all x:Workstation | x in begin or one succ.x
-- div,1
-- equiv pair end
-- equiv pair start,1
no succ & iden
all ws : (Workstation-end) | one ws.succ
no end.succ
no succ.begin
-- div,1
-- equiv pair end
-- equiv pair start,2
all w: Workstation | no w.succ & w.succ.succ && (w in begin.succ.*succ || w = begin)
-- div,1
all w: Workstation | no w.succ & w.succ.succ && ((w in begin.succ.*succ && w!= begin && (w = end or w!=end )) || w = begin)
-- div,1
-- equiv pair end
-- equiv pair start,1
(all w : Workstation-begin-end | one w.succ and one succ.w) and
(end in begin.*succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Workstation-end-begin | no ^(succ).begin and no end.^(succ) and one x.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Workstation-end-begin | no ^(succ).begin and no end.^(succ) and one x.^(succ)-x
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation-end | (w not in w.^succ) and (one w.succ)
no end.succ
no succ.begin
-- div,1
all w : Workstation | one w.succ or w = end
all w : Workstation | w not in w.^succ
all w : Workstation | begin not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation | w in begin => no succ.w
all w : Workstation | w in end => no w.succ
-- div,1
all ws : Workstation | one b : begin | no succ.b
all ws : Workstation | one e : end | no e.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation - end | one w.succ or begin=end
all w : Workstation | w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
#(*succ.end) = #Workstation
#(begin.*succ) = #Workstation
all w : Workstation-end | # w.succ = 1
-- div,1
-- equiv pair end
-- equiv pair start,2
end in begin.*succ
begin in *succ.end
succ in Workstation lone -> lone Workstation
no iden & succ
-- div,2
-- equiv pair end
-- equiv pair start,1
end in begin.*succ
begin in *succ.end
succ in (Workstation-end) lone -> one Workstation
no iden & succ
-- div,1
-- equiv pair end
-- equiv pair start,1
Workstation in begin.*succ
no succ.begin
no end.succ
all ws : begin.^succ - (begin + end) | one ws.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation | w in begin => lone w.succ or w in end => lone succ.w or w in begin+end => no succ.w
-- div,1
all w : Workstation | w in begin => lone w.succ or w in end => lone succ.w or w in begin+end => no succ.w and no w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation-begin | (w in begin.^succ) and (w not in w.^succ)
all w : Workstation-end | one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all x: Workstation-end-begin | no ^(succ).begin and no end.^(succ) and one x.^(succ) and x.^(succ) not in x
-- div,1
all x: Workstation-end-begin | no ^(succ).begin and no end.^(succ) and one x.^(succ) and x not in x.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,2
all ws : Workstation | ws not in end implies one ws.succ
all ws : Workstation | ws in end implies no ws.succ
-- div,2
-- equiv pair end
-- equiv pair start,1
no succ or (one begin.succ and one succ.end and (all w : Workstation-begin-end | one w.succ and one succ.w))
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | ws in begin implies ws not in ws.succ
all ws : Workstation | ws in end implies no ws.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
one Workstation or (one begin.succ and one succ.end and (all w : Workstation-begin-end | one w.succ and one succ.w))
-- div,1
-- equiv pair end
-- equiv pair start,2
Workstation in begin.*succ
no succ.begin
no end.succ
all ws : begin.^succ - (begin + end) | one ws.succ
no (iden & ^succ)
-- div,1
all ws : Workstation | ws !in ws.^succ
all ws : Workstation | ws.succ = none => ws = end
all ws : Workstation | succ.ws = none => ws = begin
all ws : Workstation | (ws.succ != none) => (all wr : Workstation | wr in ws.succ => (wr.succ = none) => wr = end)
-- div,1
-- equiv pair end
-- equiv pair start,2
all ws : Workstation | ws not in end and ws not in begin implies one ws.succ
all ws : Workstation | ws in end implies no ws.succ
-- div,2
-- equiv pair end
-- equiv pair start,1
#(*succ.end) = #Workstation
#(begin.*succ) = #Workstation
all w : Workstation-end | # w.succ = 1
all w: Workstation | w not in w.succ
-- div,1
-- equiv pair end
-- equiv pair start,3
end in begin.*succ
begin in *succ.end
succ in (Workstation-end) lone -> one Workstation
succ in Workstation one -> lone (Workstation-begin)
-- div,1
all w:Workstation | (w in begin and w in end and no w.succ and no succ.w) or (w in begin and no succ.w and #w.succ=1) or (w in end and no w.succ and #succ.w=1) or (w not in end and w not in begin and #w.succ=1 and #succ.w=1)
-- div,1
all w:Workstation | (w in begin and w in end and no w.succ and no succ.w) or (w in begin and w not in end and no succ.w and #w.succ=1) or (w in end and w not in begin and no w.succ and #succ.w=1) or (w not in end and w not in begin and #w.succ=1 and #succ.w=1)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | one w.succ or w = end or begin = end
all w : Workstation | w not in w.^succ
all w : Workstation | begin not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation - end | one w.succ or begin=end
all w : Workstation | w not in w.^succ
all w : Workstation - begin | w in Workstation.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w in begin => no succ.w
all w : Workstation | w in end => no w.succ
all w : Workstation | w not in begin + end => one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin and w in end)
-- div,1
-- equiv pair end
-- equiv pair start,1
end in begin.*succ
begin in *succ.end
succ in (Workstation-end) lone -> one Workstation
succ in Workstation one -> lone (Workstation-begin)
no iden & succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin and w in end and no succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (no succ & iden) and (w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin+end)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (no succ & iden) and ((w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin+end))
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin and w in end and one Workstation)
-- div,1
-- equiv pair end
-- equiv pair start,3
all w : Workstation | w in begin => no succ.w
all w : Workstation | w in end => no w.succ
all w : Workstation | w not in w.^succ and w not in begin + end => one w.succ
-- div,3
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (no succ & iden) and (w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w) or (w in begin and w in end and no succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
(all w1, w2: Workstation | (w1 in w2.succ && w2 in w1.succ) => w1 = w2) && (all w1: Workstation, w2: Workstation | w1 in w2.succ => no w3: Workstation | w1 in w3.succ and w3 in w2.succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w not in w.^succ
all w : Workstation | w in begin => no succ.w
all w : Workstation | w in end => no w.succ
all w : Workstation | (w not in begin + end) => one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all w:Workstation | ( w in begin and #w.succ=1 and #succ.w=0  ) or ( w in end and #w.succ=0 and #succ.w=1   ) or ( #w.succ=1 and #succ.w=1 ) or (w in begin and w in end and #w.succ=0 and #succ.w=0)
-- div,2
-- equiv pair end
-- equiv pair start,6
all ws : Workstation | ws.succ = none => ws = end
all ws : Workstation | succ.ws = none => ws = begin
all ws : Workstation | (ws.succ != none) => (all wr : Workstation | wr in ws.succ => (wr.succ = none) => wr = end)
-- div,3
all ws : Workstation | ws.succ = none => ws = end
all ws : Workstation | succ.ws = none => ws = begin
all ws : Workstation | (ws.succ != none) => (all wr : Workstation | wr in ws.succ => (wr != ws) and (wr.succ = none) => wr = end)
-- div,1
all ws : Workstation | ws !in ws.*succ => ws = end
all ws : Workstation | ws.succ = none => ws = end
all ws : Workstation | succ.ws = none => ws = begin
all ws : Workstation | (ws.succ != none) => (all wr : Workstation | wr in ws.succ => (wr.succ = none) => wr = end)
-- div,1
all ws : Workstation | ws !in ws.*succ => ws = begin
all ws : Workstation | ws.succ = none => ws = end
all ws : Workstation | succ.ws = none => ws = begin
all ws : Workstation | (ws.succ != none) => (all wr : Workstation | wr in ws.succ => (wr.succ = none) => wr = end)
-- div,1
-- equiv pair end
-- equiv pair start,1
all wc: Workstation | wc not in wc.^succ
all wc: Workstation | (wc in begin and #wc.succ = 1 and all wc2: Workstation - wc | wc2 in wc.^succ) or
(wc in end and wc.succ = none) or
(wc not in begin and wc not in end and #wc.succ = 1)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation | (( w in begin and #w.succ=1 and #succ.w=0  ) or ( w in end and #w.succ=0 and #succ.w=1   ) or ( #w.succ=1 and #succ.w=1 ) or (w in begin and w in end and #w.succ=0 and #succ.w=0)) and w not in w.succ and w not in succ.w
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | ws !in ws.succ
all ws : Workstation | ws.succ = none => ws = end
all ws : Workstation | succ.ws = none => ws = begin
all ws : Workstation | (ws.succ != none) => (all wr : Workstation | wr in ws.succ => (wr.succ = none) => wr = end)
-- div,1
-- equiv pair end
