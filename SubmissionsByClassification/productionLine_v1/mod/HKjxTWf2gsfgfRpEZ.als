sig El {}

let range[start,end] = {  i : Int | i >= start and i =< end }

one sig Array { index : Int -> El } {
    index.El = range[ 0, lena[this]]
}
fun lena[ array : Array ] : Int { # 4 }




assert OffbyoneError{
   all a : Array | a.index.El > 0 
                  and a.index.El < 4 
}

check OffbyoneError for 3
