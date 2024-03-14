pred Inv4c { 
  all c : Component, p : c.parts & Component | lte[p.position,c.position]
}
