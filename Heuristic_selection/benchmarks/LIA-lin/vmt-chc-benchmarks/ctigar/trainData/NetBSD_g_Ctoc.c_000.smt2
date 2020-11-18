(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (and (= D true) (not C) (not B) (not A) (not J) (not E))
      )
      (state E D C A B J F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) ) 
    (=>
      (and
        (state E D C A B U M O Q S)
        (let ((a!1 (and K
                (not J)
                (not I)
                (not H)
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
      (a!2 (and K
                (not J)
                (not I)
                (not H)
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
      (a!3 (and (not K) J I H G F (= M L) (= O N) (= Q P) (= S R)))
      (a!4 (and (not K) J I H G (not F) (= M L) (= O N) (= Q P) (= S R)))
      (a!5 (and (not K)
                J
                I
                (not H)
                G
                F
                (= O N)
                (= Q P)
                (= S R)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!6 (and (not K)
                J
                (not I)
                H
                G
                F
                (= O N)
                (= Q P)
                (= S R)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!7 (and (not K)
                J
                I
                H
                (not G)
                (not F)
                (= M L)
                (= Q P)
                (= S R)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!8 (and (not K)
                J
                I
                (not H)
                (not G)
                (not F)
                (= M L)
                (= Q P)
                (= S R)
                (= (+ O (* (- 1) N)) (- 1))))
      (a!9 (and (not K)
                J
                I
                H
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= (+ S (* (- 1) R)) 1)))
      (a!10 (and K (not J) (not I) (not H) G F (= M L) (= O N) (= Q P) (= S R)))
      (a!11 (and (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (not F)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= S R))))
  (and (or (not A) B (not C) (not D) E U a!1 (<= 0 O))
       (or (not A) B (not C) (not D) (not E) U a!2 (not (<= Q O)))
       (or A (not B) C (not D) E U a!3 (<= 0 M))
       (or A (not B) C (not D) (not E) U a!4 (not (<= Q M)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           U
           (and (not K) J I (not H) (not G) F (= M L) (= O N) (= Q P) (= S R))
           (= T 0))
       (or A
           (not B)
           (not C)
           (not D)
           E
           U
           (and (not K) J (not I) H G (not F) (= M L) (= O N) (= Q P) (= S R))
           (not (= T 0)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           U
           (and (not K)
                J
                (not I)
                H
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= Q M))
       (or A
           (not B)
           C
           (not D)
           E
           U
           (and (not K)
                J
                (not I)
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= 0 M)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           U
           (and (not K)
                J
                (not I)
                (not H)
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= Q O))
       (or (not A)
           B
           (not C)
           (not D)
           E
           U
           (and (not K) (not J) I H G (not F) (= M L) (= O N) (= Q P) (= S R))
           (not (<= 0 O)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           U
           (and (not K) (not J) I H (not G) F (= M L) (= O N) (= Q P) (= S R))
           (= S 0))
       (or (not A)
           B
           C
           (not D)
           (not E)
           U
           (and (not K)
                (not J)
                I
                H
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (= S 0)))
       (or A
           B
           (not C)
           D
           (not E)
           U
           (and (not K)
                (not J)
                I
                (not H)
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (= S 0))
       (or A
           B
           (not C)
           D
           (not E)
           U
           (and (not K) (not J) (not I) H G F (= M L) (= O N) (= Q P) (= S R))
           (not (= S 0)))
       (or A
           B
           (not C)
           D
           E
           U
           (and (not K)
                (not J)
                (not I)
                H
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= 1 Q)))
       (or A
           B
           C
           D
           (not E)
           U
           (and (not K)
                (not J)
                (not I)
                H
                (not G)
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= Q 0))
       (or A
           B
           C
           D
           (not E)
           U
           (and (not K)
                (not J)
                (not I)
                (not H)
                G
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= Q 0)))
       (or (not A) (not B) C D (not E) U a!5)
       (or A (not B) (not C) D (not E) U a!6)
       (or (not A) (not B) C (not D) (not E) U a!7)
       (or A (not B) (not C) (not D) (not E) U a!8)
       (or (not A) (not B) (not C) D E U a!9)
       (or A B C (not D) (not E) (not U) a!10)
       (or A B C (not D) E (not U) a!1)
       (or A B C D E (not U) a!2)
       (or (not A) (not B) (not C) (not D) (not E) U a!3)
       (or (not A) (not B) (not C) D (not E) U a!4)
       (or (not A)
           (not B)
           C
           (not D)
           E
           U
           (and (not K) J I (not H) G (not F) (= M L) (= O N) (= Q P) (= S R)))
       (or A
           (not B)
           (not C)
           D
           E
           U
           (and (not K) J (not I) H (not G) F (= M L) (= O N) (= Q P) (= S R)))
       (or A
           (not B)
           C
           D
           (not E)
           U
           (and (not K) J (not I) (not H) G F (= M L) (= O N) (= Q P) (= S R)))
       (or A
           (not B)
           C
           D
           E
           U
           (and (not K)
                J
                (not I)
                (not H)
                (not G)
                F
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           U
           (and (not K) (not J) I H G F (= M L) (= O N) (= Q P) (= S R)))
       (or (not A)
           B
           C
           D
           (not E)
           U
           (and (not K) (not J) I (not H) G F (= M L) (= O N) (= Q P) (= S R)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           U
           (and (not K)
                (not J)
                I
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or A
           B
           (not C)
           (not D)
           E
           U
           (and (not K)
                (not J)
                (not I)
                H
                G
                (not F)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or A B C D E U a!11)
       (or A B C D (not E) (not U) a!11)
       (or A B C (not D) (not E) U a!11)
       (or A B (not C) (not D) (not E) U a!11)
       (or (not A) B (not C) D E U a!11)
       (or (not A) (not B) C D E U a!11)
       (or A
           B
           C
           (not D)
           E
           U
           (and (not K)
                (not J)
                (not I)
                (not H)
                G
                (not F)
                (= M L)
                (= O N)
                (= Q R)
                (= Q P)))
       (or (not A)
           B
           C
           D
           E
           U
           (and (not K)
                (not J)
                I
                (not H)
                (not G)
                F
                (= L 0)
                (= O N)
                (= Q P)
                (= S R)))
       (or (not A)
           B
           C
           (not D)
           E
           U
           (and (not K)
                (not J)
                I
                (not H)
                G
                (not F)
                (= N 0)
                (= M L)
                (= Q P)
                (= S R)))
       (or A B (not C) D E U a!10 (<= 1 Q))))
      )
      (state G F H I J K L N P R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (state E D C A B J F G H I)
        (or (and (not J) A B C (not D) E)
    (and (not J) A B C D E)
    (and J (not A) (not B) (not C) (not D) (not E))
    (and J (not A) (not B) (not C) D (not E))
    (and J (not A) (not B) (not C) D E))
      )
      false
    )
  )
)

(check-sat)
(exit)
