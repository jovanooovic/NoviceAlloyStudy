module Typescript

private open util/relation
private open util/integer as ui

abstract sig Any  {}
abstract sig Prim extends Any {}

some sig ?, ?, ?, ?, ? extends Prim {}

some     sig Unary extends Any   { src: Any, dst: Any }
abstract sig Tuple extends Any   { head: Any, tail: lone Tuple, elems: some Any}
                                 { elems = head + this.^@tail.@head
                                   this not in this.^(@head + @tail) }
some     sig Flow  extends Tuple { result: Any }
                                 { head in Unary
                                   #tail > 0 => tail.@head.src = head.dst
                                             && tail in Flow }
some     sig Pipe  extends Tuple {}
                                 { tail in Flow && tail.@head.src = head }

pred selfTest {
  Any = Prim + Tuple + Unary
}

fact Eg {
  Flow.head = Unary
  Flow = Flow.tail + Pipe.tail
  #Pipe = 1          
  no disj o1, o2: Unary | o1.src = o2.src && o1.dst = o2.dst
  no o: Unary | o in o.^(head + tail + src + dst)
}                     
                      
run { selfTest } for 8
