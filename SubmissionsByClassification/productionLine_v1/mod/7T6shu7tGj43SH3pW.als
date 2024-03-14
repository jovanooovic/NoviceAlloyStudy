module bookExample

sig Author {}

sig Book {
author: one Author
}

fact{
all b: Book | one b.author
}


