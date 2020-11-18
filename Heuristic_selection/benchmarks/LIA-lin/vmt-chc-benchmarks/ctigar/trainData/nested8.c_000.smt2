(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (and (= C true) (not B) (not A) (not J) (not D))
      )
      (state D C A B J I H G F E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) ) 
    (=>
      (and
        (state D C A B T S Q O M K)
        (let ((a!1 (not (<= (+ S Q (* (- 1) O)) 0)))
      (a!2 (and (not I) H G (not F) E (= K J) (= M L) (= O N) (= Q P) (= S R)))
      (a!3 (<= 0 (+ S Q O (* (- 1) M) (* (- 1) K))))
      (a!4 (or A
               (not B)
               C
               D
               T
               (and (not I)
                    H
                    (not G)
                    (not F)
                    E
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P)
                    (= S R))
               (<= (+ S Q (* (- 1) O)) 0)))
      (a!5 (and I
                (not H)
                (not G)
                (not F)
                E
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ K (* (- 1) J)) (- 1))))
      (a!6 (and (not I)
                H
                G
                F
                E
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!7 (and (not I)
                H
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!8 (and (not I)
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
           B
           C
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
           (not (<= S M)))
       (or A
           (not B)
           C
           D
           T
           (and (not I) H G F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R))
           a!1)
       (or A (not B) (not C) D T a!2 a!3)
       (or A
           (not B)
           (not C)
           D
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
           (not a!3))
       a!4
       (or (not A)
           B
           C
           (not D)
           T
           (and (not I) (not H) G F E (= K J) (= M L) (= O N) (= Q P) (= S R))
           (<= S M))
       (or (not A)
           B
           C
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
           (<= S K))
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
           (not (<= S Q)))
       (or A
           B
           (not C)
           D
           T
           (and (not I)
                (not H)
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= S Q))
       (or A B C D (not T) a!5)
       (or (not A) (not B) C (not D) T a!6)
       (or A (not B) (not C) (not D) T a!7)
       (or (not A) (not B) (not C) D T a!2)
       (or A
           (not B)
           C
           (not D)
           T
           (and (not I) H (not G) F E (= K J) (= M L) (= O N) (= Q P) (= S R)))
       (or (not A)
           (not B)
           C
           D
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
                (= S R)))
       (or (not A)
           (not B)
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
                (= S R)))
       (or A
           B
           (not C)
           D
           (not T)
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or A B C D T a!8)
       (or A B C (not D) T a!8)
       (or A B C (not D) (not T) a!8)
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
                (= J 0)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or (not A)
           B
           (not C)
           D
           T
           (and (not I)
                (not H)
                G
                F
                (not E)
                (= L 0)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)))
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
                (= N M)
                (= K J)
                (= M L)
                (= Q P)
                (= S R)))
       (or (not A)
           B
           C
           D
           T
           (and I
                (not H)
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= S K)))))
      )
      (state F E G H I R P N L J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (state D C A B J I H G F E)
        (and (= C true) (= B true) (= A true) (not J) (not D))
      )
      false
    )
  )
)

(check-sat)
(exit)
