(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) ) 
    (=>
      (and
        (and (= B true) (not A) (not I) (not H) (not C))
      )
      (state C B A I H G F E D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) ) 
    (=>
      (and
        (state C B A R Q P N L J)
        (let ((a!1 (and (not H) G (not F) E D (= J I) (= L K) (= N M) (= P O)))
      (a!2 (and (not H)
                G
                F
                E
                D
                (= L K)
                (= N M)
                (= P O)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!3 (and (not H)
                G
                F
                (not E)
                D
                (= J I)
                (= N M)
                (= P O)
                (= (+ L (* (- 1) K)) (- 1))))
      (a!4 (and (not H)
                G
                (not F)
                E
                (not D)
                (= J I)
                (= L K)
                (= P O)
                (= (+ N (* (- 1) M)) (- 1))))
      (a!5 (and (not H)
                (not G)
                (not F)
                (not E)
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O))))
  (and (or (not A)
           B
           C
           Q
           R
           (and (not H) G F E (not D) (= J I) (= L K) (= N M) (= P O))
           (not (<= P L)))
       (or (not A)
           B
           (not C)
           Q
           R
           (and (not H) G F (not E) (not D) (= J I) (= L K) (= N M) (= P O))
           (not (<= P N)))
       (or (not A) (not B) (not C) Q R a!1 (<= J N))
       (or (not A)
           (not B)
           (not C)
           Q
           R
           (and (not H)
                G
                (not F)
                (not E)
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O))
           (not (<= J N)))
       (or (not A)
           B
           (not C)
           Q
           R
           (and (not H) (not G) F E D (= J I) (= L K) (= N M) (= P O))
           (<= P N))
       (or (not A)
           B
           C
           Q
           R
           (and (not H) (not G) F (not E) D (= J I) (= L K) (= N M) (= P O))
           (<= P L))
       (or A
           B
           (not C)
           Q
           R
           (and (not H) (not G) (not F) E D (= J I) (= L K) (= N M) (= P O))
           (<= P J))
       (or (not A) B (not C) Q (not R) a!2)
       (or (not A) B C Q (not R) a!3)
       (or A (not B) C Q (not R) a!4)
       (or A (not B) (not C) Q (not R) a!1)
       (or A
           B
           C
           Q
           (not R)
           (and (not H) G (not F) (not E) D (= J I) (= L K) (= N M) (= P O)))
       (or A
           B
           (not C)
           Q
           (not R)
           (and (not H) (not G) F E (not D) (= J I) (= L K) (= N M) (= P O)))
       (or (not A)
           (not B)
           C
           Q
           (not R)
           (and (not H)
                (not G)
                F
                (not E)
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O)))
       (or (not A)
           (not B)
           (not C)
           Q
           (not R)
           (and (not H)
                (not G)
                (not F)
                E
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O)))
       (or A B C Q R a!5)
       (or A B C (not Q) R a!5)
       (or A
           (not B)
           C
           Q
           R
           (and (not H)
                (not G)
                (not F)
                E
                (not D)
                (= I 0)
                (= L K)
                (= N M)
                (= P O)))
       (or A
           (not B)
           (not C)
           Q
           R
           (and (not H)
                (not G)
                F
                (not E)
                (not D)
                (= K J)
                (= J I)
                (= N M)
                (= P O)))
       (or (not A)
           (not B)
           C
           Q
           R
           (and (not H) (not G) F E (not D) (= M L) (= J I) (= L K) (= P O)))
       (or A
           B
           (not C)
           Q
           R
           (and H
                (not G)
                (not F)
                (not E)
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O))
           (not (<= P J)))))
      )
      (state E D F G H O M K I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) ) 
    (=>
      (and
        (state C B A I H G F E D)
        (and (= B true) (not A) (= I true) (not H) (= C true))
      )
      false
    )
  )
)

(check-sat)
(exit)
