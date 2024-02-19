module example
sig Preson {}

fact{
no p: Person | p in p.^likes
}

run{} for 3
