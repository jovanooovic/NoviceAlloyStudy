-- equiv pair start,1
#begin.*succ = 1
-- div,1
-- equiv pair end
-- equiv pair start,1
lone begin + end
-- div,1
-- equiv pair end
-- equiv pair start,1
no (begin & end)
-- div,1
-- equiv pair end
-- equiv pair start,13
end in begin.^succ
-- div,3
begin->end in ^succ
-- div,2
all b: begin | end in b.^(succ)
-- div,1
all w:Workstation| w in end => w in begin.^(succ)
-- div,1
all ws : Workstation | ws in begin implies some ws.^(succ) & end
-- div,1
all w,x:Workstation| w in begin and x in end => x in w.^(succ)
-- div,1
all ws : Workstation| ws in begin implies (some ws1 : end | ws1 in ws.^(succ))
-- div,1
all ws : Workstation| ws in begin implies (some ws1 : end | end in ws.^(succ))
-- div,2
all ws : Workstation| ws in begin implies (some ws1 : Workstation | ws1 in ws.^(succ) && ws1 in end)
-- div,1
-- equiv pair end
-- equiv pair start,1
one Workstation.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
begin.^succ = ^succ.end
-- div,1
-- equiv pair end
-- equiv pair start,1
one Workstation-end.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
end in begin.^succ-begin
-- div,1
one ((begin.^succ :> (end + begin)) - begin)
-- div,1
-- equiv pair end
-- equiv pair start,1
#succ = #Workstation - 1
-- div,1
-- equiv pair end
-- equiv pair start,4
begin.^succ = Workstation
-- div,3
Workstation in begin.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
(Workstation-end).^succ = end
-- div,1
-- equiv pair end
-- equiv pair start,2
one succ.begin && no end.^(succ)
-- div,1
all ws : Workstation | one succ.begin
all ws : Workstation | no end.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,6
all w : Workstation | one w.succ
-- div,3
all wc: Workstation | #wc.succ = 1
-- div,1
all ws : Workstation | #ws.succ=1
-- div,2
-- equiv pair end
-- equiv pair start,1
end in begin.^succ && no end.succ
-- div,1
-- equiv pair end
-- equiv pair start,4
all w: Workstation| one w.^(succ)
-- div,3
all ws : Workstation | one ws.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation| one w.*(succ)
-- div,1
-- equiv pair end
-- equiv pair start,3
all ws : Workstation | no succ.ws
-- div,1
all ws : Workstation | #ws.succ=0
-- div,1
all x: Workstation | x not in x.^succ
all x,y: Workstation | no succ.x and no y.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | one succ.ws
-- div,1
-- equiv pair end
-- equiv pair start,1
no (iden & ^succ)
#begin.^succ >= 1
-- div,1
-- equiv pair end
-- equiv pair start,1
one ((begin.^succ :> (end + begin)))
-- div,1
-- equiv pair end
-- equiv pair start,1
begin.^succ = Workstation
begin != end
-- div,1
-- equiv pair end
-- equiv pair start,1
begin.^succ = Workstation or begin = end
-- div,1
-- equiv pair end
-- equiv pair start,2
begin.^succ = Workstation
begin.succ = end
-- div,2
-- equiv pair end
-- equiv pair start,2
all w:Workstation | #w.succ=1 and #succ.w=1
-- div,1
one begin.succ and one succ.end
all w : Workstation | one w.succ and one succ.w
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation & begin | w.succ in end
-- div,1
-- equiv pair end
-- equiv pair start,1
no succ.begin
no end.succ
end in begin.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w in begin => one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
one succ.begin && no end.^(succ) && begin != end
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws:Workstation, w1:Workstation | w1 in ws.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | some succ[w] && some w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | #w.succ = 1 && lone w.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Workstation | x in begin.succ or x in end.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
begin.*succ = Workstation
no succ.begin
begin.succ = end
-- div,1
-- equiv pair end
-- equiv pair start,1
no (iden & ^succ) && (end in begin.^succ) && no end.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation-end | (w not in w.*succ) and one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | one ws: Workstation-w | ws in w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
end in begin.^succ and (all ws: Workstation | one ws.succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation & begin | w.succ in end and w != w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation| ws in begin implies ws.^(succ) in end
-- div,1
-- equiv pair end
-- equiv pair start,1
all w,x:Workstation| w in begin and x in end <=> x in w.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,5
all w: Workstation | one (succ.w & begin) && one (w.succ & end)
-- div,2
all w: Workstation | one (succ.w & begin) && (some (w.succ & end))
-- div,2
(all w: Workstation | one x: Workstation | x in w.succ && x in end) && (all w: Workstation | one x: Workstation | x in succ.w && x in begin)
-- div,1
-- equiv pair end
-- equiv pair start,1
all begin : Workstation, end : Workstation | end in begin.*succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | one (succ.w & begin) && one (w.*succ & end)
-- div,1
-- equiv pair end
-- equiv pair start,1
one fws : Workstation & begin | #fws.^succ - 1 = #fws.^succ - end
-- div,1
-- equiv pair end
-- equiv pair start,1
one fws : Workstation & begin | #fws.^succ - 1 = #(fws.^succ - end)
-- div,1
-- equiv pair end
-- equiv pair start,1
(all w: Workstation | one x: Workstation | x in w.succ && x in end)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w1, w2 : Workstation | w1 in w2.succ => w1.workers = w2.workers
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | (one (*succ.w & begin)) && (one (w.succ & end))
-- div,1
-- equiv pair end
-- equiv pair start,1
one begin.succ and one succ.end
all w : Workstation | w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | one (ws.*(succ) & end) && one ws.*(succ) & begin
-- div,1
-- equiv pair end
-- equiv pair start,1
no (iden & ^succ) && (end in begin.^succ) && no end.succ && no succ.begin
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation| ws in begin implies (some ws1 : end | end in ws1.^(succ))
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | one c: begin.^succ | one d: ^succ.end | w in c and w in d
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | (w in begin || one (succ.w & begin)) && one (w.*succ & end)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | ws in begin implies ws not in end && ws not in ws.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,2
#(*succ.end) = #Workstation
all w : Workstation | one s : Workstation | s = w.succ
-- div,1
#(*succ.end) = #Workstation
all w : Workstation | some s : Workstation | s = w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation | #w.succ=1 and #succ.w=1 and w not in w.succ and w not in succ.w
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | no w.succ & w.succ.succ and (w in begin.succ.*succ or w = end)
-- div,1
-- equiv pair end
-- equiv pair start,2
(all w : Workstation-begin-end | one w.succ and one succ.w) and
(end in begin.^succ)
-- div,2
-- equiv pair end
-- equiv pair start,1
begin.^succ = Workstation
no w : Workstation | w in begin.^succ and w !in (begin + end)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation & begin | w.succ in end
all w : Workstation & end | w.succ in begin
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y: Workstation | no succ.x and  no y.succ implies x = begin and y = end and x != y
-- div,1
-- equiv pair end
-- equiv pair start,1
#(*succ.end) = #Workstation
#(begin.*succ) = #Workstation
all w : Workstation | #w.succ=1
-- div,1
-- equiv pair end
-- equiv pair start,7
one begin.succ and one succ.end
all w : Workstation-begin-end | one w.succ and one succ.w
-- div,5
all w : Workstation | (w in begin and one w.succ) or (w in end and one succ.w) or (one w.succ and one succ.w)
-- div,2
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | one end : Workstation | one begin : Workstation | end in begin.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all begin : Workstation, end : Workstation | begin not in begin.succ and end in begin.*succ
-- div,1
all begin : Workstation, end : Workstation | one begin and begin not in begin.succ and end in begin.*succ
-- div,1
-- equiv pair end
-- equiv pair start,1
end in begin.^succ
begin in ^succ.end
succ in Workstation lone -> lone Workstation
no iden & succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | one (succ.w & begin) && one (w.succ & end) && (succ.w & begin)!=(w.succ & end)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Workstation | x not in x.^succ
all x,y: Workstation | no succ.x and no y.succ implies x != y
-- div,1
-- equiv pair end
-- equiv pair start,4
all w: Workstation | w = begin || (w in begin.*succ && w not in begin && w not in end) || w in begin
-- div,1
all w: Workstation | w = begin || (w in begin.^succ && w not in begin && w not in end) || w in begin
-- div,1
all w: Workstation | w in begin || (w in begin.^succ && w not in begin && w not in end) || w in begin
-- div,1
all w: Workstation | w = begin || (w in begin.succ.*succ && w not in begin && w not in end) || w in begin
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Workstation | x not in succ.x
all x:Workstation | ((x in begin and x not in end) or one succ.x)
-- div,1
-- equiv pair end
-- equiv pair start,2
all x:Workstation | x not in succ.x
all x:Workstation | (not (x in begin iff x in end)) or one succ.x
-- div,1
all x:Workstation | x not in succ.x
all x:Workstation | (not x in begin iff x in end) or one succ.x
-- div,1
-- equiv pair end
-- equiv pair start,1
one begin.succ and one succ.end
all w : Workstation-begin-end | one w.succ and one succ.w or begin=end
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | one (*succ.w & begin) && one (w.*succ & end) && (*succ.w & begin)!=(w.*succ & end)
-- div,1
-- equiv pair end
-- equiv pair start,1
begin.^succ = Workstation
no w : Workstation | w in begin.^succ and w !in (begin + end)
begin.succ = end
-- div,1
-- equiv pair end
-- equiv pair start,3
all w : Workstation-begin-end | one w.succ and one succ.w
one begin.succ
one succ.end
end in begin.^succ
-- div,3
-- equiv pair end
-- equiv pair start,1
end in begin.*succ
begin in *succ.end
succ in (Workstation-begin) lone -> one Workstation
no iden & succ
-- div,1
-- equiv pair end
-- equiv pair start,6
end in begin.*succ
begin in *succ.end
succ in (Workstation-begin) one -> one (Workstation-end)
no iden & succ
-- div,1
no end.succ
no W:Workstation | begin in W.succ
all W:Workstation-end | one W.succ
all W:Workstation-begin | one W2:Workstation-begin-W | W in W2.succ
-- div,3
no end.succ
no W:Workstation | W in W.succ
no W:Workstation | begin in W.succ

all W:Workstation-end | one W.succ
all W:Workstation-begin | one W2:Workstation-begin | W in W2.succ
-- div,1
no end.succ
no W:Workstation | W in W.succ
no W:Workstation | begin in W.succ

all W:Workstation-end | one W.succ
all W:Workstation-begin | one W2:Workstation-begin-W | W in W2.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | some we : Workstation & end | some wb : Workstation & begin | w.succ = we or w.succ = wb
-- div,1
-- equiv pair end
-- equiv pair start,1
begin.^succ = Workstation - begin
no w : Workstation | w in begin.^succ and w !in (begin + end)
begin.succ = end
-- div,1
-- equiv pair end
-- equiv pair start,3
all ws: Workstation | (some prec : Workstation | ws in prec.succ) or (some post : Workstation | post in ws.succ)
-- div,1
all ws: Workstation | (some prec : Workstation | ws in prec.succ) or (some post : Workstation | post in ws.succ) or (ws in ws.succ)
-- div,2
-- equiv pair end
-- equiv pair start,3
all x: Workstation | x not in x.^succ
all x,y: Workstation | no succ.x and no y.succ implies x != y
no begin & end
-- div,2
all x: Workstation | x not in x.^succ
all x,y: Workstation | no succ.x and no y.succ implies x != y
all x: Workstation | x in begin implies x not in end
all x: Workstation | x in end implies x not in begin
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w)
-- div,1
-- equiv pair end
-- equiv pair start,3
all x,y:Workstation| x in y.succ implies y not in x.succ
all x,y:Workstation| x in y.succ implies #(y.succ) > #(x.succ)
-- div,1
all x,y:Workstation| x in y.succ implies y not in x.^succ
all x,y:Workstation| x in y.succ implies #(y.succ) > #(x.succ)
-- div,1
all x,y:Workstation| x in y.succ implies y not in x.succ
all x,y:Workstation| x in y.succ implies #(y.succ) > #(x.succ)
all x,y:Workstation| x in y.^succ implies y not in y.^succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation & begin | w.succ in end and w != w.succ
all w : Workstation & end | w.succ in begin and w != w.succ
-- div,1
all w : Workstation & begin | w.succ in end and w != w.succ
all w : Workstation & end | w.succ in begin and w != w.succ
all w : Workstation | w.succ in Workstation
-- div,1
-- equiv pair end
-- equiv pair start,1
one begin.succ and no succ.begin
one succ.end and no end.succ
all w : Workstation-begin-end | one w.succ and one succ.w
-- div,1
-- equiv pair end
-- equiv pair start,1
no begin->end & succ and (one begin.succ and one succ.end and (all w : Workstation-begin-end | one w.succ and one succ.w))
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (w in begin.^succ) <=> (w in (begin + end))
no w : Workstation | w in begin.^succ and w !in (begin + end)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | (no succ & iden) and (w in begin and one w.succ-w) or (w in end and one succ.w-w) or (one w.succ-w and one succ.w-w)
-- div,1
-- equiv pair end
-- equiv pair start,2
all w:Workstation | ( w in begin and #w.succ=1 and #succ.w=0  ) or ( w in end and #w.succ=0 and #succ.w=1   ) or ( #w.succ=1 and #succ.w=1 )
-- div,1
all w:Workstation | ( w in begin and #w.succ=1 and #succ.w=0  ) or ( w in end and #w.succ=0 and #succ.w=1   ) or ( #w.succ=1 and #succ.w=1 ) or (w in begin and w in end and #w.succ=1 and #succ.w=1)
-- div,1
-- equiv pair end
-- equiv pair start,1
(all w: Workstation | one x: Workstation | x in w.^succ && x in end) && (all w: Workstation | one x: Workstation | x in succ.w && x in begin)
-- div,1
-- equiv pair end
-- equiv pair start,3
(all w: Workstation | one x: Workstation | x in w.succ && x in end) && (all w: Workstation | one x: Workstation | x in w.^succ && x in begin)
-- div,1
(all w: Workstation | one x: Workstation | x in w.succ && x in end) && (all w: Workstation | one x: Workstation | x in w.*succ && x in begin)
-- div,1
(all w: Workstation | one x: Workstation | x in w.succ && x in end) && (all w: Workstation | some x: Workstation | x in w.*succ && x in begin)
-- div,1
-- equiv pair end
-- equiv pair start,1
(all w: Workstation | one x: Workstation | x in w.^succ && x in end) && (all w: Workstation | one x: Workstation | x in w.*succ && x in begin)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | (ws not in end and ws not in begin) implies one ws.succ
all ws : Workstation | (ws in end or ws in begin) implies no ws.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | ws in begin implies ws not in end && ws not in ws.^(succ)
all ws : Workstation | ws in end implies ws not in begin && no succ.ws
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Workstation | x not in succ.x and lone succ.x
all x:Workstation | one Workstation implies x in begin and x in end
all x:Workstation | (not (x in begin iff x in end)) or x in succ.x
-- div,1
-- equiv pair end
-- equiv pair start,1
(all w1:Workstation, w2:Workstation | (w1 in begin and w1!=w2) implies w1 in w2.succ)
and
(all w: Workstation | w not in w.succ)
and
(all w:Workstation | w not in end implies one w.succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
(all w1:Workstation, w2:Workstation | (w1 in begin and w1!=w2) implies w1 in w2.succ)
and
(all w: Workstation | w not in w.^(succ))
and
(all w:Workstation | w not in end implies one w.succ)
-- div,1
-- equiv pair end
-- equiv pair start,3
all ws : Workstation | (ws.succ = none) => ws = end
all ws : Workstation | (ws.succ != none) => ws = begin
all ws : Workstation | (ws.succ != none) => all wr : Workstation | wr in ws.succ => (wr != ws) implies (wr.succ = none) => wr = end
-- div,1
all ws : Workstation | (ws.succ = none) => ws = end
all ws : Workstation | (ws.succ != none) => ws = begin
all ws : Workstation | (ws.succ != none) => all wr : Workstation | wr in ws.succ => (wr != ws) implies (wr.^succ = none) => wr = end
-- div,1
all ws : Workstation | (ws.succ = none) => ws = end
all ws : Workstation | (ws.succ != none) => ws = begin
all ws : Workstation | (ws.succ != none) => all wr : Workstation | wr in ws.succ => (wr != ws) implies (wr.*succ = none) => wr = end
-- div,1
-- equiv pair end
