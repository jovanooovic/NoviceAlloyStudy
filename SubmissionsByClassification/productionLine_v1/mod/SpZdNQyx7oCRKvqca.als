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

all d : Dir | lone contents.d
  }
