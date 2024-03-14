all s : Person | s not in Professor implies (s.teaches)=0
-- div,1
all s : Student| no s.teaches
  	all p : Person | some p.teaches implies p in Professor
-- div,1
