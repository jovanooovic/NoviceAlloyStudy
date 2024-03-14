-- equiv pair start,2
no end.succ
-- div,1
all b : begin | all e : end | b.succ in Workstation and no e.succ
-- div,1
-- equiv pair end
-- equiv pair start,26
no iden & ^succ
-- div,2
no ^succ & iden
-- div,1
all w:Workstation | w not in w.^succ
-- div,10
all w : Workstation | not w in w.^succ
-- div,1
all ws : Workstation | ws not in ws.^succ
-- div,1
all w: Workstation | no (w.^succ & w)
-- div,1
all ws:Workstation | no ws & ws.(^succ)
-- div,1
all w1,w2 : Workstation | w2 in w1.succ implies w1 not in w2.^(succ)
-- div,1
(begin . *succ) in Workstation
all w : Workstation | w not in (w . ^succ)
-- div,2
all w:Workstation | w not in w.^succ

begin.^succ in Workstation - begin
-- div,1
one Workstation & begin
one Workstation & end
all w : Workstation | w not in w.^succ
-- div,2
all w:Workstation | w not in w.^succ
some w:Workstation | w.^succ in Workstation - w
-- div,1
one begin
one end

all w : Workstation | w not in w.(^succ)
all w : Workstation | w in end => no w.succ and w not in end => one w.succ
-- div,2
-- equiv pair end
-- equiv pair start,9
end in begin.*succ
-- div,4
one b:begin, e:end | e in b.*succ
-- div,1
begin != end implies one (begin.^succ :> end - begin)
-- div,1
all e:end, b:begin | e in b.^(succ) or b=e
-- div,1
no (Workstation & begin & end) implies one (begin.^succ :> end - begin)
-- div,1
Workstation :> begin != Workstation :> end implies one (begin.^succ :> end - begin)
-- div,1
-- equiv pair end
-- equiv pair start,10
begin.*succ = Workstation
-- div,3
Workstation in begin.*succ
-- div,3
all b: begin | Workstation in b.*succ
-- div,1
all w: Workstation | w = begin => Workstation in w.*succ
-- div,1
all w,wb :Workstation | wb in begin and w!=wb implies w in wb.^succ
-- div,1
all w1, w2 : Workstation | w1 != w2 and w1 in begin implies w2 in w1.^succ
-- div,1
-- equiv pair end
-- equiv pair start,14
begin.*succ in Workstation
-- div,2
no (begin-end & end-begin)
-- div,1
lone (begin.^succ :> end - begin)
-- div,2
lone (begin.^succ :> (end - begin))
-- div,1
begin.^succ - (Workstation - end) in end
-- div,1
lone ((begin.^succ :> (end + begin)) - begin)
-- div,4
all w1,w2: Workstation | ((w1 in begin and w2 in end and w1!=w2) implies (some w1.succ and w1 not in succ.Workstation and no w2.succ)) or (w1=w2 implies no Workstation-w1 and w1 not in w2.succ)
-- div,1
all w1,w2: Workstation | ((w1 in begin and w2 in end and w1!=w2) implies (some w1.succ and w1 not in succ.Workstation and no w2.succ)) or (w1=w2 implies no Workstation-w1 and w1 not in w1.^succ)
-- div,1
all w1,w2: Workstation | ((w1 in begin and w2 in end and w1!=w2) implies (some w1.succ and w1 not in succ.Workstation and no w2.succ)) or (w1=w2 implies no Workstation-(w1+w2) and (w1+w2) not in (w1+w2).^succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | lone (w.succ)
-- div,1
-- equiv pair end
-- equiv pair start,3
all w:Workstation-end | one w.succ
-- div,1
all w1:Workstation-end | one w1.succ
-- div,1
all w :Workstation | w not in end implies one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,3
end in begin.*succ
no (^succ & iden)
-- div,1
end in begin.*succ
all w: Workstation | w not in w.^succ
-- div,2
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w not in w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
Workstation - begin = Workstation.succ
-- div,1
-- equiv pair end
-- equiv pair start,8
Workstation in begin.*succ
no end.succ
-- div,4
one b : begin | one e : end | ((Workstation-b) in b.^succ) and (no e.^succ)
-- div,1
all b : begin | all e : end | Workstation-b in b.^(succ) and no e.^(succ)
-- div,1
all w:Workstation | begin->w in *succ

all w:Workstation | not end->w in succ
-- div,1
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)

