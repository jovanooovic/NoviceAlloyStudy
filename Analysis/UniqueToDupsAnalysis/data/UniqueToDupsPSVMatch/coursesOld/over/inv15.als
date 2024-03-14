all disj p1, p2 : (Person<:projects).Project | p1 = p2
-- div,1
all proj : Project, disj p1, p2 : (Person<:projects).proj, c : (Course<:projects).proj | p1 = p2
-- div,1
all p : Project, g,h : (projects.p).grades[projects.p] | g in (h + prev[h] + next[h])
-- div,2
all p : Project, g,h : (projects.p).grades[projects.p] | g = h or g = prev[h] or prev[g] = h
-- div,2
all p : Project, g,h : (projects.p).grades[Person<:projects.p] | g in (h + prev[h] + next[h])
-- div,2
all c : Course, p : c.projects, s1, s2 : projects.p.(c.grades) | s1->s2 in prev+iden+next
-- div,1
all c : Course, p : c.projects, g1, g2 : projects.p.(c.grades) | g1->g2 in prev+iden+next
-- div,3
all p : Project , g,g1 : (projects.p).(projects.p.grades) | g = g1 or g1=prev[g] or g=prev[g1]
-- div,2
all c:Course,p:c.projects | max[(projects.p).(c.grades)] = max[(projects.p).(c.grades)].next
-- div,1
all p : Project , g,g1 : Person.((Course :>projects.p).grades) |  g = g1 or g1=prev[g] or g=prev[g1]
-- div,2
all p : Project , g,g1 : (Person :> projects.p).(projects.p.grades) | g = g1 or g1=prev[g] or g=prev[g1]
-- div,2
all c : Course, p : c.projects, s1, s2 : Person<:projects.p | s1.(c.grades)->s2.(c.grades) in next+prev
-- div,1
all c:Course,p:c.projects | max[(projects.p).(c.grades)] in min[(projects.p).(c.grades)].(iden+next)
-- div,1
all c : Course, s1, s2 : Person<:projects.(c.projects) | s1 != s2 implies s1.(c.grades)->s2.(c.grades) in next+prev
-- div,1
all c : Course, p : c.projects, s1, s2 : Person<:projects.p | s1.(c.grades)->s2.(c.grades) in prev+iden+next
-- div,4
all c : Course, p : c.projects, s1, s2 : Person<:projects.p | s1.(c.grades)->s2.(c.grades) in next+prev+iden
-- div,1
all p : Project , g,g1 : (Person :> projects.p).((Course :> projects.p).grades) | g = g1 or g1=prev[g] or g=prev[g1]
-- div,1
all c:Course,p:c.projects,disj s1,s2:Person<:projects.p | s1.(c.grades) in s2.(c.grades).(iden+next+prev)
-- div,1
all c : Course, s1, s2 : Person<:projects.(c.projects) | s1 != s2 implies s1.(c.grades)->s2.(c.grades) in next+prev+iden
-- div,1
all c : Course, p : c.projects, s1, s2 : Person<:projects.p | s1 != s2 implies s1.(c.grades)->s2.(c.grades) in next+prev
-- div,1
all c : Course, p : c . projects, disj s1, s2 : p . ~(this/Person <: projects) |
  lte[s1 . (c . grades), s2 . (c . grades)] and s1 . (c . grades) in prevs[s2 . (c . grades)]
-- div,1
all c: Course, p: c.projects, disj s1,s2: (Person<:projects).p | s1.(c.grades) = s2.(c.grades) || s1.(c.grades) in s2.(c.grades).(next+prev)
-- div,1
all c : Course, p : c . projects, disj s1, s2 : p . ~(Person <: projects) |
  (s1 . (c . grades)) . prev =  (s2 . (c . grades)) or
  (s2 . (c . grades)) . prev =  (s1 . (c . grades))
-- div,1
all c : Course, p : c.projects, s1, s2 : Person<:projects.p | s1.(c.grades)->s2.(c.grades) in next+prev or s1.(c.grades) = s2.(c.grades)
-- div,1
all c : Course, s1, s2 : Person<:projects.(c.projects) | s1 != s2 implies s1.(c.grades)->s2.(c.grades) in next+prev or s1.(c.grades) = s2.(c.grades)
-- div,1
all c:Course, p:c.projects, s1, s2: (Person<:projects).p, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades => ((g1.prev = g2)  or (g1=g2))
-- div,1
all c: Course, p: c.projects, disj s1,s2: (Person<:projects).p | s1.(c.grades) = s2.(c.grades) || s1.(c.grades) in s2.(c.grades).next+s2.(c.grades).prev
-- div,2
all proj : Project, disj p1, p2 : (Person<:projects).proj, c : (Course<:projects).proj | 
  		~(c.grades).p1 = prev[~(c.grades).p2] or ~(c.grades).p1 = next[~(c.grades).p2]
-- div,1
all c : Course, p : c.projects, s1, s2 : Person<:projects.p | s1 != s2 implies s1.(c.grades)->s2.(c.grades) in next+prev or s1.(c.grades) = s2.(c.grades)
-- div,1
all c:Course, p:c.projects, s1, s2: (Person<:projects).p, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades => ((g1.prev = g2) or (g1=g2.prev) or (g1=g2))
-- div,3
all c:Course, p:c.projects, s1, s2: (Person<:projects).Project, g1,g2:Grade | 
  		s1 != s2 and c->s1->g1 in grades and c->s2->g2 in grades => ((g1.prev = g2) or (g1=g2.prev) or (g1=g2))
-- div,1
all c: Course, p: c.projects, disj s1,s2: (Person<:projects).p | (some s1.(c.grades) and some s2.(c.grades)) implies s1.(c.grades) = s2.(c.grades) || s1.(c.grades) in s2.(c.grades).(next+prev)
-- div,1
