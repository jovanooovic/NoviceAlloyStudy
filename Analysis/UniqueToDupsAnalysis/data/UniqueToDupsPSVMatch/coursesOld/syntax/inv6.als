all
-- div,1
all s: Student
-- div,1
all s : Student
-- div,1
(Students <: projects)
-- div,2
all x:Students | some y:Courses| x->y
-- div,1
all x:Students | some y:Courses| x->y in
-- div,1
all u:User | (Course-u.enrolled).projects
-- div,1
Project in Student.enrolled.Courses.projects
-- div,1
s:Student | s.projects in s.enrolled.projects
-- div,2
all s : Student | c : Course | p : Project | s
-- div,1
all studt:Student | (Course-u.enrolled).projects
-- div,1
all s:Student | p.projects in p.enrolled.projects
-- div,1
all s:Student | s.Projects in s.enrolled.projects
-- div,1
all s: Student | s.projects in s.enrroled.projects
-- div,1
all s : Student | s.projects in s.courses.projects
-- div,1
all s : Students | s.projects in s.courses.projects
-- div,1
all s:Student | some p:Project | s -> p in works_on
-- div,1
all s : Students | s.projects in s.enrolled.projects
-- div,2
(Students <: projects).(~projects :> Course) in enrolled
-- div,1
Stundent.projects - Stundent.enrolled = Stundent.projects
-- div,1
all s: Student, all p:Project | s in (Course<: projects).p
-- div,2
all p:Person, c:Course | p.enrolled in (P.enrolled).teaches
-- div,1
all s : Student , c : Course | p : Project | c in s.enrolled
-- div,1
all s: Student, all p:Project | s in (Course<: projects).p.s
-- div,1
all p : Person | p.projects in ~Curse<:projects.(p.enrolled)
-- div,1
all s : Student | c : Course | p : Project | c in s.enrolled
-- div,1
all s:Student, p:Project, c:Course | p in s.projects implies
-- div,1
all p:Person, c:Course| p in projects.c implies p in pStudent
-- div,1
all s:Student | no s.projects & (Courses-s.enrolled).projects
-- div,1
all s : Student | s.projects.~Courses<:projects in s.enrolled
-- div,1
all s: Student, c: Course| s->c in enrolled == s->c in teaches
-- div,1
all s : Student | Course <: projects.(x.projects) in x.enrolled
-- div,1
all x : Student | Course <: projects.(p.projects) in p.enrolled
-- div,1
all x : Student | Courses <: projects.(p.projects) in p.enrolled
-- div,2
all p: Project | p in s.projects implies p in s.enrolled.projects
-- div,1
all p:Person | p in Student implies (Course <: projects).penrolled
-- div,1
all p : Student | s.projects<:Person iff p.enrolled.projects<:Course
-- div,1
all x: Students, y: Course | x in y.projects implies x in y.enrolled
-- div,1
all s : Student | all p : Student.projects | p in s.courses.~projects
-- div,1
all p : Person - Student , c : Course | pno (p.projects & c.projects)
-- div,1
all p : Project | projects.p <: Person in enrolled.(project.p <: Course)
-- div,1
all s : Students | Person <: s.projects in(Course <: s.enrolled.projects)
-- div,1
all s:Student, c:Course | s.projects in c.projects
-- div,1
all s : Student, pr : Project | pr in s.projects implies s.enrolled.course
-- div,1
all s : Students, c : Course | s.projects in c.projects and c in s.enrolled
-- div,1
all p:Project, s:Student | p in x.projects implies p in s.enrolled.projects
-- div,1
all s : Student, all p : Project | p in s.projects iff p in s.enrolled.Project
-- div,1
all s: Student, p: Projects | p in s.projects implies p in s.enrolled.projects
-- div,3
all s : Students | all p : Project | s.projects implies p in s.enrolled.project
-- div,1
all s:Student | all p:Projects |  p in s.projects implies p in p.enrolled.projects
-- div,1
all s: Student , p: Project , c: Course | s->p in project implies s->c in enrolled
-- div,1
all s: Student , p: Projec| s->p in projects implies  c: Course | s->c in enrolled
-- div,1
all s: Student |
		all p: Project | p in s.project implies p in s.enrolled.projects
