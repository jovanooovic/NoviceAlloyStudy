Student.projects in Student.enrolled.projects
-- div,1
(Student.projects)-(Student.enrolled.projects) = none
-- div,1
all x : Student | x.projects in x.enrolled.projects
-- div,4
all s : Student | (Course <: projects).s.(Person <: projects) in s.enrolled
-- div,1
all s:Student| s.projects in s.enrolled.projects
-- div,27
all s : Student | no s.projects - s.enrolled.projects
-- div,1
all s : Student | (s.projects - s.enrolled.projects)=none
-- div,3
all p:Project, s:Student | (Person <: projects) in enrolled.projects
-- div,1
all s:Student, p:s.projects | p in s.enrolled.projects
-- div,6
all s : Student, p : Project | s.projects in s.enrolled.projects
-- div,1
all p:Project, s:Student | s.projects in s.enrolled.projects
-- div,1
all student : Student | student.projects in student.enrolled.projects
-- div,1
all s: Student | all p: s.projects | p in s.enrolled.projects
-- div,8
all p : Project, s : Student | p in s.projects => p in s.enrolled.projects
-- div,5
all s: Student, p: Project| p in s.projects => p in s.enrolled.projects
-- div,7
all e:Student, p:Project | p in e.projects => p in e.enrolled.projects
-- div,1
all s : Student, p : Project | s in projects.p => s in enrolled.projects.p
-- div,1
all p: Project | all s:Student | p in s.projects implies p.projects in s.enrolled
-- div,1
all s : Student-Professor | all p : s.projects | p in s.enrolled.projects
-- div,1
all s : Person | no c : Course | c in s.(Person <: projects) and c not in s.enrolled.(Course <: projects)
-- div,1
all s : Student | no c : Course | c in s.(Person <: projects) and c not in s.enrolled.(Course <: projects)
-- div,1
all s:Student | all p:Project | p in s.projects implies p in s.enrolled.projects
-- div,8
all s : Student | all c : s.enrolled| all p : c.projects| p in c.projects
-- div,1
all s: Student | all p: s.projects | some c: s.enrolled | p in c.projects
-- div,4
all p:Student | all pr:Project | pr in p.projects implies pr in p.enrolled.projects
-- div,3
all st : Student | all p : Project | p in st.projects implies p in st.enrolled.projects
-- div,1
all student:Student, p:Project | p in student.projects implies p in student.enrolled.projects
-- div,1
all u : Student, p: u.projects | some c : Course | c in u.enrolled and p in c.projects
-- div,2
all s : Student, p : s.projects | some c : Course | c in s.enrolled implies p in c.projects
-- div,1
all s : Student, p : s.projects | some c : Course | c in s.enrolled and p in c.projects
-- div,5
all s: Student, p: Project | p in s.projects => (some c: s.enrolled | p in c.projects)
-- div,1
all st : Student, p: st.projects | some c : Course | (c in st.enrolled) and (p in c.projects)
-- div,4
all st : Student, pr: st.projects |some c : Course | c in st.enrolled and pr in c.projects
-- div,1
all st : Student, pr:st.projects|some c : Course | c in st.enrolled implies pr in c.projects
-- div,1
all st : Student, pr: st.projects |some c : Course | c in st.enrolled <=> pr in c.projects
-- div,1
all p:Student | all pr:Project | pr in p.projects implies (some c:Course | c in p.enrolled)
-- div,1
all u : Student | all p: u.projects | some c : Course | c in u.enrolled and p in c.projects
-- div,19
all s : Student | all p : s.projects | some c : Course | p in c.projects and c in s.enrolled
-- div,1
all s : Student | ( all p : s.projects | (some c : Course | c in projects.p and s in enrolled.c) )
-- div,2
all s: Student | all p: s.projects | some c: Course | c in s.enrolled and p in c.projects
-- div,16
all a:Student | all p : a.projects | some c:Course | c in a.enrolled and p in a.projects
-- div,1
all a:Student | all p : a.projects | some c:Course | c in a.enrolled and p in c.projects
-- div,1
all s : Student | all p : s.projects | some c : Course | c in s.enrolled implies p in c.projects
-- div,1
all s:Student, p:Project| p in s.projects implies (some c:Course | p in c.projects and c in s.enrolled)
-- div,4
all s : Student-Professor | all p : s.projects | some c : Course | p in s.projects and p in c.projects
-- div,1
all s : Student-Professor | all p : s.projects | some c : Course | c in s.enrolled and p in c.projects
-- div,1
all proj:Project, s:Student | s in projects.proj implies (some c:Course | s in enrolled.c and proj in c.projects)
-- div,2
all s:Student, proj:Project | s in projects.proj implies (some c:Course | s in enrolled.c and proj in c.projects)
-- div,6
all s:Student, proj:Project | proj in s.projects implies (some c:Course | proj in c.projects and c in s.enrolled)
-- div,1
all s:Student | all p:Project | p in s.projects implies some c:Course | p in c.projects and c in s.enrolled
-- div,2
all x: Student | all p: Project | p in x.projects implies some c:Course | c in x.enrolled and p in c.projects
-- div,2
all stud:Student, p:Project | stud->p in projects implies (some c:Course | stud->c in enrolled and c->p in projects)
-- div,1
all s:Student | all p:Project | s->p in projects implies (some c:Course | s->c in enrolled and c->p in projects)
-- div,1
all s1:Student | all pr:Project | s1->pr in projects implies ( some c:Course | s1->c in enrolled and c->pr in projects )
-- div,2
all student : Student | all project : Project | student->project in projects implies some course : Course | course->project in projects and student->course in enrolled
-- div,2