all w : Workstation | w in end implies no w.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
Workstation in begin.*succ & *succ.end
-- div,1
all w: Workstation | w = begin or w = end or end in w.^succ
all b: begin | Workstation in b.*succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all b: begin | b not in Workstation.succ
-- div,1
-- equiv pair end
-- equiv pair start,4
begin not in Workstation.succ
no end.succ
-- div,2
all b: begin, e: end | b not in Workstation.succ and no e.succ
-- div,1
one w : Workstation | w in end and no w.succ
one w : Workstation |

w in begin and w not in Workstation.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
one w: Workstation | Workstation in w.*succ
-- div,1
-- equiv pair end
-- equiv pair start,5
all w:Workstation-end | one w.succ
no end.succ
-- div,4
all w:Workstation - end | one w.succ
no end.succ
some begin.*succ
-- div,1
-- equiv pair end
-- equiv pair start,1
one w : Workstation | not w in Workstation.succ
-- div,1
-- equiv pair end
-- equiv pair start,3
all w: Workstation | lone w.succ and w not in w.^succ
-- div,2
all w : Workstation | lone w.succ
no (^succ & iden)
-- div,1
-- equiv pair end
-- equiv pair start,1
end in begin.*succ
all w: begin.^succ | w not in w.succ
-- div,1
-- equiv pair end
-- equiv pair start,3
all w: Workstation | lone (w.succ) and (w not in w.succ)
-- div,3
-- equiv pair end
-- equiv pair start,2
all w:Workstation | lone w.succ

no end.succ
no succ.begin
-- div,1
begin not in Workstation.succ

no end.succ

all ws : Workstation | lone ws.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | w not in end implies w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all w: Workstation | w = begin or w = end or end in w.^succ
-- div,2
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w not in w.^(succ) or one Workstation
-- div,1
-- equiv pair end
-- equiv pair start,24
Workstation in (begin.*succ & end.*(~succ))
no iden & ^succ
-- div,1
Workstation in begin.*succ & end.*~succ
all w:Workstation | w not in w.^succ
-- div,1
all w: Workstation | w not in w.^succ and (w in begin or some succ.w) and (w in end or some w.succ)
-- div,1
Workstation-begin in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
-- div,1
all w: Workstation | w not in Workstation.succ => w in begin
all w: Workstation | w not in w.^(succ)
all w: Workstation | no w.succ => w in end
-- div,1
all b, w : Workstation | b in begin and b != w implies w in b.^succ
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies some w.succ
-- div,1
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies some w.succ
-- div,1
all w: Workstation | w not in w.^succ
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in end implies some w.succ
-- div,2
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w in end <=> no w.^(succ)
-- div,1
begin not in Workstation.succ

no end.succ



Workstation-begin in begin.^succ

all ws : Workstation | ws not in ws.succ

all ws : Workstation-end | end in ws.^succ
-- div,1
begin not in Workstation.succ
no end.succ
Workstation-begin in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
-- div,3
all w : Workstation | no succ.w <=> w in begin
all w : Workstation | no w.succ <=> w in end
all w : Workstation - begin | w in begin.^succ
no (^succ & iden)
-- div,1
begin not in Workstation.succ
all ws : Workstation-begin | ws in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
-- div,1
begin not in Workstation.succ
no end.succ
all ws : Workstation-begin | ws in begin.^succ
all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
-- div,2
all w, wb : Workstation | wb in begin and w!=wb implies w in wb.^(succ)
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one we : Workstation | we in w.^succ and we in end
-- div,1
all b: begin, e: end | b not in Workstation.succ and no e.succ
all w: Workstation | w not in w.^succ
all w: Workstation | w not in end implies some w.succ
all w: Workstation | w not in begin implies w in Workstation.succ
-- div,3
all w, wb : Workstation | wb in begin and w!=wb implies w in wb.^(succ)
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one we : Workstation | some ws : Workstation| we in w.^succ and we in end and ws in w.succ
-- div,1
all w, wb : Workstation | wb in begin and w!=wb implies w in wb.^(succ)
all w : Workstation | w not in w.^succ
all w : Workstation | w not in end implies one we : Workstation | some ws : Workstation| we in w.^succ and we in end and ws in w.succ and w != we
-- div,1
-- equiv pair end
-- equiv pair start,1
succ in Workstation lone -> lone Workstation

