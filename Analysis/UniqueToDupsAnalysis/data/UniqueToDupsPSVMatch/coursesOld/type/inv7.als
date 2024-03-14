all s:Student | lone projects.s
-- div,3
all s: Student | lone projects.s
-- div,3
all s : Student | #(s.Project)=1
-- div,1
all s : Student | #(Project.s)=1
-- div,1
all s : Student, p : s.projects | s
-- div,1
all s : Student, c : s.enrolled | s
-- div,1
all s: Student | one (s & s.projects)
-- div,2
all c:Course | lone Student.projects.c
-- div,1
all s:Student | lone s.projects in Course
-- div,1
lone Student.enrolled.projects in Project
-- div,1
all s:Student | lone projects.s in Course
-- div,1
all s: Student | one s.projects.~projects
-- div,1
all x:Student | lone x.projects in Project
-- div,1
lone (Student.projects in Course.projects)
-- div,1
all s : Student, c : Course | s.enrolled.c
-- div,3
all s:Student | lone projects.s in Course.s
-- div,1
all s:Student | lone projects.s in s.Course
-- div,1
all s : Student | Course <: Course.projects
-- div,1
all s: Student, c: Course | s in c.projects
-- div,1
all x:Student | lone x.projects in x.enrolled
-- div,1
all s: Student, c: Course | lone s.projects.c
-- div,1
all p:Person | p.projects in p.Course.projects
-- div,1
all s : Student, p : Project | lone projects.p
-- div,1
all s:Student | lone projects.s implies Course
-- div,1
all s : Student, c : Course | lone c.projects.s
-- div,2
all c : Course | Student.(projects.c <: Course)
-- div,1
all p:Person | p.Project in p.enrolled.projects
-- div,1
all s : Student | projects in Project lone -> s
-- div,1
all s : Student, c : Course | lone(s.projects).c
-- div,1
all p:Person | one (p.enrolled.projects)&Student
-- div,1
all c: Course | lone enrolled.c.projects.Project
-- div,1
all s : Student, p : Project | lone s.projects.p
-- div,1
all s: Student, c: Course | lone s in c.projects
-- div,1
all x:Student | some y:Course| lone x.enrolled.y
-- div,1
all s : Student, c : Course | lone s.(c.projects)
-- div,1
all s:Student | some s.(Course<:projects).Project
-- div,1
all s : Student | one c : Course | c.(s.projects)
-- div,1
all s : Student, c : Course | lone c.(s.projects)
-- div,1
all s : Student | (Course <: projects).(s.projects)
-- div,1
all s : Student, p : Project | lone p in s.projects
-- div,1
all s : Student | lone Course.projects.(projects.s)
-- div,1
all c:Course | lone (Student.projects).(c.projects)
-- div,1
all s : Student | all p : s.projects | one Course.p
-- div,1
all s : Student, c : s.enrolled | lone c.projects.s
-- div,2
all s : Student | one c : Course | lone s.enrolled.c
-- div,1
all c : Course | all s : c.enrolled | lone s.Project
-- div,1
all c:Course | c.projects in Student -> lone Project
-- div,1
all s : Student | lone s.projects & projects.Project
-- div,1
all c : Course | lone Student.(projects.c <: Course)
-- div,1
all s:Student | some p:Project | lone p in s.projects
-- div,1
all p:Person | lone p.projects in p.enrolled.projects
-- div,1
all s:Student| lone s.projects and s.enrolled.projects
-- div,1
all s: Student, c: Course | lone s.enrolled.c.projects
-- div,1
all x:Student | lone x.projects in x.enrolled.projects
-- div,3
all s : Student | one s.projects in s.enrolled.projects
-- div,1
all s: Student, c: Course | lone s.projects.~projects.c
-- div,3
all s:Student,c:Course | lone (s.enrolled).(c.projects)
-- div,1
all s : Student | none s.projects . s.enrolled.projects
-- div,1
all s : Student | none s.projects - s.enrolled.projects
-- div,1
all s: Student| some (s.enrolled).projects in s.projects
-- div,1
all s : Student | lone s.projects in s.enrolled.projects
-- div,1
all s : Student, c : Course | lone s.enrolled.projects.s
-- div,1
all s: Student, c: Course | lone s.projects.~(projects.c)
-- div,1
all s:Student, c : Course| lone s.projects and c.projects
-- div,2
all s : Student , c:Course| lone (s.projects & projects.c)
-- div,1
all s : Student, p : Project, c : Course | lone projects.p
-- div,2
all p : Student, c : Course | lone p.projects.(c.projects)
-- div,1
all s : Student | lone (s.enrolled.projects in s.projects)
-- div,1
all s : Student, c : Course | lone s.projects.(c.projects)
-- div,1
all s : Student, c : Course | lone s.projects && c.projects
-- div,1
all c : Course, s : Student | lone s.(projects.c <: Course)
-- div,1
all s : Student, p : Project, c : Course | (p & c.projects)
-- div,1
all c : Course, s : Student | lone c.(s.projects <: Person)
-- div,1
all c : Course, s : Student | lone c.(s.projects) <: Person
-- div,1
all s : Student | all p : s.projects | one Course.projects.p
-- div,1
all s : Student, p : Project, c : Course | lone s.projects.p
-- div,3
all s : Student, c : Course | lone s.projects and c.projects
-- div,1
all s : Student, p : Project, c : Course | lone c.projects.p
-- div,1
all s1 : Student, c : Course | lone s1.projects.(c.projects)
-- div,5
all s1 : Student, c : Course | lone s1.projects.~(c.projects)
-- div,1
all x:Student | lone x.projects in x.projects.projects.Course
-- div,1
all c : Course | all s : c.enrolled | lone s.projects.Project
-- div,1
all s:Student,c:Course | one p:Project | lone p in s.projects
-- div,1
all s1 : Student |one s1.Person<:projects.~(Course<:projects)
-- div,1
all s : Student | one c : Course | lone s.enrolled.c.projects
-- div,1
all s : Student, p : Project, c : Course | lone s.^projects.p
-- div,1
all s : Student, p : Project, c : Course | lone s.projects.^p
-- div,1
all p : Student, c : Course | lone p.projects && (c.projects)
-- div,1
all s1 : Student, c : Course | lone (s1.projects.(c.projects))
-- div,1
all x:Student | lone x.projects in x.projects.projects.Project
-- div,1
all s : Student | lone s.projects & projects.Project <: Course
-- div,1
all c : Course| lone projects.(c.projects <: Course) <: Person
-- div,2
all s : Student, c : Course | lone (s.projects and c.projects)
-- div,1
all s1 : Student, c : Course | lone (s1.projects).(c.projects)
-- div,1
all c : Course | lone Student.(projects.c <: Course) <: Person
-- div,1
all c:Course | projects :> c.projects in Person -> lone Project
-- div,1
all s : Student | all c : Course | lone s.projects in c.projects
-- div,1
all s : Student | lone projects.(s.projects <: Person) <: Course
-- div,1
all c : Course | one (projects.(c.projects <: Course) <: Person)
-- div,1
all s1 : Student, c : Course | (lone s1.projects ) in c.projects
-- div,2
all c : Course| lone (projects.(c.projects <: Course) <: Person)
-- div,2
all s : Student, c = s.enrolled | lone (s.projects & c.projects)
-- div,1
all s : Student, p : Project, c : Course | lone Person.projects.p
-- div,1
all s: Student, c: Course | lone s.projects&s.enrolled.c.projects
-- div,1
all s : Student | all c : s.enrolled | lone s.projects.c.projects
-- div,1
all s:Student, c :Course| lone s.projects and s.enrolled.projects
-- div,1
all s: Student, c : Course | c in s.enrolled => #s.c.projects = 1
-- div,1
all student: Student | lone proj: Project | student.enrolled.proj
-- div,1
all s: Student | all c: s.enrolled | lone s.projects in c.projects
-- div,1
all s : Student | all c : Course | lone (s.projects in c.projects)
-- div,1
all s : Student, p : Project, c : Course | lone Student.projects.p
-- div,1
all x:Course, y:Project | x->y in projects implies lone projects.y
-- div,1
all s : Student | all c : s.enrolled | lone s.projects.(c.projects)
-- div,1
all s : Student, c : Course | lone c.projects.~(Person<:projects).s
-- div,2
all s : Student | all c : s.enrolled | lone s.enrolled & c.projects
-- div,2
all s1 : Student, c : Course | lone s1.projects.(c.Course<:projects)
-- div,1
all s:Student,c:Course | one p:Project | lone p.Course in s.projects
-- div,1
all s : Student | one (s.projects) in (Course<:projects).(s.projects)
-- div,1
all s1 : Student, c : Course | lone s1.projects.~(Course<:projects).c
-- div,1
all s : Student, c : Course | lone p : Project | lone p in s.projects
-- div,1
all c : Course, s : Student | lone c.(s.projects <: Person) <: Course
-- div,1
all s : Student | all c : s.enrolled | lone (s.enrolled & c.projects)
-- div,2
all s : Student, p : Project | lone (s.enrolled.(Course<:projects).p)
-- div,1
all s : Student, c : s.enrolled | lone s.projects & Course<:projects.c
-- div,1
all s1 : Student, c : Course | lone s1.projects.(c.(Course<:projects))
-- div,1
all s : Student, c : Course | c in s.enrolled implies lone c.projects.s
-- div,1
all c : Course, s : Student | lone (s.(c.projects <: Course)) <: Person
-- div,1
all s : Student, c : Course | c in s.enrolled implies lone s.projects.c
-- div,1
all s : Student, c : s.enrolled | lone c.projects.~(Person<:projects).s
-- div,1
all c : Course, s : Student | lone (s.(projects.c <: Course)) <: Person
-- div,1
all s : Student, c : Course | lone c.(Course<:projects).~(Person<:projects).s
-- div,1
all s: Student, p: Project | one (p in s.projects & p in s.enrolled.projects)
-- div,1
all p : Student, c : Course | p in enrolled.c and lone p.projects.(c.projects)
-- div,1
all s: Student | one c: Course | c in s.enrolled and s.projects and c.projects
-- div,1
all s: Student, p: Project | one (p in s.projects and p in s.enrolled.projects)
-- div,1
all s:Student, c1, c2:Course | s->c1 in projects and s->c2 in projects => c1=c2
-- div,2
all s : Student, c : Course | c in s.enrolled implies lone s.enrolled.c.projects
-- div,1
all s:Student, c:Course , p:Project| p in s.projects implies lone p in c.projects
-- div,1
all s : Student, p : Project, c : Course | (p & c.projects) implies p in s.projects
-- div,1
all s : Student, c : Course | c in s.enrolled implies lone c.projects & s.projects.c
-- div,1
all s: Student, p: Project, c: Course | s in enrolled.c implies lone s in c.projects
-- div,1
all x:Course, y:Project, z:Student | x->y in projects implies lone (z->y in projects)
-- div,1
all s : Student, c : Course | lone p : Project | c & s.enrolled implies p in s.projects
-- div,1
all s : Student, c : Course | lone p : Project | (c & s.enrolled) implies p in s.projects
-- div,1
all x:Course, y:Project | x->y in projects implies some z:Student | lone z->y in projects
-- div,1
all s : Student, c : Course | c in s.Student implies lone s.projects.~(Course<:projects).c
-- div,1
all s : Student, c : Course | c in s.enrolled implies lone s.projects.~(Course<:projects).c
-- div,1
all s : Student | all c : s.enrolled | lone s.(Person <: projects).(c.(Course <: projects))
-- div,1
all s : Student, p : Project, c : Course | lone (s.projects & c.projects) iff (s.enrolled & c)
-- div,1
all s:Student,c:Course,p:Project | c in s.enrolled implies some (s.projects.p & p in c.projects)
-- div,1
all s: Student, c:Course,p:Project | s in enrolled.c and c in projects.p implies lone projects.p
-- div,1
all stud:Student, c:Course | stud->c in enrolled implies (one proj:Project | stud->c in projects)
-- div,3
all student: Student | lone proj: Project | student.enrolled.proj = 1 or student.enrolled.proj = 0
-- div,1
all s: Student, c:Course | s->c in enrolled implies (lone p: Project | p in c.projects.~(s.projects))
-- div,1
all s: Student, c:Course,p:Project | s in enrolled.c and c in projects.p implies lone s in projects.p
-- div,1
all s : Student | all c : Course | c in s.enrolled implies one p : Project | s.projects and c.projects
-- div,1
all s:Student, c:Course, p:Project | s->c in enrolled and c->p in projects implies one s->p in projects
-- div,2
all s : Student | all  c : Course | all p : Project | lone s->p in projects implies one c->p in projects
-- div,4
all s:Student, c:Course, p:Project | s->c in enrolled and c->p in projects implies (one s->p in projects)
-- div,1
all s:Student, c:Course, p:Project | (s->c in enrolled and c->p in projects) implies (one s->p in projects)
-- div,1
all s:Student, c:Course, p:Project | (s->c in enrolled and c->p in projects) implies  (one s->p in projects)
-- div,1
all s : Student, p : Project, c : Course | (p & c.projects & s.projects) && (c & s.enrolled) lone s.projects
-- div,1
all s: Student, p1, p2: Project |  s in projects.p1 and s in projects.p2 implies  projects.p1 !=  projects.p2
-- div,1
all s : Student, c : Course | lone p : Project | s->p in projects and c->p in projects and c->p not in grades
-- div,1
all s:Student, c:Course | lone p:Project | c in s.enrolled and p in c.projects implies p in s.enrolled.c.projects
-- div,1
all s : Student, c : Course | lone p : Project | s->c in enrolled and p in s.Person<:projects + c.Course<:projects
-- div,1
all p1, p2: Project, s: Student, c: Course | c in s.enrolled and p1 c.projects and p2 in c.projects implies p1 = p2
-- div,1
all s : Student, p : Project, c : Course | (p & c.projects & s.projects) && (c & s.enrolled) implies lone s.projects
-- div,1
all s : Student, p : Project, c : Course | (p & c.projects & s.projects) && (c & s.enrolled) implies p in s.projects
-- div,1
all s : Student, c : Course, p1,p2 : Project | p1 in s.projects and (p1 and p2) in c.projects => p2 not in s.projects
-- div,1
all s : Student, c : Course | lone p : Project | p in s.projects iff some (c in s.enrolled) and  some (p & c.projects)
-- div,1
all p : Project | all c : Course | all s : Student | c in p.enrolled and s in p.projects implies lone p.projects&c.projects
-- div,1
all s: Student, p1, p2: Project |  s in projects.p1 and s in projects.p2 implies  Course.projects.p1 !=  Course.projects.p2
-- div,1
all s: Student, p1, p2: Project | one c: Course | s in projects.p1  and s in projects.p2 implies projects.p1 != projects.p2
-- div,1
all stud:Student, c:Course | stud->c in enrolled implies (not stud->c in projects or one proj:Project | stud->c in projects)
-- div,2
all s : Student | all p1,p2 : Project | all c : Course | (p1 and p2) in s.projects and (p1 and p2) in c.projects implies p1=p2
-- div,1
all s : Student, c : Course | c in (Course<:projects).(s.projects) implies one ((s.projects) in (Course<:projects).(s.projects))
-- div,1
all p1,p2: Project, s: Student, c: Course | p1 in c.projects and p2 in projects and s in p1.projects and p2.projects implies p1=p2
-- div,1
all person : Student | lone project : Project | all course : Course | project in person.projects implies projects in course.projects
-- div,1
all s:Student|all p1,p2:projects|all c:Course|p1 in s.projects and p2 in s.projects and p1 in c.projects implies p2 not in c.projects
-- div,1
all p1,p2: Project, s: Student, c: Course | (p1 in c.projects) and (p2 in c.projects) and s in p1.projects and p2.projects implies p1=p2
-- div,1
all s:Student | (some c:Course | c in s.enrolled) implies lone s.projects
	all s:Student | all c:Course | lone (projects.s + projects.c)
