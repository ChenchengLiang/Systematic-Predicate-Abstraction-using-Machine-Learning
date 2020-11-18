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
        (let ((a!1 (and H (not G) F E D (= J I) (= L K) (= N M) (= P O)))
      (a!2 (and H (not G) F E (not D) (= J I) (= L K) (= N M) (= P O)))
      (a!3 (and (not H) G F E D (= J I) (= L K) (= N M) (= P O)))
      (a!4 (and (not H) G F E (not D) (= J I) (= L K) (= N M) (= P O)))
      (a!6 (not (<= 0 (+ N (* (- 2) J)))))
      (a!7 (and H
                G
                (not F)
                (not E)
                D
                (= L K)
                (= N M)
                (= P O)
                (= (+ J (* (- 1) I)) (- 1))))
      (a!8 (and H
                (not G)
                (not F)
                (not E)
                (not D)
                (= J I)
                (= N M)
                (= P O)
                (= (+ L (* (- 1) K)) (- 1))))
      (a!9 (and (not H)
                (not G)
                F
                E
                (not D)
                (= J I)
                (= N M)
                (= P O)
                (= (+ K (* (- 2) J)) 0)))
      (a!10 (and (not H)
                 G
                 F
                 (not E)
                 D
                 (= J I)
                 (= L K)
                 (= P O)
                 (= (+ N (* (- 1) M)) (- 1))))
      (a!11 (and (not H)
                 (not G)
                 (not F)
                 (not E)
                 (not D)
                 (= J I)
                 (= L K)
                 (= N M)
                 (= P O))))
(let ((a!5 (or A B (not C) R (not S) a!4 (<= 0 (+ N (* (- 2) J))))))
  (and (or (not A)
           B
           (not C)
           R
           S
           (and H G (not F) (not E) (not D) (= J I) (= L K) (= N M) (= P O))
           (not (<= P L)))
       (or A (not B) C (not R) S a!1 (<= P N))
       (or A (not B) (not C) (not R) S a!2 (<= N P))
       (or A
           (not B)
           (not C)
           (not R)
           S
           (and H (not G) F (not E) (not D) (= J I) (= L K) (= N M) (= P O))
           (not (<= N P)))
       (or A
           (not B)
           C
           (not R)
           S
           (and H (not G) (not F) E (not D) (= J I) (= L K) (= N M) (= P O))
           (not (<= P N)))
       (or (not A)
           (not B)
           (not C)
           R
           S
           (and H (not G) (not F) (not E) D (= J I) (= L K) (= N M) (= P O))
           (= Q 0))
       (or A (not B) C R (not S) a!3 (not (<= P N)))
       a!5
       (or A
           B
           (not C)
           R
           (not S)
           (and (not H) G (not F) E D (= J I) (= L K) (= N M) (= P O))
           a!6)
       (or A
           (not B)
           C
           R
           (not S)
           (and (not H) G (not F) E (not D) (= J I) (= L K) (= N M) (= P O))
           (<= P N))
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
           (not (= Q 0)))
       (or (not A)
           B
           (not C)
           R
           S
           (and (not H) (not G) F E D (= J I) (= L K) (= N M) (= P O))
           (<= P L))
       (or (not A)
           B
           C
           R
           S
           (and (not H) (not G) F (not E) D (= J I) (= L K) (= N M) (= P O))
           (<= P J))
       (or A
           (not B)
           C
           R
           S
           (and (not H) (not G) (not F) E D (= J I) (= L K) (= N M) (= P O))
           (not (= P N)))
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
           (= P N))
       (or A B C (not R) (not S) a!7)
       (or (not A) (not B) (not C) R (not S) a!8)
       (or (not A) (not B) C R S a!9)
       (or (not A) B C R (not S) a!10)
       (or (not A) (not B) (not C) (not R) S a!1)
       (or (not A) B (not C) (not R) S a!2)
       (or (not A)
           B
           C
           (not R)
           S
           (and H (not G) F (not E) D (= J I) (= L K) (= N M) (= P O)))
       (or A
           B
           (not C)
           (not R)
           S
           (and H (not G) (not F) E D (= J I) (= L K) (= N M) (= P O)))
       (or (not A) (not B) C (not R) S a!3)
       (or (not A) B (not C) R (not S) a!4)
       (or A
           (not B)
           (not C)
           R
           (not S)
           (and (not H) G F (not E) (not D) (= J I) (= L K) (= N M) (= P O)))
       (or (not A)
           (not B)
           C
           R
           (not S)
           (and (not H) G (not F) (not E) D (= J I) (= L K) (= N M) (= P O)))
       (or A
           B
           C
           (not R)
           S
           (and (not H) (not G) F E (not D) (= J I) (= L K) (= N M) (= P O)))
       (or A
           (not B)
           C
           (not R)
           (not S)
           (and (not H)
                (not G)
                F
                (not E)
                (not D)
                (= J I)
                (= L K)
                (= N M)
                (= P O)))
       (or A B C R S a!11)
       (or A B (not C) R S a!11)
       (or A B (not C) (not R) (not S) a!11)
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
                (= I 0)
                (= L K)
                (= N M)
                (= P O)))
       (or A
           B
           C
           R
           (not S)
           (and (not H) G (not F) (not E) D (= M L) (= J I) (= L K) (= P O)))
       (or (not A)
           B
           C
           R
           S
           (and H G (not F) E (not D) (= J I) (= L K) (= N M) (= P O))
           (not (<= P J))))))
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
        (or (and (not H) I A (not B) C)
    (and H (not I) A (not B) C)
    (and H (not I) A B C))
      )
      false
    )
  )
)

(check-sat)
(exit)
