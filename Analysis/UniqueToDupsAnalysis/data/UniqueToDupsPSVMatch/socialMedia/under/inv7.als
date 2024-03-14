all x : User | (x not in x.suggested)
-- div,1
all u:User | u.suggested in u.^(follows)
-- div,1
all u : User | no u.suggested & u.follows
-- div,1
all x,y : User | y in x.suggested implies x != y
-- div,1
all x, y: User | x->y in suggested implies x != y
-- div,1
all u: User| u.suggested in u.follows.follows
-- div,12
all x:User| x.suggested in x.follows.follows
-- div,6
all u: User | suggested.u in follows.follows.u
-- div,1
all u1,u2:User | u1->u2 in suggested implies u1 != u2
-- div,1
all user : User + Influencer| user not in user.suggested
-- div,2
all x : User | (x.suggested in x.follows.follows+x)
-- div,1
all u : User | u.suggested in u.follows.follows - u
-- div,2
all u : User, sugg : u.suggested | sugg not in u.follows
-- div,1
all x: User | x.suggested in x.^follows.follows - x
-- div,1
all u,x: User | x->u in suggested implies x->u not in follows
-- div,1
all u : User | u.suggested in u.follows.(follows - iden)
-- div,1
all u,x:User | u in x.suggested => u in x.^(follows)
-- div,1
all u:User,s:u.suggested | s in u.follows.follows
-- div,1
all u1, u3 : User | u3 in u1.suggested => (u3 not in u1.follows)
-- div,1
all x0,x1:User | x1 in x0.suggested implies x1 not in x0.follows
-- div,1
all u1,u2 : User | u2 in u1.suggested implies (u2 not in u1.follows)
-- div,1
all u1,u2 : User | u1 in u2.suggested => u1 not in u2.follows
-- div,1
all u : User | u.suggested in u.follows.(follows - iden) - u
-- div,1
no x : User | (x.suggested in x.follows) && (x in x.suggested)
-- div,1
all u1,u2 :User | u2 in u1.suggested implies not(u2 in u1.follows)
-- div,1
all u1, u2 : User| u2 in u1.suggested implies u2 in u1.^follows
-- div,1
all u1, u2 : User | u1 in suggested.u2 => u1 in ^follows.u2
-- div,1
all s, u : User | s in u.suggested implies s in u.follows.follows
-- div,1
all u : User | u.suggested in u.follows.follows-u.follows
-- div,33
all u,x:User | u in x.suggested => u in x.follows.follows
-- div,1
all u1, u2, u3 : User | u3 in u1.suggested => (u3 not in u1.follows)
-- div,1
all x, y:User | x in y.suggested implies x in y.follows.follows
-- div,1
all u,s:User | s in u.suggested implies s in u.follows.follows
-- div,2
all x : User | x.suggested in x.follows.follows-x.follows
-- div,10
all u1 : User | all u2 : u1.suggested | u2 not in u1.follows
-- div,2
all x, y, z: User | z in x.suggested implies z in x.follows.follows
-- div,1
all x, y : User | x.suggested in x.follows.follows - x.follows
-- div,1
all u,y : User | u.suggested in u.follows.follows - u.follows
-- div,1
all u, s: User | s in u.suggested implies s in u.^(follows.follows)
-- div,3
all u1,s:User | s in u1.suggested implies s in u1.follows.follows
-- div,1
all x: User | x.suggested in x.^follows.follows - x.follows
-- div,3
all u : User | no u.suggested - (u.follows.follows-u.follows)
-- div,1
all u: User | u in User.suggested implies u in User.follows.follows
-- div,1
all u:User | all s: u.suggested | s in u.follows.follows
-- div,2
all x,y: User | x.suggested in x.^follows.follows - x.follows
-- div,1
all u : User | u.suggested in (u.follows.follows - (u + u.follows))
-- div,1
all u : User | u.suggested in u.follows.follows-u.follows-u
-- div,39
all x : User | x.suggested in x.follows.follows-x.follows-x
-- div,3
all u : User | u.suggested in u.follows.follows - (u.follows + u)
-- div,4
all u : User | u.follows.follows - u.follows - u in u.suggested
-- div,8
all u : User | u.follows.follows - u - u.follows in u.suggested
-- div,1
all u: User | u.suggested in u.follows.follows - u - u.follows
-- div,2
all u1, u2 : User| u2 in u1.suggested implies u2 in u1.follows.follows
-- div,2
all u: User | (u.follows.follows - (u.follows + u)) in u.suggested
-- div,2
all u, s : User | u->s in suggested => u != s && u->s not in follows
-- div,1
all u : User | (u -> ((u.follows).follows - (u.follows + u))) in suggested
-- div,1
all u, s: User | s in u.suggested implies s in u.^(follows.follows) - u
-- div,1
all x: User | x.suggested in x.^follows.follows - x.follows - x
-- div,2
all e,s,o: User | (e in s && s in o && e not in o) => o in e.suggested
-- div,1
all u : User | all sug : u.suggested | sug in u.follows.follows
-- div,1
all u : User, sugg : u.suggested | u not in sugg && sugg not in u.follows
-- div,1
all u1 : User | all u2 : u1.suggested | u2 in u1.follows.follows
-- div,1
all u : User | u not in u.suggested && u.suggested in u.follows.follows
-- div,1
all x : User | x.suggested in x.follows.follows && x not in x.suggested
-- div,2
all u : User | u.suggested in u.follows.follows && u not in u.suggested
-- div,1
all u:User,s:u.suggested-u.follows | s in u.follows.follows
-- div,1
all x : User, y : x.suggested | y in (x.follows.follows - x.follows)
-- div,1
all user: User | user.suggested in (user.follows.follows - user.follows)
-- div,1
all u1, u2: User | u1 != 2 and u2 in u1.suggested => u2 not in u1.follows
-- div,1
all u : User | u.suggested in u.follows.follows - u.follows - u -u
-- div,1
all p, u: User | all s: u.suggested | p in s implies p not in u.follows
-- div,1
all u : User , p : User | p in u.suggested implies p in u.follows.follows
-- div,1
all u : User, s : u.suggested | s in u.^follows and s not in u.follows
-- div,1
all x0,x1:User | x1 in x0.suggested implies x1 not in x0.follows and x0!=x1
-- div,2
all u1,u2 : User | u2 in u1.suggested implies (u1 != u2 and u2 not in u1.follows)
-- div,2
all user : User | user in User.suggested implies user in User.follows.follows
-- div,1
all u1,u2 : User | u2 in u1.suggested implies (u2 not in u1.follows and u1 != u2)
-- div,2
all u1, u2: User | u1 != u2 and u2 in u1.suggested => u2 not in u1.follows
-- div,1
all disj e,s,o: User | (e in s && s in o && e not in o) => e in o.suggested
-- div,1
all x, y:User | x in y.suggested implies x in y.follows.follows and x!=y
-- div,1
all disj e,s,o: User | (e in s && s in o && e not in o) => o in e.suggested
-- div,2
all s, u : User | u->s in suggested => (some f : User | u->f in follows)
-- div,1
all x : User | (not no x.suggested implies x.suggested in x.follows.follows+x)
-- div,3
all u1: User, u2: User | u2 in u1.suggested implies u2 in u1.follows.follows
-- div,1
all u : User , p : User-u | p in u.suggested implies p in u.follows.follows
-- div,1
all u1 : User | some u1.suggested implies some (u1.follows.follows) - (u1.follows)
-- div,1
all u:User | all s: u.suggested | s in u.follows.follows and s!=u
-- div,2
all u : User | all s : User - u | s in u.suggested implies s not in u.follows
-- div,1
all u,u2 : User | u2 in u.suggested => u2 in u.follows.follows - u.follows
-- div,1
all u : User | u.suggested in u.follows.follows - u.follows - u - u.sees
-- div,1
all u:User,  f:u.follows.follows | f in u.suggested implies (f not in u.follows)
-- div,1
all u:User, s:u.suggested | s not in u.follows && s in u.follows.follows
-- div,1
all x : User, y : x.suggested | y in x.follows.follows && y not in x.follows
-- div,1
all user: User | (user.follows.follows - user.follows - user) in user.suggested
-- div,2
all user: User | user.suggested in (user.follows.follows - user.follows - user)
-- div,1
all u1, u2: User | u2 in u1.suggested implies (u2 in u1.follows.follows or u1 = u2)
-- div,1
all u : User | all s : u.suggested | s in u.follows.follows-u.follows
-- div,1
all x : User | (x.suggested in x.follows.follows) || (x.suggested not in x.follows)
-- div,1
all u1,u2 : User | u1 != u2 and u2 in u1.suggested implies u2 in u1.follows.follows
-- div,1
all x : User | all y: User | y in x.suggested implies y in x.follows.follows
-- div,1
all u1,u2 : User | u2 in u1.suggested implies u1 != u2 and u2 in u1.follows.follows
-- div,1
all x : User| some y : User | y in x.suggested implies y in x.follows.follows
-- div,1
all user : User | user in user.suggested => (user.follows.follows != user.follows)
-- div,1
all u : User, sugg : u.suggested | ( u.follows.follows - u.follows - u ) in sugg
-- div,2
all u:User | some s:User | s in u.suggested implies s in u.follows.follows
-- div,1
all disj u,u2 : User | u2 in u.suggested => u2 in u.follows.follows - u.follows
-- div,1
all u:User | no (u.follows & u.suggested) and u.suggested in u.follows.follows
-- div,1
all u:User | no u.suggested&u.follows and u.suggested in u.follows.follows
-- div,2
all u1:User, u2:u1.follows.follows-u1.follows-u1 | u2 in u1.suggested
-- div,1
all x,y : User | x in suggested.y implies y in x.follows.follows and y not in x.follows
-- div,1
all u,s:User | s not in u.follows and s in u.suggested implies s in u.follows.follows
-- div,1
all x, z: User | z in x.suggested implies z not in x.follows and z in x.follows.follows
-- div,3
all x, y:User | x in y.suggested implies x not in y.follows and x in y.follows.follows
-- div,1
all x,y:User | y in x.suggested implies y not in x.follows and y in (x.follows).follows
-- div,2
all u,s:User | s in u.suggested implies s in u.follows.follows and s not in u.follows
-- div,4
all u,x:User | u in x.suggested => u in x.follows.follows and u not in x.follows
-- div,1
all u,i:User | i in u.suggested implies i not in u.follows and i in u.follows.follows
-- div,1
all u,s : User| (s in u.suggested) implies (u not in follows.s) and s in u.follows.follows
-- div,1
all x, y: User | y in x.suggested implies y in x.follows.follows and y not in x.follows
-- div,4
all u,v :User |  v in u.suggested => v in u.follows.follows and v not in u.follows
-- div,2
all u,x:User | u in x.suggested => u not in x.follows and u in x.follows.follows
-- div,1
all u : User, s : u.suggested | s in u.^follows and s not in u.follows and s != u
-- div,1
all u, s: User | s in u.suggested implies s not in u.follows and s in u.follows.follows
-- div,1
all u1, u2 : User| u2 in u1.suggested and u2 not in u1.follows implies u2 in u1.^follows
-- div,1
all u1, u2 : User| u2 in u1.suggested implies u2 in u1.*follows and u2 not in u1.follows
-- div,2
all u1, u2 : User | u2 in u1.suggested implies (u2 not in u1.follows and u2 in u1.^follows)
-- div,2
all u1, u2 : User| u2 in u1.suggested implies u2 in u1.^follows and u2 not in u1.follows
-- div,2
all u1, u2 : User | u1 in suggested.u2 => u1 in ^follows.u2 && u1 not in follows.u2
-- div,2
all x, y, z: User | z in x.suggested implies z not in x.follows and z in x.follows.follows
-- div,1
all u : User | u.suggested in u.follows.follows-u.follows && u not in u.suggested
-- div,1
all disj u,uu:User | u in uu.^(follows) && u not in uu.follows implies u in uu.suggested
-- div,1
all x : User | x.suggested in x.follows.follows-x.follows && x not in x.suggested
-- div,1
all u : User | u not in u.suggested && u.suggested in u.follows.follows-u.follows
-- div,1
all x : User | all u : x.follows.follows - x.follows - x| u in x.suggested
-- div,1
all u : User | all s : u.suggested | s in u.follows.follows-u.follows-u
-- div,1
all x,y: User | y in x.suggested implies (y in x.^(follows.follows) and y not in x.follows)
-- div,1
all disj u1,u2 : User | u1 in u2.suggested => u1 in u2.follows.follows - u2.follows
-- div,4
all disj u1,u2 : User | (u1 in ( u2.follows.follows - u2.follows)) implies (u1 in u2.suggested)
-- div,1
all u: User |all u2 : (u.follows.follows - u.follows - {u}) | u2 in (u.suggested)
-- div,2
all u : User, sugg : u.suggested | sugg in u.follows.follows and sugg not in u.follows
-- div,1
all u : User, sugg : u.suggested | sugg not in u.follows and sugg in u.follows.follows
-- div,1
all u,uu:User | u in uu.suggested  => u in uu.follows.follows && u not in uu.follows
-- div,1
all disj u1,u2 : User | u1 in u2.suggested <=> u1 in u2.follows.follows - u2.follows
-- div,2
all disj a,b : User | a in b.follows.follows && a not in b.follows implies a in b.suggested
-- div,1
all u : User, u2 : User | u2 in u.suggested => (u2!=u) && u2 in u.follows.follows
-- div,1
all u:User | all b:u.suggested | b in u.follows.follows implies b not in u.follows
-- div,1
all u : User |all s : u.suggested| s in  u.follows.follows and s not in u.follows
-- div,6
all x : User | all s : x.follows.follows | s in x.suggested => s not in x.follows
-- div,1
all disj u,o: User | o in u.follows.follows && o not in u.follows => o in u.suggested
-- div,5
all u:User | no (u.follows & u.suggested) and u.suggested in u.follows.follows-u
-- div,1
all u1,u2: User | u2 in u1.suggested implies (u2 in u1.follows.follows - u1.follows - u1)
-- div,1
all x : User | all s : x.suggested | s in x.follows.follows and s not in x.follows
-- div,7
all disj u,s : User | s in u.suggested implies s in u.follows.follows and s not in u.follows
-- div,2
all disj u,s : User | u in s.follows.follows && u not in s.follows implies u in s.suggested
-- div,1
all u: User | all s: u.suggested | s not in u.follows and s in u.follows.follows
-- div,5
all u,s : User | u != s => (s in u.suggested iff (s in u.follows.follows - u.follows))
-- div,1
all u,s : User| (s in u.suggested) implies (u not in follows.s) and some (u.follows & follows.s)
-- div,1
all disj x,y:User| y in x.suggested iff ( y in x.follows.follows and y not in x.follows)
-- div,1
all disj u,s : User | s in u.suggested iff s in u.follows.follows and s not in u.follows
-- div,3
all x : User | (x.suggested = x.follows.follows)  or (no x.follows implies x in x.suggested)
-- div,2
all disj x, y : User | x->y in suggested iff y not in x.follows and y in x.follows.follows
-- div,1
all disj x, y : User | x->y in suggested iff x->y not in follows and y in x.follows.follows
-- div,1
all u1, u2 : User| u2 in u1.suggested implies u2 in u1.^follows-u1 and u2 not in u1.follows
-- div,1
all x1, x2 : User | x2 in x1.suggested implies x2 in x1.follows.follows and x2 not in x1.follows
-- div,2
all disj e: User, o: User, s: User | (e in s && s in o && e not in o) => o in e.suggested
-- div,1
all disj e: User, o: User, s: User | (e in s && s in o && e not in o) => e in o.suggested
-- div,1
all u1,u2 : User | u2 in suggested.u1 implies (u2 not in follows.u1 and u2 in follows.follows.u1)
-- div,1
all u1, u2 : User | u2 in u1.suggested => u2 in u1.follows.follows and u2 not in u1.follows
-- div,11
all u1, u2 : User | (u2 not in u1.follows and u2 in u1.suggested) implies u2 in u1.follows.follows
-- div,1
all u1,u2: User | u2 in u1.suggested implies u2 not in u1.follows and u2 in u1.follows.follows
-- div,10
all u1, u2 : User | u1 in u2.suggested implies u1 in u2.follows.follows and u1 not in u2.follows
-- div,4
all disj e: User, o: User, s: User | (e in o && s in o && e not in s) => s in e.suggested
-- div,1
all x : User, y : x.suggested | y in x.follows.follows && y not in x.follows && y not in x
-- div,1
all x:User | (no x.suggested & (x.follows+x)) and no x.suggested - x.follows.follows
-- div,1
all disj u,uu:User | u in uu.suggested  => u in uu.follows.follows && u not in uu.follows
-- div,4
all disj u, uu : User | u in uu.follows.follows && u !in uu.follows => u in uu.suggested
-- div,53
all u, y : User | y in u.suggested implies (some follows.y & u.follows) and (no y & u.follows)
-- div,1
all disj u,u2 : User | u2 in u.suggested => u2 in u.follows.follows and u2 not in u.follows
-- div,3
all disj u,uu: User | uu not in u.follows && uu in u.follows.follows => uu in u.suggested
-- div,1
all disj u,u2 : User | u2 in u.follows.follows and u2 not in u.follows => u2 in u.suggested
-- div,1
all x,y: User | y in x.suggested implies (y in x.^(follows.follows)-x and y not in x.follows)
-- div,1
all x : User | all u : follows.follows.x - x | x in u.follows or x in u.suggested
-- div,1
all disj u,uu:User | u in uu.follows.follows && u not in uu.follows iff u in uu.suggested
-- div,3
all u: User | all f : u - u.follows | f in u.suggested implies f in u.follows.follows
-- div,1
all u:User,s:u.suggested-u.follows | s in u.follows.follows implies s not in u.follows
-- div,1
all u : User | all s : u.suggested - u | (s not in u.follows) and (s in u.follows.follows)
-- div,1
all u:User,s:u.suggested-u.follows | s in u.follows.follows and s not in u.follows
-- div,1
all x : User | all u : x.follows.follows| u in x.suggested => u not in x + x.follows
-- div,1
all u : User | u.suggested in (u.follows).follows and (u.follows in (u.follows-u.suggested))
-- div,1
all u : User | all sug : u.suggested | sug in u.follows.follows and sug not in u.follows
-- div,1
all u,s : User | s in u.suggested implies ( s in u.follows.follows and s not in u.follows and u!=s)
-- div,1
all x, z: User | z in x.suggested implies z not in x.follows and z in x.follows.follows and x != z
-- div,1
all u : User, s : User| s in u.suggested implies (s in u.follows.follows and s not in u.follows)
-- div,1
all x : User | (((not no x.suggested)) implies (x.suggested in x.follows.follows or x in x.suggested))
-- div,2
all x : User | (((not no x.suggested)) implies (x.suggested in x.follows.follows)) or (x in x.suggested)
-- div,1
all u1 : User | all u2 : u1.suggested | u2 in u1.follows.follows and u2 not in u1.follows
-- div,1
all u : User , p : User | p in u.suggested implies (p in u.follows.follows and p not in u.follows)
-- div,1
all s, u : User | (s in u.follows.follows and s not in u.follows and s!= u) implies s in u.suggested
-- div,1
all a,b : User | a != b && a in b.follows.follows && a not in b.follows implies a in b.suggested
-- div,1
all x,y : User | x in suggested.y implies (y in x.follows.follows and y not in x.follows and x != y )
-- div,1
all x, y:User | x in y.suggested implies x not in y.follows and x in y.follows.follows and x!=y
-- div,1
all u:User,x:User| u in x.suggested => u not in x.follows and u in x.follows.follows
-- div,1
all x, y:User | x in y.follows.follows and x not in y.follows and x!=y implies x in y.suggested
-- div,1
all x,y: User | y in x.suggested implies (y in x.follows.follows and y not in x.follows
and y != x)
-- div,1
all u,s : User| (s in u.suggested) implies (u not in follows.s) and s in u.follows.follows and s!=u
-- div,1
all disj u1,u2: User | u2 in u1.follows.follows && u2 not in u1.follows => u1.suggested = u2
-- div,1
all disj u1,u2: User | u2 = u1.suggested => u2 in u1.follows.follows && u2 not in u1.follows
-- div,1
all u, s: User | s in u.suggested implies s not in u.follows and s in u.follows.follows and s != u
-- div,1
all disj u1,u2: User | u2 in u1.follows.follows && u2 not in u1.follows => u2 = u1.suggested
-- div,4
all u,v :User |  v in u.suggested => v in u.follows.follows and v not in u.follows and v != u
-- div,1
all x, y:User | x in y.suggested implies x in y.follows.follows and x not in y.follows and x!=y
-- div,2
all x, y : User | y in x.suggested implies y in x.follows.follows and y not in x.follows and x != y
-- div,1
all u,s:User| u!=s and s in u.follows.follows and s not in u.follows implies s in u.suggested
-- div,2
all u,o: User | (o in (u-o).follows.follows && o not in (u-o).follows) => o in u.suggested
-- div,1
all  u,s : User | s in u.suggested implies( s in u.follows.follows and s not in u.follows and s !=u)
-- div,2
all disj u1,u2: User | u2 in u1.suggested => u2 in u1.follows.follows && u2 not in u1.follows
-- div,2
all disj u1,u2:User | u1 in u2.follows.follows and u1 not in u2.follows implies u1 in u2.suggested
-- div,5
all u: User | no (u & u.follows.follows) implies u.follows.follows - u.follows in u.suggested
-- div,2
all disj u1, u2 : User | (u2 not in u1.follows and u2 in u1.suggested) implies u2 in u1.follows.follows
-- div,1
all disj u1,u2: User | u2 in u1.follows.follows && u2 not in u1.follows => u2 in u1.suggested
-- div,4
all disj u1,u2 : User | (u1 in u2.suggested and u1 in u2.follows.follows)  implies(u1 not in u2.follows)
-- div,1
all disj u1,u2 : User | u1 in suggested.u2 implies(u2 not in u1.follows and u2 in u1.follows.follows)
-- div,1
all disj u1,u2: User | u2 in u1.follows.follows && u2 not in u1.follows =>  u1.suggested  in u2
-- div,1
all disj u1, u2 : User | u2 in u1.suggested implies u2 not in u1.follows and u2 in u1.follows.follows
-- div,1
all disj u1,u2 : User | u1 in u2.suggested implies(u1 not in u2.follows and u1 in u2.follows.follows)
-- div,1
all disj u1,u2 : User | u1 in u2.suggested implies (u1 in u2.follows.follows and u1 not in u2.follows)
-- div,6
all s, u : User | s in u.suggested implies (some f : User | f in u.follows and s in f.follows)
-- div,1
all u : User | all u2 : u.follows.follows - u | u2 not in u.follows => u2 in u.suggested
-- div,2
all u1,u2: User | u2 in u1.suggested implies (u2 != u1 and u2 in u1.follows.follows - u1.follows)
-- div,1
all x, z: User | x in z.suggested => some y: User | y in z.follows && x in y.follows
-- div,1
all x,y : User | y in x.suggested implies some z : User | z in x.follows and z in follows.y
-- div,2
all x, z: User | x in z.suggested => some y: User | x in y.follows && y in z.follows
-- div,1
all u1,u2 : User | u1 in u2.suggested implies (u1 in ( u2.follows.follows - u2.follows) and u1!=u2)
-- div,1
all disj x, y : User | x->y in suggested iff x->y not in follows and y in x.follows.follows-x
-- div,1
all u:User | some f:User | f in u.suggested implies f in ((u.follows.follows) - u.follows)
-- div,1
all u,x:User | u in x.suggested and u != x => u not in x.follows and u in x.follows.follows
-- div,1
all x, z: User | x!=z and z in x.suggested implies z not in x.follows and z in x.follows.follows
-- div,1
all u,s: User | s in u.suggested implies ((s in u.follows.follows) and u!=s and not s in u.follows)
-- div,1
all x,y,z: User | y in x.suggested and y in z.follows and z in x.follows implies y not in x.follows
-- div,1
all u1, u2 : User| u2 in u1.suggested implies u2 in u1.*follows and u2 not in u1.follows and u1 != u2
-- div,1
all u1, u2 : User | u2 in u1.suggested implies (u2 not in u1.follows and u2 in u1.^follows and u1 != u2)
-- div,1
all u1, u2 : User | (u2 in u1.follows.follows and u2 not in (u1.follows)+u1) implies u2 in u1.suggested
-- div,1
all u1, u2 : User| u2 in u1.suggested implies u2 in u1.^follows and u2 not in u1.follows and u1 != u2
-- div,2
all u1, u2 : User | (u2 not in u1.follows and u2 in u1.^follows and u1 != u2) implies u2 in u1.suggested
-- div,1
all u1, u2 : User | u2 in u1.suggested implies u2 in u1.follows.follows and u2 not in (u1.follows)+u1
-- div,2
all u : User, u2 : User | u2 in u.suggested => u2 not in u.follows  && u2 in u.follows.follows
-- div,1
all u:User, uu:User| uu in u.suggested => uu not in u.follows && uu in u.follows.follows
-- div,2
all x : User | all u : x.follows.follows| u in x or u in x.follows or u in x.suggested
-- div,1
all u : User, u2 : User | u2 in u.suggested => u2 in u.follows.follows && u2 not in u.follows
-- div,2
all u,u1 : User | u != u1 && u in u1.follows.follows && u not in u1.follows => u in u1.suggested
-- div,3
all u : User | all s : u.suggested | s in u.follows.follows and s not in u.follows and s != u
-- div,1
all u : User | all s : u.suggested | s != u and s in u.follows.follows and s not in u.follows
-- div,1
all x : User | (((not no x.suggested) or x.suggested = x) implies (x.suggested in x.follows.follows+x))
-- div,1
all u, v : User | u->v in suggested implies ( some z : User | z->v in follows and u->z in follows )
-- div,1
all u,s:User | u -> s in suggested implies (some f:User | u -> f in follows and f -> s in follows)
-- div,1
all x : User | all s : x.suggested | s in x.follows.follows and s not in x.follows and s!=x
-- div,4
all u,u2 : User | (u2 in u.follows.follows && u2 not in u.follows && u2 != u) => u2 in u.suggested
-- div,1
all x:User| x.suggested in x.follows.follows and (all y:x.suggested| y not in x.follows)
-- div,1
all u,s: User | s in u.suggested implies some u1: User | u1 in u.follows and s in u1.follows
-- div,1
all x0,x1,x3:User | x1 in x0.suggested and x3 in x0.follows implies x1 not in x0.follows and x0!=x1
-- div,1
all x : User | all y : x.suggested | y not in x and (some z: x.follows | y in z.follows)
-- div,2
all x : User | all s : x.suggested | s in x.follows.follows and s not in x.follows and x!=s
-- div,5
all s, u : User | u->s in suggested => (some f : User | u->f in follows) and u->s not in follows
-- div,1
all x : User | (((not no x.suggested) or x in x.suggested) implies (x.suggested in x.follows.follows+x))
-- div,2
all x : User | (((not no x.suggested)) implies (x.suggested in x.follows.follows+x)) or x in x.suggested
-- div,3
all u,s : User| (s in u.suggested) implies (u not in follows.s) and some (u.follows & follows.s) and u != s
-- div,1
all u : User, p : User - u | p in u.suggested implies p in u.follows.follows and p not in u.follows
-- div,2
all u : User | all s : u.suggested | s in u.follows.follows and s not in u.follows and u not in s
-- div,2
all u : User, p : User - u |  p in u.follows.follows and p not in u.follows implies p in u.suggested
-- div,1
all x : User | (((not no x.suggested) or x.suggested in x) implies (x.suggested in x.follows.follows+x))
-- div,1
all u : User | all s : u.suggested | (s not in u.follows) and (s in (u.follows).follows) and (u not in s)
-- div,1
all u:User,x:User-u| u in x.suggested => u not in x.follows and u in x.follows.follows
-- div,1
all u : User | all s : u.suggested | (s not in u.follows) and (s in (u.follows).follows) and (s not in u)
-- div,1
all x : User | all s : x.follows.follows | s in x.suggested => (s not in x.follows and s != x)
-- div,1
all u : User, p : User - u |  u->p in suggested implies p in u.follows.follows and p not in u.follows
-- div,1
all x: User | all f : x.follows.follows | (f not in x.follows and x != f ) => f in x.suggested
-- div,1
all u : User , s : User-u| s in u.suggested iff( s in u.follows.follows and s not in u.follows)
-- div,1
all disj u1,u2: User | u2 in u1.follows.follows && u2 not in u1.follows =>  u1.suggested = u2 - u1
-- div,1
all user1, user2 : User | user1 in user2.suggested implies (user1 in ((user2.follows.follows - user2.follows) ))
-- div,1
all disj e,s,o: User | (s in e.follows && o in s.follows && o not in e.follows) => o in e.suggested
-- div,1
all u : User , p : (User-u) | p in u.suggested iff (p in u.follows.follows and p not in u.follows)
-- div,1
all u1:User, u3:User | u3 in u1.suggested implies (u3 not in u1.follows and u3 in u1.follows.follows)
-- div,1
all u:User-Influencer | all b:u.suggested | b in u.follows.follows implies b not in u.follows
-- div,1
all u : User | all resto : u.suggested | resto not in u.follows and resto in u.^(follows.follows)
-- div,1
all disj u1,u2: User | u2 in u1.follows.follows && u2 not in u1.follows =>  (u2-u1) in u1.suggested
-- div,1
all u : User | all resto : u.suggested | resto not in u.follows and resto in u.^follows.follows
-- div,3
all u : User, sugg : u.suggested | u not in sugg && sugg not in u.follows && sugg in u.follows.follows
-- div,2
all u, y : User | y in u.suggested implies (some follows.y & u.follows) and (no y & u.follows) and u!=y
-- div,2
all user : User | user in User.suggested implies user in User.follows.follows and user not in user.suggested
-- div,1
all u1,u2: User | u2 in u1.suggested implies u2 not in u1.follows and u2 in u1.follows.follows and u1 != u2
-- div,2
all u1,u2 : User | (u2 in u1.follows.follows and u2 not in u1.follows and u1 != u2) implies u2 in u1.suggested
-- div,1
all u1,u2: User | (u1 in u2.suggested) implies ((u1 not in u2.follows) and (u1 in u2.follows.follows)and (u1!=u2))
-- div,1
all u1,u2 : User | u2 in u1.suggested implies u2 != u1 and u2 not in u1.follows and u2 in u1.follows.follows
-- div,7
all u1,u2 : User | u2 in u1.suggested implies u2 not in u1.follows and u1 != u2 and u2 in u1.follows.follows
-- div,2
all u1,u2 : User | (u1 != u2 and u2 not in u1.follows and u2 in u1.follows.follows) implies u2 in u1.suggested
-- div,1
all disj u,u2 : User | (u2 in u.follows.follows && u2 not in u.follows && u2 != u) => u2 in u.suggested
-- div,1
all u1, u2: User | u2 in u1.suggested implies (u2 in u1.follows.follows and u1 != u2 and u2 not in u1.follows)
-- div,1
all u1,u2 : User | (u1 != u2 and u2 in u1.follows.follows and u2 not in u1.follows) implies u2 in u1.suggested
-- div,2
all u1,u2 : User | (u1!=u2 and u1 in u2.follows.follows and u1 not in u2.follows) implies (u1 in u2.suggested)
-- div,1
all u1, u2 : User | u2 in u1.suggested => u2 in u1.follows.follows and u2 != u1 and u2 not in u1.follows
-- div,3
all u1,u2 : User | u2 in u1.suggested implies u2 not in u1.follows and u2!=u1 and u2 in u1.follows.follows
-- div,3
all u1,u2 : User | u1 in u2.follows.follows and u1 not in u2.follows and u1!=u2 => u1 in u2.suggested
-- div,2
all u1,u2 : User | u2 in u1.suggested implies (u1!=u2 and u2 in u1.follows.follows and u2 not in u1.follows)
-- div,8
all u1,u2 : User | u2 in u1.suggested implies u1 != u2 and u2 not in u1.follows and u2 in u1.follows.follows
-- div,8
all u1,u2 : User | u2 in suggested.u1 implies (u2 not in follows.u1 and u2 in follows.follows.u1 and u1 != u2)
-- div,1
all u1, u2 : User | u2 in u1.suggested => u2 in u1.follows.follows and u2 not in u1.follows and u1 != u2
-- div,3
all u1, u2 : User | u2 not in u1.follows and u2 in u1.follows.follows and u2!=u1 implies u2 in u1.suggested
-- div,1
all  u1,u2 : User | (u1 in u2.suggested and u1 in u2.follows.follows and u1!=u2)  implies(u1 not in u2.follows)
-- div,1
all u1,u2: User | ((u1 not in u2.follows) and (u1 in u2.follows.follows)and (u1!=u2)) implies (u1 in u2.suggested)
-- div,1
all u1, u2: User | u2 in u1.suggested implies (u2 in u1.follows.follows and u2 not in u1.follows) or u1 = u2
-- div,1
all u1, u2: User | u1 not in u2 and u2 in u1.follows.follows and u2 not in u1.follows implies u2 in u1.suggested
-- div,1
all x : User | some y : User | y in x.suggested implies y not in x.follows and y in x.follows.follows
-- div,1
all disj u1,u2: User | u2 in u1.follows && u2.follows not in u1.follows => u1.suggested in u2.follows
-- div,1
all u:User | some f:User | f in u.suggested implies f not in u.follows and f in (u.follows.follows)
-- div,2
all u : User | all u2 : u.follows.follows | u!=u2 and u2 not in u.follows => u2 in u.suggested
-- div,1
all u1, u2 : User | some u3 : User | u2 in u1.suggested implies u2 in u3.follows and u3 in u1.follows
-- div,1
all u1, u2 : User - Influencer | u2 in u1.suggested implies u2 in u1.follows.follows and u2 not in u1.follows
-- div,1
all x0,x1:User | x0 in x1.suggested implies some x2:User | x2 in x1.follows and x0 in x2.follows
-- div,2
all u1,u3 : User | u3 in u1.suggested implies (some u2 : User | u2 in u1.follows and u3 in u2.follows)
-- div,1
all u: User, s: User | s in u.follows.follows && s not in u.follows && s != u => s = u.suggested
-- div,1
all u : User | all u2 : u.follows.follows | u2 not in u.follows && u2 != u => u2 in u.suggested
-- div,1
all x : User | some y : User | y not in x.follows and y in x.follows.follows implies y in x.suggested
-- div,1
all x : User | some y : User | y in x.suggested implies y in x.follows.follows and y not in x.follows
-- div,1
all u1,u2 : User | u1 in u2.suggested implies (some u3 : User | u3 in u2.follows && u1 in u3.follows)
-- div,1
all disj x, y, z: User | x->y in follows and y->z in follows and x->z not in follows implies x->z in suggested
-- div,1
all u : User | some s : User | s in u.suggested implies (s in u.follows.follows and s not in u.follows)
-- div,1
all u:User,x:User |  x in u.suggested => x in u.follows.follows and x not in u.follows and x!=u
-- div,2
all u1,u2 : User | u1 != u2 and u2 in u1.suggested implies u2 not in u1.follows and u2 in u1.follows.follows
-- div,2
all u1,u3 : User | u3 in u1.suggested implies (some u2 : User | u2 in u1.follows and u3 not in u1.follows)
-- div,1
all u : User, p : User - u | p in u.suggested implies p in u.follows.follows - u and p not in u.follows
-- div,1
all u : User |  u.suggested = none or ((u.suggested not in u.follows) and (u.suggested in u.follows.follows))
-- div,1
all x,x1:User | x1 in x.suggested implies some x2:User | x1 != x and x2 != x1 and x1 in x2.follows
-- div,1
all u1, u2 : User | u1 != u2 and u2 in u1.suggested => u2 in u1.follows.follows and u2 not in u1.follows
-- div,1
all u:User | no u.suggested&u.follows and u not in u.suggested and u.suggested in u.follows.follows
-- div,1
all x : User | no x.suggested & x.follows and x.suggested in x.follows.follows and x not in x.suggested
-- div,2
all u1,u2 : User | u2 in u1.suggested implies (u1 != u2 and u2 in u1.follows.follows and not (u2 in u1.follows))
-- div,1
all disj x,y,z : User | x->y in follows and y->z in follows and x->z not in follows iff x->z in suggested
-- div,1
all x : User | no suggested.x & follows.x and suggested.x in follows.follows.x and x not in suggested.x
-- div,1
all u1,u2: User | u1!=u2 and u1 in u2.suggested implies u1 not in u2.follows and u1 in u2.follows.follows
-- div,2
all u: User, s: User | s in u.follows.follows && s not in u.follows && s != u => s in u.suggested
-- div,1
all u1,u2 : User | (u1 != u2 and u2 in u1.follows.follows and not (u2 in u1.follows)) implies u2 in u1.suggested
-- div,1
all u1, u2 : User | u2 in u1.suggested and u1 != u2 implies u2 in u1.follows.follows and u2 not in u1.follows
-- div,1
all u1,u2 : User | u2 != u1 and u2 in u1.suggested implies u2 not in u1.follows and u2 in u1.follows.follows
-- div,1
all u1,u2 : User | u2 in u1.suggested and u2!=u1 implies u2 not in u1.follows and u2 in u1.follows.follows
-- div,1
all u1, u2 : User | u2 != u1 and u2 in u1.suggested implies u2 in u1.follows.follows and u2 not in u1.follows
-- div,1
all u1,u2,u3:User | u3 in u1.suggested and u2 in u1.follows and u3 in u2.follows implies u3 not in u1.follows
-- div,2
all u : User |  u.suggested in none or ((u.suggested not in u.follows) and (u.suggested in u.follows.follows))
-- div,1
all u1,u2,u3 : User | u1 in u2.follows and u2 in u3.follows and u1 in u3.suggested implies u1 not in u3.follows
-- div,1
all x,y: User | y in x.suggested implies some p:User | p in (x.follows).follows and (p not in x.follows)
-- div,1
all u1,u2:User | u1->u2 in suggested implies (some z:User | z->u2 in follows and u1->u2 not in follows)
-- div,1
all x,y : User |  y in x.suggested implies some z : User | x != y and z in x.follows and z in follows.y
-- div,1
all x,y : User | y in x.suggested implies some z : User | z in x.follows and z in follows.y and x != y
-- div,2
all x,y : User | y in x.suggested implies some z : User | z in x.follows and z in follows.y and  z != x
-- div,1
all disj u,uu: User, f: u.follows.follows - u | uu not in u.follows && uu in f  => uu in u.suggested
-- div,1
all u, y, z : User | (y in u.follows and z in y.follows and z not in u.follows and u != z) implies z in u.suggested
-- div,1
all u :User | all u2: User | (u in u2.suggested) implies ( u not in u2.follows and u in u2.follows.follows)
-- div,1
all u1,u3:User | u1->u3 in suggested implies (some u2:User | u1->u2 in follows and u2->u3 in follows)
-- div,1
all x, y, z: User | x in y.follows && y in z.follows && x not in z.follows && x != z => x in z.suggested
-- div,2
all disj u1,u2: User | u1 not in u2 && u2 in u1.follows.follows && u2 not in u1.follows => u2 = u1.suggested
-- div,1
all u1, u2 : User | u2 in u1.suggested implies (u2 not in u1.follows and (u2 in u1.^follows or u1 in u2.follows))
-- div,1
all x, y:User | y not in x.follows and y in x.follows.follows and y!=x iff y in x.suggested and y!=x
-- div,1
all u : User | all s: u.suggested | some f: u.follows  | s in f.follows and s not in u.follows
-- div,7
all u : User | all s: u.suggested | (s not in u.follows) and (some f: u.follows | s in f.follows )
-- div,4
all u : User | u.suggested in ((u.follows).follows) and no u.suggested&u and no u.suggested&(u.follows)
-- div,1
all u1: User, u2: User - u1  | u2 in u1.follows.follows && u2 not in u1.follows =>  (u2) in u1.suggested
-- div,1
all disj u,o: User | (o in u.follows.follows && o not in u.follows && u not in u.follows) => o in u.suggested
-- div,2
all x,y : User | y in x.suggested and x != y implies some z : User | z in x.follows and z in follows.y
-- div,1
all x,y : User | y in x.suggested implies x != y and some z : User | y in z.follows and x in follows.z
-- div,1
all x,y : User | x != y and y in x.suggested implies some z : User | z in x.follows and z in follows.y
-- div,1
all u1 : User | all u2 : u1.follows.follows | u2 in u1.suggested  implies ( u1 != u2 and u2 not in u1.follows)
-- div,2
all u1 : User | all u2: u1.follows.follows | (u2 not in u1.follows and u1!=u2) implies (u2 in u1.suggested)
-- div,1
all u:User | some f:User | f in u.suggested implies f not in u.follows and f in (u.follows.follows)-u
-- div,1
all u: User, s: User | some f: User | u->s in suggested implies (u->f in follows and f->s in follows)
-- div,1
all user1, user2 : User | user1 in user2.suggested implies (user1 in user2.follows.follows-user2.follows-user2)
-- div,3
all u : User | all uf : u.follows | all uff : uf.follows - u.follows - u | uff in u.suggested
-- div,1
all u : User, u2 : User | u2 in u.suggested => (u2!=u) && u2 in u.follows.follows && u2 not in u.follows
-- div,1
all u,s: User | s in u.suggested implies some u1: User | u1 in u.follows and s in u1.follows and u != s
-- div,1
all disj u1, u2, u3 : User | u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows implies (u3 in u1.suggested)
-- div,1
all x, y, z : univ | x->y in follows and y->z in follows and x->z not in follows and x!=z implies x->z in suggested
-- div,1
all u : User | all s: u.suggested | some f: u.follows | s in f.follows and no u.follows & s
-- div,1
all x,y,z : User |
(y->x in follows and x->z in follows and y->z not in follows and y!=z)
implies y->z in suggested
-- div,2
all u:User, x:User-u, z:User-x| u->z in suggested implies u->x in follows and x->z in follows
-- div,1
all u:User, x:User-u, z:User-x| u->z in suggested and u->x in follows implies  x->z in follows
-- div,1
all u : User | all s: u.suggested | no u.follows & s and some f: u.follows | s in f.follows
-- div,2
all u1 : User | all u2 : User | u2 in u1.suggested implies (u2 in u1.follows.follows and u2 not in u1.follows)
-- div,1
all u1: User | some u2: User | u2 in u1.follows.follows and u2 not in u1.follows implies u2 in u1.suggested
-- div,2
all u: User, f: User | some s: User | u->s in suggested implies (u->f in follows and f->s in suggested)
-- div,1
all x : User | ((not no x.follows) implies x.suggested = x.follows.follows) or ((no x.follows) implies (x in x.suggested))
-- div,4
all disj u,u2 : User | u2 in u.follows.follows and u2 not in u.follows and u2 not in Influencer => u2 in u.suggested
-- div,1
all u1 : User, u2 : u1.follows, u3 : u2.follows |  u3 != u1 and u3 not in u1.follows iff u3 in u1.suggested
-- div,3
all user1, user2 : User | user2 in user1.suggested implies ((user2 not in user1.follows) and (user2 in user1.follows.follows))
-- div,1
all x, y, z : univ | x->y in follows and y->z in follows and not x->z in follows and x!=z implies x->z in suggested
-- div,1
all x : User + Influencer  | all s : x.suggested | s in x.follows.follows and s not in x.follows and x!=s
-- div,1
all user1, user2 : User | user1 in user2.suggested implies (user1 in user2.follows.follows and user1 not in user2.follows)
-- div,2
all disj u1, u2, u3 : User | u3 in u1.suggested => u2 in u1.follows and u3 in u2.follows and not u3 in u1.follows
-- div,1
all user1, user2: User | user2 in user1.suggested implies user2 in user1.follows.follows and user2 not in user1.follows
-- div,2
all u : User | all s: u.suggested | some f: u.follows  |  s in f.follows - u and s not in u.follows
-- div,1
all x : User | (not no x.suggested implies x.suggested = x.follows.follows)  or ((no x.follows) implies (x in x.suggested))
-- div,2
all x : User | all y : x.suggested | (y not in x.follows+x) and (some z: x.follows | y in z.follows)
-- div,3
all disj u1, u2, u3: User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows  => u1->u3 in suggested
-- div,1
all s, u : User | (s in u.follows.follows and s not in u.follows and s not in Influencer and u != s) implies s in u.suggested
-- div,1
all x : User | (not no x.suggested implies x.suggested in x.follows.follows)  or ((no x.follows) implies (x in x.suggested))
-- div,1
all u1 : User, u2 : User | u1 != u2 and u2 not in u1.follows and u2 in u1.follows.follows implies u2 in u1.suggested
-- div,1
all u : User | all s : u.suggested | some ufoll : u.follows | s not in u.follows and s in ufoll.follows
-- div,2
all u1:User, u2:User, u3:User | u3 in u1.suggested implies (u3 not in u1.follows and u3 in u1.follows.follows)
-- div,1
all disj u1, u2, u3: User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows <=> u1->u3 in suggested
-- div,2
all u:User-Influencer | all b:u.suggested-Influencer | b in u.follows.follows implies b not in u.follows
-- div,1
all x : User | some y : User | x != y and y not in x.follows and y in x.follows.follows implies y in x.suggested
-- div,1
all u : User | all s : u.suggested | all f : u.follows | s in u.follows.follows and s not in u.follows
-- div,1
all u : User | all s: u.suggested | some f: u.follows  |  s in f.follows - u and no (u.follows & s)
-- div,1
all x, z: User | x in z.suggested => some y: User | x in y.follows && y in z.follows && x not in z.follows
-- div,2
all u1, u2 : User - Influencer | u2 in u1.suggested implies u1 != u2 and u2 in u1.follows.follows and u2 not in u1.follows
-- div,1
all x, z: User| some y: User | x in z.suggested => x in y.follows && x not in z.follows  && y in z.follows
-- div,1
all u1,u2 : User+Influencer | u2 in u1.suggested implies (u2 in u1.follows.follows and u2 not in u1.follows and u1 != u2)
-- div,1
all x,y : User | x not in x.suggested and x != y and y not in x.follows and y in x.follows.follows implies y in x.suggested
-- div,1
all x,y: User | y in x.suggested implies some p: User | (y in p.follows) and (y not in x.follows) and (p in x.follows)
-- div,1
all x, z: User | x in z.suggested => some y: User | y in z.follows && x in y.follows && x not in z.follows
-- div,2
all u1, u2 : User - Influencer| u2 in u1.suggested implies(u1 != u2) and ((u2 not in u1.follows) and (u2 in u1.follows.follows))
-- div,1
all u1 : User | all u2 : User-u1 | u2 in u1.suggested implies (u2 not in u1.follows and u2 in u1.follows.follows)
-- div,1
all x,y : User | y in x.suggested implies some z : User | z in x.follows and z in follows.y and x not in follows.y
-- div,1
all x0,x1:User | x1 in x0.suggested implies some x3:User | x1 not in x0.follows and x0!=x1 and x1 in x3.follows
-- div,1
all u1, u2 : User | (u2 not in Influencer and u2 not in u1.follows and u2 in u1.^follows and u1 != u2) implies u2 in u1.suggested
-- div,1
all u : User | all f : User | f in u.suggested implies some v : User | v->f in follows and u->v in follows
-- div,1
all u : User, us : u.suggested | some u1 : User | us not in u.follows and u1 in u.follows and us in u1.follows
-- div,1
all u : User| all y : User-u | y in u.suggested iff (some follows.y & u.follows) and (no y & u.follows)
-- div,1
all x, y, z: User | x in y.follows && y in z.follows && x not in z.follows && x != z && x != y => x in z.suggested
-- div,1
all x,y : User | y in x.suggested implies some z : User | z in x.follows and z in follows.y and  z != x and x != y
-- div,1
all u1, u2 : User | (u1!=u2 and u1 in u2.follows.follows and u1 not in u2.follows) implies (u1 in u2.suggested and u1!=u2)
-- div,1
all u : User | some f : User | f in u.suggested implies some v : User | v->f in follows and u->v in follows
-- div,1
all u : User | all s: u.suggested | some f: u.follows  | s != u and s in f.follows and s not in u.follows
-- div,3
all u1,u2,u3 : User | (u3 not in u1.follows and u3 in u2.follows and u2 in u1.follows and u1 != u3) implies u3 in u1.suggested
-- div,1
all x, z: User | x in z.suggested && x not in z.follows => some y: User | y in z.follows && x in y.follows
-- div,1
all u : User | all u2 : User | u in u2.suggested implies ( u not in u2.follows and u in u2.follows.follows and u != u2)
-- div,2
all u1, u2 : User - Influencer | u2 in u1.suggested and u1 != u2 implies u2 in u1.follows.follows and u2 not in u1.follows
-- div,1
all u,y: User | y in suggested.u implies (( y not in follows.u) and (some z : User | (y in follows.z) and (z in follows.u)))
-- div,1
all u1,u2 : User | u1 in u2.suggested implies ( (some u3 : User | u1 in u3.follows && u3 in u2.follows) &&
(u1 != u2) )
-- div,1
all u1,u2,u3:User| u3!=u1 and u3 in u2.follows and u2 in u1.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,1
all u : User | all s: u.suggested | some f: u.follows  | s in f.follows and s not in u.follows and s!=u
-- div,1
all u1,u2 : User | u1 in u2.suggested && u1 != u2 implies (some u3 : User | u3 in u2.follows && u1 in u3.follows)
-- div,1
all u : User |
all u2 : User |
(u2 in u.follows.follows && u2 != u && u2 not in u.follows) => u2 in u.suggested
-- div,1
all x0,x1,x2:User | x2 in x1.follows and x1 in x0.follows and x2 not in x0.follows and x0!=x2 implies x2 in x0.suggested
-- div,1
all x,y : User | x in y.suggested implies x not in y.follows and (some z : User | x in z.follows and z in y.follows)
-- div,1
all u :User | all u2: User | (u in u2.suggested) implies (u!= u2 and u not in u2.follows and u in u2.follows.follows)
-- div,4
all u : User | all u2 : User - u.follows |
u2 in u.suggested =>
(some u3 : u.follows | u2 in u3.follows)
-- div,2
all u1 : User.suggested | all u2: u1.follows.follows | (u2 not in u1.follows and u1!=u2) implies (u2 in u1.suggested)
-- div,1
all x,z:User| x->z in suggested implies (some y:User| x->y in follows and y->z in follows and x->z not in follows)
-- div,22
all u, s : User | some f : User | u -> f in follows && f -> s in follows && u -> s not in follows => u -> s in suggested
-- div,1
all x, y:User| some z:User|x->y in follows and y-> z in follows and x->z not in follows implies x-> z in suggested
-- div,1
all u, v : User | u->v in suggested implies ( some z : User | z->v in follows and u->z in follows and u->v not in follows)
-- div,6
all u1, u2 : User | u1 -> u2 in suggested implies (some u3 : User |  u3 -> u2 in follows and u1 -> u2 not in follows and u1 != u2)
-- div,1
all u, v : User | u->v in suggested implies (some z : User | u->z in follows and z->v in follows and u->v not in follows)
-- div,1
all x,y:User| x-> y in suggested implies(some z:User| x-> z in follows and z-> y in follows and x-> y not in follows)
-- div,2
all x:User| some y,z:User|x-> z in suggested implies x->y in follows and y-> z in follows and x->z not in follows
-- div,1
all u,s: User | s in u.suggested implies some u1: User | u1 in u.follows and s in u1.follows and u != s and u != u1
-- div,1
all x:User,t:User-x,k:User-t| x->k in suggested implies x->t in follows and t->k in follows and x!=k
-- div,1
all u,s:User | u -> s in suggested implies ((some f:User | u -> f in follows and f -> s in follows) and u -> s not in follows)
-- div,1
all s, u : User | u->s in suggested => (
u->s not in follows and
(some f : User | u->f in follows and f->s in follows))
-- div,1
all s, u : User | u->s in suggested => (some f : User | u->f in follows and f->s in follows) and u->s not in follows
-- div,1
all u, s : User | u->s in suggested =>
u->s not in follows && some f : User | u->f in follows && f->s in follows
-- div,2
all x,x1:User | x1 in x.suggested implies some x3:User | x1 in x3.follows and x3 in x.follows and x1 not in x.follows
-- div,1
(all x : User | suggested.x in follows.follows.x) && (no x : User | suggested.x in follows.x && x in suggested.x)
-- div,1
all disj x,y:User | y in x.follows implies some disj z:User| z in y.follows and z not in x.follows implies z in x.suggested
-- div,1
all u : User | all s : u.suggested | s in u.suggested implies s not in u.follows and s in u.follows.follows and s not in u
-- div,1
all u : User | all u2 : User - u.follows - u|
u2 in u.suggested =>
(one u3 : u.follows | u2 in u3.follows)
-- div,1
all u1 : User | some u2:User | u2 in u1.suggested implies (u1 != u2 and u2 in u1.follows.follows and u2 not in u1.follows)
-- div,1
all u : User, sugg : u.suggested | u not in sugg && all uf : u.follows | uf not in sugg and sugg in u.follows.follows
-- div,1
all u : User | all u_f : follows.u | all others : follows.u_f | others in suggested.u => others not in follows.u
-- div,1
all disj x,y:User | y in x.follows implies some z:User| z!=x and z!=y and z in y.follows implies z in x.suggested
-- div,1
all u : User | all u_f : u.follows | all others : follows.u_f | others in suggested.u => others not in follows.u
-- div,1
all s, u : User | u != s and u->s in suggested implies (some follower : User | follower->s in follows and u->s not in follows)
-- div,1
all disj e,s,o: User | (s in e.follows && o in s.follows && o not in e.follows) => (o in e.suggested && e not in e.suggested)
-- div,1
all x,z: User | x!=z && x in z.suggested => (some y: User-z | y in z.follows && x in y.follows && x!=y)
-- div,1
all u : User | some s : User | s in u.suggested implies (s in u.follows.follows and s not in u.follows and u not in s.follows)
-- div,1
all u : User | all u2 : User - u.follows - u|
u2 in u.suggested =>
(some u3 : u.follows | u2 in u3.follows)
-- div,1
all u,u2,u3:User | u2 in u.follows and u3 in u2.follows and u3 not in u.follows and u != u2 and u != u3 implies u3 in u.suggested
-- div,1
all x,y: User | y in x.suggested implies some p:User | p in (x.follows).follows - x.follows - x and (p not in x.follows)
-- div,1
all u : User | all resto : User - u | resto in u.suggested implies (resto not in u.follows and resto in u.^follows.follows)
-- div,1
all disj u1,u2 :User | u1 in u2.suggested implies (u1 not in u2.follows and (some u3:User|u3!=u2 and u3 in u2.suggested))
-- div,1
all u1,u2: User | ((u1 not in u2.follows and u2 not in u1.follows) and (u1 in u2.follows.follows)and (u1!=u2)) implies (u1 in u2.suggested)
-- div,1
all u : User | all s : u.suggested | some ufoll : u.follows | s not in u.follows and s in ufoll.follows and s != u
-- div,2
all u1, u2 : User | some u3 : User | u2 in u1.suggested implies (u2 not in u1.follows) and (u3 in u1.follows) and (u2 in u3.follows)
-- div,2
all u1: User, u2: User, u3: User | u2 in u1.follows and u3 in u1.suggested and u3 in u2.follows implies u3 not in u1.follows
-- div,1
all u1,u2 : User | u2 in u1.suggested implies u2 in u1.follows.follows && u2 not in u1.follows && u1 != u2 && u1 not in u1.suggested
-- div,1
all x, z: User| some y: User | x in z.suggested => x in y.follows && x not in z.follows && y in z.follows && x!=z
-- div,1
all u1: User, u2: User, u3: User | u3 in u1.suggested and u2 in u1.follows and u3 in u2.follows implies u3 not in u1.follows
-- div,2
all x,y : User | y in x.suggested implies some z : User | z in x.follows and z in follows.y and x not in follows.y and y != x
-- div,1
all x,y : User |  y in x.suggested implies some z : User | x != y and z in x.follows and z in follows.y and y not in x.follows
-- div,1
all x, z: User | some y: User | x in z.suggested => y in z.follows && x in y.follows && x not in z.follows &&  x!=z
-- div,1
all z: User | all x: z.suggested | some y: User-z | y in z.follows && x in y.follows && x!=y && x!=z
-- div,1
all x,y : User | y in x.suggested implies some z : User | z in x.follows and z in follows.y and x != y and y not in x.follows
-- div,1
all x : User |all y : User | y in x.suggested => (some z : x.follows | y in z.follows) and (y not in x.follows + x)
-- div,2
all u: User | all fu: u.follows | all ffu: fu.follows |
(ffu not in u.follows) and (ffu != u) implies (ffu in u.suggested)
-- div,1
all u1,u2: User | u2 in u1.suggested implies u2 not in u1.follows and (some u3: User | u3 in u1.follows and u2 in u3.follows)
-- div,2
all u1, u2 : User | some u3 : User | u2 in u1.suggested implies ((u2 not in u1.follows) and (u3 in u1.follows) implies (u2 in u3.follows))
-- div,1
all x : User | all y : User | (y not in x.follows+x and (some z : x.follows | y in z.follows)) => y in x.suggested
-- div,2
all u, i : User | i in u.suggested implies some o : User | o in u.follows and i in o.follows and i!=o and u!=i and u!=o
-- div,1
all x:User | x not in x.suggested
all x, y:User |y in x.suggested  implies y not in x.follows and y in x.follows.follows
-- div,1
all x,y : User | y in x.suggested implies x!=y and x not in follows.y
and some z : User | z in x.follows and z in follows.y
-- div,3
all x, z: User | x in z.suggested && x not in z.follows && z != x => some y: User | y in z.follows && x in y.follows
-- div,2
all u,y: User | y in u.suggested implies  (u != y and ( y not in u.follows) and (some z : User | (y in z.follows)         and (z in u.follows)))
-- div,1
all x,y : User | y in x.suggested implies (x not in follows.y) and some z : User | y in z.follows and x in follows.z and z != x
-- div,1
all u : User, us : u.suggested | some u1 : User | us not in u.follows and u1 in u.follows and us in u1.follows and us != u
-- div,1
all x,y : User | y in x.suggested implies( (x not in follows.y) and
( some z : User | (z in follows.y) and (z in x.follows) ) and
(x!=y))
-- div,1
all x,y : User | y in x.suggested implies (x != y) and (x not in follows.y) and some z : User | y in z.follows and x in follows.z
-- div,1
all u1,u2: User | u1->u2 in suggested implies (some u3:User | u1->u3 in follows and u3->u2 in follows and u1->u2 not in follows)
-- div,2
all u1,u3:User | u1->u3 in suggested => (some u2:User | u1->u2 in follows  and u2->u3 in follows and u1->u3 not in follows)
-- div,6
all u1, u3 : User | some u2 : User | u1->u3 in suggested implies (u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows)
-- div,1
all x : User | ((not no x.follows) implies x.suggested = x.follows.follows) or ((no x.follows) implies (x = x.suggested) or (no x.suggested))
-- div,1
all u1 : User | all u2 : User-u1 | u2 in u1.suggested implies (u2 not in u1.follows and u2 in u1.follows.follows and u2 not in u1)
-- div,1
all x,y : User |  y in x.suggested implies some z : User | x != y and z in x.follows and z in follows.y and no y&x.follows
-- div,2
all x,z : User | x->z in suggested implies
(one y : User | x->y in follows and y->z in follows and x->z not in follows and x!=z)
-- div,1
all x,z : User |x->z in suggested implies
(some y : User | x->y in follows and y->z in follows and x->z not in follows and x!=z)
-- div,3
all x : User | ((not no x.follows) implies x.suggested = x.follows.follows) or ((no x.follows) implies (x in x.suggested) or (no x.suggested))
-- div,3
all u, v : User | u->v in suggested implies (some z : User | u->z in follows and z->v in follows and u->v not in follows and u!=v)
-- div,1
all u: User, s: User | u->s in suggested implies (some f: User | u->f in follows and f->s in follows and u->s not in follows)
-- div,1
all u1,u2,u3:User| u3!=u1 and u3!=u2 and u3 in u2.follows and u2 in u1.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,1
all u, s : User | some f : User | u != s && u -> f in follows && f -> s in follows && u -> s not in follows => u -> s in suggested
-- div,1
all u: User, s: User | some f: User | u->s in suggested implies (u->f in follows and f->s in follows and u->s not in follows)
-- div,1
all x,y:User | x!=y and y in x.follows implies some z:User| z!=x and z!=y and z in y.follows implies z in x.suggested
-- div,1
all x,y,z : User |
(y->x in follows and x->z in follows and y->z not in follows and y!=z and y!=x and x!=z)
implies y->z in suggested
-- div,2
all u,x,y : User | u -> x in follows and x -> y in follows  and u != x and u != y and x != y and u -> y not in follows implies u -> y in suggested
-- div,2
all u, v : User | u->v in suggested and u!=v implies ( some z : User | z->v in follows and u->z in follows and u->v not in follows)
-- div,1
all x,z : User | (x->z in suggested and x!=z) implies
(some y : User | x->y in follows and y->z in follows and x->z not in follows)
-- div,1
all s, u : User | u->s in suggested => (some f : User | u->f in follows and f->s in follows) and u->s not in follows and s != u
-- div,4
all x,z : User | x->z in suggested implies (x!=z and x->z not in follows and some y:User| x->y in follows and y->z in follows)
-- div,1
all disj u1,u2 : User | u1 in u2.suggested implies (some u3 : User | u3 in u2.follows && u1 in u3.follows) && u1 not in u2.follows
-- div,1
all u, s : User | u->s in suggested => u != s && u->s not in follows && some f : User | u->f in follows && f->s in follows
-- div,1
all s, u : User |
((u != s) and
(u->s not in follows) and
(some f : User | u->f in follows and f->s in follows)) =>
u->s in suggested
-- div,2
all s, u : User | u->s in suggested => (s != u and u->s not in follows and (some f : User | u->f in follows and f->s in follows))
-- div,4
all s, u : User | (s != u and (some f : User | u->f in follows and f->s in follows) and u->s not in follows) => u->s in suggested
-- div,1
all u, v : User | u->v in suggested and v!=u  implies (some z : User | u->z in follows and z->v in follows and u->v not in follows)
-- div,1
all s, u : User | u != s and u->s in suggested implies (some f: User | u->f in follows and f->s in follows and u->s not in follows)
-- div,3
all s, u : User | u->s in suggested => s != u and (some f : User | u->f in follows and f->s in follows) and u->s not in follows
-- div,3
all u: User, s: User | some f: User | u->s in suggested and u->s not in follows implies (u->f in follows and f->s in follows)
-- div,1
all x : User | (((not no x.follows) implies x.suggested = x.follows.follows) or ((no x.follows) implies ((x in x.suggested) or (no x.suggested))))
-- div,1
all u, s : User | u->s in suggested => u != s && some f : User | s != f && u != f && u->f in follows && f->s in follows
-- div,1
all u1, u3 : User | some u2 : User | (u1 -> u2 in follows and u2 -> u3 in follows and not u1 -> u3 in follows) <=> u1 -> u3 in suggested
-- div,1
all u, s : User |
u->s in suggested
=> u->s not in follows && some f : User | u != s && u->f in follows && f->s in follows
-- div,2
all x: User | all f : x.suggested | f not in x.follows => f in x.follows.follows
all x: User | x not in x.suggested
-- div,1
all u,x,y : User | u -> x in follows and x -> y in follows  and u != x and u != y and x != y and no (u.follows & y) implies u -> y in suggested
-- div,1
all s:User, u:User-s | some v:User | (u in suggested.s) iff (u not in follows.s and u in follows.v and v in follows.s)
-- div,1
all x: User | all f : x.suggested |  f in x.follows.follows  => f not in x.follows
all x: User | x not in x.suggested
-- div,1
all disj u1,u2 : User | u1 in u2.suggested iff (some u3 : User | u3 in u2.follows && u1 in u3.follows) && u1 not in u2.follows
-- div,2
all disj u1, u3 : User | (u3 in u1.suggested) iff
u3 not in u1.follows and (some u2: User | u2 in  u1.follows and u3 in u2.follows)
-- div,2
all x: User | all f : x.suggested |  f in x.follows.follows and f not in x.follows
all x: User | x not in x.suggested
-- div,1
all x: User | all f : x.follows.follows | f in x.suggested => f not in x.follows


