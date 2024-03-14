projects
-- div,9
enrolled.(Course <: projects)
-- div,1
no (enrolled & Student)
-- div,1
no (projects & enrolled)
-- div,1
no (projects and enrolled)
-- div,1
all s:Student | s.projects
-- div,1
all s:Student | s.enrolled
-- div,1
all p : Project | enrolled.p
-- div,1
projects in enrolled.projects
-- div,1
no (projects and not enrolled)
-- div,1
all s: Student | not s.projects
-- div,1
all s:Student | s.enrolled.Course
-- div,1
no Student.(Course-enrolled).projects
-- div,1
all p:Project | (Person <: projects).p
-- div,1
all s:Student | (s.enrolled.~projects)
-- div,1
no (Student.(Course-enrolled).projects)
-- div,1
all p : Project | projects.p = enrolled.p
-- div,1
all x:Student | no (x.projects & enrolled)
-- div,1
all p : Project | some projects.enrolled.p
-- div,1
all s:Student,p:Project | s -> p in Project
-- div,1
all p : Person in Student | some p.enrolled
-- div,1
Project in Student.enrolled.Course.projects
-- div,1
all x:Student | no (x.projects & x.enrolled)
-- div,1
(Student.projects).Course in Student.enrolled
-- div,2
projects.Project in enrolled.projects.Project
-- div,1
all s:Student | s.projects in s.Course.projects
-- div,1
all s : Student | s.projects.~projects in s.enrolled
-- div,1
all studt:Student | (Course-studt.enrolled).projects
-- div,2
all s : Student |  (Course :> (s.enrolled).projects)
-- div,1
all s : Student | projects.(s.projects) in s.enrolled
-- div,1
Student.projects & Student.enrolled = Student.projects
-- div,1
all s:Student, p:Project | s.projects implies s.enrolled
-- div,1
all s: Student, p:Project | s in (Course<: projects).p.s
-- div,1
all s:Student, p:Project | projects.p implies s.enrolled
-- div,1
all s:Student, p:Project | s.projects implies enrolled.s
-- div,1
all p : Project, pr : Person | some projects.enrolled.pr
-- div,1
all p:Person | p in Student implies (Course <: projects).p
-- div,1
all p:Person | p in Student implies (Course <: enrolled).p
-- div,1
no (Student.enrolled.projects in (Course-Student).projects)
-- div,1
all s : Student | Course.(Person <: projects).s = s.enrolled
-- div,1
all s : Student | s.projects.~Course<:projects in s.enrolled
-- div,1
all x:Student, y:Project | no ( not x.enrolled & projects.y)
-- div,1
all p:Person, c:Course | p is Student implies c in p.enrolled
-- div,1
all p : Person | p.projects in ~Course<:projects.(p.enrolled)
-- div,1
all s: Student, c: Course| s->c in enrolled + s->c in teaches
-- div,1
all s: Student, c: Course| s->c in enrolled = s->c in teaches
-- div,1
all p:Person, c:Course | p in projects.c implies p in Student
-- div,1
all x:Student, y:Project | x->y in projects implies x.projects
-- div,2
all x:Student, y:Project | no ( (not x.enrolled) & projects.y)
-- div,1
all s:Student, p:Project | s->p in projects implies enrolled.s
-- div,2
all s:Student, p:Project | s->p in projects implies s.enrolled
-- div,2
all p:Person, c:Course| p in projects.c implies p in p.Student
-- div,1
all s : Student | (Person :> s.projects) in s.enrolled.projects
-- div,1
all p:Person | p in Student implies (Course <: projects).enrolled
-- div,1
all p : Student | p.projects<:Person iff p.enrolled.projects<:Course
-- div,1
all s : Student, p : s.projects | p~(Course<:projects) in s.enrolled
-- div,1
all x: Student , y: Course | x in y.projects implies y in x.enrolled
-- div,1
all x: Student , y: Course | x in y.projects implies x in y.enrolled
-- div,1
all s: Student |
		s.Person<:projects.Course<:projects in s. enrolled
