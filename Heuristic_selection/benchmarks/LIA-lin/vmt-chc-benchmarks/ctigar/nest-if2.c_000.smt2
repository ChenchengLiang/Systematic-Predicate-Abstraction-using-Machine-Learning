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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Bool) ) 
    (=>
      (and
        (state C B A S R P N L J)
        (let ((a!1 (and H (not G) (not F) (not E) D (= J I) (= L K) (= N M) (= P O)))
      (a!2 (and (not H) G (not F) E D (= J I) (= L K) (= N M) (= P O)))
      (a!3 (and H
                (not G)
                (not F)
                (not E)
                (not D)
                (= L K)
                (= N M)
                (= P O)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!4 (and (not H)
                G
                (not F)
                (not E)
                D
                (= L K)
                (= N M)
                (= P O)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!5 (and H
                (not G)
                (not F)
                E
                D
                (= J I)
                (= N M)
                (= P O)
                (= (+ L (* (- 1) K)) (- 1))))
      (a!6 (and (not H)
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
           R
           (not S)
           (and H (not G) (not F) E (not D) (= J I) (= L K) (= N M) (= P O))
           (not (<= P J)))
       (or (not A) (not B) C R (not S) a!1 (<= 1 J))
       (or (not A)
           (not B)
           C
           R
           (not S)
           (and (not H) G F E (not D) (= J I) (= L K) (= N M) (= P O))
           (not (<= 1 J)))
       (or (not A)
           B
           C
           R
           (not S)
           (and (not H) G F (not E) D (= J I) (= L K) (= N M) (= P O))
           (<= P J))
       (or (not A) (not B) C R S a!2 (= Q 0))
       (or (not A)
           (not B)
           (not C)
           R
           S
           (and (not H) G (not F) E (not D) (= J I) (= L K) (= N M) (= P O))
           (not (<= P J)))
       (or (not A)
           (not B)
           (not C)
           R
           S
           (and (not H)
                G
                (not F)
                (not E)
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O))
           (<= P J))
       (or (not A)
           (not B)
           C
           R
           S
           (and (not H) (not G) F E (not D) (= J I) (= L K) (= N M) (= P O))
           (not (= Q 0)))
       (or (not A)
           B
           C
           R
           S
           (and (not H) (not G) F (not E) D (= J I) (= L K) (= N M) (= P O))
           (<= P L))
       (or A
           (not B)
           C
           R
           S
           (and (not H) (not G) (not F) E D (= J I) (= L K) (= N M) (= P O))
           (<= N 0))
       (or A
           (not B)
           C
           R
           S
           (and (not H)
                (not G)
                (not F)
                E
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O))
           (not (<= N 0)))
       (or (not A) (not B) (not C) R (not S) a!3)
       (or A B C R (not S) a!4)
       (or A
           (not B)
           (not C)
           R
           (not S)
           (and (not H) G F (not E) (not D) (= L K) (= N M) (= N I) (= P O)))
       (or (not A)
           B
           (not C)
           R
           S
           (and (not H) (not G) F E D (= L K) (= N M) (= N I) (= P O)))
       (or A B (not C) (not R) S a!5)
       (or A (not B) C (not R) S a!1)
       (or (not A)
           B
           (not C)
           R
           (not S)
           (and (not H) G F E D (= J I) (= L K) (= N M) (= P O)))
       (or A
           B
           C
           (not R)
           S
           (and (not H) G F (not E) (not D) (= J I) (= L K) (= N M) (= P O)))
       (or A B (not C) R (not S) a!2)
       (or A
           (not B)
           C
           R
           (not S)
           (and (not H) (not G) F E D (= J I) (= L K) (= N M) (= P O)))
       (or A
           (not B)
           (not C)
           (not R)
           S
           (and (not H)
                (not G)
                F
                (not E)
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O)))
       (or A B C R S a!6)
       (or A B (not C) R S a!6)
       (or (not A) B C (not R) S a!6)
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
                (= K 1)
                (= J I)
                (= N M)
                (= P O)))
       (or (not A)
           B
           C
           R
           S
           (and H (not G) F (not E) (not D) (= J I) (= L K) (= N M) (= P O))
           (not (<= P L)))))
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
        (and (= B true) (not A) (not I) (= H true) (not C))
      )
      false
    )
  )
)

(check-sat)
(exit)
