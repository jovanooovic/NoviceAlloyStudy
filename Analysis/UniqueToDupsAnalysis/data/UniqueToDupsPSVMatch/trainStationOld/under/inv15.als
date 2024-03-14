always eventually (some pos =>(pos != pos'))
-- div,2
all t:Train | one t.pos implies eventually (t.pos)' != t.pos
-- div,1
all t : Train | (some t.pos) implies (eventually t.pos != t.pos')
-- div,1
all t:Train | always one t.pos implies eventually (t.pos)' != t.pos
-- div,1
