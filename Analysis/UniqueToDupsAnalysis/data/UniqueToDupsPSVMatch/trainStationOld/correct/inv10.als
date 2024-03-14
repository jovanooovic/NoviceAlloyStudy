always (lone (prox.Junction).signal & Green)
-- div,1
always (all j:Junction | lone (prox.j).signal & Green)
-- div,3
always (all j:Junction | lone((prox.j).signal :> Green))
-- div,3
always (all j:Junction | lone (prox.Junction).signal & Green)
-- div,1
always (all j:Junction | lone (prox.j).signal & Green)
always (lone (prox.Junction).signal & Green)
-- div,1