-- div,1
sll p : Project | all s : Student | p in s.projects implies p in s.enrolled.projects
-- div,2
all s: Student, p:Project, c:Course | s->p in projects implies s->course in enrolled
-- div,1
all p : Project, s : Student, c : Course | p in s.projects => p in s.courses.projects
-- div,1
all s: Student, p:Project, c:Course | s->p in projects implies s->courses in enrolled
-- div,1
all s: Student , p: Projec| s->p in projects implies all c: Course | s->c in enrolled
-- div,1
all s : Student | all p : Project |  s->p in projects implies p in s.enroled.projects
-- div,1
all s: Student, p: Project | no (s.enrolled & p) implies no (s.projects & c.projects)
-- div,1
all s: Student, p: Project | s->p in projects implies (all c: Course s->c in enrolled)
-- div,1
all p:Project, s:Student | s in (Person <: projects).p implies p in x.enrolled.projects
-- div,1
all s : Students, p : Projects, c : Courses | s->p in projects implies s->c in enrolled
-- div,1
all s: Student | one p: Project | s->p in project iff (all c: Course | s->c in enrolled)
-- div,1
all s:Student | one p: Project| p in s.projects implies Courses.projects.p in p.enrolled
-- div,1
all s: Student, p: Project | one c: projects.p | s in projects.p implies s in enrolled.c
-- div,1
all s: Student, p: Project | all c: Course | s in projects.p
-- div,1
all p:Project | some s:Student | p in s.projects implies p in Student and c in s.enrolled
-- div,1
all s: Student, p: Project | one c: Course | s in projects.p
-- div,1
all s: Student, p: Project | some c: Course | s in projects.p
-- div,1
Course <: Projects in Student some -> Project implies
  	enrolled in Student some -> Project
