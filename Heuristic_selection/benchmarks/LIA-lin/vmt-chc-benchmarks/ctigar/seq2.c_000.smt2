(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not L) (not D))
      )
      (state D C A B L K J I H G F E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) ) 
    (=>
      (and
        (state D C A B X W U S Q O M K)
        (let ((a!1 (and I
                H
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
      (a!2 (and I
                (not H)
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
      (a!3 (and I
                (not H)
                (not G)
                (not F)
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!4 (and (not I)
                H
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= W V)
                (= (+ Q (* (- 1) P)) (- 1))))
      (a!5 (and (not I)
                (not H)
                G
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= W V)
                (= (+ Q (* (- 1) P)) (- 1))))
      (a!6 (and I
                H
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= W V)
                (= (+ Q (* (- 1) P)) 1)))
      (a!7 (and I
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= W V)
                (= (+ Q (* (- 1) P)) 1)))
      (a!8 (and I
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)
                (= (+ S (* (- 1) R)) (- 1))))
      (a!9 (and (not I)
                H
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)
                (= (+ U (* (- 1) T)) (- 1))))
      (a!10 (and (not I)
                 (not H)
                 G
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= (+ W (* (- 1) V)) (- 1))))
      (a!11 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V))))
  (and (or (not A) B (not C) D (not X) a!1 (not (<= Q 0)))
       (or (not A)
           B
           (not C)
           D
           (not X)
           (and I
                (not H)
                G
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (<= Q 0))
       (or (not A)
           B
           C
           D
           (not X)
           (and I
                (not H)
                G
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (<= O S))
       (or (not A)
           (not B)
           C
           D
           X
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
                (= U T)
                (= W V))
           (not (<= K M)))
       (or (not A) (not B) (not C) D X a!2 (not (<= Q 0)))
       (or (not A)
           (not B)
           (not C)
           D
           X
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
                (= U T)
                (= W V))
           (<= Q 0))
       (or (not A)
           (not B)
           C
           D
           X
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
                (= U T)
                (= W V))
           (<= K M))
       (or (not A)
           B
           (not C)
           (not D)
           X
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
                (= U T)
                (= W V))
           (not (<= K U)))
       (or (not A)
           B
           (not C)
           (not D)
           X
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
                (= U T)
                (= W V))
           (<= K U))
       (or A
           B
           C
           (not D)
           X
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
                (= U T)
                (= W V))
           (not (<= O W)))
       (or A
           B
           C
           (not D)
           X
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
                (= U T)
                (= W V))
           (<= O W))
       (or (not A) (not B) (not C) (not D) X a!3)
       (or A (not B) (not C) D X a!4)
       (or (not A) B C D X a!5)
       (or A (not B) C D (not X) a!6)
       (or A B C D (not X) a!7)
       (or (not A) B (not C) (not D) (not X) a!8)
       (or A (not B) C D X a!9)
       (or A B (not C) (not D) X a!10)
       (or A (not B) C (not D) (not X) a!1)
       (or (not A)
           B
           C
           (not D)
           (not X)
           (and I
                (not H)
                G
                F
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A
           (not B)
           (not C)
           D
           (not X)
           (and I
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A B C (not D) (not X) a!2)
       (or (not A)
           (not B)
           C
           (not D)
           X
           (and (not I)
                H
                G
                F
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A
           B
           (not C)
           D
           (not X)
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
                (= U T)
                (= W V)))
       (or A
           (not B)
           C
           (not D)
           X
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
                (= U T)
                (= W V)))
       (or (not A)
           B
           (not C)
           D
           X
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
                (= U T)
                (= W V)))
       (or A B C D X a!11)
       (or A (not B) (not C) (not D) (not X) a!11)
       (or A
           (not B)
           (not C)
           (not D)
           X
           (and (not I)
                H
                G
                (not F)
                (not E)
                (= L 0)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A
           B
           (not C)
           (not D)
           (not X)
           (and I
                (not H)
                G
                (not F)
                (not E)
                (= R 0)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)))
       (or (not A)
           B
           C
           (not D)
           X
           (and (not I)
                (not H)
                G
                F
                E
                (= T 0)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)))
       (or A
           B
           (not C)
           D
           X
           (and (not I)
                (not H)
                (not G)
                F
                (not E)
                (= V 0)
                (= P 0)
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)))
       (or (not A)
           B
           C
           D
           (not X)
           (and I
                H
                (not G)
                F
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (not (<= O S)))))
      )
      (state F E G H I V T R P N L J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (state D C A B L K J I H G F E)
        (or (and L (not A) (not B) (not C) D) (and L (not A) B (not C) D))
      )
      false
    )
  )
)

(check-sat)
(exit)
