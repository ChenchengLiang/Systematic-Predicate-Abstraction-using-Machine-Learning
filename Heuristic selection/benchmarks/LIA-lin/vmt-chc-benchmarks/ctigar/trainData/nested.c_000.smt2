(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (and (= A true) (not H) (not G) (not B))
      )
      (state B A H G C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) ) 
    (=>
      (and
        (state B A P O H J L N)
        (let ((a!1 (and F (not E) (not D) C (= H G) (= J I) (= L K) (= N M)))
      (a!2 (and (not F)
                E
                (not D)
                C
                (= J I)
                (= L K)
                (= N M)
                (= (+ H (* (- 1) G)) (- 1))))
      (a!3 (and F
                (not E)
                (not D)
                (not C)
                (= H G)
                (= L K)
                (= N M)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!4 (and (not F) (not E) (not D) (not C) (= H G) (= J I) (= L K) (= N M))))
  (and (or A
           (not B)
           O
           P
           (and F (not E) D (not C) (= H G) (= J I) (= L K) (= N M))
           (not (<= N J)))
       (or (not A) B (not O) P a!1 (<= 1 J))
       (or A
           B
           O
           (not P)
           (and (not F) E D C (= H G) (= J I) (= L K) (= N M))
           (not (<= N H)))
       (or A
           (not B)
           O
           P
           (and (not F) E D (not C) (= H G) (= J I) (= L K) (= N M))
           (<= N J))
       (or A
           B
           O
           (not P)
           (and (not F) (not E) D C (= H G) (= J I) (= L K) (= N M))
           (<= N H))
       (or (not A) B O (not P) a!2)
       (or (not A) (not B) O (not P) a!3)
       (or A
           (not B)
           (not O)
           P
           (and F E D (not C) (= H G) (= J I) (= L K) (= N M)))
       (or A B (not O) (not P) a!1)
       (or A
           B
           (not O)
           P
           (and (not F) E (not D) (not C) (= H G) (= J I) (= L K) (= N M)))
       (or A
           (not B)
           O
           (not P)
           (and (not F) (not E) (not D) C (= H G) (= J I) (= L K) (= N M)))
       (or A B O P a!4)
       (or (not A) (not B) (not O) P a!4)
       (or (not A)
           (not B)
           O
           P
           (and (not F) (not E) (not D) C (= G 1) (= J I) (= L K) (= N M)))
       (or (not A)
           B
           O
           P
           (and (not F) E (not D) (not C) (= I 1) (= H G) (= L K) (= N M)))
       (or (not A)
           B
           (not O)
           P
           (and F E (not D) (not C) (= H G) (= J I) (= L K) (= N M))
           (not (<= 1 J)))))
      )
      (state E D C F G I K M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (state B A H G C D E F)
        (and (not A) (= H true) (= G true) (not B))
      )
      false
    )
  )
)

(check-sat)
(exit)
