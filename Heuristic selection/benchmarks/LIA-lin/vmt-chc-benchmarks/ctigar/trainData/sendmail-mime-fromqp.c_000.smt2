(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Bool) ) 
    (=>
      (and
        (and (not C) (not B) (= A true) (not I) (not H) (not D))
      )
      (state D A B C I H E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Bool) ) 
    (=>
      (and
        (state D A B C S R L N P)
        (let ((a!1 (and J (not I) (not H) G F E (= L K) (= N M) (= P O)))
      (a!2 (and J (not I) (not H) (not G) F E (= L K) (= N M) (= P O)))
      (a!3 (and J
                (not I)
                (not H)
                (not G)
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O)))
      (a!4 (and (not J) I H G F E (= L K) (= N M) (= P O)))
      (a!5 (and (not J) (not I) H (not G) F E (= L K) (= N M) (= P O)))
      (a!6 (and (not J) (not I) (not H) G F E (= L K) (= N M) (= P O)))
      (a!7 (and (not J)
                (not I)
                (not H)
                (not G)
                F
                (not E)
                (= L K)
                (= N M)
                (= P O)))
      (a!8 (and (not J)
                (not I)
                (not H)
                (not G)
                (not F)
                E
                (= L K)
                (= N M)
                (= P O)))
      (a!9 (and J
                (not I)
                H
                (not G)
                (not F)
                (not E)
                (= N M)
                (= P O)
                (= (+ L (* (- 1) K)) (- 1))))
      (a!10 (and (not J)
                 I
                 H
                 (not G)
                 F
                 (not E)
                 (= N M)
                 (= P O)
                 (= (+ L (* (- 1) K)) (- 1))))
      (a!11 (and J
                 (not I)
                 (not H)
                 G
                 (not F)
                 E
                 (= L K)
                 (= P O)
                 (= (+ N (* (- 1) M)) (- 1))))
      (a!12 (and (not J)
                 I
                 (not H)
                 G
                 F
                 E
                 (= L K)
                 (= P O)
                 (= (+ N (* (- 1) M)) (- 1))))
      (a!13 (and (not J) I H (not G) F E (= L K) (= N M) (= P O)))
      (a!14 (and (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= L K)
                 (= N M)
                 (= P O))))
  (and (or (not A)
           B
           (not C)
           D
           (not R)
           S
           (and J (not I) H G (not F) E (= L K) (= N M) (= P O))
           (= Q 0))
       (or A
           B
           C
           (not D)
           (not R)
           S
           (and J (not I) H G (not F) (not E) (= L K) (= N M) (= P O))
           (not (<= P L)))
       (or (not A)
           B
           (not C)
           D
           (not R)
           S
           (and J (not I) H (not G) (not F) E (= L K) (= N M) (= P O))
           (not (= Q 0)))
       (or A (not B) C D (not R) S a!1 (<= 0 N))
       (or A
           (not B)
           C
           D
           (not R)
           S
           (and J (not I) (not H) G F (not E) (= L K) (= N M) (= P O))
           (not (<= 0 N)))
       (or (not A)
           (not B)
           C
           D
           R
           S
           (and J (not I) (not H) G (not F) (not E) (= L K) (= N M) (= P O))
           (= Q 0))
       (or A (not B) C (not D) (not R) S a!2 (not (<= P N)))
       (or A
           B
           C
           (not D)
           (not R)
           S
           (and J (not I) (not H) (not G) F (not E) (= L K) (= N M) (= P O))
           (<= P L))
       (or A B (not C) D R (not S) a!3 (<= 0 N))
       (or A B (not C) (not D) R (not S) a!4 (not (<= P N)))
       (or A
           (not B)
           C
           (not D)
           R
           (not S)
           (and (not J) I H G F (not E) (= L K) (= N M) (= P O))
           (not (<= P L)))
       (or A
           B
           (not C)
           (not D)
           R
           (not S)
           (and (not J) I H G (not F) E (= L K) (= N M) (= P O))
           (<= P N))
       (or (not A)
           (not B)
           (not C)
           (not D)
           R
           S
           (and (not J) I H G (not F) (not E) (= L K) (= N M) (= P O))
           (= Q 0))
       (or (not A)
           B
           C
           (not D)
           R
           (not S)
           (and (not J) I (not H) G F (not E) (= L K) (= N M) (= P O))
           (= Q 0))
       (or A
           B
           (not C)
           D
           R
           (not S)
           (and (not J) I (not H) G (not F) E (= L K) (= N M) (= P O))
           (not (<= 0 N)))
       (or (not A)
           B
           C
           (not D)
           R
           (not S)
           (and (not J) I (not H) (not G) F (not E) (= L K) (= N M) (= P O))
           (not (= Q 0)))
       (or A
           (not B)
           C
           (not D)
           R
           (not S)
           (and (not J) I (not H) (not G) (not F) E (= L K) (= N M) (= P O))
           (<= P L))
       (or (not A)
           (not B)
           (not C)
           (not D)
           R
           S
           (and (not J)
                I
                (not H)
                (not G)
                (not F)
                (not E)
                (= L K)
                (= N M)
                (= P O))
           (not (= Q 0)))
       (or A
           (not B)
           C
           (not D)
           R
           S
           (and (not J) (not I) H G F E (= L K) (= N M) (= P O))
           (= Q 0))
       (or A
           (not B)
           C
           (not D)
           R
           S
           (and (not J) (not I) H G F (not E) (= L K) (= N M) (= P O))
           (not (= Q 0)))
       (or A
           B
           (not C)
           (not D)
           R
           S
           (and (not J) (not I) H G (not F) E (= L K) (= N M) (= P O))
           (<= P N))
       (or A
           B
           C
           (not D)
           R
           S
           (and (not J) (not I) H G (not F) (not E) (= L K) (= N M) (= P O))
           (not (<= P 0)))
       (or A B (not C) D R S a!5 (<= 0 N))
       (or (not A)
           (not B)
           C
           D
           R
           S
           (and (not J) (not I) H (not G) F (not E) (= L K) (= N M) (= P O))
           (not (= Q 0)))
       (or A B (not C) (not D) R S a!6 (not (<= P N)))
       (or A
           (not B)
           C
           D
           R
           S
           (and (not J) (not I) (not H) G F (not E) (= L K) (= N M) (= P O))
           (not (= Q 0)))
       (or A
           B
           (not C)
           D
           R
           S
           (and (not J) (not I) (not H) G (not F) E (= L K) (= N M) (= P O))
           (not (<= 0 N)))
       (or A B C (not D) R S a!7 (<= P 0))
       (or A (not B) C D R S a!8 (= Q 0))
       (or (not A) B C D (not R) S a!9)
       (or (not A) (not B) C D R (not S) a!10)
       (or A B (not C) D (not R) S a!11)
       (or A (not B) (not C) D R (not S) a!12)
       (or (not A)
           (not B)
           C
           D
           (not R)
           S
           (and J (not I) H (not G) F (not E) (= L K) (= N M) (= P O)))
       (or (not A) (not B) (not C) D (not R) S a!1)
       (or A (not B) (not C) D (not R) S a!2)
       (or (not A)
           (not B)
           C
           (not D)
           (not R)
           S
           (and J (not I) (not H) (not G) (not F) E (= L K) (= N M) (= P O)))
       (or A B C D (not R) S a!3)
       (or (not A) (not B) (not C) (not D) R (not S) a!4)
       (or (not A) B (not C) (not D) (not R) S a!13)
       (or (not A) (not B) (not C) D R (not S) a!13)
       (or (not A)
           B
           (not C)
           D
           R
           (not S)
           (and (not J) I H (not G) (not F) E (= L K) (= N M) (= P O)))
       (or (not A)
           B
           (not C)
           (not D)
           R
           (not S)
           (and (not J) I (not H) (not G) F E (= L K) (= N M) (= P O)))
       (or A (not B) (not C) (not D) R S a!5)
       (or (not A)
           B
           (not C)
           D
           R
           S
           (and (not J) (not I) H (not G) (not F) E (= L K) (= N M) (= P O)))
       (or (not A) (not B) (not C) D R S a!6)
       (or (not A)
           B
           (not C)
           (not D)
           R
           S
           (and (not J) (not I) (not H) (not G) F E (= L K) (= N M) (= P O)))
       (or A B C (not D) R (not S) a!7)
       (or A (not B) (not C) (not D) R (not S) a!7)
       (or A B (not C) (not D) (not R) S a!8)
       (or A (not B) C D R (not S) a!8)
       (or (not A) B C (not D) (not R) S a!8)
       (or (not A) (not B) C (not D) R S a!8)
       (or (not A) (not B) C (not D) R (not S) a!8)
       (or A B C D R S a!14)
       (or A (not B) (not C) D R S a!14)
       (or (not A) B C (not D) R S a!14)
       (or (not A)
           B
           C
           D
           R
           (not S)
           (and (not J) I H (not G) (not F) (not E) (= K 0) (= N M) (= P O)))
       (or A
           B
           C
           D
           R
           (not S)
           (and (not J) I (not H) G (not F) (not E) (= M 0) (= L K) (= P O)))
       (or (not A)
           B
           C
           D
           R
           S
           (and (not J)
                (not I)
                H
                (not G)
                (not F)
                (not E)
                (= M 0)
                (= K 0)
                (= P O)))
       (or A
           (not B)
           C
           (not D)
           (not R)
           S
           (and J (not I) H G F (not E) (= L K) (= N M) (= P O))
           (<= P N))))
      )
      (state H G F E I J K M O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Bool) ) 
    (=>
      (and
        (state D A B C I H E F G)
        (or (and (not H) (not I) (not A) B C D)
    (and (not H) (not I) A B C (not D))
    (and (not H) I A B C D)
    (and H (not I) (not A) (not B) (not C) (not D))
    (and H (not I) (not A) B C (not D))
    (and H (not I) A B C (not D)))
      )
      false
    )
  )
)

(check-sat)
(exit)
