some succs.none
-- div,2
Exit.succs not in Track
-- div,1
all e : univ | e in Exit
-- div,1
all exit : univ | exit in Exit
-- div,1
Junction not in Exit and Entry not in Exit and Exit not in Exit
-- div,1
all t : Track | #t.succs = 0 && t in Exit
-- div,1
all t : Track | #succs.t = 0 && t in Exit
-- div,2
all a,a2:Track | a in Exit iff a->a2 not in succs
-- div,1
Track = Junction+Entry+Exit
all t: Track | t in Exit <=> no t.succs
-- div,1
all track : univ | no track.^succs and track not in Junction and track not in Entry implies track in Exit
-- div,1
all a:Exit, a2:Track | a->a2 not in succs
all a:Track,a2:Track | a->a2 not in succs implies a in Exit
-- div,1
all t: Track| #t.succs=0 implies t in Exit
all t: Exit| no t.succs
all t: Exit | t not in Junction
-- div,1
all a:Track | a in Exit implies all a2:Track | a->a2 not in succs
all a:Track | all a2:Track | a->a2 not in succs implies a in Exit
-- div,1
all t: Track| #t.succs=0 implies t in Exit
all t: Exit| no t.succs
all t: Exit | t not in Junction
all t: Exit | t not in Entry
-- div,1