-- div,1
all s : Student, p : Project, c : Course | ( no (s.enrolled & c) implies no (s.projects & p)
-- div,1
all: stud:Student, p:Project | stud->p in projects implies (some c:Course | p->c in enrolled)
-- div,2
all s: Student, p: Project, c: Course | (p in s.(Person <: projects) implies (p in s.projects)
-- div,1
all s : Students , c : Course | no (s.enrolled & c) implies c not in (s.projects & c.projects)
-- div,1
all x:Student | all p:Project x in Person<:projects.p implies Course<:projects.p in x.enrolled
-- div,1
all p:Project, s:Student,C:Course | p in s.projects implies p in c.projects and c in s.enrolled
-- div,1
all s : Student | all c : Course | s in c.~enrolled implies c in s.projecst.~(Course<:projects)
-- div,1
all s : Student | all c : Course | s in c.~enrolled implies c in s.projecrts.~(Course<:projects)
-- div,1
all s:Student, proj:Project | proj in s.enrolled.projects implies some c | in proj in c.projects
-- div,1
all s:Student | some p:Project | s -> p in projects implies 
  	some c:Class | s -> c in enrolled
-- div,1
all s:Student, p:Project | p in s.projects iff some c:Course | p in c.projects and c in s.enrolls
-- div,1
all s:Student, p:Project, c:Course | p in s.projects | implies p in c.projects and s in c.enrolled
-- div,1
all s: Student, c:Course, p: Project | s->p in project implies c->p in projects and p->c in enrolled
-- div,1
all s:Student | some p:Project | s -> p projects implies 
  	some c:Class | s -> c in enrolled implies
-- div,1
(all st:Student, p:Project | st -> p implies (some c:Course | st -> c in enrolled and c->p in projects)
-- div,1
all s:Student | some p:Project | s -> p projects implies 
  	some c:Class | s - > c in enrolled implies
-- div,1
all p : Project, u : Student, c : Course | p in u.projects and p in c.projects implies c in u.enrollled
-- div,1
all s:Student, proj:Project | proj in s.enrolled.projects implies some c:Course | in proj in c.projects
-- div,2
all s:Student, c:Course | c in s.enrolled implies (some p:Proejct | p in s.projects and p in c.projects)
-- div,1
all s: Student, p: Project | c in s.enrolled and p in c.projects implies some c: Course | p in s.projects
-- div,1
all s : Student, p : Project, c : Course | s->p in projects && c->p in projects implies s->c in enrolled)
-- div,1
all s: Student, proj: Project, c: Course | p in s.projects and proj in c.projects implies c in s.enrolled
-- div,1
all s : Student, c : Course | no (s.enrolled & c) implies no (s.projects & c.projects) 
}
check inv6

pred inv6{
	
  	all s : Student, c : Course | no (s.enrolled & c) implies no (s.projects & c.projects)
-- div,1
all s: Student, p: Project, c: Course | (p in c.projects and s in c.grade.Grade) implies (p in s.projects)
-- div,1
all s : Student, p : Project | p in s.project implies some c : Course | c in s.enrolled and p in c.projects
-- div,1
all s: Student | all p: Project | c->p in projects => some c: Course | s->p in projects and s->c in enrolled
-- div,1
all s: Student| all p : Project | c in s.projects implies all c : Course | p in c.projects and c in s.enrolled
-- div,1
all s: Student, p: Projects | s->p in projects implies (all c: Courses | c->p in projects and s->c in enrolled)
-- div,1
all s: Students, p: Projects | s->p in projects implies (all c: Courses | c->p in projects and s->c in enrolled)
-- div,1
all c: Courses | all p: Project | all x: Student | p in x.projects implies (c in x.enrolled and p in c.projects)
-- div,1
all s : Student, p : Projects, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
-- div,1
not some s:Student | some proj:Proj, c:Course | c->proj in projects s->proj in projects and s->c not in enrolled
-- div,1
cursos dos projetos tem de estar nos cursos enrolled
  	(Course<:projects).Project in (Student<:projects).Project
-- div,1
all s: Student, p: Project | one c: Course | s in projects.p implies s in enrolled.c
-- div,1
all s: Students| some p: Project | s->p in projects implies (some c: Course| p->c in projects and s->c in enrolled)
-- div,1
not some s:Student | some proj:Proj, c:Course | c->proj in projects and s->proj in projects and s->c not in enrolled
-- div,1
all student: Student | all project: Project | project in student.projects implies project in student.courses.projects
-- div,1
all s: Student, p: Project | s -> p in projects implies some c: Course | s -> c in enrolled and c -> p in projects 
s
-- div,2
all s : Student  p : Project | s->p in projects implies ( some c : Course | c -> p in projects and s -> c in enrolled)
-- div,2
all p : Person | all pr : Project | pr in p.projects implies (some c : Course | pr in c1.projects and c in p.enrolled)
-- div,1
all p : Person | all pro : Project | pro in p.projects implies ( some c : Course | pro in c.projects and c in p.enrolled
-- div,1
all s: Student | all c : Course | ((all p: Project| s -> p in projects and c -> p in projects) => (student -> c in enrolled))
-- div,1
cursos dos projetos tem de estar nos cursos enrolled
  	all s : Student, c : Course | c in s.projects implies c in s.enrolled
-- div,1
all s,p in univ | s in Student and p in Project and s->p in projects implies all c : Course | c->p in projects implies s->c in enrolled
-- div,1
all s : Student,  p : Project | s->p in projects implies ( some c : Course | c -> p in projects and s -> c in enrolled)
-- div,1
all s,p : univ | s in Student and p in Project s->p in Person <: projects implies some c : Course | s->c in enrolled and c->p in Course <: projects
-- div,2
all s,p : univ | s in Students and p in Projects s->p in Person <: projects implies some c : Course | s->c in enrolled and c->p in Course <: projects
-- div,1
