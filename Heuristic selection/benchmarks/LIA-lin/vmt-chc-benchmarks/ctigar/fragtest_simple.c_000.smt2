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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Bool) ) 
    (=>
      (and
        (state D C A B W K M O Q S U)
        (let ((a!1 (and I
                H
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
      (a!3 (and (not I)
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
      (a!4 (and (not I)
                H
                (not G)
                (not F)
                E
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!5 (and (not I)
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
      (a!6 (and I
                (not H)
                G
                F
                E
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ K (* (- 1) J)) 1)))
      (a!7 (and I
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!8 (and (not I)
                H
                (not G)
                F
                E
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!9 (and I
                (not H)
                G
                (not F)
                E
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= (+ O (* (- 1) N)) 1)))
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
           (not B)
           C
           D
           (not W)
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
           (not (<= U M)))
       (or A B (not C) (not D) (not W) a!1 (<= 0 O))
       (or A
           B
           (not C)
           (not D)
           (not W)
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
                (= U T))
           (not (<= 0 O)))
       (or (not A)
           (not B)
           C
           (not D)
           W
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
           (= V 0))
       (or (not A)
           (not B)
           C
           (not D)
           W
           (and (not I) H G F E (= K J) (= M L) (= O N) (= Q P) (= S R) (= U T))
           (not (= V 0)))
       (or A (not B) (not C) D W a!2 (= V 0))
       (or A
           (not B)
           (not C)
           D
           W
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
                (= U T))
           (not (= V 0)))
       (or (not A) B (not C) D W a!3 (not (<= K Q)))
       (or A
           B
           C
           (not D)
           W
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
           (not (= V 0)))
       (or (not A)
           B
           (not C)
           D
           W
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
           (<= K Q))
       (or A
           B
           C
           (not D)
           W
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
           (= V 0))
       (or A (not B) (not C) (not D) W a!4)
       (or A B (not C) (not D) W a!5)
       (or (not A) B C (not D) (not W) a!6)
       (or A
           (not B)
           C
           D
           W
           (and (not I)
                H
                (not G)
                F
                (not E)
                (= J 0)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or (not A) B (not C) (not D) (not W) a!7)
       (or (not A) (not B) C D W a!8)
       (or (not A) B (not C) D (not W) a!9)
       (or A
           (not B)
           (not C)
           D
           (not W)
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
                (= U T)))
       (or (not A) (not B) C D (not W) a!1)
       (or A
           B
           C
           (not D)
           (not W)
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
                (= U T)))
       (or A
           (not B)
           (not C)
           (not D)
           (not W)
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
                (= U T)))
       (or (not A)
           B
           C
           D
           (not W)
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
                (= U T)))
       (or (not A) (not B) (not C) (not D) W a!2)
       (or (not A)
           (not B)
           (not C)
           D
           W
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
                (= U T)))
       (or (not A) B (not C) (not D) W a!3)
       (or (not A)
           B
           C
           D
           W
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
       (or A B C D W a!10)
       (or A (not B) C (not D) (not W) a!10)
       (or (not A)
           B
           C
           (not D)
           W
           (and (not I)
                (not H)
                G
                F
                E
                (= K P)
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)))
       (or A
           (not B)
           C
           (not D)
           W
           (and (not I)
                H
                G
                F
                (not E)
                (= K R)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)))
       (or A
           B
           (not C)
           D
           (not W)
           (and I
                (not H)
                G
                (not F)
                (not E)
                (= K T)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or A
           B
           C
           D
           (not W)
           (and I
                (not H)
                (not G)
                F
                (not E)
                (= L 0)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       (or A
           B
           (not C)
           D
           W
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= N 0)
                (= J 0)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)))
       (or A
           (not B)
           C
           D
           (not W)
           (and I H G F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R) (= U T))
           (<= U M))))
      )
      (state G F E H I J L N P R T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (state D C A B K E F G H I J)
        (and (not C) (= B true) (= A true) (= K true) (not D))
      )
      false
    )
  )
)

(check-sat)
(exit)