no (end . succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
succ in Workstation lone -> lone Workstation

no iden & ^succ
-- div,1
-- equiv pair end
-- equiv pair start,11
begin.*succ = Workstation
all w : Workstation-end | one w.succ
-- div,1
Workstation = begin.*succ

all w : Workstation-end | one w.succ
-- div,1
all w:Workstation-end | one w.succ
Workstation in begin.*succ
-- div,1
all w1:Workstation-end | one w1.succ
Workstation in begin.*succ
-- div,3
all w1:Workstation-end | one w1.succ
Workstation-begin in begin.^succ
-- div,2
all w: Workstation - end | one w.succ
all w: Workstation | w in begin.*succ
-- div,1
all w:Workstation-end | one w.succ
all w: Workstation | w = begin => Workstation in w.*succ
-- div,1
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)

all w : Workstation | w not in end implies one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,3
one w : Workstation | not w in Workstation.succ
no iden & ^succ
-- div,1
all w:Workstation | w not in w.^succ
one w:Workstation | w.^succ = Workstation - w
-- div,2
-- equiv pair end
-- equiv pair start,4
all w:Workstation-end | one w.succ
no end.succ
end in begin.*succ
-- div,4
-- equiv pair end
-- equiv pair start,2
all ws:Workstation | no ws & ws.(^succ)
no end.succ
no succ.begin
-- div,1
all b: begin, e: end | b not in Workstation.succ and no e.succ
all w: Workstation | w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,20
Workstation - begin = Workstation.succ
no iden & ^succ
no end.succ
-- div,1
Workstation in (begin . *succ)
no (end . succ)
all w : Workstation | w not in (w . ^succ)
-- div,2
all w : Workstation | w not in w.^succ
(Workstation in begin.*succ) and (no end.succ)
-- div,1
Workstation in (begin . *succ)
no (end . succ)
no (succ . begin)
all w : Workstation | w not in (w . ^succ)
-- div,1
all ws:Workstation | no ws & ws.(^succ)
no end.succ
no succ.begin
Workstation in begin.*succ
-- div,1
end in begin.*succ
no end.succ
all w : Workstation | w not in w.^succ && (w != begin => some succ.w)
-- div,1
all b : begin | all e : end | Workstation-b in b.^(succ) and no e.^(succ)
all w : Workstation | w not in w.^(succ)
-- div,1
all w:Workstation | w not in w.^succ
one w:Workstation | w.^succ = Workstation - w
no end.succ
no succ.begin
-- div,2
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w in end implies no w.succ
-- div,4
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w in end implies no w.^(succ)
-- div,1
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w in end implies no w.succ
-- div,1
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
all w : Workstation | w in end implies no w.^(succ)
-- div,2
all w : Workstation | w in begin implies Workstation-{w} in w.^(succ)
all w : Workstation | w not in w.^(succ)
all w,w1 : Workstation | w in end and w!=w1 implies (w1 not in w.^(succ))
-- div,1
one w : Workstation | w in end and no w.succ
one w : Workstation | w in begin and w not in Workstation.succ
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
all w : Workstation | w not in w.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | lone ws.succ


Workstation-begin in begin.^succ
-- div,1
-- equiv pair end
-- equiv pair start,3
Workstation in begin.*succ
succ in Workstation lone -> lone Workstation
-- div,1
succ in Workstation lone -> lone Workstation
Workstation in begin.*succ
-- div,2
-- equiv pair end
-- equiv pair start,8
Workstation in (begin . *succ)
all w : Workstation | w not in (w . ^succ)
-- div,1
all w:Workstation | w not in w.^succ

begin.^succ = Workstation - begin
-- div,2
Workstation-begin in begin.^succ
all ws : Workstation | ws not in ws.^succ
-- div,1
end in begin.*succ
all w : Workstation | w not in w.^succ && (w != begin => some succ.w)
-- div,1
all w: Workstation | w not in w.^succ
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
-- div,3
-- equiv pair end
-- equiv pair start,3
begin not in Workstation.succ
no end.succ
Workstation-begin in begin.^succ
-- div,2
one w : Workstation | w in end and no w.succ
one w : Workstation | w in begin and w not in Workstation.succ
all w,wb : Workstation | (wb in begin and w!=wb) implies w in wb.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation-begin | one succ.w
no end.succ
Workstation in begin.*succ
-- div,1
-- equiv pair end
-- equiv pair start,8
all w: Workstation - end | one w.succ
all w: Workstation | w not in w.^succ
-- div,1
all w : Workstation | w != end => one w.succ
all w : Workstation | w not in w.^succ
-- div,1
all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
one begin
one end