all x: User | x not in x.suggested
-- div,2
all x, y: User | x -> y in suggested implies (x!= y and not x -> y in follows and some z: User | x -> z in follows and z -> y in follows )
-- div,1
all s, u : User | (s != u and u->s in suggested) => (some f : User | u->f in follows and f->s in follows) and u->s not in follows
-- div,1
all x,x1:User | x1 in x.suggested implies some x3:User | x1 in x3.follows and x3 in x.follows and x1 not in x.follows and x1!=x
-- div,1
all s, u : User | (u != s and u->s in suggested) implies (one u1 : User | u->u1 in follows and u1->s in follows and u->s not in follows)
-- div,1
all s, u : User | u != s and u->s in suggested implies (some u1 : User | u->u1 in follows and u1->s in follows and u->s not in follows)
-- div,3
all x: User | all z: User-x| x in z.suggested => (some y: User-z | y in z.follows && x in y.follows && x!=y)
-- div,1
all u : User | all s : User | s in u.suggested implies (one u2 : User | u2 in u.follows and s in u2.follows and s not in u.follows )
-- div,1
no suggested & iden
all u1 : User, u2 : u1.follows, u3 : u2.follows |  (u3 != u1 and u3 not in u1.follows) iff u3 in u1.suggested
-- div,3
all u : User | all f : User | f in u.suggested implies some v : User | v->f in follows and u->v in follows and u!=f and u != v
-- div,1
all u1,u2:User | u2 in u1.suggested implies (some u3:User | u2 not in u1.follows and u1!=u2 and u2 in u3.follows and u3 in u1.follows)
-- div,1
all x,y : User | y in x.suggested implies (x not in follows.y) and
( some z : User | z in follows.y and z in x.follows and z!=y) and
(x!=y)
-- div,2
all x:User | x not in x.suggested
all x, y:User | y in x.suggested implies y not in x.follows and y in x.follows.follows and x!=y
-- div,2
all x,y : User | y in x.suggested implies x != y and (x not in follows.y) and some z : User | y in z.follows and x in follows.z and z != x
-- div,2
all u : User | u not in u.suggested
all disj u1, u2 : User | u2 in u1.suggested implies u2 not in u1.follows and u2 in u1.follows.follows
-- div,2
all u1,u2: User | u2 in u1.suggested implies u2 not in u1.follows and (some u3: User | u3 in u1.follows and u2 in u3.follows) and u2 != u1
-- div,1
all x: User | all z: User-x| x in z.suggested && x not in z.follows => (some y: z.follows | x in y.follows && x!=y)
-- div,2
all u1, u2 : User | u2 in u1.suggested implies u2 not in u1.follows
all u1, u2 : User | u2 in u1.suggested implies u2 in u1.follows.follows
-- div,1
all user1, user2: User | (user2 in user1.suggested and user1 not in user2.follows) implies (user2 in user1.follows.follows and user2 not in user1.follows)
-- div,1
all x,y : User | x!=y and y in x.suggested implies (x not in follows.y) and
( some z : User | z in follows.y and z in x.follows and z!=y)
-- div,1
all u1: User, u2: User, u3: User | u3 in u1.suggested and u2 in u1.follows and u3 in u2.follows implies u3 not in u1.follows and u3 != u1
-- div,1
all x: User | x not in x.suggested
all x, z: User | x!=z and z in x.suggested implies z not in x.follows and z in x.follows.follows
-- div,1
all u1,u2 : User | u1 in u2.suggested && u1 != u2 implies (one u3 : User | u3 in u2.follows && u1 in u3.follows && u1 != u3 && u2 != u3)
-- div,1
all u1, u3 : User | u1->u3 in suggested => (some u2:User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows and u1!=u3)
-- div,4
all u : User | (all s : User | u->s in suggested implies (some u1 : User | u->u1 in follows and u1->s in follows and u->s not in follows))
-- div,1
all u1,u2:User | u1->u2 in suggested implies (some u3:User | u1->u3 in follows and u3->u2 in follows and u1->u2 not in follows and u1!=u2)
-- div,5
all u1,u2,u3 : User | u1!=u2 and u2!=u3 and u1!=3 and u1 in u2.follows and u2 in u3.follows and u1 in u3.suggested implies u1 not in u3.follows
-- div,1
all u1, u3 : User | (some u2:User | u1 -> u2 in follows and u2->u3 in follows and u1 -> u3 not in follows and u1 != u3) => u1->u3 in suggested
-- div,2
all u : User, us : u.suggested| some u1, u2 : User | us not in u.follows and u1 in u.follows and u2 in u1.follows and not u2 in u.follows
-- div,1
all u1,u2,u3 : User | u1!=u2 and u1!=u3 and u2!=u3 and u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,2
all u1,u2,u3:User | u1!=u2 and u2!=u3 and u1!=u3 and u3 in u1.suggested and u2 in u1.follows and u3 in u2.follows implies u3 not in u1.follows
-- div,1
all x: User | all z: User-x| x in z.suggested && x not in z.follows => (some y: User | y in z.follows && x in y.follows)
-- div,1
all x0,x1,x2:User | x2 in x1.follows and x1 in x0.follows and x2 not in x0.follows and x0!=x1 and x1!=x2 and x0!=x2 implies x2 in x0.suggested
-- div,1
all u1,u2,u3 : User | u1!=u2 and u2!=u3 and u1!=u3 and u1 in u2.follows and u2 in u3.follows and u1 in u3.suggested implies u1 not in u3.follows
-- div,1
all u1,u2 : User | u1 in u2.suggested && u1 != u2 implies (some u3 : User | u3 in u2.follows && u1 in u3.follows && u1 != u3 && u2 != u3)
-- div,1
all u1,u2,u3 : User | u1!=u2 and u1!=u3 and u2!=u3 and u1 in u2.follows and u2 in u3.follows and u1 not in u3.follows implies u1 in u3.suggested
-- div,1
all s : User | (some u : User | u->s in suggested implies (some u1 : User | u->u1 in follows and u1->s in follows and u->s not in follows))
-- div,1
all u, s : User | u->s in suggested => u->s not in follows && some f : User | s != f && u != f && u->f in follows && f->s in follows
-- div,1
all u1,u3:User| some u2: User | u1->u3 in suggested <=> (u1->u3 not in follows and u1!=u3) and u1->u2 in follows and u2->u3 in follows
-- div,3
all s : User | (all u : User | u != s and u->s in suggested implies (some follower : User | follower->s in follows and u->s not in follows))
-- div,2
all s : User | (some u : User | u != s and u->s in suggested implies (all follower : User | follower->s in follows and u->s not in follows))
-- div,1
all u1, u2 : User | (u2 not in u1.follows and u2 in u1.^follows and u1 != u2) implies u2 in u1.suggested
all u1 : User | u1 not in u1.suggested
-- div,1
all u1, u2, u3: User | (u1 != u2 and u2 != u3 and u1!=u3 and u3 in u2.suggested and u3 in u1.follows) implies (u1 in u2.follows and u3 not in u2.follows)
-- div,1
all u1,u2,u3 : User | u1!=u2 and u1!=u3 and u2!=u3 and u3 in u1.suggested implies u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows
-- div,1
all u1, u2, u3 : User | (u2 in u1.follows and u3 in u2.follows and not u3 in u1.follows and u1 != u2 and u1 != u3 and u2 != u3) => u3 in u1.suggested
-- div,1
all u1,u2,u3 : User | u1!=u2 and u2!=u3 and u1!=u3 and u1 in u3.suggested implies u1 in u2.follows and u2 in u3.follows and u1 not in u3.follows
-- div,2
all u1:User,u2:User-u1,u3:User-u1-u2 | u3 in u1.suggested and u2 in u1.follows and u3 in u2.follows implies u3 not in u1.follows
-- div,2
all u1 : User , u2 : User-u1 , u3 : User-(u1+u2) | u3 in u1.suggested implies u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows
-- div,1
all u1:User,u2:User-u1,u3:User-u1-u2 | u3 in u1.suggested  implies u3 not in u1.follows and u2 in u1.follows and u3 in u2.follows
-- div,2
all u1 : User , u2 : User-u1 , u3 : User-(u1+u2) | u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,1
all u1: User, u2: User-u1, u3: User-u2-u1 | u3 in u1.suggested and u2 in u1.follows and u3 in u2.follows implies u3 not in u1.follows
-- div,1
all u1, u2, u3 : User | u1 != u2 and u1 != u3 and u2 != u3 and u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows implies u1->u3 in suggested
-- div,2
all u1, u2 : User | u2 in u1.suggested implies u2 not in u1.follows+u1
all u1, u2 : User | u2 in u1.suggested implies u2 in u1.follows.follows
-- div,2
all u : User | all u2 : User - u.follows - u|
u2 in u.suggested =>
(some u3 : u.follows | u2 in u3.follows and u2 not in u.follows)
-- div,1
all u : User | all s : User | s in u.suggested implies (some u2 : u.follows | s in u2.follows and s not in u.follows and u not in s and s not in u)
-- div,1
all u : User | all u2 : User - u.follows - u|
u2 in u.suggested =>
((some u3 : u.follows | u2 in u3.follows) and u2 not in u.follows)
-- div,1
all u1, u2 : User| u2 in u1.suggested implies u1 != u2
all u1, u2 : User| u2 in u1.suggested implies u2 in u1.^follows and u2 not in u1.follows
-- div,1
all u, i : User | i in u.suggested implies some o : User | o in u.follows and i in o.follows and i not in u.follows and i!=o and u!=i and u!=o
-- div,2
all usr1:User
| some usr2, usr3: User
| usr1->usr2 in follows
and  usr2->usr3 in follows
and usr1->usr3 not in follows