-- div,1
all s : Student, p : s.projects | Course <: ~p.projects in s.enrolled
-- div,1
all s: Student, c: Course | s.projects.Project = c => c in s.enrolled
-- div,1
all s : Student, c : Course | c in s.projects implies c in s.enrolled
-- div,1
all s : Student | all p : Student.projects | p in s.enrolled.~projects
-- div,1
all s:Student, p:Project, c:Course | p in s.projects implies s.enrolled
-- div,1
all x: Student , y: Course | x in y.projects implies x -> y in enrolled
-- div,2
all s:Student | none s.enrolled.projects & (Course-s.enrolled).projects
-- div,1
all s : Student | (Person :> s.projects) in s.enrolled.(Course :>projects)
-- div,1
all s : Student, p : Project | p in s.projects iff p in s.enrolled.Project
-- div,1
all s : Student | s.(Person :>projects) in s.enrolled.(Course :> projects)
-- div,3
all s : Student | (Person :> s.projects) in s.enrolled.(Course :> projects)
-- div,1
all s : Student | (Person :> projects) in (Course :> (s.enrolled).projects)
-- div,1
all s: Student, p: Project | p in s.projects implies (Course <: projects).p
-- div,2
all p:Person, c:Course | p in projects.c implies p in (Person <: projects).p
-- div,1
all s : Student, pr : Project | pr in s.projects implies s.enrolled.projects
-- div,1
all s : Student | s.(Student :> projects) in s.enrolled.(Course :> projects)
-- div,2
all p:Person, c:Course | p in projects.c implies p in (Student <: projects).p
-- div,1
all p: Person, c: Course, pr: Project | (p & Student) implies c in p.projects
-- div,1
all s : Student | all p : Project | s.projects implies p in s.enrolled.project
-- div,1
all x:Student, y:Project, z:Course | x->z in projects implies x->z in enrolled
-- div,1
all s: Student, p: Project | p in s.projects implies p in (Course <: projects)
-- div,1
all s: Student, p:Project, c:Course | s in c.projects.p implies s in enrolled.c
-- div,1
all s:Student | one p: Project| p in s.projects implies projects.p in p.enrolled
-- div,1
all s : Student, p : Project | p in s.(Person<:projects) iff p in s.enrolled.Project
-- div,1
all p: Person, c: Course, pr: Project | not (p & Student) implies c not in p.projects
-- div,1
all p: Person, c: Course, pr: Project | not (p & Student) implies pr not in p.projects
-- div,1
all s:Student | one p: Project| p in s.projects implies Course.projects.p in p.enrolled
-- div,1
all s: Student, p: Project | one c: projects.p | s in projects.p implies s in enrolled.c
-- div,1
all s:Student, p:Project | s->p in Person<:projects => some c:enrolled | p in c.projects
-- div,1
all s:Student, p:Project, c:Course | p in s.projects and p in c.projects implies s.enrolled
-- div,1
all s : Student , c : Course | no (s.enrolled & c) implies c not in (s.projects & c.projects)
-- div,6
all s:Student, p:Project, c:Course | p in s.projects and p in c.projects implies s.enrolled.c
-- div,1
all s:Student | some p:Project | s -> p projects implies 
  	some c:Class | s -> c in enrolled
-- div,1
all s:Student, p:Project, c:Course | s in projects.p and c in projects.p implies s in enrolled
-- div,1
all s: Student, p: Project | one c: Course.projects.p | s in projects.p implies s in enrolled.c
-- div,1
all s : Student, c : Course, p : Project | p in s.projects implies some s.enrolled in c.projects
-- div,1
all s:Student, p:Project, c:Course | s in projects.p and c in c.projects.p implies s in enrolled
-- div,1
all s:Student, p:Project, c:Course | s in projects.p and c in c.projects.p implies s in enrolled.c
-- div,1
all p:Person | all proj:Project | p->proj implies (some c:Course | c->proj and s1->c1 in enrolled)
-- div,1
all s: Student, p: Project, c: Course | s in p.projects implies (p in projects.c and s in enrolled.c)
-- div,1
all c: Course, p: Person, proj: Project | p in Student and proj in projects.p implies c in enrolled.p
-- div,1
all x: Student , y: Project , z: Course | z in x.projects and y in projects.z implies y in x.enrolled
-- div,3
all st:Student, p:Project | st -> p implies (some c:Course | st -> c in enrolled and c->p in projects)
-- div,1
Person <: all s:Person | some p:Project | s -> p in projects implies
  	some c:Course | s -> c in enrolled
