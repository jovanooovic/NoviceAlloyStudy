abstract sig Source {}
sig User extends Source {
    profile : set Work,
    visible : set Work
}
sig Institution extends Source {}

sig Id {}
sig Work {
    ids : some Id,
    source : one Source
}

pred inv3 {
   (profile.ids.source).~(profile.ids.source) in iden
}

pred inv3c {
	all u : User, disj x,y : u.profile | x.source = y.source implies no (x.ids & y.ids)
}

check correct { inv3 <=> inv3c}
pred under { inv3 and !inv3c}
pred over { !inv3 and inv3c}
run over 
run under 


