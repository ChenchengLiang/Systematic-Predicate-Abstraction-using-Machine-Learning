(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (and (= D true) (not C) (not B) (not A) (not K) (not E))
      )
      (state E D C A B K J I H G F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) ) 
    (=>
      (and
        (state E D C A B V U S Q O M)
        (let ((a!1 (and K
                (not J)
                (not I)
                (not H)
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
      (a!2 (and (not K)
                J
                I
                H
                G
                F
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!3 (and (not K)
                J
                I
                (not H)
                (not G)
                (not F)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!4 (and (not K)
                J
                (not I)
                (not H)
                G
                F
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!5 (and (not K)
                (not J)
                I
                H
                G
                (not F)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!6 (and (not K)
                (not J)
                I
                (not H)
                (not G)
                F
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!7 (and (not K)
                (not J)
                (not I)
                H
                (not G)
                (not F)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!8 (and (not K)
                (not J)
                I
                H
                G
                F
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!9 (and (not K)
                (not J)
                I
                (not H)
                G
                (not F)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!10 (and (not K)
                 (not J)
                 (not I)
                 H
                 (not G)
                 F
                 (= M L)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= (+ O (* (- 1) N)) (- 1))))
      (a!11 (and K
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (= M L)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= (+ O (* (- 1) N)) 1)))
      (a!12 (and (not K)
                 J
                 I
                 (not H)
                 (not G)
                 F
                 (= M L)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= (+ O (* (- 1) N)) 1)))
      (a!13 (and (not K)
                 J
                 (not I)
                 H
                 (not G)
                 (not F)
                 (= M L)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= (+ O (* (- 1) N)) 1)))
      (a!14 (and (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T))))
  (and (or (not A) (not B) (not C) D E V a!1 (not (<= O 0)))
       (or (not A)
           (not B)
           (not C)
           D
           E
           V
           (and (not K) J I H (not G) F (= M L) (= O N) (= Q P) (= S R) (= U T))
           (<= O 0))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           V
           (and (not K)
                J
                I
                H
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= Q M))
       (or A
           (not B)
           (not C)
           D
           (not E)
           V
           (and (not K)
                J
                I
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= S M)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           V
           (and (not K) J (not I) H G F (= M L) (= O N) (= Q P) (= S R) (= U T))
           (<= S M))
       (or A
           (not B)
           C
           (not D)
           E
           V
           (and (not K)
                J
                (not I)
                H
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= U M)))
       (or A
           (not B)
           C
           (not D)
           E
           V
           (and (not K)
                J
                (not I)
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= U M))
       (or (not A)
           B
           (not C)
           D
           E
           V
           (and (not K)
                J
                (not I)
                (not H)
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= U M)))
       (or (not A)
           B
           (not C)
           D
           E
           V
           (and (not K)
                (not J)
                I
                H
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= U M))
       (or A
           B
           (not C)
           (not D)
           (not E)
           V
           (and (not K)
                (not J)
                I
                (not H)
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= S M)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           V
           (and (not K)
                (not J)
                I
                (not H)
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= S M))
       (or A
           B
           C
           D
           (not E)
           V
           (and (not K)
                (not J)
                (not I)
                H
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= Q M)))
       (or A
           B
           C
           D
           (not E)
           V
           (and (not K)
                (not J)
                (not I)
                (not H)
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= Q M))
       (or (not A) (not B) (not C) D (not E) V a!2)
       (or A (not B) (not C) (not D) (not E) V a!3)
       (or A (not B) C D (not E) V a!4)
       (or (not A) B (not C) (not D) E V a!5)
       (or (not A) B C D E V a!6)
       (or A B C (not D) (not E) V a!7)
       (or (not A) B (not C) D (not E) V a!8)
       (or (not A) B C (not D) E V a!9)
       (or A B (not C) D E V a!10)
       (or (not A) (not B) (not C) (not D) (not E) V a!11)
       (or (not A) (not B) C D E V a!12)
       (or A (not B) C (not D) (not E) V a!13)
       (or A B C (not D) E (not V) a!1)
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           V
           (and (not K) J I H G (not F) (= M L) (= O N) (= Q P) (= S R) (= U T)))
       (or A
           B
           C
           D
           E
           (not V)
           (and (not K) J I (not H) G F (= M L) (= O N) (= Q P) (= S R) (= U T)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           V
           (and (not K)
                J
                (not I)
                H
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A
           (not B)
           (not C)
           D
           E
           V
           (and (not K)
                J
                (not I)
                (not H)
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           V
           (and (not K)
                (not J)
                I
                H
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           B
           C
           D
           (not E)
           V
           (and (not K)
                (not J)
                (not I)
                H
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A
           B
           (not C)
           (not D)
           E
           V
           (and (not K)
                (not J)
                (not I)
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A B C D E V a!14)
       (or A B C D (not E) (not V) a!14)
       (or (not A)
           (not B)
           C
           D
           (not E)
           V
           (and (not K) J I (not H) G F (= L 0) (= O N) (= Q P) (= S R) (= U T)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           V
           (and (not K)
                J
                (not I)
                H
                G
                (not F)
                (= L 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A
           (not B)
           C
           D
           E
           V
           (and (not K)
                J
                (not I)
                (not H)
                (not G)
                F
                (= L 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           V
           (and (not K)
                (not J)
                I
                H
                (not G)
                (not F)
                (= L 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A
           B
           (not C)
           D
           (not E)
           V
           (and (not K)
                (not J)
                (not I)
                H
                G
                F
                (= L 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A
           B
           C
           (not D)
           E
           V
           (and (not K)
                (not J)
                (not I)
                (not H)
                G
                (not F)
                (= N 0)
                (= L 0)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           V
           (and K
                (not J)
                (not I)
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= Q M)))))
      )
      (state G F H I J K T R P N L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (state E D C A B K J I H G F)
        (and (= D true) (not C) (not B) (not A) (= K true) (not E))
      )
      false
    )
  )
)

(check-sat)
(exit)
