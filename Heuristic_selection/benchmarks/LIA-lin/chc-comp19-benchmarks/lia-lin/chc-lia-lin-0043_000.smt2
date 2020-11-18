(set-logic HORN)

(declare-fun |invariant| ( Bool Bool Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (and (= H 0) (= G 0) (= F 0) (= E 0) (= D 0) (= A 0) (not C) (not B) (= I 0))
      )
      (invariant B C F G H I D E A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Bool) ) 
    (=>
      (and
        (invariant A B C D E F G H I)
        (let ((a!1 (and (= J E) (= M I) (= G 1) (= K C) (= L (ite (= I E) 2 3)) (= N A)))
      (a!3 (and (= M I) (= O F) (= P (ite (= I F) 2 3)) (= Q D) (= H 1) (= R B))))
(let ((a!2 (or (and N (= J E) (= M C) (= G 2) (= K C) (= L 3))
               a!1
               (and (= J E) (= M I) (= G 3) (= K C) (= L G) (= N A))
               (and (= J I) (= M I) (= G 0) (= K (+ 1 I)) (= L 1) (= N A))))
      (a!4 (or (and R (= M D) (= O F) (= P 3) (= Q D) (= H 2))
               (and (= M I) (= O F) (= P H) (= Q D) (= H 3) (= R B))
               a!3
               (and (= M I) (= O I) (= P 1) (= Q (+ 1 I)) (= H 0) (= R B)))))
  (or (and a!2 (= O F) (= P H) (= Q D) (= R B))
      (and a!4 (= J E) (= K C) (= L G) (= N A)))))
      )
      (invariant N R K Q J O L P M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (invariant A B C D E F G H I)
        (and (= A true) (= B true) (not (= I 2)))
      )
      false
    )
  )
)

(check-sat)
(exit)
