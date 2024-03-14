( one pos =>  no pos)
-- div,1
( one pos => one Train.pos:>Exit )
-- div,2
one Train.pos:>Exit  since one pos
-- div,1
always( one Train.pos:>Exit  since one pos  )
-- div,1
some pos => one Train.pos:>Exit  since one pos
-- div,1
some Train => (one Train.pos:>Exit  since one pos)
-- div,2
always (some Train => (one Train.pos:>Exit  since one pos))
-- div,1
