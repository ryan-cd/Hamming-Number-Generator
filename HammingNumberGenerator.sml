datatype 'a str = Nil
	| Cons of 'a * (unit -> 'a str);

fun str2list 0 _ = []
	| str2list _ Nil = []
	| str2list n (Cons (a, f)) = a :: str2list (n-1) (f());

fun scale_str n Nil = Nil
	| scale_str n (Cons(a, f)) = Cons((n*a), fn()=>(scale_str (n) (f())));

fun merge_str (Cons(a,x)) (Cons(b,y)) = if a > b then Cons(b, (fn()=> merge_str (Cons(a,x)) (y())))
										else if a = b then Cons(a, (fn()=> merge_str (x()) (y())))
										else Cons(a, (fn()=> merge_str (x()) (Cons(b,y))))
	|merge_str Nil y = y
	|merge_str x Nil = x;

fun hamfun() = Cons(1, fn()=>( merge_str (merge_str (scale_str 2 (hamfun())) (scale_str 3 (hamfun()))) (scale_str 5 (hamfun())) ));

val hamstr = hamfun();