-- div,1
all s : Student | all c : Course | all p : Project | p in s.projects and p in c.projects -> c in s.enrolled
-- div,1
all s : Student, p : Project, c : Course | no (s.enrolled & c) and (p & c.projects) implies p not in s.porjects
-- div,1
all s : Student, p : Project, c : Course | (c.projects & p) and no (s.enrolled & c) implies no (s.projects & p)
-- div,1
all s: Student, proj: Project, c: Course | s->proj in s.projects and c->proj in c.projects implies c in enrolled.s
-- div,1
all s: Student| some p: Project | s->p in projects implies (some c: Course| p->c in projects and s->c in enrolled)
-- div,1
all s : Student, p : Project, c : Course | ((c.projects & p) and no (s.enrolled & c) ) implies no (s.projects & p)
-- div,1
all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.porjects
-- div,1
all s : Student, p : Project, c : Course | ( no (s.enrolled & c) and (p & c.projects) ) implies p not in s.projects
-- div,1
all s : Student | all p : Project | some c : Course | s->p in projects implies s->c in enrolled and p->c in projects
-- div,1
all s: Student, proj: Project, c: Course | s->proj in s.projects and c->proj in c.projects implies s->c in enrolled.s
-- div,1
all s : Student | all p : Project | s->p in projects implies (some c : Course |p->c in projects and s->c in enrolled)
-- div,1
all s : Student | all p : Project | s->p in projects implies (some c : Course | s->c in enrolled and p->c in projects)
-- div,1
all s : Student | all p : Project | some c : Course | s->p in projects implies (s->c in enrolled and p->c in projects)
-- div,1
projects in Student some -> Project implies
  	enrolled in Student some -> Course and
    projects in Course -> Project
-- div,1
all person : Student | all projects : Project | projects in person.projects implies projects in person.enrolled.projects
-- div,2
all p : Student , proj : Project | some c : Course | p -> proj in projects implies p -> c in enrolled and c->p in projects
-- div,1
all s: Student| some p: Project | s->p in projects implies (some c: Course| p->c in Course <:projects and s->c in enrolled)
-- div,1
all s: Student| some p: Project | s->p in projects implies (some c: Course| p->c in (Course <:projects) and s->c in enrolled)
-- div,1
all s: Student| some p: Project | s->p in projects implies (some c: Course| p->c in (Course <: projects) and s->c in enrolled)
-- div,1
all s1 : Student | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (c1->p1 in Course and s1->c1 in Course)
-- div,1
all s1 : Student | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (c1->p1 in Course and p1->c1 in Course)
-- div,1
all s1 : Student | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (s1->p1 in projects and s1->c1 in Course)
-- div,1
all s:Student, c:Course, p:Project | (s -> p in (Person <: projects) and c -> p in (Project <: projects)) => (s -> c in enrolled)
-- div,1
all s:Student | some p:Project | s -> p in projects implies 
  	Course <: some c:Course | s -> c in enrolled and c -> p in projects
-- div,1
all s1 : Student | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects 
  		implies (c1->p1 in Course and p1->c1 in Course)
-- div,1
all s: Student| some p: Project | s->p in Course <: projects implies (some c: Course| p->c in Course <: projects and s->c in enrolled)
-- div,1
all s: Student| some p: Project | s->p in Person <: projects implies (some c: Course| p->c in Course <: projects and s->c in enrolled)
-- div,2
all s,p : univ | s in Student and p in Project and s->p in projects implies all c : Course | c->p in projects implies s->c in enrolled
-- div,4
all s: Student| some p: Project | s->p in Person <: projects implies (some c: Course| Course <: p->c in  projects and s->c in enrolled)
-- div,1
all s: Student| some p: Project | s->p in (Person <: projects) implies (some c: Course| p->c in Course <: projects and s->c in enrolled)
-- div,1
all s: Student, proj: Project, c: Course | s->proj in (Person <: projects) and c->proj in (Course <: projects) implies s->c in enrolled.s
-- div,1
all s: Student| some p: Project | s->p in (Person <: projects) implies (some c: Course| p->c in (Course <: projects) and s->c in enrolled)
-- div,2
all s:Student | projects in s some -> Project implies
  	enrolled in Student some -> Course and
    Course <: projects in Course -> Project
-- div,1
all person : Student | all projects : Project | all course : Course | (projects in person.projects and projects in course.projects) implies course in person.enrolled
-- div,1
