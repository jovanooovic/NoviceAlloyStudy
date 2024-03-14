pred inv14c {
      all c:Class,s:Student | s in (c.Groups).Group implies (Teacher&Teaches.c) -> s in Tutors
}
