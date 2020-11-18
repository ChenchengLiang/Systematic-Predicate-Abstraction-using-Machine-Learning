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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) ) 
    (=>
      (and
        (state D C A B S K M O Q)
        (let ((a!1 (and I H (not G) (not F) E (= K J) (= M L) (= O N) (= Q P)))
      (a!2 (and I (not H) G (not F) (not E) (= K J) (= M L) (= O N) (= Q P)))
      (a!3 (not (<= 0 (+ (* 10 K) (* (- 1) O)))))
      (a!4 (and I (not H) (not G) F E (= K J) (= M L) (= O N) (= Q P)))
      (a!6 (not (<= (+ (* 100 M) (* (- 1) Q)) 0)))
      (a!7 (or (not A)
               (not B)
               (not C)
               (not D)
               S
               (and I
                    (not H)
                    (not G)
                    (not F)
                    (not E)
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P))
               (<= 0 (+ (* 10 K) (* (- 1) O)))))
      (a!8 (and (not I) H G (not F) E (= K J) (= M L) (= O N) (= Q P)))
      (a!9 (and (not I)
                (not H)
                G
                F
                E
                (= M L)
                (= O N)
                (= Q P)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!10 (and (not I)
                 H
                 G
                 (not F)
                 (not E)
                 (= K J)
                 (= O N)
                 (= Q P)
                 (= (+ M (* (- 1) L)) (- 1))))
      (a!11 (and (not I)
                 (not H)
                 G
                 F
                 (not E)
                 (= K J)
                 (= O N)
                 (= Q P)
                 (= (+ M (* (- 1) L)) (- 1))))
      (a!12 (and (not I)
                 (not H)
                 G
                 (not F)
                 E
                 (= K J)
                 (= M L)
                 (= Q P)
                 (= (+ O (* (- 1) N)) (- 100))))
      (a!13 (and (not I)
                 H
                 G
                 F
                 (not E)
                 (= K J)
                 (= M L)
                 (= Q P)
                 (= (+ O (* (- 1) N)) (- 1))))
      (a!14 (or A
                B
                (not C)
                D
                (not S)
                (and I
                     (not H)
                     (not G)
                     (not F)
                     E
                     (= K J)
                     (= M L)
                     (= Q P)
                     (= (+ O N) 0))))
      (a!15 (and (not I)
                 H
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= (+ Q (* (- 1) P)) (- 10))))
      (a!16 (and I H (not G) F (not E) (= K J) (= M L) (= O N) (= Q P)))
      (a!17 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P))))
(let ((a!5 (or A B C D (not S) a!4 (<= (+ (* 100 M) (* (- 1) Q)) 0))))
  (and (or (not A) B C (not D) (not S) a!1 (not (<= O 2)))
       (or (not A)
           B
           C
           (not D)
           (not S)
           (and I (not H) G F E (= K J) (= M L) (= O N) (= Q P))
           (<= O 2))
       (or A
           B
           C
           (not D)
           S
           (and I (not H) G F (not E) (= K J) (= M L) (= O N) (= Q P))
           (= R 0))
       (or (not A)
           B
           (not C)
           D
           (not S)
           (and I (not H) G (not F) E (= K J) (= M L) (= O N) (= Q P))
           (not (<= 4 M)))
       (or (not A) (not B) (not C) (not D) S a!2 a!3)
       a!5
       (or A
           B
           C
           D
           (not S)
           (and I (not H) (not G) F (not E) (= K J) (= M L) (= O N) (= Q P))
           a!6)
       a!7
       (or A
           (not B)
           (not C)
           D
           S
           (and (not I) H G F E (= K J) (= M L) (= O N) (= Q P))
           (= R 0))
       (or A (not B) C (not D) S a!8 (<= 4 M))
       (or A
           (not B)
           C
           (not D)
           S
           (and (not I) H (not G) F E (= K J) (= M L) (= O N) (= Q P))
           (not (<= 4 M)))
       (or A
           B
           (not C)
           (not D)
           S
           (and (not I) H (not G) F (not E) (= K J) (= M L) (= O N) (= Q P))
           (= R 0))
       (or A
           (not B)
           (not C)
           D
           S
           (and (not I) H (not G) (not F) E (= K J) (= M L) (= O N) (= Q P))
           (not (= R 0)))
       (or A
           B
           (not C)
           (not D)
           S
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (= R 0)))
       (or A
           B
           C
           (not D)
           S
           (and (not I) (not H) (not G) F E (= K J) (= M L) (= O N) (= Q P))
           (not (= R 0)))
       (or (not A) B C (not D) S a!9)
       (or A (not B) (not C) (not D) S a!10)
       (or (not A) B C D S a!11)
       (or (not A) B (not C) D S a!12)
       (or (not A) (not B) C D S a!13)
       a!14
       (or (not A) B (not C) (not D) S a!15)
       (or A (not B) C D (not S) a!16)
       (or A (not B) C (not D) (not S) a!1)
       (or (not A)
           B
           (not C)
           (not D)
           (not S)
           (and I H (not G) (not F) (not E) (= K J) (= M L) (= O N) (= Q P)))
       (or A B (not C) (not D) (not S) a!2)
       (or A B C (not D) (not S) a!4)
       (or (not A) B C D (not S) a!8)
       (or (not A) (not B) (not C) D S a!8)
       (or (not A)
           (not B)
           C
           (not D)
           S
           (and (not I) (not H) G (not F) E (= K J) (= M L) (= O N) (= Q P)))
       (or A
           (not B)
           C
           D
           S
           (and (not I)
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or A B C D S a!17)
       (or A (not B) (not C) D (not S) a!17)
       (or A
           B
           (not C)
           D
           S
           (and (not I)
                (not H)
                (not G)
                (not F)
                E
                (= P 0)
                (= N 0)
                (= L 0)
                (= J 0)))
       (or (not A) B (not C) D (not S) a!16 (<= 4 M)))))
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
        (and (not C) (= B true) (not A) (= I true) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