-- div,1
all p1,p2: Project, s: Student, c: Course | ((p1 in c.projects) and (p2 in c.projects) and (s in p1.projects) and (p2.projects)) implies p1=p2
-- div,1
all s : Student | all p1, p2 : projects | all c : Course | p1 in s.projects and p2 in s.projects and p1 in c.projects implies p2 not in c.projects
-- div,1
all stud:Student, c:Course | stud->c in enrolled implies ((all proj:Project | not stud->c in projects) or (one proj:Project | stud->c in projects))
-- div,2
all  s : Student, c : Course, p : Project | 
    lone p_act : Project | 
    some (c & s.enrolled) and (p & c.projects) implies p_act in s.projects
-- div,1
all  s : Student, c : Course, p : Project | 
    lone p_act : Project | 
    some ((c & s.enrolled) and (p & c.projects)) implies p_act in s.projects
-- div,1
all s:Student, c: Course, p1,p2:Project | c in s.enrolled and p1 in c.projects and p2 in c.projects and p1 in s.projects and p2 ins.projects implies p1=p2
-- div,1
all s:Student, c:Course, p1,p2:Project | c in s.projects and p1 in c.projects and p2 in c.projects and p1 in s.projects and p2 in s.projects implies p1 = p2
-- div,1
all  s : Student, c : Course, p : Project | 
    lone p_act : Project | 
    ( some (p in c.projects) and some (c in s.enrolled) ) implies p_act in s.projects
