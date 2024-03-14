all
-- div,2
all p:Projects
-- div,2
all x: Student.project
-- div,1
all x: Student | y: x.projects
-- div,1
all s:Student, c:s.enrolled | p in c.projects
-- div,1
all s: Student | s.projects = s.courses.projects
-- div,1
all s : Students | s.enrolled in Student.projects
-- div,1
all s : Students | s.projects in s.Course.projects
-- div,1
all s:Student, p:Projet | p in s.enrolled.projects
-- div,1
all x : Student | x.project in x.enrolled.projects
-- div,1
all s:Student, p:s.projects | p in s.courses.projects
-- div,1
all u : User | (all p: u.projects | p in u.enrolled )
-- div,1
all S : Student | projects.(s.projects) in s.enrolled
-- div,1
all x: Students | some (x.projects implies x.enrolled)
-- div,1
Student <: projects).(~projects :> Course) in enrolled
-- div,1
all s:Student | all c:Courses|  s.enrolled = projects.c
-- div,1
all s: Student | all p : Course | s in erolled.p.projects
-- div,1
all s: Strudent | p: s.projects | p in s.enroled.projects
-- div,2
all s: Student | (s.projects) in s.enrolled
}

fun getProjectCourse[p : Project]: one Course {
  	projects.p & Courses
-- div,1
all s: Student | all p : Courses | s in erolled.p.projects
-- div,1
all s : Student | p : s.projects => p in s.enrolled.projects
-- div,4
all s: Student | all p: s.projects | p in s.enroled.projects
-- div,1
all s: Strudent | all p: s.projects | p in s.enroled.projects
-- div,1
all s : Student, p : Project | p in s.projects => s in p.courses
-- div,1
all s : Student | all s.enrolled : Course | s.projects in s.enrolled
-- div,2
all s: Person-Student | (all c : Courses | s.enrolled and projects.c )
-- div,1
all s: Person-Students | (all c : Courses | s.enrolled and projects.c )
-- div,1
all s: Student, p: Project | p in s.projects => p in s.enrolled.project
-- div,1
all s: Students, p: Project| p in s.projects => p in s.enrolled.projects
-- div,1
all s : Student | Courses <: projects.s.Person <: projects in s.enrolled
-- div,1
all s: Student, p: Project | p in s.projects => projects.p in c.enrolled
-- div,1
all s: Student, p: Project | p in s.projects => projects.p in u.enrolled
-- div,1
all s : Student-Professor | all p : s.projects | p in u.enrolled.projects
-- div,1
all s : Student | all c : s.enrolled| all p : m.projects| p in c.projects
-- div,1
all s: Students, all p: Project| p in s.projects => p in s.enrolled.project
-- div,1
all s : Student | all p :  s.projects | (Course <: projects.p) in s.courses
-- div,1
all s : Student | all p :  s.projects | (Courses <: projects.p) in s.courses
-- div,1
all st:Studetn, c:Course| c in st.enrolled implies c.projects in st.projects
-- div,1
all s: Students, all p: Project| p in s.projects => p in s.enrolled.projects
-- div,1
all p: Project, s: Student | p in u.projects implies p in p.enrolled.projects
-- div,1
all p: Project, s: Student |
    (s in p.people) => (p.courses in s.enrolled)
-- div,1
all s:Student | all p:Project | p in s.projects implies p in s.enrolled.projectsm
-- div,1
all s:Student | all p:Projects | p in s.projects implies p in s.enrolled.projects
-- div,1
all pe:Student | all c:Course | (pe.projects=c.projects)  implies c in p.enrolled
-- div,1
all s : Student | Courses <: projects.Student | s.Person <: projects in s.enrolled
-- div,1
all s : Student, p : Project, c : Courses | p in s.projects implies c in s.enrolled
-- div,1
all pe:Student | all c:Course |some(p.projects=c.projects)  implies c in p.enrolled
-- div,1
all pe:Student | all c:Courses |some(p.projects=c.projects)  implies c in p.enrolled
-- div,1
all u : Student, p: u.projects | some c : Course | c in u.enrolled and p in c.projects)
-- div,1
all p : Project, p : Person | some c : Course | p in s.projects implies p in c.projects
-- div,1
all p : Projects, s : Student | some c : Course | p in s.projects implies p in c.projects
-- div,1
all s:Student, p:Project | p in s.projects implies ( p in c.projects and c in s.enrolled)
-- div,1
all s : Student | some c : Course | c in s.enrolled and (all p : s.projects in c.projects)
-- div,1
all s : Student | some c : Course | c in s.enrolled and (all p : s.projects in c.projectcs)
-- div,1
all s : Student, p : s.projets | (some c : Course | p in projects.c implies p in enrolled.c)
-- div,1
all x : Person | one y : course | (x in projects.x and y in projects.x) implies x in enrolled.y
-- div,1
all u : Student | all p: u.projects | (some c : Course | c in u.enrolled and p in c.projects ) )
-- div,1
all u : Student | (all p: u.projects | (some c : course | c in u.enrolled and p in c.projects ) )
-- div,1
all s : Student | (all p : u.projects | (some c : Course | c in s.enrolled and p in c.projects ))
-- div,1
all s : Student, p : Project,c : Courses | p in s.projects and p in c.projects => c in p.enrolled
-- div,1
all s : Student | ( all p : u.projects | (some c : Course | c in projects.p and s in enrolled.c) )
-- div,1
all x:Studente, c:Course, p:Project| x->p in projects and c->p in projects implies x->c in enrolled
-- div,1
all p : Person, c : Course, ps : Project | ps in p.projects implies p in Student && c in p.enrolled &&
-- div,1
all s : Student, p : Projects | one c : Course | p in s.Projects and c in s.enrolled and p in c.projects
-- div,1
all s : Student, p : Projects | one c : Course | p in s.projects and c in s.enrolled and p in c.projects
-- div,1
all s : Student, p : Projects | some c : Course | p in s.projects and c in s.enrolled and p in c.projects
-- div,1
all s:Student | all c:Course | all p:Projects | p in s.projects implies p in c.projects and c in s.enrolled
-- div,1
all p:Person, c:Course, x:Project|p->x in projects and c->x in projects p in Student implies p->c in enrolled
-- div,1
all s : Student | ( all p : Project | p in s.projects (some c : Course | c in projects.p and s in enrolled.c) )
-- div,1
all s : Student | ( all p : Project | s in projects.p (some c : Course | c in projects.p and s in enrolled.c) )
-- div,1
all s : Student, p : Project | s in projects.p implies (some c : Course p in projects.c implies p in enrolled.c)
-- div,2
all s : Student | ( all p : Project | p in s.projects | (some c : Course | c in projects.p and s in enrolled.c) )
-- div,1
all y:Person, p:Project, c:Course | y->p in projects implies y in Student and y->c in enrolled and c->p in project
-- div,1
all s : Person| all p : Project | all c : Course (p in s.projects) and (p in c.projects) implies (s.enrolled in c)
-- div,1
all s : Student | all p : Project | s->p in projects implies (some c : Course | c->p in project and s->c in enrolled)
-- div,1
all u:Person, p:Project, all c:Course| u->p in projects and u in Student implies u->c in enrolled and c->p in projects
-- div,1
all s : Student | all p : Projects | s->p in projects implies (some c : Course | c->p in project and s->c in enrolled)
-- div,1
all s : Student | all p : Projects | s->p in projects implies (some c : Course | c->p in projects and s->c in enrolled)
-- div,1
all stud:Student, some p:Project | stud->p in projects implies (some c:Course | stud->c in enrolled and c->p in projects)
-- div,2
all s : Student | all c : Course | all proj : Project | proj in s.projects and proj in c.projects implies c in s.enrollde
-- div,1
all u:Person, p:Project| u->p in projects and u in Student implies some one c:Course u->c in enrolled and c->p in projects
-- div,1
all s1 : Person | all ps : Project | ps in s1.project implies (some c1 : Course | ps in c1.projects and c1 in s1.enrolled)
-- div,1
all u:Person, p:Project| u->p in projects and u in Student implies some one c:Course |u->c in enrolled and c->p in projects
-- div,1
all s : Student | all c : Course | all proj : Project | (proj in s.projects and proj in c.projects) implies c in s.enrollde
-- div,1
all s:Student, p:Project | p in s.projects implies p in c.projects and (some c:Course | p in c.projects and c in s.enrolled)
-- div,2
all per : Person | some c : Course | all pro : Project | (pro in per.projetcs and pro in c.projects) implies c in per.enrolled
-- div,1
all p1 : Project | some pr1 : Student | pr1->p1 in projects)
  	all p2 : Project | all pr2 : Person   | pr2->p2 in projects implies pr2 in Student
-- div,1