implies usr1->usr3 in suggested
-- div,1
all u1:User , u2:User-u1 , u3:User-(u1+u2) | u1->u3 in suggested implies u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows
-- div,3
all u : User | all s : User | s in u.suggested implies (one u2 : User | u2 in u.follows and s in u2.follows and s not in u.follows and u not in s )
-- div,1
all u : User | all f : User | f in u.suggested implies some v : User | v->f in follows and u->v in follows and u!=f and u != v and f != v
-- div,1
all u, i : User | i in u.suggested and i not in u.follows  implies some o : User | o in u.follows and i in o.follows and i!=o and u!=i and u!=o
-- div,1
all x, z: User | x in z.suggested && x not in z.follows && z!=x => some y: User | y in z.follows && x in y.follows && y!=z && y!=x
-- div,1
all u1, u2 : User | u2 in suggested.u2 implies (some u3 : User | u3 in follows.u2 and u1 in follows.u3 and u1 not in follows.u2 and u2 != u3 and u1 != u2)
-- div,1
all u1, u2 : User | u2 in suggested.u1 implies (some u3 : User | u3 in u2.follows and u1 in u3.follows and u1 not in u2.follows and u2 != u3 and u1 != u2)
-- div,1
all s, u : User | u != s and u->s in suggested implies (some follower : User | u->follower in follows and follower->s in follows and u->s not in follows)
-- div,2
all u : User | all s: u.follows | all y: s.follows | u!=s and u!=y and s!=u and s!=y and y not in u.follows implies y in u.suggested
-- div,1
all disj x,y,z : User | x->y in follows and y->z in follows and x->z not in follows iff x->z in suggested
all u : User | u->u not in suggested
-- div,1
all u : User, us : u.suggested| some u1 : User | us not in u.follows and u1 in u.follows and us in u1.follows and not us in u.follows and us != u
-- div,1
all u, s : User | some f : User | u != f and f != s and u != s && u -> f in follows && f -> s in follows && u -> s not in follows => u -> s in suggested
-- div,1
all u : User | some s, f : User | u != f and f != s and u != s && u -> f in follows && f -> s in follows && u -> s not in follows => u -> s in suggested
-- div,1
all u : User | some s, f : User | u != f and f != s and u != s && u -> f in follows && f -> s in follows && u -> s not in follows => s -> u in suggested
-- div,1
all disj x,y,z : User | x->y in follows and y->z in follows and x->z not in follows iff x->z in suggested
all u : User | not(u->u in suggested)
-- div,1
all u1:User, u2:User | u1 -> u2 in suggested implies (some u3:User | u1 -> u3 in follows and u3 -> u2 in follows and u1 -> u2 not in follows and u1 != u2)
-- div,1
all user : User | all suggested : user.suggested | suggested not in user.follows and some following : user.follows | suggested in following.follows
-- div,1
all u, s : User |
u->s in suggested
=> u != s && u->s not in follows
&& some f : User |
s != f && u != f && u->f in follows && f->s in follows
-- div,8
all u1: User, u2: User, u3 : User | u2 != u1 and u2 != u3 and u2 in u1.suggested and u2 in u3.follows implies u3 in u1.follows and u2 not in u1.follows
-- div,1
all u, s : User |
u->s in suggested
=> u->s not in follows && some f : User | u != s && s != f && u != s && u->f in follows && f->s in follows
-- div,1
all u, s : User |
u->s in suggested
=> u != s && u->s not in follows && some f : User | s != f && u != s && u->f in follows && f->s in follows
-- div,1
all u,x,y : User | u -> x in follows and x -> y in follows  and u != x and u != y and x != y and u -> y not in follows and u-> y not in suggested implies u -> y in suggested
-- div,1
all u : User, us : u.suggested| some u1, u2 : User | us not in u.follows and u1 in u.follows and u2 in u1.follows and not u2 in u.follows and us != u
-- div,2
all u1, u2 : User | u2 in u1.follows implies u2 not in u1.suggested
all u1, u2 : User | u2 in u1.suggested implies (u2 in u1.follows.follows and u2 != u1)
-- div,2
all u1, u3:User | u1->u3 in suggested => some u2:User | u2!=u1 and u1!=u3 and u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows
-- div,1
all u : User | (all s : User | u != s and u->s in suggested implies (some u1 : User | u->u1 in follows and u1->s in follows and u->s not in follows))
-- div,1
all u1,u2 : User | u2 in u1.suggested implies u1 != u2
all u1,u2 : User | (u2 in u1.suggested) implies (u2 not in u1.follows and u2 in u1.follows.follows)
-- div,1
all u1,u3:User | u1->u3 in suggested => (some u2:User | u1->u2 in follows  and u2->u3 in follows and u1->u3 not in follows and u1!=u2 and u2!=u3)
-- div,1
all u1, u2:User | u1 -> u2 in suggested implies (some u3:User | u1 -> u3 in follows and u3 -> u2 in follows and u1 -> u2 not in follows and u1 != u2 and u2 != u3)
-- div,2
all u, s : User | u->s in suggested => u != s && u->s not in follows => some f : User | s != f && u != f && u->f in follows && f->s in follows
-- div,1
all disj u,uu: User| u in uu.follows.follows and u not in uu.follows and u not in Influencer => u in uu.suggested


