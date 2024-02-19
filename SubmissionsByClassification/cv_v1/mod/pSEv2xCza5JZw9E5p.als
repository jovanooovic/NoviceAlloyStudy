open util/ordering[Time]

sig Number {}

sig Time {}
one sig Now in Time {}

sig Contact {
    phones : some Number
}

sig Call {
    number : one Number,
    time : one Time
}
// You can check their correctness with the different commands and
// specifying a given invariant you can assume the others to be true.
pred Inv1 {
    all disj c1,c2:Contact | no (c1.phones & c2.phones)
    
    all n : Number | lone phones.n
}
pred Inv2 {
    Call.number in Contact.phones
    
    all n : Call.number | n in Contact.phones
}
pred Inv3 {
    #Call.time = #time
    
    all disj c1,c2: Call | c1.time != c2.time
}
pred Inv4 {
    all c: Call | c.time in prevs[Now] 
}
