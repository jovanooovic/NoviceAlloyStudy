-- equiv pair start,1
all s:Student | lone s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
enrolled in Student some -> Course
-- div,1
-- equiv pair end
-- equiv pair start,2
Project in Student.enrolled.projects
-- div,2
-- equiv pair end
-- equiv pair start,3
all p: Person | p.teaches = p.enrolled
-- div,2
all p: Project | all s: Student | s.projects in p implies s.enrolled.projects in p
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student| some s.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all s: Student | s.projects in s.enrolled
-- div,3
-- equiv pair end
-- equiv pair start,3
Student.projects - Student.enrolled = none
-- div,1
all s : Student | s.projects = Course <: s.enrolled.projects
-- div,1
all p1 : Student | all pr1 : Project | p1->pr1 in projects implies (some c1 : Course| c1->pr1 in projects and c1->p1 in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,3
Student.projects = Student.enrolled.projects
-- div,1
all s : Student, p : s.projects | Course<:projects.p in s.enrolled
-- div,1
all p:Person | one c:Course | p->c in enrolled implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
Course.projects in Student.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
(Student <: teaches) in (Student <: enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, p : Project | p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,7
all s:Student | s.projects = s.enrolled.projects
-- div,6
all s : Student, p : Project | p in s.projects iff p in s.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
some s:Person, c:Course | s.projects = c.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all s : Student | s.enrolled.projects = s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | s.projects in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student | s.enrolled.projects in s.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all s : Student | s.projects = s.^(enrolled.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, p:Project | s in (Course<: projects).p
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, p : Project | p in s.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,6
all s: Student, p: Project, c: Course | s in projects.p
-- div,1
all s : Student, p : Project | some c : s.enrolled | p in s.projects and p in c.projects
-- div,1
all stud:Student, p:Project | stud->p in projects implies (one c:Course | p->c in enrolled)
-- div,1
all s : Student, p : Project, c : Course | no (s.enrolled & c) implies no (s.projects & c.projects)
-- div,1
all s:Person | some p:Project | s -> p in projects implies
  	some c:Course | s -> c in enrolled
-- div,1
all s: Student, c: Course, p: Project | c in s.enrolled and p in c.projects implies p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
(Student <: projects).(~projects :> Course) in enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all s: Student, p: Project, c: Course | s in p.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | (p.teaches = p.enrolled) => p in Student
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Person | p in Student implies Course in p.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
(Course<:projects).Project in (Student<:projects).Project
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Student, y:Project | some (x.enrolled & projects.y)
-- div,1
-- equiv pair end
-- equiv pair start,1
(Course<:projects).(Student.projects) in Student.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
no (Student.enrolled.projects & (Course-Student).projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: (Person-Student) | s.projects = s.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,7
all s:Student | no s.projects & (Course-s.enrolled).projects
-- div,2
all s : Student, p : s.projects | Course <: p.~projects in s.enrolled
-- div,1
all s: Student, proj: Project, c: Course | proj in s.projects and proj in c.projects implies c in s.enrolled
-- div,3
not some s:Student | some proj:Project, c:Course | c->proj in projects and s->proj in projects and s->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: (Person-Professor) | s.projects = s.enrolled.projects
-- div,2
-- equiv pair end
-- equiv pair start,8
all p:Person, c:Course | p in Student implies c in p.enrolled
-- div,2
all x : Student | no x.projects & (Course-x.enrolled).projects
-- div,5
all s: Student | (all p: (s.enrolled).projects | p in s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,5
all s:Student | (projects.(s.projects) & Course) in s.enrolled
-- div,2
all x:Student | all p:Project | x in Person<:projects.p implies Course<:projects.p in x.enrolled
-- div,1
all s: Student | all p: Project | all c: Course | p in c.projects and p in s.projects implies c in s.enrolled
-- div,1
all s : Student | all c : Course | all p : Project | p in s.projects and p in c.projects implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,26
all s : Student | s.projects.~(Course<:projects) in s.enrolled
-- div,11
all s : Student, p : s.projects | p.~(Course<:projects) in s.enrolled
-- div,4
all s:Student, c:Course | s.projects & c.projects != none
-- div,1
all p : Person - Student , c : Course | no (p.projects & c.projects)
-- div,1
all s: Student, c: Course| s->c in enrolled or s->c in teaches
-- div,1
all s: Student, c: Course | s->c in enrolled => s->c in teaches
-- div,1
all s:Student, p:Project, c:Course | s in projects.p and c in projects.p implies s in enrolled.c
-- div,7
-- equiv pair end
-- equiv pair start,3
all x : Student | no x.projects & (Person-x.enrolled).projects
-- div,1
all p:Project,s:Student | s -> p in Person <: projects implies (some c:Course | c -> p in Course <: projects and p -> c in enrolled)
-- div,1
all p1 : Student | all pr1 : Project | p1->pr1 in projects implies (some c1 : Course| c1->pr1 in projects and c1->p1 in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,4
all s: Student, c: Course| s->c in enrolled and s->c in teaches
-- div,4
-- equiv pair end
-- equiv pair start,1
all p : Person - Student| p.projects not in p.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,8
all s : Student | (Course<:projects).(s.projects) in s.enrolled
-- div,8
-- equiv pair end
-- equiv pair start,2
all x : Student | no x.projects & (Student-x.enrolled).projects
-- div,2
-- equiv pair end
-- equiv pair start,2
all s : Student | s.projects in (Course <: s.enrolled.projects)
-- div,2
-- equiv pair end
-- equiv pair start,1
all x : Student | no x.projects & ((Person-x).enrolled).projects
-- div,1
-- equiv pair end
-- equiv pair start,7
all s : Student | no s.projects.~(Course<:projects) - s.enrolled
-- div,2
all studt:Student | no studt.projects & (Course-studt.enrolled).projects
-- div,1
all s: Student, c: Course | c not in s.enrolled => no (s.projects & c.projects)
-- div,2
all s : Student | all c : Course | c in s.projects.~(Course<:projects) implies s in c.~enrolled
-- div,1
not some s:Student | some proj:Project, c:Course | c->proj in projects and s->proj in projects and s->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student | (Course & projects.(s.projects)) in s.enrolled
-- div,1
all s: Student | all p: Project | all c: Course | p in c.projects and p in s.projects implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | p in Student implies Course.projects in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : Student | no x.projects & ((Student-x).enrolled).projects
-- div,1
all c: Course, s: Student, p: Project | p in s.projects implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,5
all s: Student, p: s.projects | (Course<:projects).p in s.enrolled
-- div,1
all s : Student | Course<:projects.(s.projects) in s.enrolled
-- div,2
all x : Student | Course <: projects.(x.projects) in x.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student | some p:Project, c:Course | s.projects = c.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student | Course.(Person <: projects).enrolled = s.enrolled
-- div,1
all p:Project,s:Student | s -> p in Person <: projects implies (some c:Course | c -> p in Course <: projects and p -> c in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person | all p : Student.projects | p in s.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person - Student , c : Course | p.projects not in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all c : Course | all p : Project | c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
(Person-Professor).projects in (Student-Professor).enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course| some s: Student| s->c in enrolled and s->c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | no s.enrolled.projects & (Course-s.enrolled).projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student | all p : Student.projects | p in s.enrolled.projects
-- div,3
-- equiv pair end
-- equiv pair start,3
all p:Project,c:Course,s:Student | p in s.projects and c in s.enrolled
-- div,1
all s: Student, p: Project | one c: Course | s in projects.p implies c = projects.p and s in enrolled.c
-- div,2
-- equiv pair end
-- equiv pair start,1
all s : Student, p : Project | p in s.projects implies s in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all s:Student, c:Course | s.projects in c.projects and c in s.enrolled
-- div,3
-- equiv pair end
-- equiv pair start,2
all s : Student, p : Project | p in s.projects implies s in enrolled.p
-- div,1
all p:Project,s:Student | s -> p in Person <: projects implies (some c:Course | c -> p in Course <: projects and p -> c in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, p: s.projects | no (p & (Course-(s.enrolled)).projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | all pro:Project | p->pro in projects implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,7
all s:Student, p:Project, c:Course | s->p in projects => s->c in enrolled
-- div,7
-- equiv pair end
-- equiv pair start,2
all p:Project,c:Course,s:Student | p in s.projects implies c in s.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,3
all s:Student, c:Course | s.projects in c.projects implies c in s.enrolled
-- div,3
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | c in s.enrolled implies c.projects in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student, p: Project | p in s.projects iff c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, c: Course | c not in s.enrolled => s.projects != c.projects
-- div,1
-- equiv pair end
-- equiv pair start,5
all p : Person, c : Course | some p.projects & c.projects => c in p.enrolled
-- div,1
all x:Student, y:Project, z:Course | x->y in projects implies x->z in enrolled
-- div,1
all s:Student, c:Course, p:Project | p in s.projects implies p in c.projects and c in s.enrolled
-- div,2
all p : Person | all pr : Project | pr in p.projects implies all c : Course | pr in c.projects implies c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
enrolled in Student -> Course
	Person <: projects in Student some -> Project
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Project,c:Course| some s:Student | p in s.projects and c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,5
all s:Student, c:Course, p:Project | p in s.projects implies c in s.enrolled
-- div,1
all s : Student | all p : Project | all c : Course | s->p in projects implies s->c in enrolled
-- div,2
all c: Course, p: Person, proj: Project | p in Student and proj in p.projects implies c in p.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,2
all p: Project | all s: Student | s.projects=p implies s.enrolled.projects=p
-- div,1
all s:Person | some p:Project | s -> p in projects implies
  	some c:Course | s -> c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student, p: Project | s->p in projects iff s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all s: Student, p: Project, c: Course | s->p in projects iff s->c in enrolled
-- div,1
all c: Course | all x: Student | c in x.enrolled implies some p: Project|
  	p in c.projects and p in x.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Person | all p2 : Project | p->p2 in projects implies p.enrolled in p2
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student, c:Course, p:Project | c->p in projects implies s->c in enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course, p:Project | s->p in projects implies c->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student, c:Course, p:Project | s->p in projects implies s->c in enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all s: Student, c: Course | c not in s.enrolled => s.projects not in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
Person <: projects in Student some -> Project and
	enrolled in Student -> Course
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | all p:Project |  p in s.projects implies p in p.enrolled.projects
-- div,1
-- equiv pair end
-- equiv pair start,9
all s:Student, c:Course | no (s.enrolled & c) implies no (s.projects & c.projects)
-- div,9
-- equiv pair end
-- equiv pair start,3
all s : Student, c : Course | some s.projects & c.projects implies c in s.enrolled
-- div,2
all s: Student, tp: Project, c: Course | tp in s.projects and tp in c.projects implies s in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,4
all p : Person | all c : Course | c in p.enrolled implies p.projects in c.projects
-- div,2
all c: Course, p: Person, proj: Project | p in Student and proj in p.projects implies c in p.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student , p:Project |one c:Course| s->p in projects implies s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | all c : Course | c in p.enrolled implies c.projects in p.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | c in s.enrolled implies (s.projects & c.projects != none)
-- div,1
-- equiv pair end
-- equiv pair start,4
all s:Student, p:Project | some c:Course| s->p in projects implies s->c in enrolled
-- div,4
-- equiv pair end
-- equiv pair start,2
all s: Student, p: Project | s->p in projects iff (all c: Course | s->c in enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,4
all s : Student, p : Project | p in s.projects => Course <: projects.p in s.enrolled
-- div,3
not some s:Student | some proj:Project, c:Course | c->proj in projects and s->proj in projects and s->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student , c:Course | all p:Project | s->p in projects implies s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Course | s.(Person<:projects).~(Course<:projects) in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | some c:Course, p:Project | s->p in projects implies s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, p : Project | p in s.projects => Course <: projects.p in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, p: Project | one c: Course | s in projects.p implies s in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Person, y:Course, z:Project | x->y not in enrolled implies x->z not in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student, proj: Project | proj in s.projects implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Person | all pro:Project | one c:Course | p->c in enrolled implies p in Student
-- div,1
all s : Student | (all p : Project, c : Course | (s -> p in projects and c -> p in projects) iff (s -> c in enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student , c:Course | some p:Project | s->p in projects implies s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, p: Project | some c: Course | s in projects.p implies s in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Student, y:Course, z:Project | x->y not in enrolled implies x->z not in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | enrolled in s -> Course
	Person <: projects in Student some -> Project
-- div,1
-- equiv pair end
-- equiv pair start,1
Person <: projects in Person some -> Project implies enrolled in Person some -> Course
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, p:Project | s->p in projects implies (one c:Course | s->c in enrolled )
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student , p:Project | s->p in projects implies (all c:Course | s->c in enrolled )
-- div,2
-- equiv pair end
-- equiv pair start,2
all s : Student, p : Project | p in s.projects iff s in p.~(Course<:projects).~enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student, p:Project, c:Course | p in s.projects and p in c.projects implies s in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Project, y: Student | x in y.projects implies Course <: projects.x in y.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
some s:Student | enrolled in s -> Course
	Person <: projects in Student some -> Project
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, p : Project | all c : s.enrolled | p in s.projects and p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
Person <: projects in Student some -> Project implies enrolled in Student some -> Course
-- div,1
-- equiv pair end
-- equiv pair start,6
all s: Student, p: Project | s in (Person<:projects).p implies s in (Course<:projects).p
-- div,1
all pr:Project, p:Student |  p in (Person <: projects).pr implies p in enrolled.pr
-- div,2
all s : Student | all p : Student.projects | p in s.enrolled.~(Course <: projects)
-- div,1
all stud:Student, p:Project | stud->p in projects implies (some c:Course | p->c in enrolled)
-- div,1
all p1 : Student | all pr1 : Project | p1->pr1 in projects implies (some c1 : Course| c1->pr1 in projects and c1->p1 in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student | all p: Project | all c: Course | p in c.projects implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student | one p: Project | s->p in projects iff (all c: Course | s->c in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
some s:Student | all p:Project | s->p in projects implies some c:Course | s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Project,c:Course,s:Student | p in c.projects and c in s.enrolled and p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student | some p:Project | s->p in projects implies some c:Course | s->c in enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Project,c:Course,s:Student | p in c.projects and c in s.enrolled iff p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student, p : Project, c : Course | no (s.enrolled & c) implies no (s.projects & p)
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student | one c:Course | s->c in enrolled implies (some p:Project | s->p in projects)
-- div,1
-- equiv pair end
-- equiv pair start,4
all p:Project,c:Course,s:Student | p in s.projects iff  p in c.projects and c in s.enrolled
-- div,2
all s:Student, c:Course | c in s.enrolled implies (some p:Project | p in s.projects and p in c.projects)
-- div,2
-- equiv pair end
-- equiv pair start,1
all s : Student, p : Project | some c : s.enrolled | s -> p in projects and p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
Course <: projects in Student some -> Project implies
  	enrolled in Student some -> Project
-- div,1
-- equiv pair end
-- equiv pair start,6
all s:Person, c:Course, p:Project | p in s.projects implies c in s.enrolled and s in Student
-- div,1
all s: Student, c: Course, p: Project | p in s.projects && p in c.projects => c in s.enrolled
-- div,5
-- equiv pair end
-- equiv pair start,1
all s : Student | one p : Project | p in s.projects iff s in p.~(Course<:projects).~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, p: Project, c: Course | (p in s.(Person <: projects)) implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person , proj : Project, c : Course | p -> proj in projects implies p -> c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,10
all p:Project,c:Course,s:Student | p in s.projects and p in c.projects implies c in s.enrolled
-- div,1
all s: Student, c: Course, p: Project | p in s.projects && p in c.projects => c in s.enrolled
-- div,5
all p:Project,s:Student,c:Course | p in s.projects and p in c.projects implies c in s.enrolled
-- div,2
all c:Course | all s:Student | all p:Project | p in s.projects and p in c.projects implies c in s.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Project,c:Course,s:Student | p in c.projects and c in s.enrolled implies p in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all stud:Student, p:Project | stud->p in projects implies (one c:Course | stud->c in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all p : Project | some c : Course | s->p in projects implies s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p:Project, s:Student,c:Course | p in s.projects implies p in c.projects and c in s.enrolled
-- div,1
all s: Student, tp: Project, c: Course | tp in s.projects and tp in c.projects implies s in enrolled.c
-- div,1
all c: Course, s: Student | some p: Project | s->c in enrolled and c->p in projects implies s->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all c : Course | s in c.~enrolled implies c in s.projects.~(Course<:projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Student , proj : Project, c : Course | p -> proj in projects implies p -> c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Person, p:Project, c:Course | p in s.projects implies p in c.projects and c in s.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,6
all s: Student, p: Project, c:Course | s->p in projects and s->c in enrolled => c->p in projects
-- div,1
all s:Student, p:Project | p in s.projects iff some c:Course | p in c.projects and c in s.enrolled
-- div,1
all s:Student | some p:Project | s->p in projects implies some c:Course | s->c in enrolled and c->p in projects
-- div,4
-- equiv pair end
-- equiv pair start,1
all s : Student | some p : Project | some c : Course | s->p in projects implies s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all s:Student, p:Project, c:Course | p in s.projects implies p in c.projects and s in c.enrolled
-- div,1
all s: Student, p: Project | one c: Course | s in projects.p implies c = projects.p and s in enrolled.c
-- div,2
all p : Student , proj : Project | all c : Course | p -> proj in projects implies p -> c in enrolled and c->proj in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, p:Project, c:Course | p in s.projects and p in c.projects implies s in c.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course, p:Project | p in c.projects and p in s.projects implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,9
all s:Student, p:Project, c:Course | p in s.projects and p in c.projects implies c in s.enrolled
-- div,7
all p1 : Student | all pr1 : Project | p1->pr1 in projects implies (some c1 : Course| c1->pr1 in projects and c1->p1 in enrolled)
-- div,1
all person : Student | all project : Project | all course : Course | (project in person.projects and project in course.projects) implies course in person.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, p:Project, c:Course | p in s.projects and p in c.projects implies s in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,8
all s:Student, p:Project, c:Course | p in s.projects implies p in c.projects and c in s.enrolled
-- div,4
all s: Student, proj: Project, c: Course | proj in s.projects and proj in c.projects implies c in enrolled.s
-- div,1
some s:Person, p:Project | s -> p in projects implies (some c:Course | s -> c in enrolled and c -> p in projects)
-- div,1
all s: Student| all p : Project | all c : Course | p in s.projects and p in c.projects implies c in s.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
some s:Person | some p:Project | s -> p in projects implies
  	some c:Course | s -> c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,10
all s:Student,p:Project,c:Course | s->p in projects and c->p in projects implies s->c in enrolled
-- div,8
all s : Student | (all p : Project, c : Course | (s -> p in projects and c -> p in projects) iff (s -> c in enrolled))
-- div,1
all p:Person|all c:Course| all pr:Project|p->pr in projects implies (p in Student and p->c in enrolled and c->pr in projects)
-- div,1
-- equiv pair end
-- equiv pair start,3
all p:Project,c:Course| some s:Student | p in s.projects implies p in Student and c in s.enrolled
-- div,1
all p : Project | all s : Person | s->p in projects and (all c : Course | c->p in projects and s->c in enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Project,c:Course,s:Student | p in s.projects implies ( p in c.projects and c in s.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,5
all p : Person | (some c: Course | p -> c in enrolled) => (some pr: Project | p -> pr in projects)
-- div,1
all s: Student, proj: Project, c: Course | proj in s.projects and proj in c.projects implies c in enrolled.s
-- div,1
all s: Student, p: Project | one c: Course | s in projects.p implies c = projects.p and s in enrolled.c
-- div,2
all s1 : Person | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (c1->p1 in projects and s1->c1 in enrolled and p1 in Student)
-- div,1
-- equiv pair end
-- equiv pair start,4
all c: Course, s: Student, p: Project | s->p in projects iff s->c in enrolled and c->p in projects
-- div,3
all p:Person | one c:Course | all pro:Project | p->pro in projects implies p in Student and p->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all s:Student, c:Course, p:Project | s->p in projects implies c->p in projects and s->c in enrolled
-- div,3
-- equiv pair end
-- equiv pair start,1
all s: Student, p: Project, c: Course | s in projects.p and s in enrolled.c implies p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all p: Project, c: Course, s: Student | p in c.projects and p in s.projects implies c in s.enrolled
-- div,2
all p : Person | all pr : Project | pr in p.projects implies all c : Course | pr in c.projects implies c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all s:Student, c:Course, p:Project | s->p in projects and c->p in projects implies s->c in enrolled
-- div,3
-- equiv pair end
-- equiv pair start,3
all s: Student, c: Course | some p: Project | p in s.projects && p in c.projects => c in s.enrolled
-- div,1
all s:Student | all p: Project| p in s.projects implies ( all c: Course| p in c.projects and c in s.enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,2
all s:Student, c:Course, p:Project | p in s.projects implies (p in c.projects and s->c in enrolled)
-- div,1
all s : Student | all p : Project | all c : Course | s->p in projects implies s->c in enrolled and c->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course, p:Project | s->p in projects implies c->p in projects and c->s in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all s: Student, p: Project, c: Course | s->p in projects iff (c->p in projects and s->c in enrolled)
-- div,2
all s: Student, p: Project | s->p in projects iff (all c: Course | c->p in projects and s->c in enrolled)
-- div,1
all s1 : Person | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (s1->p1 in projects and s1->c1 in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course, p:Project | s->p in projects implies (p in c.projects and s->c in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, c:Course, p: Project | s->p in projects implies c->p in projects and p->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Student , proj : Project | some c : Course | p -> proj in projects implies p -> c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, c:Course, p: Project | s->c in enrolled and c->p in projects implies s->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, s: Student, p: Project | s->c in enrolled and c->p in projects implies s->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Project, u : Student, c : Course | p in u.projects and p in c.projects implies c in u.enrolled
-- div,1
all s: Student, p: Project | some c: Course | s in projects.p implies (c = projects.p and s in enrolled.c)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Person, c:Course | c in s.enrolled implies (some p:Project | p in s.projects and p in c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,3
all p:Person, c:Course | all pro:Project | p->pro in projects implies p in Student and p->c in enrolled
-- div,1
all p:Person | one c:Course | all pro:Project | p->pro in projects implies p in Student and p->c in enrolled
-- div,1
all p : Student , proj : Project | all c : Course | p -> proj in projects implies p -> c in enrolled and c->proj in projects
-- div,1
-- equiv pair end
-- equiv pair start,9
all s:Student, p:Project | some c:Course | c in s.enrolled implies (p in s.projects and p in c.projects)
-- div,2
all s:Person-Professor, p:Project, c:Course | p in s.projects implies p in c.projects and c in s.enrolled
-- div,1
all p:Project,s:Student | s -> p in Person <: projects implies (some c:Course | c -> p in Course <: projects and p -> c in enrolled)
-- div,1
all c:Course | all s:Student | all p:Project | p in s.projects and p in c.projects implies c in s.enrolled
-- div,2
all c: Course | all x: Student | c in x.enrolled implies some p: Project|
  	p in c.projects and p in x.projects
-- div,2
all p : Student , proj : Project | all c : Course | p -> proj in projects implies p -> c in enrolled and c->proj in projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Person, pr : Project, c : Course | pr in p.projects and pr in c.projects implies c in p.enrolled
-- div,1
all s : Student, p : Project, c : Course | s->p in projects implies s->c in enrolled && c->p in projects
-- div,2
-- equiv pair end
-- equiv pair start,5
all s: Student, p: Project | p in s.projects implies all c: Course | c in s.enrolled and p in c.projects
-- div,3
all s : Student | all p : Project | all c : Course | s->p in projects implies s->c in enrolled and c->p in projects
-- div,1
all p: Project| all s: Student | all c: Course | c->p in projects and s->p in projects implies s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all s:Student, c:Course | all p:Project | s->c in enrolled and c->p in projects implies s->p in projects
-- div,1
all s: Student, p: Project | s->p in projects implies (all c: Course | c->p in projects and s->c in enrolled)
-- div,1
all s : Student | all p : Project | all c : Course | s->p in projects implies s->c in enrolled and c->p in projects
-- div,1
all s1 : Person | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (c1->p1 in projects and s1->c1 in enrolled and s1 in Student)
-- div,1
-- equiv pair end
-- equiv pair start,4
all s: Student, p: Project, c: Course | s->p in projects implies (c->p in projects and s->c in enrolled)
-- div,2
all s: Student, p: Project | all c: Course | s in projects.p implies (c = projects.p and s in enrolled.c)
-- div,1
all p : Person | all pr : Project | pr in p.projects implies all c : Course | pr in c.projects implies c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student, c:Course | all p:Project | s->p in projects implies s->c in enrolled and c->p in projects
-- div,1
all s1 : Student | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (c1->p1 in projects and s1->c1 in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: Student, p: Project | s->p in projects iff (all c: Course | s->c in enrolled and c->p in projects)
-- div,1
all s : Student | (all p : Project, c : Course | (s -> p in projects and c -> p in projects) iff (s -> c in enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,3
all s: Student, p: Project | some c: Course | c in s.enrolled and p in c.projects implies p in s.projects
-- div,1
all s:Student | one p: Project| all c: Course| p in s.projects implies (p in c.projects and c in s.enrolled)
-- div,1
all p1 : Student | all pr1 : Project | p1->pr1 in projects implies (some c1 : Course| c1->pr1 in projects and c1->p1 in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student | one p: Project| p in s.projects implies one c: Course| p in c.projects and c in p.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all s: Student | all c: Course | all p: Project | s->p in projects and s->c in enrolled => c->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,7
all s: Student, p: Project, c: Course | (p in c.projects and s in c.grades.Grade) implies (p in s.projects)
-- div,1
all s:Student, c:Course | c in s.enrolled implies (some p:Project | p in s.projects and p in c.projects)
-- div,2
all s : Student, p : Project | some c : Course | (s -> p in projects and p in c.projects) => c in s.enrolled
-- div,2
all s: Student, p: Project | s->p in projects implies (all c: Course | c->p in projects and s->c in enrolled)
-- div,1
all s:Person-Professor, p:Project, c:Course | p in s.projects implies p in c.projects and c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: Student, p: Project, c: Course | (p in c.projects and p in s.projects) implies (s in c.grades.Grade)
-- div,1
all s : Student | (all p : Project, c : Course | (s -> p in projects and c -> p in projects) iff (s -> c in enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student | all c: Course | all p: Project | c->p in projects => s->p in projects and s->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: Student, p: Project, c: Course | (p in s.projects and s in c.grades.Grade) implies (p in c.projects)
-- div,1
all s1 : Person | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (s1->p1 in projects and s1->c1 in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, p: Project, c: Course | (p in s.(Person <: projects)) implies (p in c.(Course <: projects))
-- div,1
-- equiv pair end
-- equiv pair start,1
no (Person - Student).projects
  all s : Student, c : Course | s.projects in c.projects and c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, c: Course, proj: Project | proj in s.projects and proj in c.projects implies c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | all p: Project | all x: Student | p in x.projects and p in c.projects implies c in x.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | some c:Course | all p:Project | s->p in projects implies s->c in enrolled and c->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | one p: Project| p in s.projects implies ( some c: Course| p in c.projects and c in s.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
some s:Student | all p:Project | s->p in projects implies some c:Course | s->c in enrolled and c->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | all p: Project | all x: Student | p in x.projects implies (c in x.enrolled and p in c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
some s:Student | some p:Project | s->p in projects implies some c:Course | s->c in enrolled and c->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : Student, y : Project| some z : Course | x->y in projects and z->y in projects implies (x->z in enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,2
all s:Person, c:Course, p:Project | p in s.projects implies c in s.enrolled and s in Student and p in c.projects
-- div,2
-- equiv pair end
-- equiv pair start,4
all p : Project | all c : Course | all s : Student | p in s.projects implies p in c.projects and c in s.enrolled
-- div,2
not some s:Student | some proj:Project, c:Course | c->proj in projects and s->proj in projects and s->c not in enrolled
-- div,1
all s : Person | (all c : Course | some p : Project | (s -> p in projects and c -> p in projects and not s -> c in teaches) iff (s -> c in enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Project | all s : Person | s->p in projects implies (all c : Course | c->p in projects and s->c in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all p : Project | all c : Course | s->p in projects implies (c->p in projects and s->c in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Person, p:Project, c:Course | p in s.projects implies p in c.projects and c in s.enrolled and s not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student | all c : Course | ((all p: Project| s -> p in projects and c -> p in projects) => (s -> c in enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Person, p:Project, c:Course | p in s.projects implies p in c.projects and c in s.enrolled and s in Student-Professor
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Project | all c : Course | all s : Person - Professor | p in s.projects implies p in c.projects and c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | one c:Course | p->c in enrolled implies p in Student
  	all p:Person | some pro:Project | p->pro in projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Person | all pro:Project | p->pro in projects implies p in Student 
  	all p:Person | some c:Course| p->c in enrolled
-- div,1
all s1 : Person | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (c1->p1 in projects and s1->c1 in enrolled and p1 in Student)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student | (all c : Course | some p : Project | (s -> p in projects and c -> p in projects) iff (s -> c in enrolled))
-- div,1
all s1 : Person | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (c1->p1 in projects and s1->c1 in enrolled and s1 in Student)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Student , proj : Project | some c : Course | p -> proj in projects implies p -> c in enrolled and c->proj in projects
-- div,2
-- equiv pair end
-- equiv pair start,3
all s1 : Person | all p1 : Project | all c1 : Course |
  	p1 in s1.projects implies (c1->p1 in projects and s1->c1 in enrolled)
-- div,1
all s1 : Person | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (c1->p1 in projects and s1->c1 in enrolled and s1 in Student)
-- div,1
all s : Student | (all c : Course | some p : Project | (s -> p in projects and c -> p in projects and not s -> p in teaches) iff (s -> c in enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,3
all s1 : Person | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (c1->p1 in projects and s1->c1 in enrolled)
-- div,3
-- equiv pair end
-- equiv pair start,1
all s1 : Student | all p1 : Project | all c1 : Course | 
  		s1->p1 in projects implies (s1->p1 in projects and s1->c1 in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student,p:Project | s -> p in Person <: projects iff (some c:Course | c -> p in Course <: projects implies s -> c in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,3
Person <: projects in Student some -> Project implies
  	(enrolled in Student some -> Course and Course <: projects in Course -> Project)
-- div,3
-- equiv pair end
-- equiv pair start,1
all s : Person | (all c : Course | some p : Project | ((s -> p in projects or s -> p in teaches) and c -> p in projects) iff (s -> c in enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person | (all c : Course | some p : Project | ((s -> p in projects or s -> c in teaches) and c -> p in projects) iff (s -> c in enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person | (all c : Course | some p : Project | (s -> p in projects and c -> p in projects and not s -> p in teaches) iff (s -> c in enrolled))
-- div,1
-- equiv pair end