all w : Workstation | w not in w.(^succ)
all w : Workstation | (w in end => no w.succ) and (w not in end => one w.succ)
-- div,1
begin not in begin.^succ
one begin.succ implies end in begin.^succ
no end.succ
all w : Workstation - end | one w.succ and w not in w.^succ
-- div,1
begin not in begin.^succ
one begin.succ implies end in begin.^succ and end != begin
no end.succ
all w : Workstation - end | one w.succ and w not in w.^succ
-- div,2
begin not in begin.^succ
one begin.succ implies end in begin.^succ and end != begin
no end.succ
all w : Workstation - end | one w.succ and w not in w.^succ and end in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,4
all b : begin | all e : end | (b.^succ in (Workstation-b)) and (no e.^succ)
-- div,1
one b : begin | one e : end | b.^succ in (Workstation-b) and no e.^succ
-- div,3
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w not in w.succ
all w : Workstation - end | one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
no end.succ+succ.begin
all w : Workstation-end-begin | one w.succ && one succ.w
-- div,1
-- equiv pair end
-- equiv pair start,1
no end.succ+succ.begin
all w : Workstation-end-begin | one w.succ && one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws:Workstation | no ws & ws.(^succ)
no end.succ
no succ.begin
end in begin.*succ
-- div,1
-- equiv pair end
-- equiv pair start,1
begin not in Workstation.succ
no end.succ


