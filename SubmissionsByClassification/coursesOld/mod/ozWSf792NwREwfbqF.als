open util/ordering[Grade]

sig Person {
    teaches: set Course,
    enrolled: set Course,
    projects: set Project
}

sig Professor, Student in Person {}

sig Course {
    projects: set Project,
    grades: Person -> Grade
}

sig Project {}

sig Grade {}

pred inv1 {
    // Only students can be enrolled in courses
    all c: Course | c.enrolled in Student
}
