(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not K) (not D))
      )
      (state D C A B K E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) ) 
    (=>
      (and
        (state D C A B V K M O Q S U)
        (let ((a!1 (and I
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
      (a!2 (and (not I)
                (not H)
                G
                (not F)
                E
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ K (* (- 1) J)) 1)))
      (a!3 (and I
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) 1)))
      (a!4 (and (not I)
                (not H)
                G
                F
                E
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!5 (and I
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) P) S) 0)))
      (a!6 (and I
                (not H)
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) P) S) 0)))
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
                (= (+ K O (* (- 1) P)) 0)))
      (a!8 (and (not I)
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= (+ K O (* (- 1) P)) 0)))
      (a!9 (and I
                (not H)
                G
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)
                (= (+ S (* (- 1) R)) (- 1))))
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
  (and (or A
           B
           C
           D
           (not V)
           (and I
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
           (not (<= M 0)))
       (or A
           B
           C
           D
           (not V)
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
           (<= M 0))
       (or (not A) B (not C) D (not V) a!1 (<= 0 K))
       (or A
           (not B)
           C
           D
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
           (not (<= K 0)))
       (or A
           B
           (not C)
           (not D)
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
           (not (<= U 200)))
       (or A
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
           (<= U 200))
       (or A
           B
           (not C)
           D
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
           (not (<= 0 U)))
       (or A
           B
           (not C)
           D
           V
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
                (= U T))
           (<= 0 U))
       (or A
           (not B)
           C
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
           (<= K 0))
       (or A (not B) (not C) D V a!2)
       (or A B (not C) D (not V) a!3)
       (or A (not B) C (not D) V a!4)
       (or A B (not C) (not D) (not V) a!5)
       (or (not A) (not B) (not C) (not D) V a!6)
       (or A (not B) (not C) (not D) V a!7)
       (or (not A) B (not C) (not D) V a!8)
       (or A B C (not D) (not V) a!9)
       (or (not A)
           B
           C
           (not D)
           (not V)
           (and I H G F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R) (= U T)))
       (or A (not B) C D (not V) a!1)
       (or (not A)
           B
           C
           D
           (not V)
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
                (= U T)))
       (or (not A)
           (not B)
           C
           D
           V
           (and (not I)
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A B C D V a!10)
       (or A B C (not D) V a!10)
       (or (not A) B C D V a!10)
       (or (not A) B (not C) (not D) (not V) a!10)
       (or (not A)
           B
           C
           (not D)
           V
           (and (not I)
                H
                G
                F
                (not E)
                (= J U)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           (not B)
           (not C)
           D
           V
           (and (not I)
                H
                G
                (not F)
                E
                (= L O)
                (= K J)
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
                H
                G
                (not F)
                (not E)
                (= N 0)
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A)
           (not B)
           C
           (not D)
           V
           (and (not I) H G F E (= R 0) (= K J) (= M L) (= O N) (= Q P) (= U T)))
       (or (not A)
           B
           (not C)
           D
           (not V)
           (and I
                H
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T))
           (not (<= 0 K)))))
      )
      (state G F H E I J L N P R T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (state D C A B K E F G H I J)
        (and (not C) (= B true) (not A) (= K true) (not D))
      )
      false
    )
  )
)

(check-sat)
(exit)
