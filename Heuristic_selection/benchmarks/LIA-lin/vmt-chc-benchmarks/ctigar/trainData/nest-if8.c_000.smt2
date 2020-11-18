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
        (let ((a!1 (and I
                H
                (not G)
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
      (a!2 (not (<= (+ S M (* (- 1) K)) (- 5))))
      (a!3 (or (not A)
               B
               C
               D
               (not U)
               (and I
                    (not H)
                    G
                    (not F)
                    E
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P)
                    (= S R))
               (<= (+ S M (* (- 1) K)) (- 5))))
      (a!4 (and I (not H) (not G) F E (= K J) (= M L) (= O N) (= Q P) (= S R)))
      (a!5 (and I
                (not H)
                (not G)
                F
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
      (a!6 (and I
                (not H)
                (not G)
                (not F)
                E
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
      (a!7 (or A
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
               (<= (+ S (* (- 1) Q)) 1)))
      (a!8 (not (<= (+ S (* (- 1) Q)) 1)))
      (a!9 (and I
                H
                (not G)
                F
                (not E)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ K (* (- 1) J)) (- 4))))
      (a!10 (and I
                 (not H)
                 G
                 F
                 E
                 (= K J)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= (+ M (* (- 1) L)) (- 2))))
      (a!11 (and (not I)
                 H
                 (not G)
                 F
                 E
                 (= K J)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= (+ M (* (- 1) L)) (- 1))))
      (a!12 (and I
                 (not H)
                 (not G)
                 (not F)
                 (not E)
                 (= K J)
                 (= M L)
                 (= Q P)
                 (= S R)
                 (= (+ O (* (- 1) N)) (- 1))))
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
  (and (or (not A)
           B
           C
           (not D)
           U
           (and I H (not G) (not F) E (= K J) (= M L) (= O N) (= Q P) (= S R))
           (not (<= Q M)))
       (or (not A) B C D (not U) a!1 a!2)
       a!3
       (or (not A)
           B
           (not C)
           (not D)
           U
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
           (= T 0))
       (or A (not B) C D U a!4 (<= 0 M))
       (or (not A) (not B) C D U a!5 (not (<= M O)))
       (or (not A) (not B) (not C) D U a!6 (not (<= S O)))
       (or (not A)
           (not B)
           (not C)
           D
           U
           (and (not I) H G F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R))
           (<= S O))
       (or (not A)
           (not B)
           C
           D
           U
           (and (not I) H G (not F) E (= K J) (= M L) (= O N) (= Q P) (= S R))
           (<= M O))
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
           (not (<= 0 M)))
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
           (<= Q M))
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
           (<= S K))
       a!7
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
           a!8)
       (or A (not B) (not C) D (not U) a!9)
       (or (not A) B C (not D) (not U) a!10)
       (or A (not B) C (not D) U a!11)
       (or (not A) (not B) (not C) (not D) U a!12)
       (or A (not B) C D (not U) a!1)
       (or (not A)
           B
           (not C)
           D
           (not U)
           (and I (not H) G F (not E) (= K J) (= M L) (= O N) (= Q P) (= S R)))
       (or A B (not C) (not D) (not U) a!4)
       (or (not A) B (not C) (not D) (not U) a!5)
       (or A B (not C) D (not U) a!6)
       (or (not A)
           (not B)
           C
           (not D)
           U
           (and (not I) H G F E (= K J) (= M L) (= O N) (= Q P) (= S R)))
       (or A
           B
           C
           D
           (not U)
           (and (not I)
                H
                G
                (not F)
                (not E)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
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
                (= S R)))
       (or A
           B
           C
           (not D)
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
       (or A
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
       (or A B C D U a!13)
       (or A B C (not D) U a!13)
       (or A (not B) (not C) (not D) (not U) a!13)
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
                (= J 0)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
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
                (= L K)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)))
       (or A
           (not B)
           (not C)
           (not D)
           U
           (and (not I)
                H
                G
                (not F)
                (not E)
                (= N 0)
                (= K J)
                (= M L)
                (= Q P)
                (= S R)))
       (or (not A)
           B
           C
           D
           U
           (and I H (not G) F E (= K J) (= M L) (= O N) (= Q P) (= S R))
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
        (or (and J (not A) (not B) C (not D))
    (and J (not A) (not B) C D)
    (and J (not A) B (not C) (not D)))
      )
      false
    )
  )
)

(check-sat)
(exit)
