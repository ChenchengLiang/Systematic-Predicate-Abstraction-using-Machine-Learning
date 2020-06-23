(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (and (not A) (not K) (not J) (not I) (= B true))
      )
      (state A B K I J H G F E D C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) ) 
    (=>
      (and
        (state A B V T U S Q O M K I)
        (let ((a!1 (and G
                (not F)
                E
                D
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
      (a!2 (and G
                (not F)
                E
                (not D)
                C
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
      (a!3 (not (<= (- 1) (+ S (* (- 1) O)))))
      (a!4 (or A
               B
               T
               (not U)
               V
               (and G
                    (not F)
                    (not E)
                    (not D)
                    C
                    (= I H)
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P)
                    (= S R))
               (<= (- 1) (+ S (* (- 1) O)))))
      (a!5 (not (<= 0 (+ Q (* (- 2) K)))))
      (a!6 (or (not A)
               B
               (not T)
               U
               V
               (and (not G)
                    F
                    (not E)
                    D
                    C
                    (= I H)
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P)
                    (= S R))
               (<= 0 (+ Q (* (- 2) K)))))
      (a!7 (or A
               (not B)
               (not T)
               U
               (not V)
               (and (not (<= K I)) (not (<= Q 2)))
               (and G
                    (not F)
                    E
                    D
                    C
                    (= I H)
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P)
                    (= S R))))
      (a!8 (and G
                (not F)
                E
                (not D)
                (not C)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= (+ I (* (- 1) H)) (- 1))))
      (a!9 (and (not G)
                F
                (not E)
                (not D)
                C
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= (+ Q (* (- 1) P) (* (- 1) M)) 0)))
      (a!10 (and (not G)
                 F
                 (not E)
                 D
                 (not C)
                 (= I H)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= (+ S (* (- 1) R) M) 0)))
      (a!11 (and G
                 (not F)
                 (not E)
                 D
                 C
                 (= I H)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= (+ S (* (- 1) R)) (- 2))))
      (a!12 (and (not G)
                 (not F)
                 (not E)
                 (not D)
                 (not C)
                 (= I H)
                 (= K J)
                 (= M L)
                 (= O N)
                 (= Q P)
                 (= S R))))
  (and (or A
           (not B)
           T
           U
           V
           (and G
                F
                (not E)
                D
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= M 0)))
       (or (not A)
           B
           T
           U
           V
           (and G
                F
                (not E)
                (not D)
                C
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= Q 0)))
       (or (not A)
           (not B)
           T
           U
           V
           (and G
                F
                (not E)
                (not D)
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= K 0)))
       (or (not A) B (not T) U (not V) a!1 (<= 0 S))
       (or A B T (not U) V a!2 a!3)
       a!4
       (or (not A)
           B
           (not T)
           U
           (not V)
           (and (not G) F E D C (= I H) (= K J) (= M L) (= O N) (= Q P) (= S R))
           (not (<= 0 S)))
       (or (not A)
           B
           (not T)
           U
           V
           (and (not G)
                F
                E
                (not D)
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           a!5)
       a!6
       (or A
           B
           T
           U
           (not V)
           (and (not G)
                (not F)
                E
                D
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (not (<= M Q)))
       (or A
           B
           T
           U
           (not V)
           (and (not G)
                (not F)
                E
                (not D)
                C
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= M Q))
       (or (not A)
           (not B)
           T
           U
           V
           (and (not G)
                (not F)
                E
                (not D)
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= K 0))
       (or (not A)
           B
           T
           U
           V
           (and (not G)
                (not F)
                (not E)
                D
                C
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= Q 0))
       (or A
           (not B)
           T
           U
           V
           (and (not G)
                (not F)
                (not E)
                D
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= M 0))
       a!7
       (or (not A) (not B) T (not U) V a!8)
       (or (not A)
           (not B)
           T
           U
           (not V)
           (and (not G)
                F
                (not E)
                (not D)
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= Q P)
                (= Q N)
                (= S R)))
       (or A B (not T) U V a!9)
       (or A (not B) (not T) U V a!10)
       (or (not A) B T (not U) V a!11)
       (or (not A) B T (not U) (not V) a!1)
       (or A (not B) T (not U) (not V) a!2)
       (or A
           (not B)
           T
           (not U)
           V
           (and G
                (not F)
                (not E)
                D
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or (not A)
           (not B)
           (not T)
           U
           (not V)
           (and G
                (not F)
                (not E)
                (not D)
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or A
           B
           T
           (not U)
           (not V)
           (and (not G)
                F
                E
                (not D)
                C
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or A B T U V a!12)
       (or A B (not T) (not U) V a!12)
       (or A (not B) T U (not V) a!12)
       (or A (not B) (not T) (not U) V a!12)
       (or (not A) B (not T) (not U) V a!12)
       (or (not A) (not B) T (not U) (not V) a!12)
       (or (not A) (not B) (not T) U V a!12)
       (or A
           B
           (not T)
           U
           (not V)
           (and (not G)
                F
                E
                (not D)
                C
                (= H 0)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)))
       (or (not A)
           B
           T
           U
           (not V)
           (and (not G)
                (not F)
                E
                D
                C
                (= R 0)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or A
           (not B)
           (not T)
           U
           (not V)
           (and (not G)
                F
                E
                D
                (not C)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R))
           (<= K I)
           (<= Q 2))))
      )
      (state D C E F G R P N L J H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (state A B K I J H G F E D C)
        (or (and (not I) J K (not A) B) (and (not I) J K A (not B)))
      )
      false
    )
  )
)

(check-sat)
(exit)
