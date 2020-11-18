(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not K) (not D))
      )
      (state D C A B K J I H G F E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) ) 
    (=>
      (and
        (state D C A B V U S Q O M K)
        (let ((a!1 (and I
                (not H)
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
      (a!2 (or (not A)
               (not B)
               C
               D
               V
               (and (not I)
                    H
                    G
                    (not F)
                    E
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P)
                    (= S R)
                    (= U T))
               (<= (+ U O (* (- 1) K)) 0)))
      (a!3 (and I
                (not H)
                (not G)
                (not F)
                (not E)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!4 (and (not I)
                H
                (not G)
                F
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!5 (and (not I)
                (not H)
                G
                (not F)
                E
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!6 (and I
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) 1)))
      (a!7 (and (not I)
                H
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= (+ Q (* (- 1) P)) (- 1))))
      (a!8 (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)
                (= (+ S (* (- 1) R)) (- 1))))
      (a!9 (and (not I)
                (not H)
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
      (a!10 (not (<= (+ U O (* (- 1) K)) 0))))
  (and (or (not A) (not B) (not C) D V a!1 (not (<= M 0)))
       (or (not A)
           (not B)
           (not C)
           D
           V
           (and (not I)
                H
                G
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= M 0))
       a!2
       (or (not A)
           B
           (not C)
           (not D)
           V
           (and (not I)
                H
                (not G)
                F
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= U Q)))
       (or (not A)
           B
           (not C)
           (not D)
           V
           (and (not I)
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= U Q))
       (or A
           B
           C
           (not D)
           V
           (and (not I)
                (not H)
                G
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= O S)))
       (or A
           B
           C
           (not D)
           V
           (and (not I)
                (not H)
                (not G)
                F
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= O S))
       (or (not A) (not B) (not C) (not D) V a!3)
       (or A (not B) (not C) D V a!4)
       (or (not A) B C D V a!5)
       (or A B C D (not V) a!6)
       (or A (not B) C D V a!7)
       (or A B (not C) (not D) V a!8)
       (or A B C (not D) (not V) a!1)
       (or (not A)
           (not B)
           C
           (not D)
           V
           (and (not I) H G F E (= K J) (= M L) (= O N) (= Q P) (= S R) (= U T)))
       (or A
           B
           (not C)
           D
           (not V)
           (and (not I)
                H
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A
           (not B)
           C
           (not D)
           V
           (and (not I)
                (not H)
                G
                F
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           B
           (not C)
           D
           V
           (and (not I)
                (not H)
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A B C D V a!9)
       (or A B (not C) (not D) (not V) a!9)
       (or A
           (not B)
           (not C)
           (not D)
           V
           (and (not I)
                H
                G
                (not F)
                (not E)
                (= J 0)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           B
           C
           (not D)
           V
           (and (not I)
                (not H)
                G
                F
                E
                (= P 0)
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)))
       (or A
           B
           (not C)
           D
           V
           (and (not I)
                (not H)
                (not G)
                F
                (not E)
                (= R 0)
                (= L 0)
                (= K J)
                (= O N)
                (= Q P)
                (= U T)))
       (or (not A)
           (not B)
           C
           D
           V
           (and I
                (not H)
                (not G)
                F
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           a!10)))
      )
      (state F E G H I T R P N L J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (state D C A B K J I H G F E)
        (and (not C) (not B) (not A) (= K true) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
