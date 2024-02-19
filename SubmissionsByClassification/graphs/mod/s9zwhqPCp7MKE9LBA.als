






sig V {E: set V}

run {} for 4


pred undirected[r: V->V] {

  
  

  
  all i, j: V | i->j in r => j->i in r

  
  
}

run { undirected[E] } for 4







pred noloops[r: V->V] {

  
  

  
  all v: V | v->v not in r

  
  

  
  
}

run { undirected[E] and noloops[E] } for 4





pred connected[r: V->V] {

  

  all i, j: V | i->j in *r  
                            

  
  
}

pred weaklyConnected[r: V->V] {
  all i, j: V | i->j in *(r + ~r)
}











pred nice {
  undirected[E]
  noloops[E]
  connected[E]


}

run nice for 4
