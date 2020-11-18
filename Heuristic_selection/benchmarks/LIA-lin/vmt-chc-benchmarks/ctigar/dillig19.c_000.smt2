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
               B
               C
               D
               (not R)
               (and I (not H) G (not F) E (= K J) (= M L) (= O N) (= Q P))
               (<= (+ K (* (- 1) Q)) (- 1))))
      (a!2 (or A
               (not B)
               (not C)
               D
               R
               (and I (not H) (not G) F (not E) (= K J) (= M L) (= O N) (= Q P))
               (<= 1 (+ K (* (- 1) M)))))
      (a!3 (or A
               (not B)
               (not C)
               (not D)
               R
               (and (not I) H G F E (= K J) (= M L) (= O N) (= Q P))
               (<= 1 (+ M (* (- 1) O)))))
      (a!4 (not (<= 1 (+ M (* (- 1) O)))))
      (a!5 (not (<= 1 (+ K (* (- 1) M)))))
      (a!6 (and (not I) H (not G) (not F) E (= K J) (= M L) (= O N) (= Q P)))
      (a!7 (not (<= 1 (+ K (* (- 1) O)))))
      (a!8 (or (not A)
               B
               (not C)
               (not D)
               R
               (and (not I)
                    H
                    (not G)
                    (not F)
                    (not E)
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P))
               (<= 1 (+ K (* (- 1) O)))))
      (a!9 (and (not I)
                H
                (not G)
                F
                E
                (= K J)
                (= O N)
                (= Q P)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!10 (and (not I)
                 H
                 G
                 (not F)
                 E
                 (= K J)
                 (= M L)
                 (= O N)
                 (= (+ Q (* (- 1) P)) (- 1))))
      (a!11 (and I (not H) G F E (= K J) (= M L) (= O N) (= Q P)))
      (a!12 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)))
      (a!13 (not (<= (+ K (* (- 1) Q)) (- 1)))))
  (and a!1
       (or A
           B
           C
           (not D)
           (not R)
           (and I (not H) G (not F) (not E) (= K J) (= M L) (= O N) (= Q P))
           (not (<= K M)))
       (or A
           B
           C
           (not D)
           (not R)
           (and I (not H) (not G) F E (= K J) (= M L) (= O N) (= Q P))
           (<= K M))
       a!2
       (or (not A)
           (not B)
           (not C)
           (not D)
           R
           (and I (not H) (not G) (not F) E (= K J) (= M L) (= O N) (= Q P))
           (not (<= M O)))
       (or (not A)
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
           (<= M O))
       a!3
       (or A
           (not B)
           (not C)
           (not D)
           R
           (and (not I) H G (not F) (not E) (= K J) (= M L) (= O N) (= Q P))
           a!4)
       (or A
           (not B)
           (not C)
           D
           R
           (and (not I) H (not G) F (not E) (= K J) (= M L) (= O N) (= Q P))
           a!5)
       (or (not A) B (not C) (not D) R a!6 a!7)
       a!8
       (or (not A)
           B
           (not C)
           D
           R
           (and (not I) (not H) G F E (= K J) (= M L) (= O N) (= Q P))
           (not (<= 0 O)))
       (or (not A)
           B
           (not C)
           D
           R
           (and (not I) (not H) G F (not E) (= K J) (= M L) (= O N) (= Q P))
           (<= 0 O))
       (or A
           B
           (not C)
           (not D)
           R
           (and (not I) (not H) G (not F) E (= K J) (= M L) (= O N) (= Q P))
           (not (<= 0 K)))
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
           (<= 0 K))
       (or A (not B) C (not D) R a!9)
       (or (not A) (not B) C D R a!10)
       (or (not A) B (not C) (not D) (not R) a!11)
       (or (not A)
           B
           (not C)
           D
           (not R)
           (and I (not H) G F (not E) (= K J) (= M L) (= O N) (= Q P)))
       (or (not A)
           (not B)
           (not C)
           D
           R
           (and (not I) H G F (not E) (= K J) (= M L) (= O N) (= Q P)))
       (or A
           B
           (not C)
           D
           (not R)
           (and (not I) H G (not F) E (= K J) (= M L) (= O N) (= Q P)))
       (or (not A) (not B) C (not D) R a!6)
       (or A B C D R a!12)
       (or A B C D (not R) a!12)
       (or A B (not C) (not D) (not R) a!12)
       (or A (not B) C D R a!12)
       (or (not A) B C D R a!12)
       (or (not A) B C (not D) R a!12)
       (or (not A) B C (not D) (not R) a!12)
       (or A
           B
           C
           (not D)
           R
           (and (not I) (not H) (not G) F E (= K J) (= M L) (= O P) (= O N)))
       (or A
           B
           (not C)
           D
           R
           (and (not I)
                (not H)
                (not G)
                F
                (not E)
                (= L 0)
                (= K J)
                (= O N)
                (= Q P)))
       (or (not A) B C D (not R) a!11 a!13)))
      )
      (state F E G H I J L N P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (state D C A B I E F G H)
        (and (= C true) (not B) (= A true) (= I true) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
