Component one -> one Workstation
-- div,1
all c : Component | one w : Workstation | c.workstation.w
-- div,1
all c : Component | one ws:Workstation| ws on c.workstation
-- div,1
all c: Component| some w: Workstation| one w in c.workstation
-- div,1
