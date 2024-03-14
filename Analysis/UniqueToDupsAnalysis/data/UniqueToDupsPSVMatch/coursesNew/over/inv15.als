all p : Project, g,h : (projects.p).grades[projects.p] | g in (h + prev[h] + next[h])
-- div,2
all p : Project, g1, g2 : (projects.p).grades[projects.p] | g1 in (g2 + prev[g2] + next[g2])
-- div,1
