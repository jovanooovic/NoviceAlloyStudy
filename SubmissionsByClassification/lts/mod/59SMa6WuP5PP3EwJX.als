var sig File {}
var sig Trash in File {}

fact init {
    no Trash
}

pred empty {
    some Trash
    after no Trash
    File' = File - Trash
}

pred delete[f: File] {
    not (f in Trash)
    Trash' = Trash + f
    File' = File
}

pred restore[f: File] {
    f in Trash
    Trash' = Trash - f
    File' = File
}

fact transitions {
    always empty
}

run example {}
