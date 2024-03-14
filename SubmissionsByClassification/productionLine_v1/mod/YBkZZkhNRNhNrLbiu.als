abstract sig Object {}
sig Dir extends Object {
contents : set Entry
}
sig File extends Object {}
one sig Root extends Dir {}
sig Entry {
contents : one Object,
name : one Name
}
sig Name {}

fact {

all o : Object - Root | some contents.o
no contents.Root

all d : Dir | lone contents.d

all d : Dir, n : Name | lone (d.contents & name.n)

all d : Dir | d not in d.^(contents.contents)
}