all ws : Workstation-end | end in ws.^succ
-- div,1
-- equiv pair end
-- equiv pair start,3
all w: Workstation | (no Workstation-w or w in end or some w.succ) and w not in w.^succ
-- div,1
all w : Workstation | some w.succ  or w in end
all w : Workstation | w not in w.^(succ)
-- div,1
all w : Workstation | w not in end implies some w.succ
all w : Workstation | w not in w.^(succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
succ in Workstation lone -> lone Workstation
Workstation in (begin.*succ & end.*(~succ))
-- div,1
-- equiv pair end
-- equiv pair start,2
all w: Workstation | (w in begin implies (some w.succ) or w in end) and w not in w.^succ
-- div,2
-- equiv pair end
-- equiv pair start,7
(begin . *succ) in Workstation
no (end . succ)
all w : Workstation | w not in (w . ^succ)
-- div,1
one begin
one end

all w : Workstation | w not in w.(^succ)
all w : Workstation | w in end => no w.succ
-- div,1
one b : begin | one e : end | all w : Workstation | (w not in w.^succ) and (b.^succ in Workstation) and (no e.succ)
-- div,2
one b : begin | one e : end | all w : Workstation | (w not in w.^succ) and (b.^succ in Workstation) and (no e.^succ)
-- div,1
one b : begin | one e : end | all w : Workstation | (w not in w.^succ) and (b.^succ in (Workstation-b)) and (no e.^succ)
-- div,1
one begin
one end

all w : Workstation | w not in w.(^succ)
all w : Workstation | w in end => (no w.succ and (w not in end => one w.succ))
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation | no succ.w iff w = begin
all w : Workstation | no w.succ iff w = end
-- div,1
all w : Workstation | no succ.w <=> w in begin
all w : Workstation | no w.succ <=> w in end
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Worker,ws:Workstation | ws->w in workers implies lone ws2:Workstation | ws->ws2 in succ
-- div,1
-- equiv pair end
-- equiv pair start,1
no end.succ



Workstation-begin in begin.^succ



all ws : Workstation-end | end in ws.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation | w not in w.^succ
one w:Workstation | w.^succ = Workstation - w
no end.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all w:Workstation-begin | one succ.w
all w:Workstation-end | one w.succ
Workstation in begin.*succ
-- div,1
all w1:Workstation-end | one w1.succ
all w1:Workstation-begin | one succ.w1
Workstation in begin.*succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation | some w.succ  or w in end
all w : Workstation | w not in w.^(succ) or w in end
-- div,1
all w : Workstation | w not in end implies some w.succ
all w : Workstation | w not in w.^(succ) or w in end
-- div,1
-- equiv pair end
-- equiv pair start,2
all w : Workstation | w not in w.succ and begin not in w.succ
all w : Workstation - end | one w.succ
-- div,1
all w : Workstation | w not in w.succ and begin not in w.succ
all w : Workstation - end | one w.succ
no iden & succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation | lone w.succ
one w:Workstation | w.^succ = Workstation - w and no succ.w
no end.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
succ in Workstation lone -> lone Workstation

no (end . succ)
all w : Workstation | w not in (w . ^succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Workstation-end | one x.succ

no end.succ

no begin & (Workstation-begin).succ

end in begin.*succ
-- div,1
-- equiv pair end
-- equiv pair start,1
one b : begin | one e : end | all w : Workstation | lone w.succ and (b.^succ in Workstation) and (no e.succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | no succ.w <=> w in begin and (no w.succ <=> w in end) and lone w.succ and w not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all ws : Workstation | lone ws.succ


Workstation-begin in begin.^succ

all ws : Workstation | ws not in ws.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
one b : begin | one e : end | all w : Workstation | lone w.succ and (b.^succ in (Workstation-b)) and (no e.succ)
-- div,1
-- equiv pair end
-- equiv pair start,4
all w : Workstation | w not in w.succ and begin not in w.succ
all w : Workstation - end | one w.succ
no iden & ^succ
-- div,1
one begin
one end

all w : Workstation | w in begin => w not in Workstation.succ
all w : Workstation | w not in w.(^succ)
all w : Workstation | (w in end => no w.succ) and (w not in end => one w.succ)
-- div,1
one w : Workstation | w in end and no w.succ
one w : Workstation | w in begin and w not in Workstation.succ

all w : Workstation | w not in w.^(succ)
all w : Workstation | w not in end implies one w.succ
-- div,1
begin not in begin.^succ
one begin.succ implies end in begin.^succ and end != begin
no end.succ
all w : Workstation - end | one w.succ and w not in w.^succ and end in w.^succ
all w : Workstation - begin | begin not in w.^succ
-- div,1
-- equiv pair end
-- equiv pair start,3
no succ.begin
no end.succ
all w : Workstation | w != begin => one succ.w
all w : Workstation | w != end => one w.succ
-- div,1
all w : Workstation | no succ.w <=> w in begin
all w : Workstation | no w.succ <=> w in end
all w : Workstation | lone w.succ
-- div,2
-- equiv pair end
-- equiv pair start,1
succ in Workstation lone -> lone Workstation
Workstation in (begin . *succ)

all w : Workstation | w not in (w . ^succ)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj w,wb : Workstation | (wb in begin) implies w in wb.^(succ)
&& w not in w.^(succ)
&& w not in end implies one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
begin not in Workstation.succ
no end.succ

all ws : Workstation | ws not in ws.^succ
all ws : Workstation-end | end in ws.^succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | w not in w.succ
all w : Workstation - begin | w in Workstation.succ
all w : Workstation - end | one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w : Workstation | no succ.w <=> w in begin
all w : Workstation | no w.succ <=> w in end
all w : Workstation | w in begin.*succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all w: Workstation | w not in Workstation.succ => w in begin

all w: Workstation | lone w.succ
all w: Workstation | no w.succ => w in end
-- div,1
-- equiv pair end
-- equiv pair start,1
all w:Workstation | begin->w in *succ
all w1:Workstation | some w2:Workstation | w1->w2 in succ or w1 in end
all w:Workstation | not end->w in succ
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj w,wb : Workstation | wb in begin implies w in wb.^(succ) and all w : Workstation | w not in w.^(succ) and all w : Workstation | w not in end implies one w.succ
-- div,1
-- equiv pair end
-- equiv pair start,2
all ws1,ws2: Workstation | ws2 in begin and ws1 != ws2 implies ws1 in ws2.^(succ)
all ws: Workstation | ws not in ws.succ
all ws: Workstation | ws not in end implies one ws.succ
-- div,2
-- equiv pair end
-- equiv pair start,2
all w1,w2: Workstation | ((w1 in begin and w2 in end) implies (some w1.succ and w1 not in succ.Workstation and no w2.succ)) or w1=w2 implies no Workstation-w1 and w1 not in w2.succ
-- div,2
-- equiv pair end
