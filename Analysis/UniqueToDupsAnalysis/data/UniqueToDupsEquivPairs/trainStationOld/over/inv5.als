-- equiv pair start,1
always pos in pos'
-- div,1
-- equiv pair end
-- equiv pair start,1
always all t: Train | (t'.pos in t.prox)
-- div,1
-- equiv pair end
-- equiv pair start,1
always(
all t:Train {
some (t.pos & Exit) => no t.pos'
some (t.pos & (Track-Exit)) => some tk2: t.pos | t.pos' = tk2
}
)
-- div,1
-- equiv pair end
-- equiv pair start,2
always(
all t:Train {
some (t.pos & Exit) => no t.pos'
some (t.pos & (Track-Exit)) => some tk2: (t.pos).prox | t.pos' = tk2
}
)
-- div,2
-- equiv pair end
-- equiv pair start,1
always(
all t:Train {
some tk:t.pos {
(tk in Exit) => t.pos' = t.pos - tk
(tk not in Exit) => some tk2: tk.prox | t.pos' = tk2
}
}
)
-- div,1
-- equiv pair end
