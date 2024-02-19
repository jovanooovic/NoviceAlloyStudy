sig Nota{}
sig Nr {R: lone Nota,
		S: lone Nota}

no ~S.R


run {some S, some R}
