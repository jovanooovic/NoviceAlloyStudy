open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor,Student in Person {}

sig Course {
	projects : set Project,
	grades : Person -> Grade
}

sig Project {}

sig Grade {}

pred inv15 {
all s1, s2: Student| all c: Course| all p: Project| (s1!=s2 && p in s1.projects && p in s2.projects && p in c.projects) => (all g1,g2 : Grade | g1 in s1.(c.grades) && g2 in s2.(c.grades) => (g1=prev[g2] || g2=prev[g1] || g1=g2))
}

pred inv15c {
	all c : Course, p : c.projects, disj x,y : (Person <: projects).p | some c.grades[x] and some c.grades[y] implies c.grades[x] in c.grades[y].(prev+iden+next)
}

check correct { inv15 <=> inv15c}
pred under { inv15 and !inv15c}
pred over { !inv15 and inv15c}
run over 
run under 

