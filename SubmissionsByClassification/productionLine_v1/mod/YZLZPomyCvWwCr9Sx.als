sig User {
friends: set User  
}

fact {
  no u: User | u in u.^friends 
  }

pred showFriendship [user: User] {
user.friends.friends.friends & ~user.friends = user.friends.friends - user
}

run showFriendship for exactly 3 User
