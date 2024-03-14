-- equiv pair start,4
let t = {x: State, y: State | some (x.trans).y } |
  	all s: Init.^t | some s.^t & Init
-- div,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
    all s:(Init.^adj) | some ( s.^adj & Init )
-- div,1
let adj = {s1,s2: State | some e: Event | s1 -> e -> s2 in trans} |
  all r: Init.^adj | some i: Init | i in r.^adj
-- div,1
all s: State | s in Init.^{s1, s2: State | some s1.trans.s2} implies some (Init & s.^{s1, s2: State | some s1.trans.s2})
-- div,1
-- equiv pair end
