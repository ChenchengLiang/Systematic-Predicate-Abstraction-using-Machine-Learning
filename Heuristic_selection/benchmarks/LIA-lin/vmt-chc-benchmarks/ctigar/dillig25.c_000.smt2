(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) ) 
    (=>
      (and
        (and (= B true) (not A) (not I) (not H) (not C))
      )
      (state C B A I H D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Bool) ) 
    (=>
      (and
        (state C B A S R J L N P)
        (let ((a!1 (or (not A)
               (not B)
               (not C)
               R
               (not S)
               (and H
                    (not G)
                    (not F)
                    (not E)
                    (not D)
                    (= J I)
                    (= L K)
                    (= N M)
                    (= P O))
               (<= (+ J (* (- 1) L)) (- 1))))
      (a!2 (and (not H) (not G) (not F) E D (= J I) (= L K) (= N M) (= P O)))
      (a!3 (and (not H)
                (not G)
                F
                (not E)
                D
                (= L K)
                (= N M)
                (= P O)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!4 (and (not H)
                G
                (not F)
                (not E)
                (not D)
                (= J I)
                (= N M)
                (= P O)
                (= (+ L (* (- 1) K)) (- 1))))
      (a!5 (and (not H)
                G
                (not F)
                E
                D
                (= J I)
                (= L K)
                (= P O)
                (= (+ N (* (- 1) M)) (- 1))))
      (a!6 (and (not H)
                G
                F
                (not E)
                D
                (= J I)
                (= L K)
                (= N M)
                (= (+ P (* (- 1) O)) (- 1))))
      (a!7 (and (not H)
                G
                F
                (not E)
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= (+ P (* (- 1) O)) (- 1))))
      (a!8 (and H (not G) (not F) (not E) D (= J I) (= L K) (= N M) (= P O)))
      (a!9 (and (not H)
                (not G)
                (not F)
                (not E)
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O)))
      (a!10 (not (<= (+ J (* (- 1) L)) (- 1)))))
  (and a!1
       (or A
           B
           (not C)
           R
           S
           (and (not H) G F E D (= J I) (= L K) (= N M) (= P O))
           (= Q 0))
       (or A
           (not B)
           C
           R
           (not S)
           (and (not H) G F E (not D) (= J I) (= L K) (= N M) (= P O))
           (<= L J))
       (or A
           (not B)
           (not C)
           R
           S
           (and (not H) G (not F) E (not D) (= J I) (= L K) (= N M) (= P O))
           (= Q 0))
       (or A
           (not B)
           C
           R
           (not S)
           (and (not H) G (not F) (not E) D (= J I) (= L K) (= N M) (= P O))
           (not (<= L J)))
       (or (not A)
           B
           C
           R
           S
           (and (not H) (not G) F E D (= J I) (= L K) (= N M) (= P O))
           (= N P))
       (or (not A)
           B
           C
           R
           S
           (and (not H) (not G) F E (not D) (= J I) (= L K) (= N M) (= P O))
           (not (= N P)))
       (or A
           (not B)
           (not C)
           R
           S
           (and (not H)
                (not G)
                F
                (not E)
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O))
           (not (= Q 0)))
       (or A B (not C) R S a!2 (not (= Q 0)))
       (or (not A) (not B) C R S a!3)
       (or (not A) (not B) (not C) R S a!4)
       (or A B (not C) R (not S) a!5)
       (or (not A) (not B) C R (not S) a!6)
       (or A (not B) (not C) R (not S) a!7)
       (or A
           B
           C
           (not R)
           S
           (and H (not G) (not F) E (not D) (= J I) (= L K) (= N M) (= P O)))
       (or A B (not C) (not R) S a!8)
       (or (not A)
           B
           (not C)
           R
           (not S)
           (and (not H) G F (not E) (not D) (= J I) (= L K) (= N M) (= P O)))
       (or A
           B
           C
           R
           (not S)
           (and (not H) (not G) F (not E) D (= J I) (= L K) (= N M) (= P O)))
       (or (not A) B (not C) R S a!2)
       (or (not A)
           B
           C
           R
           (not S)
           (and (not H)
                (not G)
                (not F)
                (not E)
                D
                (= J I)
                (= L K)
                (= N M)
                (= P O)))
       (or A B C R S a!9)
       (or A (not B) C (not R) S a!9)
       (or A
           (not B)
           C
           R
           S
           (and (not H)
                (not G)
                (not F)
                (not E)
                D
                (= O 0)
                (= M 0)
                (= K 0)
                (= I 0)))
       (or (not A) (not B) (not C) R (not S) a!8 a!10)))
      )
      (state D E F G H I K M O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) ) 
    (=>
      (and
        (state C B A I H D E F G)
        (and (not B) (not A) (not I) (= H true) (= C true))
      )
      false
    )
  )
)

(check-sat)
(exit)
