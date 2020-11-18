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
        (let ((a!1 (not (<= 0 (+ M (* (- 3) K)))))
      (a!2 (and (not I)
                H
                G
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
      (a!3 (<= 0 (+ (* 2 U) (* (- 1) O) K)))
      (a!4 (or (not A)
               B
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
                    (= U T))
               (<= 0 (+ M (* (- 3) K)))))
      (a!5 (<= (+ (* 3 U) (* (- 1) S) (* (- 1) Q)) 0))
      (a!6 (and I
                (not H)
                (not G)
                (not F)
                E
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!7 (and (not I)
                H
                G
                F
                E
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!8 (and (not I)
                (not H)
                G
                F
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ L (* (- 2) K)) 0)))
      (a!9 (and (not I)
                H
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!10 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T))))
  (and (or (not A)
           B
           C
           (not D)
           V
           (and I
                (not H)
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           a!1)
       (or A
           (not B)
           C
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
           (not (<= M O)))
       (or A (not B) (not C) D V a!2 a!3)
       (or A
           (not B)
           (not C)
           D
           V
           (and (not I)
                H
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not a!3))
       (or A
           (not B)
           C
           D
           V
           (and (not I)
                H
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= M O))
       a!4
       (or (not A)
           B
           C
           D
           V
           (and (not I)
                (not H)
                G
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (<= U K))
       (or A
           B
           (not C)
           D
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
           (not a!5))
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
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           a!5)
       (or A B C D (not V) a!6)
       (or (not A) (not B) C (not D) V a!7)
       (or (not A) B (not C) D V a!8)
       (or A (not B) (not C) (not D) V a!9)
       (or (not A) (not B) (not C) D V a!2)
       (or A
           (not B)
           C
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
                (= U T)))
       (or (not A)
           (not B)
           C
           D
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
                (= U T)))
       (or (not A)
           (not B)
           (not C)
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
                (= U T)))
       (or A
           B
           (not C)
           D
           (not V)
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A B C D V a!10)
       (or A B C (not D) V a!10)
       (or A B C (not D) (not V) a!10)
       (or A
           B
           (not C)
           (not D)
           V
           (and (not I)
                (not H)
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
           (not C)
           (not D)
           V
           (and (not I)
                H
                (not G)
                (not F)
                (not E)
                (= N K)
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           B
           C
           D
           V
           (and I
                (not H)
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= U K)))))
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
        (and (= C true) (= B true) (= A true) (not K) (not D))
      )
      false
    )
  )
)

(check-sat)
(exit)
