-- equiv pair start,24
no ((Course-Student).enrolled.projects)
-- div,1
Student.projects - Student.enrolled = Student.projects
-- div,1
all s : Student | (Course<:projects).(Person<:projects).s in s.enrolled
-- div,1
all s : Student | (Course<:projects).s.(Person<:projects) in s.enrolled
-- div,1
all s : Student | (Person :> s.projects) in s.enrolled
-- div,2
all s: Student, p: Project | s in p.projects implies s in (Course<:projects).p
-- div,1
all s : Student | Person <: s.projects = Course <: s.enrolled.projects
-- div,2
all p : Student | p.projects<:Person in p.enrolled.projects<:Course
-- div,1
all s : Student | Person <: s.projects in(Course <: s.enrolled.projects)
-- div,2
all s : Student | Student <: s.projects in (Course <: s.enrolled.projects)
-- div,1
all s: Student | s.projects in Project implies s.enrolled.projects in Project
-- div,1
all s : Student | all c : Course | c in s.enrolled implies s in c.~enrolled
-- div,1
all s : Student | all c : Course | s in c.~enrolled implies c in s.enrolled
-- div,1
all s: Student, p: Project, c: Course | (p in s.(Person <: projects)) implies (p in s.projects)
-- div,1
all s: Student, p: Project, c: Course | s in p.projects implies (p in c.projects and s in enrolled.c)
-- div,1
all s:Student, c:Course, p:Project |  s in p.projects and p in c.projects implies (c in s.enrolled)
-- div,1
all s: Student, p: Project, c: Course | s in p.projects implies (p in c.projects and s in c.enrolled)
-- div,1
all p:Project, s:Student | p in s.projects implies s in enrolled.p implies (some (s.enrolled & (Course <: projects).p))
-- div,1
all p:Project, s:Student | p in s.projects implies s in enrolled.p implies some s.enrolled & p.~projects
-- div,2
all s:Student, proj:Project | proj in s.enrolled.projects implies some c:Course |  proj in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,4
Student.projects in Student.enrolled.projects
-- div,1
no (Student.projects - Student.enrolled.projects)
-- div,1
Student.projects - Student.enrolled.projects = none
-- div,1
Student.projects & Student.enrolled.projects = Student.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
Person.projects - Person.enrolled.projects = none
-- div,1
-- equiv pair end
-- equiv pair start,174
all x : Student | x.projects in x.enrolled.projects
-- div,2
all p : Student | p.projects in p.enrolled.projects
-- div,2
all s:Student | s.projects in s.enrolled.projects
-- div,65
all s : Student | s.projects in s.^(enrolled.projects)
-- div,3
all s : Student | no s.projects - s.enrolled.projects
-- div,3
all s: Student, p: s.projects | p in s.enrolled.projects
-- div,1
all s : Student | all p : s.projects | p in s.enrolled.projects
-- div,2
all s : Student | (Person :> s).projects in (Course :> s.enrolled).projects
-- div,1
all s : Student | some s.projects implies s.projects in s.enrolled.projects
-- div,1
all s: Student | s.projects in Project implies s.projects in s.enrolled.projects
-- div,1
all p:Project, s:Student | s in (Person <: projects).p implies p in s.enrolled.projects
-- div,1
all p : Project, s : Student | p in s.projects => p in s.enrolled.projects
-- div,4
all s:Student,p:Project | p in s.projects implies p in s.enrolled.projects
-- div,4
all s: Student, p: Project | s in (Person<:projects).p implies s in enrolled.(Course<:projects).p
-- div,2
all x:Student | x.projects in Project implies x.projects in x.enrolled.projects
-- div,6
all s:Student,p:Project | s->p in projects implies s->p in enrolled.projects
-- div,1
all s : Student, pr : Project | pr in s.projects implies pr in s.enrolled.projects
-- div,1
all p:Project, s:Student | p in s.projects implies not p not in s.enrolled.projects
-- div,1
all studi: Student | all pro: studi.projects | pro in studi.enrolled.projects
-- div,1
all s : Student, p : Project | p in s.projects implies s in p.~(Course<:projects).~enrolled
-- div,1
all s: Student, proj: Project | proj in s.projects implies proj in s.enrolled.projects
-- div,2
all s:Student | all p : Project | p in s.projects implies p in s.enrolled.projects
-- div,7
all p : Project | all s : Student | p in s.projects implies p in s.enrolled.projects
-- div,3
all s : Student | all p : Project |  s->p in projects implies p in s.enrolled.projects
-- div,1
all s:Student, p:Project | s->p in Person<:projects => some c:s.enrolled | p in c.projects
-- div,2
all u : Student | (all p: u.projects | (some c : Course | c in u.enrolled and p in c.projects ) )
-- div,1
all s:Student, p:Project | p in s.projects implies some c:Course | p in c.projects and c in s.enrolled
-- div,3
all s: Student, p: Project | p in s.projects implies some c: Course | c in s.enrolled and p in c.projects
-- div,4
all x : Student, y : Project | x->y in projects implies (some c : Course | x->c in enrolled and c->y in projects)
-- div,1
all p:Project,s:Student | s -> p in Person <: projects => (some c:Course | c -> p in Course <: projects and s -> c in enrolled)
-- div,2
all s:Student, p:Project | s->p in projects => some c:Course | s->c in enrolled and c->p in projects
-- div,22
all student: Student | all project: Project | project in student.projects implies project in student.enrolled.projects
-- div,1
all s:Student | all p: Project| p in s.projects implies ( some c: Course| p in c.projects and c in s.enrolled)
-- div,2
all s : Student | all w : Project | w in s.projects implies some c : Course | c in s.enrolled and w in c.projects
-- div,2
all stud:Student, p:Project | stud->p in projects implies (some c:Course | stud->c in enrolled and c->p in projects)
-- div,3
all s: Student | all p: Project | s->p in projects => (some c: Course | s->c in enrolled and c->p in projects)
-- div,7
all s:Student | all p:Project | s->p in projects implies (some c: Course | c->p in projects and s->c in enrolled)
-- div,2
all p:Student | all pr:Project|p->pr in projects implies (some c:Course| p->c in enrolled and c->pr in projects)
-- div,1
all s : Student | all p : Project | s->p in projects implies ( some c1 : Course | c1->p in projects and s->c1 in enrolled)
-- div,1
all s1: Student | all p1: Project | s1->p1 in projects implies (some c1: Course | c1->p1 in projects and s1->c1 in enrolled)
-- div,2
all s,p : univ | s in Student and p in Project and s->p in Person <: projects implies some c : Course | s->c in enrolled and c->p in Course <: projects
-- div,1
all p1 : Student | all pr1 : Project | p1->pr1 in projects implies (some c1 : Course| c1->pr1 in projects and p1->c1 in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,2
(Person<:projects).Project in enrolled.projects.Project
-- div,2
-- equiv pair end
-- equiv pair start,1
(Person-Professor).projects in (Person-Professor).enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,11
all x:Student, y:Project | x->y in projects implies some z:Course | x->z in enrolled
-- div,2
all x : Student, y : Project | x->y in projects implies (some c : Course | x->c in enrolled)
-- div,1
all s:Student, p:Project | s->p in projects implies some c:Course | s->c in enrolled
-- div,4
all stud:Student, p:Project | stud->p in projects implies (some c:Course | stud->c in enrolled)
-- div,2
all s : Student | all p : Project | s->p in projects implies some c : Course | s->c in enrolled
-- div,1
all s : Student, p : Project | s in Student and s->p in Person<:projects implies some c : Course | s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all p : Project, s : Student, c : Course | p in s.projects => p in s.enrolled.projects
-- div,1
all s : Student | all p : Project | all c : Course | p in s.projects implies p in s.enrolled.projects
-- div,1
all s : Student | all c : Course | all p : Project | p in s.projects implies p in s.enrolled.projects
-- div,1
all p : Project | all c : Course | all s : Student | p in s.projects implies p in s.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,4
all s:Student,p:Project | s -> p in Person <: projects implies (some c:Course | c -> p in Course <: projects implies s -> c in enrolled)
-- div,3
all s:Person,p:Project | s in Student and s -> p in Person <: projects implies (some c:Course | c -> p in Course <: projects implies s -> c in enrolled)
-- div,1
-- equiv pair end