all u:User | u not in u.suggested
-- div,1
all u1, u3 : User | some u2 : User | (u1 -> u2 in follows and u2 -> u3 in follows and not u1 -> u3 in follows and u1 != u2 and u2 != u3) <=> u1 -> u3 in suggested
-- div,2
all s, u : User | u != s and u->s in suggested implies (some u1 : User | u1 != s and u1 != u and u->u1 in follows and u1->s in follows and u->s not in follows)
-- div,1
all u1 : User | all u2 : User | all u3 : User |
(u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows and u1 not in u3)
implies u3 in u1.suggested
-- div,2
all x: User | all z: User-x| x not in z.follows && x in z.suggested => (some y: User-z | y in z.follows && x in y.follows && x!=y)
-- div,1
all x, y: User | x->y in suggested implies (some z: User | z->y in follows and x->y not in follows)
all x, y: User | x->y in suggested implies x != y
-- div,4
all x0,x1:User | some x3:User | x1 in x0.suggested implies x1 not in x0.follows and x0!=x1 and x1 in x3.follows and x3 in x0.follows and x1 in x3.follows
-- div,1
all u : User | all s : User | s in u.suggested implies (one u2 : User | u2 in u.follows and s in u2.follows and s not in u.follows and u not in s and s not in u)
-- div,1
all u:User | u->u not in suggested
all disj u1, u2, u3: User | u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows <=> u1->u3 in suggested
-- div,1
all s:User | all u:User-s | s in u.suggested iff some u1:User-s | u1 != u and s in u1.follows and u1 in u.follows and s not in u.follows
-- div,1
all u : User |
all u2 : User |
(u2 in u.follows.follows && u2 != u && u2 not in u.follows) => u2 in u.suggested
all u : User | u not in u.suggested
-- div,1
all x, y: User | x->y in suggested implies (some z: User | z->y in follows and x->y not in follows)
all u1,u2 : User | u1 in u2.suggested implies u1 != u2
-- div,1
all u1: User, u2: User, u3: User | u2 != u1 and u2 != u3 and u1 != u3 and u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows implies u3 in u1.suggested
-- div,1
all u1: User, u2: User, u3: User | u2 != u1 and u2 != u3 and u1 != u3 and u2 in u1.follows and u3 in u1.suggested and u3 in u2.follows implies u3 not in u1.follows
-- div,1
all u1: User, u2: User, u3: User | u1 != u2 and u1 != u3 and u2 != u3 and u3 in u1.suggested and u2 in u1.follows and u3 in u2.follows implies u3 not in u1.follows
-- div,1
all u1: User, u2: User, u3: User | u2 != u1 and u2 != u3 and u1 != u3 and u2 in u1.follows and u3 in u2.follows and u3 in u1.follows implies u3 not in u1.suggested
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | user2 in user1.suggested implies ((user2 not in user1.follows) and (user2 in user1.follows.follows))
-- div,1
all user : User | user not in user.suggested
all user1, user3 : User | user3 in user1.suggested implies ((user3 not in user1.follows) and (user3 in user1.follows.follows))
-- div,2
all u1, u2 : User | (u2 not in Influencer and u2 not in u1.follows and u2 in u1.^follows and u1 != u2) implies u2 in u1.suggested
all u1 : User | u1 not in u1.suggested
-- div,1
all u1, u2 : User | u2 in u1.follows implies u2 not in u1.suggested
all u1 : User | all u2 : User-u1 | u2 in u1.suggested implies u2 in u1.follows.follows
-- div,1
all u1, u3 : User | some u2 : User | (u1 != u2 and u2 != u3 and u1 != u3 and u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows) implies u1->u3 in suggested
-- div,2
all u1,u3 : User | u3 in u1.suggested implies (some u2 : User | u2 in u1.follows and u3 not in u1.follows)
all u1,u2 : User | u1 in u2.suggested implies u1 != u2
-- div,2
all u1,u3 : User | u3 in u1.suggested implies (some u2 : User | u3 in u2.follows and u3 not in u1.follows)
all u1,u2 : User | u1 in u2.suggested implies u1 != u2
-- div,1
all u1, u3 : User | some u2 : User | u1 != u2 and u2 != u3 and u1 != u3 and u1->u3 in suggested implies (u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows)
-- div,1
all disj u,uu: User-Influencer| u in uu.follows.follows and u not in uu.follows and u not in Influencer => u in uu.suggested


