module example
sig Person {}

fact{
no p: Person | p in p.^likes
}

run{} for 3
