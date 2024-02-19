sig Name, Adrr {}
sig Book {
  addr: Name -> Addr
  }

pred show {}
run show for 3 but 1 Book
