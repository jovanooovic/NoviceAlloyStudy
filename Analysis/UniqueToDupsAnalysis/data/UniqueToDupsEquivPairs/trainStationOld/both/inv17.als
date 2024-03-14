-- equiv pair start,1
( one pos =>  no pos)
-- div,1
-- equiv pair end
-- equiv pair start,2
( one pos => one Train.pos:>Exit )
-- div,2
-- equiv pair end
-- equiv pair start,1
one Train.pos:>Exit  since one pos
-- div,1
-- equiv pair end
-- equiv pair start,1
always( one Train.pos:>Exit  since one pos  )
-- div,1
-- equiv pair end
-- equiv pair start,1
some pos => one Train.pos:>Exit  since one pos
-- div,1
-- equiv pair end
-- equiv pair start,2
some Train => (one Train.pos:>Exit  since one pos)
-- div,2
-- equiv pair end
-- equiv pair start,1
always (some Train => (one Train.pos:>Exit  since one pos))
-- div,1
-- equiv pair end
