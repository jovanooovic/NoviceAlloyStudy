-- equiv pair start,1
no Signal
-- div,1
-- equiv pair end
-- equiv pair start,2
before no Green
-- div,1
before no (Signal & Green)
-- div,1
-- equiv pair end
-- equiv pair start,3
all t:Track | t.signal not in Green
-- div,3
-- equiv pair end
