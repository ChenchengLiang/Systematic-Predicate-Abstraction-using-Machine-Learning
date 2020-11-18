(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Bool) ) 
    (=>
      (and
        (and (= B true) (not A) (not I) (not H) (not G) (not F) (not C))
      )
      (state C B A I H F G E D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) ) 
    (=>
      (and
        (state C B A S R P Q N L)
        (let ((a!1 (and J (not I) (not H) G (not F) E (not D) (= L K) (= N M)))
      (a!2 (and J (not I) (not H) G (not F) (not E) D (= L K) (= N M)))
      (a!3 (and J (not I) (not H) (not G) (not F) E (not D) (= L K) (= N M)))
      (a!4 (and J (not I) (not H) (not G) (not F) (not E) D (= L K) (= N M)))
      (a!5 (and (not J) I H G F E D (= L K) (= N M)))
      (a!6 (and (not J) I H G F E (not D) (= L K) (= N M)))
      (a!7 (and (not J) I H (not G) F E (not D) (= L K) (= N M)))
      (a!8 (and (not J) I H (not G) F (not E) D (= L K) (= N M)))
      (a!9 (and (not J) I H (not G) F (not E) (not D) (= L K) (= N M)))
      (a!10 (and (not J) I H (not G) (not F) E D (= L K) (= N M)))
      (a!11 (and (not J) I (not H) G F (not E) D (= L K) (= N M)))
      (a!12 (and (not J) I (not H) G (not F) E D (= L K) (= N M)))
      (a!13 (and (not J) I (not H) G (not F) E (not D) (= L K) (= N M)))
      (a!14 (and (not J) (not I) H G F (not E) (not D) (= L K) (= N M)))
      (a!15 (and (not J) (not I) H G (not F) E D (= L K) (= N M)))
      (a!16 (and (not J) (not I) (not H) G F (not E) (not D) (= L K) (= N M)))
      (a!17 (and (not J) (not I) (not H) G (not F) E D (= L K) (= N M)))
      (a!18 (and J
                 (not I)
                 (not H)
                 G
                 (not F)
                 (not E)
                 (not D)
                 (= N M)
                 (= (+ L (* (- 1) K)) (- 1))))
      (a!19 (and (not J)
                 I
                 H
                 (not G)
                 (not F)
                 E
                 (not D)
                 (= N M)
                 (= (+ L (* (- 1) K)) (- 1))))
      (a!20 (and (not J)
                 I
                 (not H)
                 (not G)
                 F
                 (not E)
                 (not D)
                 (= N M)
                 (= (+ L (* (- 1) K)) (- 1))))
      (a!21 (and (not J)
                 (not I)
                 H
                 (not G)
                 F
                 (not E)
                 (not D)
                 (= N M)
                 (= (+ L (* (- 1) K)) (- 1))))
      (a!22 (and (not J)
                 (not I)
                 (not H)
                 (not G)
                 F
                 (not E)
                 (not D)
                 (= L K)
                 (= (+ N (* (- 1) M)) 1)))
      (a!23 (and (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (not D)
                 (= L K)
                 (= N M))))
  (and (or A (not B) (not C) P (not Q) R S a!1 (<= 0 L))
       (or (not A) (not B) C P (not Q) R S a!2 (<= L N))
       (or (not A)
           (not B)
           C
           P
           (not Q)
           R
           S
           (and J (not I) (not H) (not G) F E (not D) (= L K) (= N M))
           (not (<= L N)))
       (or A
           (not B)
           (not C)
           P
           (not Q)
           R
           S
           (and J (not I) (not H) (not G) F (not E) (not D) (= L K) (= N M))
           (not (<= 0 L)))
       (or (not A)
           (not B)
           C
           P
           Q
           R
           (not S)
           (and J (not I) (not H) (not G) (not F) E D (= L K) (= N M))
           (= O 0))
       (or (not A) (not B) (not C) P Q R (not S) a!3 (<= 0 L))
       (or A (not B) C P Q (not R) S a!4 (<= L N))
       (or (not A)
           (not B)
           (not C)
           (not P)
           Q
           (not R)
           S
           (and J
                (not I)
                (not H)
                (not G)
                (not F)
                (not E)
                (not D)
                (= L K)
                (= N M))
           (= O 0))
       (or A (not B) C (not P) Q (not R) (not S) a!5 (<= 0 L))
       (or A (not B) (not C) (not P) Q (not R) (not S) a!6 (<= L N))
       (or A
           (not B)
           (not C)
           (not P)
           Q
           (not R)
           (not S)
           (and (not J) I H G F (not E) (not D) (= L K) (= N M))
           (not (<= L N)))
       (or A
           (not B)
           C
           (not P)
           Q
           (not R)
           (not S)
           (and (not J) I H G (not F) E (not D) (= L K) (= N M))
           (not (<= 0 L)))
       (or (not A)
           (not B)
           (not C)
           (not P)
           Q
           (not R)
           S
           (and (not J) I H G (not F) (not E) (not D) (= L K) (= N M))
           (not (= O 0)))
       (or (not A)
           (not B)
           C
           P
           Q
           (not R)
           (not S)
           (and (not J) I H (not G) F E D (= L K) (= N M))
           (= O 0))
       (or (not A) (not B) (not C) P Q (not R) (not S) a!7 (<= 0 L))
       (or A (not B) C (not P) Q R S a!8 (<= L N))
       (or (not A) (not B) C (not P) Q R (not S) a!9 (<= 0 L))
       (or (not A) (not B) (not C) (not P) Q R (not S) a!10 (<= L N))
       (or (not A)
           (not B)
           (not C)
           (not P)
           Q
           R
           (not S)
           (and (not J) I H (not G) (not F) (not E) (not D) (= L K) (= N M))
           (not (<= L N)))
       (or (not A)
           (not B)
           C
           (not P)
           Q
           R
           (not S)
           (and (not J) I (not H) G F E (not D) (= L K) (= N M))
           (not (<= 0 L)))
       (or (not A) B (not C) P Q (not R) (not S) a!11 (= O 0))
       (or (not A)
           B
           C
           (not P)
           Q
           R
           S
           (and (not J) I (not H) G F (not E) (not D) (= L K) (= N M))
           (= N L))
       (or (not A) (not B) C (not P) Q R S a!12 (<= 0 L))
       (or (not A) (not B) (not C) (not P) Q R S a!13 (<= L N))
       (or (not A)
           (not B)
           (not C)
           (not P)
           Q
           R
           S
           (and (not J) I (not H) G (not F) (not E) (not D) (= L K) (= N M))
           (not (<= L N)))
       (or (not A)
           (not B)
           C
           (not P)
           Q
           R
           S
           (and (not J) I (not H) (not G) F E (not D) (= L K) (= N M))
           (not (<= 0 L)))
       (or (not A)
           B
           C
           (not P)
           Q
           R
           S
           (and (not J) I (not H) (not G) F (not E) D (= L K) (= N M))
           (not (= N L)))
       (or A
           (not B)
           C
           (not P)
           Q
           R
           S
           (and (not J) I (not H) (not G) (not F) E (not D) (= L K) (= N M))
           (not (<= L N)))
       (or (not A)
           (not B)
           (not C)
           P
           Q
           (not R)
           (not S)
           (and (not J)
                I
                (not H)
                (not G)
                (not F)
                (not E)
                (not D)
                (= L K)
                (= N M))
           (not (<= 0 L)))
       (or (not A)
           B
           (not C)
           P
           Q
           (not R)
           (not S)
           (and (not J) (not I) H G F E D (= L K) (= N M))
           (not (= O 0)))
       (or (not A)
           (not B)
           C
           P
           Q
           (not R)
           (not S)
           (and (not J) (not I) H G F E (not D) (= L K) (= N M))
           (not (= O 0)))
       (or (not A)
           (not B)
           C
           P
           Q
           (not R)
           S
           (and (not J) (not I) H G F (not E) D (= L K) (= N M))
           (= N L))
       (or (not A) B (not C) P Q (not R) S a!14 (<= 0 L))
       (or A B C P Q (not R) (not S) a!15 (<= L N))
       (or A
           B
           C
           P
           Q
           (not R)
           (not S)
           (and (not J) (not I) H G (not F) (not E) D (= L K) (= N M))
           (not (<= L N)))
       (or (not A)
           B
           (not C)
           P
           Q
           (not R)
           S
           (and (not J) (not I) H (not G) F E D (= L K) (= N M))
           (not (<= 0 L)))
       (or (not A)
           (not B)
           C
           P
           Q
           (not R)
           S
           (and (not J) (not I) H (not G) F E (not D) (= L K) (= N M))
           (not (= N L)))
       (or A
           (not B)
           C
           P
           Q
           (not R)
           S
           (and (not J) (not I) H (not G) (not F) E (not D) (= L K) (= N M))
           (not (<= L N)))
       (or (not A)
           (not B)
           (not C)
           P
           Q
           R
           (not S)
           (and (not J)
                (not I)
                H
                (not G)
                (not F)
                (not E)
                (not D)
                (= L K)
                (= N M))
           (not (<= 0 L)))
       (or (not A)
           (not B)
           C
           P
           Q
           R
           (not S)
           (and (not J) (not I) (not H) G F E (not D) (= L K) (= N M))
           (not (= O 0)))
       (or (not A)
           (not B)
           C
           P
           Q
           R
           S
           (and (not J) (not I) (not H) G F (not E) D (= L K) (= N M))
           (= N L))
       (or (not A) B (not C) P Q R S a!16 (<= 0 L))
       (or A B C P Q R (not S) a!17 (<= L N))
       (or A
           B
           C
           P
           Q
           R
           (not S)
           (and (not J) (not I) (not H) G (not F) (not E) D (= L K) (= N M))
           (not (<= L N)))
       (or (not A)
           B
           (not C)
           P
           Q
           R
           S
           (and (not J) (not I) (not H) (not G) F E D (= L K) (= N M))
           (not (<= 0 L)))
       (or (not A)
           (not B)
           C
           P
           Q
           R
           S
           (and (not J) (not I) (not H) (not G) F E (not D) (= L K) (= N M))
           (not (= N L)))
       (or A
           (not B)
           C
           P
           Q
           R
           S
           (and (not J)
                (not I)
                (not H)
                (not G)
                (not F)
                E
                (not D)
                (= L K)
                (= N M))
           (not (<= 1 N)))
       (or (not A) (not B) (not C) P (not Q) R S a!18)
       (or A (not B) C (not P) Q (not R) S a!19)
       (or A (not B) (not C) (not P) Q R S a!20)
       (or A (not B) (not C) P Q (not R) S a!21)
       (or A (not B) (not C) P Q R S a!22)
       (or A B (not C) P (not Q) R (not S) a!1)
       (or A (not B) C P (not Q) R (not S) a!2)
       (or (not A)
           B
           (not C)
           P
           (not Q)
           R
           S
           (and J (not I) (not H) (not G) F E D (= L K) (= N M)))
       (or (not A)
           B
           C
           P
           (not Q)
           R
           S
           (and J (not I) (not H) (not G) F (not E) D (= L K) (= N M)))
       (or A B (not C) P (not Q) R S a!3)
       (or A (not B) C P (not Q) R S a!4)
       (or (not A) (not B) (not C) (not P) Q (not R) (not S) a!5)
       (or (not A) B (not C) (not P) Q (not R) (not S) a!6)
       (or (not A)
           B
           C
           (not P)
           Q
           (not R)
           (not S)
           (and (not J) I H G F (not E) D (= L K) (= N M)))
       (or A
           B
           (not C)
           (not P)
           Q
           (not R)
           (not S)
           (and (not J) I H G (not F) E D (= L K) (= N M)))
       (or A
           B
           C
           (not P)
           Q
           (not R)
           (not S)
           (and (not J) I H G (not F) (not E) D (= L K) (= N M)))
       (or (not A) B (not C) (not P) Q (not R) S a!7)
       (or (not A) (not B) C (not P) Q (not R) S a!8)
       (or (not A) B C (not P) Q (not R) S a!9)
       (or A (not B) (not C) (not P) Q (not R) S a!10)
       (or A
           B
           C
           (not P)
           Q
           (not R)
           S
           (and (not J) I H (not G) (not F) (not E) D (= L K) (= N M)))
       (or (not A)
           B
           (not C)
           (not P)
           Q
           R
           (not S)
           (and (not J) I (not H) G F E D (= L K) (= N M)))
       (or A B C P (not Q) R S a!11)
       (or (not A) B C (not P) Q R (not S) a!11)
       (or A (not B) (not C) (not P) Q R (not S) a!12)
       (or A B (not C) (not P) Q R (not S) a!13)
       (or A
           B
           C
           (not P)
           Q
           R
           (not S)
           (and (not J) I (not H) G (not F) (not E) D (= L K) (= N M)))
       (or (not A)
           B
           (not C)
           (not P)
           Q
           R
           S
           (and (not J) I (not H) (not G) F E D (= L K) (= N M)))
       (or A
           B
           (not C)
           (not P)
           Q
           R
           S
           (and (not J) I (not H) (not G) (not F) E D (= L K) (= N M)))
       (or A
           B
           C
           (not P)
           Q
           R
           S
           (and (not J) I (not H) (not G) (not F) (not E) D (= L K) (= N M)))
       (or (not A) B C P Q (not R) (not S) a!14)
       (or A (not B) (not C) P Q (not R) (not S) a!15)
       (or A
           (not B)
           C
           P
           Q
           (not R)
           (not S)
           (and (not J) (not I) H G (not F) E (not D) (= L K) (= N M)))
       (or (not A)
           (not B)
           (not C)
           P
           Q
           (not R)
           S
           (and (not J) (not I) H G (not F) (not E) (not D) (= L K) (= N M)))
       (or (not A)
           B
           C
           P
           Q
           (not R)
           S
           (and (not J) (not I) H (not G) F (not E) D (= L K) (= N M)))
       (or A
           B
           (not C)
           (not P)
           Q
           (not R)
           S
           (and (not J) (not I) H (not G) F (not E) (not D) (= L K) (= N M)))
       (or A
           B
           (not C)
           P
           Q
           (not R)
           S
           (and (not J) (not I) H (not G) (not F) E D (= L K) (= N M)))
       (or A
           B
           C
           P
           Q
           (not R)
           S
           (and (not J) (not I) H (not G) (not F) (not E) D (= L K) (= N M)))
       (or (not A)
           B
           (not C)
           P
           Q
           R
           (not S)
           (and (not J) (not I) (not H) G F E D (= L K) (= N M)))
       (or (not A) B C P Q R (not S) a!16)
       (or A (not B) (not C) P Q R (not S) a!17)
       (or A
           (not B)
           C
           P
           Q
           R
           (not S)
           (and (not J) (not I) (not H) G (not F) E (not D) (= L K) (= N M)))
       (or (not A)
           (not B)
           (not C)
           P
           Q
           R
           S
           (and (not J)
                (not I)
                (not H)
                G
                (not F)
                (not E)
                (not D)
                (= L K)
                (= N M)))
       (or (not A)
           B
           C
           P
           Q
           R
           S
           (and (not J) (not I) (not H) (not G) F (not E) D (= L K) (= N M)))
       (or A
           B
           C
           P
           (not Q)
           R
           (not S)
           (and (not J)
                (not I)
                (not H)
                (not G)
                F
                (not E)
                (not D)
                (= L K)
                (= N M)))
       (or A B C P Q R S a!23)
       (or A B (not C) P Q R (not S) a!23)
       (or A B (not C) P Q (not R) (not S) a!23)
       (or A (not B) C (not P) Q R (not S) a!23)
       (or A (not B) (not C) P (not Q) R (not S) a!23)
       (or (not A) (not B) C (not P) Q (not R) (not S) a!23)
       (or A
           B
           (not C)
           P
           Q
           R
           S
           (and (not J) (not I) (not H) (not G) (not F) E D (= K 0) (= N M)))
       (or A
           (not B)
           C
           P
           Q
           R
           S
           (and J (not I) (not H) G (not F) E D (= L K) (= N M))
           (<= 1 N))))
      )
      (state E D F G H I J M K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Bool) ) 
    (=>
      (and
        (state C B A I H F G E D)
        (or (and (not F) (not G) (not H) I (not A) B C)
    (and (not F) (not G) (not H) I A (not B) (not C))
    (and (not F) (not G) H I (not A) B C)
    (and (not F) (not G) H I A (not B) (not C))
    (and (not F) G (not H) (not I) (not A) (not B) C)
    (and (not F) G (not H) (not I) (not A) B (not C))
    (and (not F) G (not H) I (not A) (not B) C)
    (and (not F) G (not H) I (not A) B (not C))
    (and F (not G) (not H) I (not A) (not B) C)
    (and F (not G) (not H) I (not A) B C)
    (and F (not G) H (not I) (not A) B C)
    (and F (not G) H (not I) A (not B) (not C))
    (and F (not G) H (not I) A (not B) C)
    (and F (not G) H (not I) A B (not C))
    (and F (not G) H I A (not B) C)
    (and F (not G) H I A B C))
      )
      false
    )
  )
)

(check-sat)
(exit)
