(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        (and (= A true) (not G) (not F) (not B))
      )
      (state B A G F C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) ) 
    (=>
      (and
        (state B A N M H J L)
        (let ((a!1 (and F (not E) (not D) C (= H G) (= J I) (= L K)))
      (a!2 (and (not F) (not E) (not D) C (= H G) (= J I) (= L K)))
      (a!3 (and (not F) E D C (= J I) (= L K) (= (+ (* 2 H) (* (- 1) G)) 0)))
      (a!4 (and (not F) E (not D) C (= H G) (= L K) (= (+ J (* (- 1) I)) 1)))
      (a!5 (and (not F) (not E) (not D) (not C) (= H G) (= J I) (= L K))))
  (and (or (not A)
           (not B)
           M
           N
           (and F (not E) D (not C) (= H G) (= J I) (= L K))
           (not (<= L H)))
       (or (not A) B (not M) N a!1 (not (<= H 0)))
       (or A
           B
           M
           (not N)
           (and F (not E) (not D) (not C) (= H G) (= J I) (= L K))
           (not (<= J 0)))
       (or A
           B
           M
           (not N)
           (and (not F) (not E) D C (= H G) (= J I) (= L K))
           (<= J 0))
       (or (not A) (not B) M N a!2 (<= L H))
       (or A (not B) M (not N) a!3)
       (or (not A) B M (not N) a!4)
       (or A (not B) (not M) N (and F E D (not C) (= H G) (= J I) (= L K)))
       (or A B (not M) (not N) a!1)
       (or A B (not M) N (and (not F) E D (not C) (= H G) (= J I) (= L K)))
       (or (not A) (not B) M (not N) a!2)
       (or A B M N a!5)
       (or (not A) (not B) (not M) N a!5)
       (or (not A)
           B
           M
           N
           (and (not F) E (not D) (not C) (= G 1) (= J I) (= L K)))
       (or A (not B) M N (and (not F) E D (not C) (= I 10) (= H G) (= L K)))
       (or (not A)
           B
           (not M)
           N
           (and F E (not D) (not C) (= H G) (= J I) (= L K))
           (<= H 0))))
      )
      (state E D C F G I K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        (state B A G F C D E)
        (and (not A) (= G true) (= F true) (not B))
      )
      false
    )
  )
)

(check-sat)
(exit)
