abstract sig FSObject { }


sig File, Dir extends FSObject { }


sig FileSystem {
  root: Dir,
  live: set FSObject,
  contents: Dir lone-> FSObject,
  parent: FSObject ->lone Dir
}{
  
  no root.parent
  
  live = root.*contents
  
  contents in live->live
  
  parent = ~contents
}

pred example { }