all u:User | u not in u.suggested
-- div,1
all u1, u3 : User | some u2 : User | (u1 -> u2 in follows and u2 -> u3 in follows and not u1 -> u3 in follows and u1 != u2 and u2 != u3 and u1 != u3) <=> u1 -> u3 in suggested
-- div,1
all u,u2,u3:User | u2 in u.follows and u3 in u2.follows and u3 not in u.follows and u != u2 and u != u3 implies u3 in u.suggested
all u:User | u not in u.suggested
-- div,1
all u1 : User | all u2 : User | all u3 : User |
(u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows and u1 not in u3 and u1 not in u2)
implies u3 in u1.suggested
-- div,2
all u1, u3 : User | some u2 : User | (u1 -> u2 in follows and u2 -> u3 in follows and not u1 -> u3 in follows and u1 != u2 and u2 != u3) <=> u1 -> u3 in suggested and u1 != u3
-- div,1
all user, suggest : univ | user->suggest in suggested implies some followed : univ | user->followed in follows and followed->suggest in follows and not user->suggest in follows
-- div,4
all user, suggest : User | user->suggest in suggested implies some followed : univ | user->followed in follows and followed->suggest in follows and not user->suggest in follows
-- div,1
all user : User | all suggested : user.suggested | (suggested != user and suggested not in user.follows and one following : user.follows | suggested in following.follows)
-- div,1
all u : User | some s : User |
u->s in suggested
=> u != s && u->s not in follows
&& some f : User |
s != f && u != f && u->f in follows && f->s in follows
-- div,2
all user : User | all suggested : user.suggested | suggested != user and suggested not in user.follows and some following : user.follows | suggested in following.follows
-- div,3
all x : User | (x.suggested = x.follows.follows) or (some y : User | y in x.follows and x in y.follows implies y in x.suggested) or (no x.follows implies x in x.suggested)
-- div,1
all u:User | all s: u.suggested | s in u.follows.follows and s!=u
all u,s:User | s not in u.follows and s in u.suggested implies s in u.follows.follows
-- div,1
all s : User | (all u : User | u != s and u->s in suggested implies (some follower : User | follower != s and follower != u and follower->s in follows and u->s not in follows))
-- div,1
all u : User | (all s : User | u != s and u->s in suggested implies (some u1 : User | u->u1 in follows and u1->s in follows and u->s not in follows and u1 != u and u1 != s))
-- div,2
all s : User | (some u : User | u != s and u->s in suggested implies (some follower : User | follower != u and follower != s and follower->s in follows and u->s not in follows))
-- div,1
all user : User | user not in user.suggested
all user1, user3 : User+Influencer | user3 in user1.suggested implies ((user3 not in user1.follows) and (user3 in user1.follows.follows))
-- div,1
all disj u,uu: User| u in uu.follows.follows and u not in uu.follows => u in uu.suggested


