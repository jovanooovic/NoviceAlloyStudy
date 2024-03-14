-- equiv pair start,4
all x:Student, y:Course | x in y.enrolled implies lone x.projects.grades[y] & x.projects.grades[y]+1 & x.projects.grades[y]-1
-- div,1
all x:Student, y:Student-x, p:Project, c:Course, g:Grade| x->p in projects and y->p in projects and c->x->g in grades implies #c->y->g <= 1
-- div,2
all s1, s2: Student| all p: Project| (s1!=s2 and p in s1.projects and p in s2.projects) implies (all g1,g2 : Grade | g1 in s1.(p.grades) and g2 in s2.(p.grades) 
  	implies (g1=prev[g2] or g2=prev[g1] or g1=g2))
-- div,1
-- equiv pair end
