(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not J) (not D))
      )
      (state D C A B J E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) ) 
    (=>
      (and
        (state D C A B U K M O Q S)
        (let ((a!1 (and I
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
      (a!2 (and (not I) H G F E (= K J) (= M L) (= O N) (= Q P) (= S R)))
      (a!3 (= (+ K (* (- 1) O) Q (* (- 1) S)) 0))
      (a!4 (and (not I)
                H
                (not G)
                (not F)
                E
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!5 (and (not I)
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!6 (and I
                (not H)
                (not G)
                F
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ M (* (- 1) L)) 1)))
      (a!7 (and (not I)
                H
                G
                (not F)
                E
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!8 (and (not I)
                (not H)
                G
                (not F)
                E
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!9 (and (not I)
                (not H)
                (not G)
                F
                E
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= (+ Q (* (- 1) P)) (- 1))))
      (a!10 (and I
                 (not H)
                 G
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= S R)
                 (= (+ Q (* (- 1) P)) 1)))
      (a!11 (and (not I)
                 H
                 (not G)
                 F
                 E
                 (= K J)
                 (= M L)
                 (= O N)
                 (= S R)
                 (= (+ Q (* (- 1) P)) 1)))
      (a!12 (and I
                 H
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= (+ K Q (* (- 1) R)) 0)))
      (a!13 (and (not I)
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= S R))))
  (and (or A
           B
           (not C)
           (not D)
           U
           (and I H (not G) F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R))
           (= T 0))
       (or (not A)
           (not B)
           (not C)
           (not D)
           U
           (and I (not H) G F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R))
           (= T 0))
       (or (not A) B (not C) D (not U) a!1 (= M Q))
       (or (not A)
           (not B)
           (not C)
           (not D)
           U
           (and I
                (not H)
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (= T 0)))
       (or (not A) B (not C) D U a!2 (= T 0))
       (or (not A)
           B
           C
           (not D)
           U
           (and (not I) H G F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R))
           (not a!3))
       (or (not A)
           B
           (not C)
           D
           U
           (and (not I)
                H
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (= T 0)))
       (or A
           B
           (not C)
           (not D)
           U
           (and (not I)
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (= T 0)))
       (or (not A)
           B
           C
           (not D)
           U
           (and (not I) (not H) G F E (= K J) (= M L) (= O N) (= Q P) (= S R))
           a!3)
       (or A (not B) (not C) (not D) U a!4)
       (or (not A) B (not C) (not D) U a!5)
       (or A B C D (not U) a!6)
       (or (not A) (not B) (not C) D U a!7)
       (or A (not B) (not C) D U a!8)
       (or A (not B) C D U a!9)
       (or A B (not C) D (not U) a!10)
       (or (not A) (not B) C D U a!11)
       (or A B (not C) (not D) (not U) a!12)
       (or (not A)
           B
           C
           (not D)
           (not U)
           (and I H G F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R)))
       (or A (not B) C D (not U) a!1)
       (or A B C (not D) (not U) a!2)
       (or A
           (not B)
           C
           (not D)
           U
           (and (not I)
                H
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or (not A)
           B
           C
           D
           (not U)
           (and (not I)
                (not H)
                G
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or (not A)
           (not B)
           C
           (not D)
           U
           (and (not I)
                (not H)
                G
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or A B C D U a!13)
       (or (not A) B (not C) (not D) (not U) a!13)
       (or A
           B
           (not C)
           D
           U
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= K R)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or (not A)
           B
           C
           D
           U
           (and (not I)
                H
                (not G)
                F
                (not E)
                (= N 0)
                (= K J)
                (= M L)
                (= Q P)
                (= S R)))
       (or A
           B
           C
           (not D)
           U
           (and (not I)
                (not H)
                G
                F
                (not E)
                (= P 0)
                (= L 0)
                (= K J)
                (= O N)
                (= S R)))
       (or (not A)
           B
           (not C)
           D
           (not U)
           (and I H G (not F) (not E) (= K J) (= M L) (= O N) (= Q P) (= S R))
           (not (= M Q)))))
      )
      (state G F H E I J L N P R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (state D C A B J E F G H I)
        (and (not C) (= B true) (not A) (= J true) (not D))
      )
      false
    )
  )
)

(check-sat)
(exit)
