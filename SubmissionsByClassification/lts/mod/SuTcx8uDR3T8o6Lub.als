sig Node {
	children : set Node
}
sig Leaf extends Node {}
one sig Root in Node {}

sig Red, Black in Node {}


fun blackChilds [n : Node] : set Node {
	n.*children&Black
}


pred Invs {
	
    

	
	
    
  
	
	
    
	
	
	
	
  

    
  	
  	
      
      	no children.Root
      
      	all node : Node-Root | one x : Node | x in children.node
      
      	all node : Node | node in  Root.*children
    	
        
  	  
  		no Leaf.children
  	
		
  		all parent : Node-Leaf | some c1, c2 : parent.children | c1 != c2 and no (parent.children-c1-c2)
  
  
  	all n : Node | (n in Red and n not in Black) or (n in Black and n not in Red)
  	
    
  	Root in Black
   
    
	all node : Red-Leaf | node.children  in Black
  
  	
  	Leaf in Black
  
  
  	
    
    
    
 	all c1,c2 : Node.children | c1 != c2 => (some blackChilds[c1]-Leaf <=> some blackChilds[c2]-Leaf)
	
}
