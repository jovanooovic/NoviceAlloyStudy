sig Node {
	children : set Node
}
sig Leaf extends Node {}
one sig Root in Node {}

sig Red, Black in Node {}


fun nBlacks [n:Node]: Int {
    {answer: Int | all c : n.children | (c in Black and answer = 1 + nBlacks[c]) or answer = nBlacks[c]  }
}
