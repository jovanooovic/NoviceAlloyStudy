assert union {
  all s: set univ, p, q: univ -> univ | s.(p + q) = s.p + s.q
}

assert difference {
  all s: set univ, p, q: univ -> univ | s.(p - q) = s.p - s.q
}

assert intersection {
  all s: set univ, p, q: univ -> univ | s.(p & q) = s.p & s.q
}


check union for 4
check difference for 2
check intersection for 2
