sig User {
	follows : set User,
	sees : set Photo,
	posts : set Photo,
	suggested : set User
}

sig Influencer extends User {}

sig Photo {
	date : one Day
}
sig Ad extends Photo {}

sig Day {}

// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true

pred inv1 {
	// Every image is posted be one user
  
	all img:Photo | one u:User | u->img in posts

}


pred inv2 {
	// An user cannot follow itself.
	all u:User | u->u not in follows

}


pred inv3 {
	// An user only sees (non ad) photos posted by followed users. 
	all u,uu:User, pht:Photo | uu->pht in posts and u->uu not in follows and pht in Ad implies u->pht not in sees


	// Ads can be seen by everyone.
	all ad:Ad, u:User | u->ad in sees
}


pred inv4 {
	// If an user posts an ad then all its posts should be labelled as ads
		
	all u:User 
	| some pht:Photo 
		| pht in Ad and u->pht in posts implies all otherPht:Photo | u->otherPht in posts implies  otherPht in Ad


}


pred inv5 {
	
  
  	
  all infl:Influencer, usr:User | usr != infl implies usr->infl in follows
  
  	
  all infl:Influencer | some u:User | u->infl in follows implies u not in Influencer

}


pred inv6 {
	// Influencers post every day
  all infl:Influencer, day:Day | some pst:Photo | infl->pst in posts and pst->day in date
  

}


pred inv7 {
	// Suggested are other users followed by followed users, but not yet followed
	
  	
	all user1, user2 : User | 
  		user1->user2 in follows and all user3:User | user2->user3 in follows and user1->user3 not in follows and user3 != user1 and user1 != user2 implies user1->user3 in suggested
  	
  
  	
  
  	
	
}  


pred inv8 {
	// An user only sees ads from followed or suggested users
  

}
