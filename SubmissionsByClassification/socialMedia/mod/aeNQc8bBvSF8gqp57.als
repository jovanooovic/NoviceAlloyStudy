
sig A {

}

sig B {
parent: A  
}


pred show {

}

run {} for exactly 2 A, 1 B


// Specify the following properties
// You can check their correctness with the different commands and
// when specifying each property you can assume all the previous ones to be true
