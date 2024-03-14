all s : Student | no s.enrolled - s.projects
-- div,1
all s : Student | s.enrolled in Student.projects
-- div,1
all s : Student | s.projects in s.Course.projects
-- div,2
all x: Student | some c: Course| c->x in projects
-- div,1
all s:Student, p:s.projects | p in s.Course.projects
-- div,1
all x: Student | some (x.projects implies x.enrolled)
-- div,1
all s : Student | projects.(s.projects) in s.enrolled
-- div,1
all s:Student | all c:Course|  s.enrolled = projects.c
-- div,1
all s: Student | (s.projects) in s.enrolled
}

fun getProjectCourse[p : Project]: one Course {
-- div,1
all s: Student | all p : Course | s in enrolled.p.projects
-- div,2
all p:Person, c:Course |p.projects.c implies c in p.enrolled
-- div,1
all s : Student | all p : s.projects | projects.p in s.enrolled
-- div,2
all p:Person, c:Course | c in  p.projects implies c in p.enrolled
-- div,1
all p:Person, c:Course | c in  p.projects.c implies c in p.enrolled
-- div,1
all student : Student | student.projects && student.enrolled.projects
-- div,1
all s: Person-Student | (all c : Course | s.enrolled and projects.c )
-- div,1
all p : Project, s : Student | p in s.projects => p.enrolled.projects
-- div,4
all s : Student | Course <: projects.s.Person <: projects in s.enrolled
-- div,2
all s: Student, p: Project | p in s.projects => projects.p in s.enrolled
-- div,1
all s : Student | Course <: projects.s.(Person <: projects) in s.enrolled
-- div,1
all p:Person, c:Course | c in  p.projects & Course implies c in p.enrolled
-- div,1
all p: Project | all s:Student | p in s.projects implies p.Course in s.enrolled
-- div,1
all s : Student | no c : Course | c in s.projects and c not in s.enrolled.projects
-- div,2
all s: Student, p: Project | s in p.Course.enrolled implies s in p.Course.projects
-- div,2
all s: Student | all p : Course | all proj: Project | s in enrolled.p.projects.proj
-- div,1
all s: Student | all p: Project | all c: Course | s->p in projects => s->c enrolled
-- div,3
all pe:Student | all c:Course |some(pe.projects=c.projects)  implies c in p.enrolled
-- div,1
all pe:Student | all c:Course |some (pe.projects=c.projects)  implies c in p.enrolled
-- div,1
all proj:Project, s:Student | some c:Course | s in c.projects implies c in s.enrolled
-- div,1
all s : Student, p : s.projects | (some c : Course | p in projects.c implies p in enrolled.c)
-- div,1
all x : Person | one y : Course | (x in projects.x and y in projects.x) implies x in enrolled.y
-- div,3
all p:Person, proj:Project, c:Course | (c in p.enrolled & proj in c.projects) implies p in Student
-- div,2
all s : Student | all p : s.projects | (some c : Course | p in projects.c implies p in enrolled.c)
-- div,1
all s: Person | all p : Course | all proj: Project | s in Student and s in enrolled.p.projects.proj
-- div,1
all p:Person, proj:Project, c:Course | (c in p.enrolled) & (proj in c.projects) implies p in Student
-- div,1
all s : Student, p : Project, c : Course | s in projects.p and p in projects.c implies p in enrolled.c
-- div,2
all s : Student | ( all p : s.projects | (some c : Course | p in projects.c implies p in enrolled.c) )
-- div,1
all s : Student, p : Project | some c : Course | s in projects.p and p in projects.c implies p in enrolled.c
-- div,1
all x : Person | one y : Course | (x in Person.projects.x and y in Course.projects.x) implies x in enrolled.y
-- div,1
all x : Person | one y : Course | (x in Course<:projects.x and y in Person<:projects.x) implies x in enrolled.y
-- div,1
all s : Student, p : Project | p in s.projects implies (some c : Course | p in projects.c implies p in enrolled.c)
-- div,1
all s : Student, p : Project | s in projects.p implies (some c : Course | p in projects.c implies p in enrolled.c)
-- div,1
all s : Student | all c : Course | all proj : Project | proj in s.projects and proj in c.projects implies s c in s.enrollde
-- div,1
all s: Student | getProjectCourse[s.projects] in s.enrolled
}

fun getProjectCourse[p : Project]: one Course {
  	projects.p
-- div,1
all s: Student | (projects.(s.projects)) in s.enrolled
}

fun getProjectCourse[p : Project]: one Course {
  	projects.p & Course
-- div,1
