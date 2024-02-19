/* 
Each node as a set of outgoing edges, representing a directed graph without multiple edged.
*/
sig Node {
	adj : set Node
}

assert union {
  all s: set univ, p, q: univ -> univ | s.(p + q) = s.p + s.q
}

assert difference {
  all s: set univ, p, q: univ -> univ | s.(p - q) = s.p - s.q
}

assert intersection {
  all s: set univ, p, q: univ -> univ | s.(p & q) = s.p & s.q
}


check difference for 2
check intersection for 2
