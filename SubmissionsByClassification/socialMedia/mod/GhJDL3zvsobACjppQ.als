sig Node {
    children : set Node
}
sig Leaf extends Node {}
one sig Root in Node {}

sig Red, Black in Node {}

pred Invs {
    
    

    
    
    
  
    
    
    
    
    
    
  
  
 
  all n:Node | (n in Red and n not in Black) or ( n not in Red and n in Black)
  
 
  Root in Black
  
 
  all n1:Node, n2:Node | ( (n1 in children.n2 and n1 in Red) implies n2 not in Red) or ((n1 in children.n2 and n2 in Red) implies n1 not in Red)
  
 
  all disj l1,l2:Leaf | #(^children.l1 & Black) = #(^children.l2 & Black)
   
 
  all l:Leaf | l in Black
  
  
  all n:Node-Root | Root in ^children.n
  
  
  all n:Node-Root | Root not in n.^children   
  
  
  all l:Leaf | no l.children
    
  
  all n:Node-Leaf | #(n.children)=2
  
  
  all l:Leaf | one n:Node | n in children.l or no children.l
  
  
  all n:Node-Leaf | n not in n.children and n not in children.n
  
  
  all n1:Node, n2:Node | n2 in n1.children implies n2 not in children.n1
  
  
  all n1:Node, n2:Node, n3:Node | (n1 in children.n2 and n3 in children.n2) implies n1=n3

}
