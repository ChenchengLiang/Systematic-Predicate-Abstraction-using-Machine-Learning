(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (and (= A true) (not H) (not G) (not B))
      )
      (state B A H G F E D C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) ) 
    (=>
      (and
        (state B A P O N L J H)
        (let ((a!1 (and F (not E) D C (= H G) (= J I) (= L K) (= N M)))
      (a!2 (and F
                (not E)
                D
                (not C)
                (= J I)
                (= L K)
                (= N M)
                (= (+ H (* (- 1) G)) (- 1))))
      (a!3 (and F
                E
                (not D)
                C
                (= H G)
                (= L K)
                (= N M)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!4 (and (not F) (not E) (not D) (not C) (= H G) (= J I) (= L K) (= N M))))
  (and (or A
           (not B)
           O
           (not P)
           (and F E (not D) (not C) (= H G) (= J I) (= L K) (= N M))
           (not (<= N H)))
       (or (not A) (not B) O (not P) a!1 (<= 1 H))
       (or (not A)
           (not B)
           O
           (not P)
           (and F (not E) (not D) (not C) (= H G) (= J I) (= L K) (= N M))
           (not (<= 1 H)))
       (or A
           (not B)
           O
           (not P)
           (and (not F) E D C (= H G) (= J I) (= L K) (= N M))
           (<= N H))
       (or A
           B
           O
           (not P)
           (and (not F) E (not D) C (= H G) (= J I) (= L K) (= N M))
           (<= N J))
       (or (not A)
           B
           O
           P
           (and (not F) (not E) D C (= H G) (= J I) (= L K) (= N M))
           (<= L 0))
       (or (not A)
           B
           O
           P
           (and (not F) (not E) D (not C) (= H G) (= J I) (= L K) (= N M))
           (not (<= L 0)))
       (or (not A) B (not O) P a!2)
       (or (not A)
           B
           O
           (not P)
           (and (not F) E D (not C) (= J I) (= L K) (= L G) (= N M)))
       (or A B (not O) (not P) a!3)
       (or (not A) (not B) (not O) P a!1)
       (or A
           B
           (not O)
           P
           (and F (not E) (not D) C (= H G) (= J I) (= L K) (= N M)))
       (or A
           (not B)
           (not O)
           P
           (and (not F) E D (not C) (= H G) (= J I) (= L K) (= N M)))
       (or (not A)
           B
           (not O)
           (not P)
           (and (not F) E (not D) (not C) (= H G) (= J I) (= L K) (= N M)))
       (or A B O P a!4)
       (or A (not B) O P a!4)
       (or A (not B) (not O) (not P) a!4)
       (or (not A)
           (not B)
           O
           P
           (and (not F) E (not D) (not C) (= I 1) (= H G) (= L K) (= N M)))
       (or A
           B
           O
           (not P)
           (and F E D (not C) (= H G) (= J I) (= L K) (= N M))
           (not (<= N J)))))
      )
      (state D C E F M K I G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (state B A H G F E D C)
        (and (= A true) (not H) (= G true) (= B true))
      )
      false
    )
  )
)

(check-sat)
(exit)