all u:User | u not in u.suggested

all i: Influencer | none in i.suggested
-- div,1
all u1:User-Influencer , u2:User-(u1+Influencer) , u3:User-(u1+u2+Influencer) | u1->u3 in suggested implies u1->u2 in follows and u2->u3 in follows and u1->u3 not in follows
-- div,1
all u1,u3 : User | u3 in u1.suggested implies (some u2 : User | u3 in u2.follows and u3 not in u1.follows and u2 in u1.follows)
all u1,u2 : User | u1 in u2.suggested implies u1 != u2
-- div,1
all user : User | all suggested_user : user.suggested | (suggested_user != user and suggested_user not in user.follows and some following : user.follows | suggested_user in following.follows)
-- div,6
all user : User | all user_suggested : user.suggested | (user_suggested != user and user_suggested not in user.follows and some following : user.follows | user_suggested in following.follows)
-- div,1
all u1 : User | all u2 : User | all u3 : User |
(u2 in u1.follows and u3 in u2.follows and u3 not in u1.follows and u1 not in u3 and u1 not in u2)
implies (u3 in u1.suggested or u3 in Influencer)
-- div,2
all disj u,uu: User- Influencer| u in uu.follows.follows and u not in uu.follows => u in uu.suggested


all u:User | u not in u.suggested

