-- equiv pair start,18
all x : State | no iden & (x.trans)
-- div,1
all e : Event | some e.(Init.trans) implies some (e->Init).trans
-- div,1
all e : Event | some e.(Init.trans) implies some ~(Init.trans).e
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    iden in *trans_bin
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} |
    Init in Init.*trans2
-- div,1
all s: State.trans.Event | s in s.^{y,x: State | some x.trans.y}
-- div,1
all s: Event.(State.trans) | s in *{x,y: State | some x.trans.y}.s
-- div,1
all s: Event.(State.trans) | s in s.*{x,y: State | some y.trans.x}
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init in (*trans_bin).State
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init in State.*trans_bin
-- div,1
let trans2 = {s1, s2 : State | some s1.trans.s2} |
    Init in Init.^trans2 + Init
-- div,2
let trans_bin = {s1, s2 : State | some s1.trans.s2} | Init in ~(*trans_bin).State
-- div,2
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    iden in *trans_bin . *trans_bin
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} |
    Init in ((^trans_bin).State + Init)
-- div,1
let trans_bin = {s1, s2 : State | some s1.trans.s2} | Init in Init.*trans_bin.*trans_bin
-- div,2
-- equiv pair end
-- equiv pair start,3
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
   some Init.^adj implies some ((Init.^adj).^adj &Init)
-- div,3
-- equiv pair end
-- equiv pair start,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
   some Init.^adj implies some ( (Init.*adj).^adj & Init )
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: State | s in Init.*{s1, s2: State | some s1.trans.s2} implies some (Init & s.*{s1, s2: State | some s1.trans.s2})
-- div,1
-- equiv pair end
-- equiv pair start,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
   some (Init.^adj)-Init implies some ( (Init.^adj).^adj & Init )
-- div,1
-- equiv pair end
-- equiv pair start,1
let adj ={x,y:State | some e:Event |x->e->y in trans} |
  
   some (Init.^adj)-Init implies some ( ((Init.^adj)-Init).^adj & Init )
-- div,1
-- equiv pair end
-- equiv pair start,1
all to: State | one Init and reachable[Init, to] => reachable[to, Init]
}

pred reachable[from, to: State]{
   	let rel = { s1, s2: State | some s1 -> Event -> s2 & trans } |
  		to in from.^rel
-- div,1
-- equiv pair end
