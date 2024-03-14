open util/ordering[Date]

sig Person {
attends : set Conference
}

sig Conference {
organizers : some Person,
location : one Location,
date : one Date
}

sig Location {}

sig Date {}

pred inv1{
  all e: Conference | some attends.e
}
