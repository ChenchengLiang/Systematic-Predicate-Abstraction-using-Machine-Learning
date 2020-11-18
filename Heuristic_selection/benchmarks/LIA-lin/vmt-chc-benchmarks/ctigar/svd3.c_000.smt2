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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) ) 
    (=>
      (and
        (state D C A B U S Q O M K)
        (let ((a!1 (and I H G (not F) (not E) (= K J) (= M L) (= O N) (= Q P) (= S R)))
      (a!2 (and I (not H) G F E (= K J) (= M L) (= O N) (= Q P) (= S R)))
      (a!3 (and (not I) H G (not F) E (= K J) (= M L) (= O N) (= Q P) (= S R)))
      (a!4 (and I
                H
                G
                F
                (not E)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ K (* (- 1) J)) 1)))
      (a!5 (and I
                H
                (not G)
                F
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!6 (and I
                (not H)
                G
                (not F)
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
                (= O N)
                (= Q P)
                (= S R)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!8 (and I
                (not H)
                (not G)
                F
                E
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!9 (and (not I)
                (not H)
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))))
  (and (or (not A) B (not C) D U a!1 (not (<= S K)))
       (or A
           (not B)
           C
           D
           (not U)
           (and I H (not G) F E (= K J) (= M L) (= O N) (= Q P) (= S R))
           (<= M S))
       (or A
           (not B)
           C
           D
           (not U)
           (and I H (not G) (not F) E (= K J) (= M L) (= O N) (= Q P) (= S R))
           (not (<= M S)))
       (or (not A) B C (not D) U a!2 (= T 0))
       (or (not A)
           (not B)
           (not C)
           (not D)
           U
           (and I (not H) G F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R))
           (<= M S))
       (or A
           B
           (not C)
           D
           (not U)
           (and I
                (not H)
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= O S))
       (or A
           B
           (not C)
           D
           (not U)
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
           (not (<= O S)))
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
           (not (<= M S)))
       (or A
           (not B)
           C
           D
           U
           (and (not I) H G F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R))
           (<= M S))
       (or A (not B) (not C) D U a!3 (<= 1 M))
       (or A
           (not B)
           (not C)
           D
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
                (= S R))
           (not (<= 1 M)))
       (or A
           (not B)
           C
           D
           U
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
           (not (<= M S)))
       (or (not A)
           B
           C
           (not D)
           U
           (and (not I) (not H) G F E (= K J) (= M L) (= O N) (= Q P) (= S R))
           (not (= T 0)))
       (or (not A)
           B
           (not C)
           D
           U
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
           (<= S K))
       (or (not A)
           B
           C
           D
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
                (= S R))
           (not (<= 1 K)))
       (or A
           B
           (not C)
           D
           U
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
           (<= Q 1))
       (or A
           B
           (not C)
           D
           U
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
           (not (<= Q 1)))
       (or (not A) (not B) (not C) D (not U) a!4)
       (or A
           B
           (not C)
           (not D)
           U
           (and (not I)
                (not H)
                G
                (not F)
                (not E)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= S J)))
       (or A (not B) (not C) D (not U) a!5)
       (or (not A) B C D (not U) a!6)
       (or A (not B) (not C) (not D) U a!7)
       (or (not A)
           B
           (not C)
           (not D)
           (not U)
           (and I
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= O N)
                (= Q P)
                (= Q L)
                (= S R)))
       (or (not A)
           (not B)
           C
           (not D)
           U
           (and (not I) H G F E (= K J) (= O N) (= Q P) (= Q L) (= S R)))
       (or (not A)
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
                (= O N)
                (= Q P)
                (= Q L)
                (= S R)))
       (or A B C (not D) (not U) a!8)
       (or A
           B
           C
           D
           (not U)
           (and I
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= Q P)
                (= Q N)
                (= S R)))
       (or A (not B) (not C) (not D) (not U) a!1)
       (or A
           (not B)
           C
           (not D)
           (not U)
           (and I
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or (not A) B C (not D) (not U) a!2)
       (or A
           B
           (not C)
           (not D)
           (not U)
           (and I
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or (not A)
           B
           (not C)
           D
           (not U)
           (and (not I) H G F E (= K J) (= M L) (= O N) (= Q P) (= S R)))
       (or (not A) (not B) (not C) D U a!3)
       (or A
           (not B)
           C
           (not D)
           U
           (and (not I) H (not G) F E (= K J) (= M L) (= O N) (= Q P) (= S R)))
       (or (not A)
           (not B)
           C
           D
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
                (= S R)))
       (or (not A)
           (not B)
           C
           (not D)
           (not U)
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
       (or A B C D U a!9)
       (or A B C (not D) U a!9)
       (or (not A) (not B) (not C) (not D) (not U) a!9)
       (or (not A)
           (not B)
           C
           D
           (not U)
           (and I H G (not F) E (= P K) (= K J) (= M L) (= O N) (= S R)))
       (or (not A)
           B
           C
           D
           U
           (and I H G F E (= K J) (= M L) (= O N) (= Q P) (= S R))
           (<= 1 K))))
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
