-- equiv pair start,9
no Entry & Exit
-- div,4
all t:Track | t in Entry implies t not in Exit
-- div,2
not some t:Track | t in Exit and t in Entry
-- div,1
all t:Track | (t in Entry implies t not in Exit) and (t in Exit implies t not in Entry)
-- div,1
all t:Track | t in Exit => not t in Entry
all t:Track | t in Entry => not t in Exit
-- div,1
-- equiv pair end
-- equiv pair start,3
no Entry & Exit.^succs
-- div,1
all e:Exit | no i:Entry | i in e.^succs
-- div,1
all t1:Track, t2:Track | t1 in Entry and t2 in Exit implies t2 not in ^succs.t1
-- div,1
-- equiv pair end
-- equiv pair start,1
no Entry & Exit.*succs
-- div,1
-- equiv pair end
-- equiv pair start,1
Track not in Track.^succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | t in Entry
-- div,1
-- equiv pair end
-- equiv pair start,3
all t:Track | t in t.^succs
-- div,3
-- equiv pair end
-- equiv pair start,1
succs not in (^succs & ~succs)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | t.^succs not in t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | Track in t.^succs
-- div,1
-- equiv pair end
-- equiv pair start,6
all t:Entry, e:Exit| e->t in succs
-- div,1
all a,b:Track| a in Entry and b in Exit implies b->a in succs
-- div,1
all t,a:Track| t in Entry and a in Exit implies a->t in succs
-- div,4
-- equiv pair end
-- equiv pair start,1
lone (Track.^succs & Track.^succs)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Track | Track not in t.*succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all e:Entry, ex:Exit | e->ex in ^succs
-- div,2
-- equiv pair end
-- equiv pair start,1
all e:Entry, t:Track | e not in t.*succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some ex:Exit, e:Entry | e not in ex.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Track | t in Entry iff t not in Exit
-- div,1
all t:Track | (t in Entry iff t not in Exit) and (t in Exit iff t not in Entry)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | all p: succs.t | t.^succs not in p
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in t.succs and t.succs not in t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Track | t in Entry or t in Exit or some t.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all a,b:Track| a in Entry and b in Exit and b->a in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some t,a:Track| t in Entry and a in Exit and t->a in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some t,a:Track| t in Entry and a in Exit and a->t in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all a,b:Track| a in Entry and b in Exit implies a->b in succs
-- div,1
-- equiv pair end
-- equiv pair start,2
some t,a:Track| t in Entry and a in Exit implies t->a in succs
-- div,1
some t,a:Track| t in Entry and a in Exit implies a->t in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all ex:Exit, e:Entry | e not in ex.succs and ex not in ex.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
some ex:Exit, e:Entry | e not in ex.succs and ex not in ex.succs
-- div,1
-- equiv pair end
-- equiv pair start,4
all x,y:Track| x in Entry and y in Exit implies y->x not in succs
-- div,3
all t1:Track, t2:Track | t1 in Entry and t2 in Exit implies t2 not in succs.t1
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in Exit implies some t2:Track | t->t2 in succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | some en:Entry | one ex:Exit | en->t in succs and t->ex in succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all x,y : Track | x != y implies y in x.succs
all x : Track | x not in x.succs
-- div,1
all x,y : Track | x != y implies (y in x.succs and x in y.succs)
all x : Track | x not in x.succs
-- div,1
-- equiv pair end
-- equiv pair start,4
all t:Track | t not in t.succs
all disj t1,t2:Track | t1.succs not in t2.succs
-- div,2
all t:Track | t not in t.succs
all disj t1,t2:Track | t1.succs not in t2.succs and t2.succs not in t1.succs
-- div,2
-- equiv pair end
-- equiv pair start,1
all e:Entry, t:Track | e not in t.^succs
all e:Exit, t:Track | t not in e.^succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all e:Entry, t:Track | e not in t.*succs
all e:Exit, t:Track | t not in e.*succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all e:Entry, ex:Exit, j:Junction | (ex in e.succs => e not in ex.succs) and j not in ex.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | one e:Entry, ex:Exit | (t not in t.succs) and ex in e.succs => e not in ex.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Exit | all ts:Track-t | ts not in t.succs
all t:Entry | all ts:Track-t | t not in ts.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Track, ex:Exit, e:Entry, j:Junction | t not in t.succs and no ex.succs and e not in t.succs
-- div,1
all t:Track, ex:Exit, e:Entry, j:Junction | t not in t.succs and no ex.succs and e not in Track.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in t.succs
all ex:Exit, e:Entry, j:Junction | no ex.succs and e not in j.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all e:Entry | all t:Track-Entry | e not in t.succs
all e:Exit | all t:Track-Exit | t not in e.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj t1, t2 : Track | t1 in succs.t2 implies t2 not in t1.succs.succs
all t : Track | t not in succs.t
-- div,1
all t1, t2 : Track | t1 in succs.t2 and t1 != t2 implies t2 not in t1.succs.succs
all t : Track | t not in succs.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Exit | all ts:Track-t | ts not in t.succs
all t:Entry | all ts:Track-t | t not in ts.succs
no succs & iden
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj t1,t2:Track | t2 in t1.succs => t1 not in t2.succs and t1.succs not in t2.succs and t2.succs not in t1.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in t.succs
all e:Entry, ex:Exit, j:Junction | (ex in e.succs => e not in ex.succs) and j not in ex.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in Exit implies some ts:Track | ts in t.succs
all t:Track | t in Exit implies all ts:Track | t not in ts.succs
-- div,1
-- equiv pair end
-- equiv pair start,5
all t:Track | t not in Exit implies some ts:Track | ts in t.succs
all t:Track | t in Exit implies all ts:Track | ts not in t.succs
-- div,1
all t:Track | t not in Exit implies some t2:Track | t->t2 in succs
all t:Track | t in Exit implies all t2:Track | t->t2 not in succs
-- div,4
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in Exit implies some ts:Track | ts in t.succs
all t:Track | t not in Entry implies some ts:Track | t in ts.succs
-- div,1
-- equiv pair end
-- equiv pair start,3
all t:Track | t not in t.succs
all disj t1,t2:Track | t2 in t1.succs => t1 not in t2.succs and t1.succs not in t2.succs and t2.succs not in t1.succs
-- div,3
-- equiv pair end
-- equiv pair start,1
all t:Track, ex:Exit | t not in t.succs and no ex.succs
all e:Entry, ex:Exit, j:Junction | (ex in e.succs => e not in ex.succs) and j not in ex.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track, ex:Exit | t not in t.succs and no ex.succs
all e:Entry, ex:Exit, j:Junction | (ex in e.succs => e not in ex.succs) and e not in Track.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in t.succs
all disj t1,t2 : Track | t1 in t2.succs => t2 not in t1.succs
all ex:Exit, e:Entry, j:Junction | no ex.succs and e not in j.succs
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj t1,t2:Track | (t1 not in t1.succs and t2 not in t2.succs) and (t2 in t1.succs => t1 not in t2.succs and t1.succs not in t2.succs and t2.succs not in t1.succs)
-- div,2
-- equiv pair end
-- equiv pair start,2
all t:Track | t not in t.succs
all disj t1,t2 : Track | (t1 in t2.succs => t2 not in t1.succs) and t2.succs not in t1.succs
all ex:Exit, e:Entry, j:Junction | no ex.succs and e not in j.succs
-- div,2
-- equiv pair end
-- equiv pair start,2
all t:Track | t not in t.succs
all disj t1,t2 : Track | (t1 in t2.succs => t2 not in t1.succs) and t2.succs not in t1.succs
all ex:Exit, e:Entry, j:Junction | no ex.succs and e not in j.succs and ex not in j
-- div,1
all t:Track | t not in t.succs
all disj t1,t2 : Track | (t1 in t2.succs => t2 not in t1.succs) and t2.succs not in t1.succs
all ex:Exit, e:Entry, j:Junction | no ex.succs and e not in j.succs and j in e.succs
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Track | t not in Exit implies some t2:Track | t->t2 in succs
all t:Track | t in Exit implies all t2:Track | t->t2 not in succs
all t:Track | t not in Entry implies some t2:Track | t2->t in succs
all t:Track | t in Entry implies all t2:Track | t2->t not in succs
-- div,1
-- equiv pair end
