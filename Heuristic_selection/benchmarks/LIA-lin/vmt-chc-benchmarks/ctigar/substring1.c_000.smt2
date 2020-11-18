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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) ) 
    (=>
      (and
        (state D C A B T K M O Q S)
        (let ((a!1 (and (not I)
                H
                G
                F
                (not E)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!2 (and (not I)
                H
                G
                (not F)
                E
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!3 (and I
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
      (a!4 (and (not I)
                (not H)
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))))
  (and (or (not A)
           (not B)
           (not C)
           (not D)
           T
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
           (<= 101 M))
       (or A
           (not B)
           (not C)
           (not D)
           T
           (and (not I) H G F E (= K J) (= M L) (= O N) (= Q P) (= S R))
           (not (<= O K)))
       (or A
           (not B)
           (not C)
           (not D)
           T
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
           (<= O K))
       (or (not A)
           B
           (not C)
           (not D)
           T
           (and (not I)
                H
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= S O)))
       (or (not A)
           B
           (not C)
           (not D)
           T
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
           (<= S O))
       (or (not A)
           B
           (not C)
           D
           T
           (and (not I) (not H) G F E (= K J) (= M L) (= O N) (= Q P) (= S R))
           (not (<= 0 S)))
       (or A
           B
           (not C)
           (not D)
           T
           (and (not I)
                (not H)
                G
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= O 100)))
       (or (not A)
           B
           (not C)
           D
           T
           (and (not I)
                (not H)
                G
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= 0 S))
       (or A
           B
           (not C)
           (not D)
           T
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= O 100))
       (or A
           B
           (not C)
           D
           T
           (and (not I)
                (not H)
                (not G)
                F
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= 0 O)))
       (or A
           B
           (not C)
           D
           T
           (and (not I)
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= 0 O))
       (or (not A) (not B) C D T a!1)
       (or (not A) (not B) (not C) D T a!2)
       (or A
           B
           C
           D
           (not T)
           (and I
                (not H)
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or A B C (not D) (not T) a!3)
       (or (not A)
           (not B)
           C
           (not D)
           T
           (and (not I) H (not G) F E (= K J) (= M L) (= O N) (= Q P) (= S R)))
       (or A B C D T a!4)
       (or A B C (not D) T a!4)
       (or A B (not C) D (not T) a!4)
       (or A (not B) C D T a!4)
       (or (not A) B C D T a!4)
       (or (not A) B C (not D) T a!4)
       (or A
           (not B)
           (not C)
           D
           T
           (and (not I)
                H
                (not G)
                (not F)
                E
                (= J S)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or A
           (not B)
           C
           (not D)
           T
           (and (not I) H (not G) F E (= L 0) (= K J) (= O N) (= Q P) (= S R)))
       (or (not A) (not B) (not C) (not D) T a!3 (not (<= 101 M)))))
      )
      (state E F G H I J L N P R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (state D C A B J E F G H I)
        (and (not C) (not B) (not A) (= J true) (= D true))
      )
      false
    )
  )
)

(check-sat)
(exit)
