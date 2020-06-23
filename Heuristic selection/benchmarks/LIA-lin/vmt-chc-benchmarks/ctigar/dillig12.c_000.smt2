(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not L) (not D))
      )
      (state D C A B L E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) ) 
    (=>
      (and
        (state D C A B Y K M O Q S U W)
        (let ((a!1 (and I
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
                (= W V)))
      (a!2 (and (not I)
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
      (a!3 (and (not I)
                (not H)
                G
                (not F)
                E
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!4 (and (not I)
                H
                G
                F
                E
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= (+ N (* 2 S) (* (- 1) U)) 2)))
      (a!5 (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= W V)
                (= (+ Q (* (- 1) P)) (- 1))))
      (a!6 (and (not I)
                (not H)
                G
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)
                (= (+ Q S (* (- 1) R)) 0)))
      (a!7 (and (not I)
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
                (= (+ Q U (* (- 1) T)) 0)))
      (a!8 (and (not I)
                (not H)
                G
                F
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)
                (= (+ M U (* (- 1) T)) 0)))
      (a!9 (and I
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
                (= (+ W (* (- 1) V)) (- 2))))
      (a!10 (and I
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
      (a!11 (and I
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
                 (= W V)))
      (a!12 (and (not I)
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
  (and (or A
           (not B)
           C
           D
           (not Y)
           (and I
                H
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (<= 5 W))
       (or A
           B
           (not C)
           D
           (not Y)
           (and I
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
           (<= W O))
       (or A
           B
           C
           (not D)
           (not Y)
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
           (= X 0))
       (or A
           B
           C
           (not D)
           (not Y)
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
           (not (= X 0)))
       (or A
           B
           (not C)
           D
           (not Y)
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
                (= U T)
                (= W V))
           (not (<= W O)))
       (or (not A) (not B) (not C) D Y a!1 (not (= K 0)))
       (or (not A)
           (not B)
           (not C)
           D
           Y
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
           (= K 0))
       (or A
           B
           C
           (not D)
           Y
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
                (= W V))
           (= X 0))
       (or (not A) B (not C) (not D) Y a!2 (not (= K 0)))
       (or (not A)
           B
           (not C)
           (not D)
           Y
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
           (= K 0))
       (or A
           B
           C
           (not D)
           Y
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
           (not (= X 0)))
       (or (not A) B C D Y a!3)
       (or (not A) (not B) C (not D) Y a!4)
       (or A B (not C) (not D) Y a!5)
       (or (not A) B (not C) D Y a!6)
       (or A (not B) C D Y a!7)
       (or (not A) B C (not D) Y a!8)
       (or (not A) B C (not D) (not Y) a!9)
       (or A B (not C) (not D) (not Y) a!10)
       (or A (not B) (not C) (not D) (not Y) a!11)
       (or A
           (not B)
           (not C)
           D
           (not Y)
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
                (= U T)
                (= W V)))
       (or (not A)
           B
           C
           D
           (not Y)
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
                (= W V)))
       (or (not A)
           B
           (not C)
           (not D)
           (not Y)
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
       (or (not A)
           B
           (not C)
           D
           (not Y)
           (and I
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or (not A) (not B) (not C) (not D) Y a!1)
       (or A
           (not B)
           C
           (not D)
           Y
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
                (= W V)))
       (or A (not B) (not C) D Y a!2)
       (or A
           (not B)
           (not C)
           (not D)
           Y
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
       (or A B C D Y a!12)
       (or A (not B) C (not D) (not Y) a!12)
       (or (not A)
           (not B)
           C
           D
           Y
           (and (not I)
                H
                G
                (not F)
                E
                (= N 1)
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or A
           B
           (not C)
           D
           Y
           (and (not I)
                (not H)
                (not G)
                F
                (not E)
                (= T 0)
                (= R 0)
                (= P 0)
                (= K J)
                (= L 0)
                (= O N)
                (= W V)))
       (or A
           B
           C
           D
           (not Y)
           (and I
                (not H)
                (not G)
                (not F)
                E
                (= V 0)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A (not B) C D (not Y) a!11 (not (<= 5 W)))))
      )
      (state F E G H I J L N P R T V)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (state D C A B L E F G H I J K)
        (and (= C true) (= B true) (not A) (= L true) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