all i: Influencer | none in i.suggested
-- div,1
all u1,u2 : User | u2 in u1.suggested implies u1 != u2
all u1,u2 : User | u2 in u1.suggested implies u2 not in u1.follows
all u1,u2 : User | u2 in u1.suggested implies u2 in u1.follows.follows
-- div,1
all disj u,uu: User| u in uu.follows.follows and u not in uu.follows and u not in Influencer => u in uu.suggested


all u:User | u not in u.suggested
all i: Influencer | none in i.suggested
-- div,3
all user, suggest : univ | user in User and suggest in User and user->suggest in suggested implies some followed : univ | user->followed in follows and followed->suggest in follows and not user->suggest in follows
-- div,1
all u,u2:User | u2 in u.suggested implies some u3:User | u3 in u.follows and u2 in u3.follows
all u:User | u not in u.suggested
all u,u2:User | u2 in u.follows implies u2 not in u.suggested
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | user2 in user1.follows implies user2 not in user1.suggested
all user1, user3 : User | user3 in user1.suggested implies (user3 in user1.follows.follows)
-- div,1
all u : User | all s : u.suggested | s in u.follows.follows and s not in u.follows and u not in s
all u : User | all u2 : User | u in u2.suggested implies ( u not in u2.follows and u in u2.follows.follows and u != u2)
-- div,1
all x: User | all f : x.follows.follows | f in x.suggested => f not in x.follows

