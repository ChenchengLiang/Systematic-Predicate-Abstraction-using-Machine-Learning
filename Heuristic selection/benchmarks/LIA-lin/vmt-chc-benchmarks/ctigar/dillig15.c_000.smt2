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
        (let ((a!1 (or A
               (not B)
               O
               (not P)
               (and F (not E) D (not C) (= H G) (= J I) (= L K) (= N M))
               (<= (+ J (* (- 1) N)) (- 1))))
      (a!2 (not (<= (+ J (* (- 1) N)) (- 1))))
      (a!3 (and F
                (not E)
                (not D)
                (not C)
                (= H G)
                (= L K)
                (= N M)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!4 (and F
                (not E)
                (not D)
                C
                (= H G)
                (= J I)
                (= N M)
                (= (+ L (* (- 1) K)) 1)))
      (a!5 (and F E D C (= H G) (= J I) (= L K) (= N M)))
      (a!6 (and (not F) (not E) (not D) (not C) (= H G) (= J I) (= L K) (= N M))))
  (and (or A
           B
           (not O)
           (not P)
           (and F E (not D) C (= H G) (= J I) (= L K) (= N M))
           (<= L (- 1)))
       (or A
           (not B)
           (not O)
           P
           (and F E (not D) (not C) (= H G) (= J I) (= L K) (= N M))
           (not (<= N J)))
       (or A
           (not B)
           (not O)
           P
           (and F (not E) D C (= H G) (= J I) (= L K) (= N M))
           (<= N J))
       a!1
       (or A
           (not B)
           O
           (not P)
           (and (not F) E D C (= H G) (= J I) (= L K) (= N M))
           a!2)
       (or (not A)
           (not B)
           O
           P
           (and (not F) E (not D) C (= H G) (= J I) (= L K) (= N M))
           (not (<= N L)))
       (or (not A)
           (not B)
           O
           P
           (and (not F) E (not D) (not C) (= H G) (= J I) (= L K) (= N M))
           (<= N L))
       (or (not A)
           B
           O
           P
           (and (not F) (not E) D C (= H G) (= J I) (= L K) (= N M))
           (not (<= 1 N)))
       (or (not A)
           B
           O
           P
           (and (not F) (not E) D (not C) (= H G) (= J I) (= L K) (= N M))
           (<= 1 N))
       (or (not A) (not B) O (not P) a!3)
       (or A B (not O) P a!4)
       (or (not A) (not B) (not O) (not P) a!5)
       (or (not A)
           B
           (not O)
           (not P)
           (and F E D (not C) (= H G) (= J I) (= L K) (= N M)))
       (or (not A)
           B
           (not O)
           P
           (and (not F) E D (not C) (= H G) (= J I) (= L K) (= N M)))
       (or A B O P a!6)
       (or A B O (not P) a!6)
       (or A (not B) O P a!6)
       (or A (not B) (not O) (not P) a!6)
       (or (not A) (not B) (not O) P a!6)
       (or (not A)
           B
           O
           (not P)
           (and (not F) E D (not C) (= I 0) (= H G) (= L K) (= N M)))
       (or A B (not O) (not P) a!5 (not (<= L (- 1))))))
      )
      (state D C E F G I K M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (state B A H G C D E F)
        (and (= A true) (= H true) (= G true) (= B true))
      )
      false
    )
  )
)

(check-sat)
(exit)