-- div,1
all s: Student, p:Project, c1,c2:Course | c1->p in Project and c2->p in Project and s->c1 in enrolled and s->c2 in enrolled
  and s->p in projects implies c1=c2
-- div,1
all p1,p2:Project | all s:Student | s->p1 in Person <: projects and s->p2 in Person <: projects implies (all c1,c2:Course | c1 -> p1 and c2 -> p2 implies c1 != c2)
-- div,1
all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in projects and pr2->c in projects implies pr1 = pr2
-- div,1
all s,p,c : univ | s in Student and p In Project and c in Course and s->p in projects and c->p in projects implies all p1,p2 : Project | s->p1 in projects and s->p2 in projects implies p1=p2
-- div,1
all s,p,c : univ | s in Student and p In Project and c in Course and s->p in projects and c->p in projects implies all p1,p2 : Project | s->p1 in projects and s->p2 in projects implies p1 =p2
-- div,1
all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in this/Course <: projects  and pr2->c in projects implies pr1 = pr2
-- div,1
all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in Course <: projects  and pr2->c in Course <: projects  implies pr1 = pr2
-- div,1
all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in (Course <: projects)  and pr2->c in Course <: projects  implies pr1 = pr2
-- div,1
all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in (Course <: projects)  and pr2->c in (Course <: projects) implies pr1 = pr2
-- div,1
all s:Student | some pr1, pr2: Project| one c: Course | s->pr1 in Person <: projects and s->pr2 in Person <: projects and pr1->c in this/Course <: projects  and pr2->c in this/Course <: projects  implies pr1 = pr2
-- div,1
all s,p,c : univ | s in Student and p in Project and c in Course and s->p in projects and c->p in projects implies all p1,p2 : univ | p1 in Project and p2 in Project and s->p1 in projects and s->p2 in projects implies p1=p2
-- div,1
all s,p,c : univ | s in Student and p In Project and c in Course and s->p in projects and c->p in projects implies all p1,p2 : univ | p1 in Project and p2 in Project and s->p1 in projects and s->p2 in projects implies p1=p2
-- div,2
