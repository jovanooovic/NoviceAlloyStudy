





module formal_methods/alloy_assignment


some sig BusLine {
	name: one Name,
	stop: some Stop, 
	origin: one Origin,  
	destination: one Destination 
}{
	origin != destination and     
	stop = stop + origin + destination}   

some sig Stop {
	location: one Location	
} 

some sig Origin in Stop {}
some sig Destination in Stop {}

some sig Location {}
some sig Name {}


pred noSameOriginAndDestination(){ all x,y : BusLine | x != y => x.origin not in y.origin and x.destination not in y.destination }






pred locationHasAtLeastOneStop(){ all s: Stop | some l: Location | s.location in l }





	
	
	

fun busLinesForStop [s: Stop]: set BusLine { all b: BusLine | s in b.stop => b.name }






pred test{ noSameOriginAndDestination and locationHasAtLeastOneStop } 