all x: User | all f : x.suggested |  f in x.follows.follows and f not in x.follows
all x: User | x not in x.suggested
-- div,1
all u,u2,u3:User | u2 in u.follows and u3 in u2.follows and u3 not in u.follows and u != u2 and u != u3 implies u3 in u.suggested
all u:User | u not in u.suggested
all u,u2:User | u2 in u.follows implies u2 not in u.suggested
-- div,1
all user : User | user not in user.suggested
all user1, user2, user3 : User | ((user1 != user2) and (user2 != user3) and (user1 != user3) and (user3 not in user1.follows) and (user3 in user2.follows) and (user2 in user1.follows)) implies user3 in user1.suggested
-- div,1
all disj x, y, z: User | x->y in follows and y->z in follows and not x->z in follows implies x->z in suggested
all x, z : User| x->z in suggested implies x->z not in follows and some y: User | x->y in follows and y->z in follows
-- div,1
all disj x, y, z: User | x->y in follows and y->z in follows and x->z not in follows implies x->z in suggested
all disj x, z : User |some y: User | x->z in suggested implies x->z not in follows and x->y in follows and y->z in follows
-- div,1
all disj x, y, z: User | x->y in follows and y->z in follows and x->z not in follows implies x->z in suggested
all disj x, z : User| x->z in suggested implies x->z not in follows and some y: User | x->y in follows and y->z in follows
-- div,1
all disj x, y, z: User | x->y in follows and y->z in follows and not x->z in follows implies x->z in suggested
all disj x, z : User| x->z in suggested implies x->z not in follows and some y: User | x->y in follows and y->z in follows
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User + Influencer | (user2 in user1.follows) implies user2 not in user1.suggested
all user1, user3 : User + Influencer | user3 in user1.suggested implies (user3 in user1.follows.follows)
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | ((user2 in user1.follows) and (user1 in user2.follows)) implies user2 not in user1.suggested
all user1, user3 : User | user3 in user1.suggested implies (user3 in user1.follows.follows)
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User | user2 in user1.follows and user1 not in user2.follows implies user2 not in user1.suggested
all user1, user3 : User | user3 in user1.suggested implies (user3 in user1.follows.follows)
-- div,3
all disj x, y, z: User | x->y in follows and y->z in follows and x->z not in follows implies x->z in suggested
all disj x, z : User |some y: User | x->z in suggested implies x!=y and y!=z and x->z not in follows and x->y in follows and y->z in follows
-- div,1
all user : User | user not in user.suggested
all user1, user2 : User + Influencer | ((user2 in user1.follows) and (user1 in user2.follows)) implies user2 not in user1.suggested
all user1, user3 : User + Influencer | user3 in user1.suggested implies (user3 in user1.follows.follows)
-- div,1
all u,u2,u3:User | u2 in u.follows and u3 in u2.follows and u3 not in u.follows and u != u2 and u != u3 implies u3 in u.suggested
all u,u2:User | u2 in u.suggested implies some u3:User | u3 in u.follows and u2 in u3.follows
all u:User | u not in u.suggested
-- div,1
