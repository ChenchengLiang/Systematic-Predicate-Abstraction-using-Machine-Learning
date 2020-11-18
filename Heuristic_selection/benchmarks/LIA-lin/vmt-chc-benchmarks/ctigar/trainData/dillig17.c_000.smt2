(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not I) (not D))
      )
      (state D C A B I E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) ) 
    (=>
      (and
        (state D C A B R K M O Q)
        (let ((a!1 (or (not A)
               (not B)
               (not C)
               (not D)
               R
               (and I
                    (not H)
                    (not G)
                    (not F)
                    (not E)
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P))
               (<= (+ O (* (- 1) Q)) (- 1))))
      (a!2 (or A
               B
               (not C)
               (not D)
               R
               (and (not I) H G F (not E) (= K J) (= M L) (= O N) (= Q P))
               (<= (+ K (* (- 1) Q)) (- 1))))
      (a!3 (or (not A)
               B
               (not C)
               D
               R
               (and (not I) H (not G) F (not E) (= K J) (= M L) (= O N) (= Q P))
               (<= 1 (+ K (* (- 1) M)))))
      (a!4 (not (<= 1 (+ K (* (- 1) M)))))
      (a!5 (not (<= (+ K (* (- 1) Q)) (- 1))))
      (a!6 (and (not I)
                H
                G
                (not F)
                (not E)
                (= M L)
                (= O N)
                (= Q P)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!7 (and (not I)
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!8 (and (not I)
                (not H)
                G
                F
                E
                (= K J)
                (= M L)
                (= Q P)
                (= (+ K (* (- 1) M) O (* (- 1) N)) 0)))
      (a!9 (and I (not H) (not G) (not F) E (= K J) (= M L) (= O N) (= Q P)))
      (a!10 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)))
      (a!11 (not (<= (+ O (* (- 1) Q)) (- 1)))))
  (and a!1
       (or (not A)
           (not B)
           (not C)
           D
           R
           (and (not I) H G F E (= K J) (= M L) (= O N) (= Q P))
           (not (<= Q K)))
       a!2
       (or (not A)
           (not B)
           (not C)
           D
           R
           (and (not I) H G (not F) E (= K J) (= M L) (= O N) (= Q P))
           (<= Q K))
       (or A
           (not B)
           (not C)
           D
           R
           (and (not I) H (not G) F E (= K J) (= M L) (= O N) (= Q P))
           (not (<= K M)))
       a!3
       (or A
           (not B)
           (not C)
           D
           R
           (and (not I) H (not G) (not F) E (= K J) (= M L) (= O N) (= Q P))
           (<= K M))
       (or (not A)
           B
           (not C)
           D
           R
           (and (not I) (not H) G (not F) E (= K J) (= M L) (= O N) (= Q P))
           a!4)
       (or A
           B
           (not C)
           (not D)
           R
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           a!5)
       (or A (not B) (not C) (not D) R a!6)
       (or (not A) B (not C) (not D) R a!7)
       (or (not A) B C (not D) R a!8)
       (or A
           B
           C
           D
           (not R)
           (and I (not H) (not G) F (not E) (= K J) (= M L) (= O N) (= Q P)))
       (or A B C (not D) (not R) a!9)
       (or A
           (not B)
           C
           D
           R
           (and (not I) (not H) G F (not E) (= K J) (= M L) (= O N) (= Q P)))
       (or (not A)
           (not B)
           C
           D
           R
           (and (not I) (not H) (not G) F E (= K J) (= M L) (= O N) (= Q P)))
       (or A B C D R a!10)
       (or A B (not C) D (not R) a!10)
       (or A (not B) C (not D) R a!10)
       (or (not A) (not B) C (not D) R a!10)
       (or (not A)
           B
           C
           D
           R
           (and (not I) (not H) G F (not E) (= L 0) (= K J) (= O N) (= Q P)))
       (or A
           B
           C
           (not D)
           R
           (and (not I) (not H) (not G) F E (= L 0) (= K J) (= O N) (= Q P)))
       (or A
           B
           (not C)
           D
           R
           (and (not I)
                (not H)
                (not G)
                (not F)
                E
                (= N 1)
                (= J 1)
                (= M L)
                (= Q P)))
       (or (not A) (not B) (not C) (not D) R a!9 a!11)))
      )
      (state E F G H I J L N P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (state D C A B I E F G H)
        (and (not C) (not B) (not A) (= I true) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
