(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (and (not J) (not I) (not H) (= G true) (not K))
      )
      (state K G I H J F E D C B A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) ) 
    (=>
      (and
        (state V R T S U Q O M K I G)
        (let ((a!1 (and (not E) D C B A (= G F) (= I H) (= K J) (= M L) (= O N) (= Q P)))
      (a!2 (or R
               (not S)
               T
               U
               (not V)
               (and (not E)
                    D
                    C
                    B
                    (not A)
                    (= G F)
                    (= I H)
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P))
               (<= (+ M (* (- 1) I)) (- 1))))
      (a!3 (and (not E)
                D
                C
                (not B)
                A
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
      (a!4 (not (<= (+ M (* (- 1) I)) (- 1))))
      (a!5 (and (not E)
                D
                (not C)
                B
                A
                (= G F)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= (+ I (* (- 1) H)) (- 1))))
      (a!6 (and (not E)
                (not D)
                (not C)
                (not B)
                A
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= Q P)
                (= (+ Q (* (- 1) N) M) 0)))
      (a!7 (and (not E)
                (not D)
                (not C)
                (not B)
                (not A)
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))))
  (and (or (not R)
           S
           (not T)
           U
           (not V)
           (and E
                (not D)
                (not C)
                (not B)
                (not A)
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (<= I G))
       (or R (not S) T U V a!1 (<= 0 I))
       a!2
       (or R (not S) T U (not V) a!3 a!4)
       (or R
           (not S)
           T
           U
           V
           (and (not E)
                D
                (not C)
                B
                (not A)
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (<= 0 I)))
       (or (not R)
           S
           (not T)
           U
           (not V)
           (and (not E)
                D
                (not C)
                (not B)
                (not A)
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (<= I G)))
       (or (not R)
           S
           T
           U
           V
           (and (not E)
                (not D)
                C
                (not B)
                (not A)
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (<= M 0))
       (or (not R)
           S
           (not T)
           U
           V
           (and (not E)
                (not D)
                C
                (not B)
                A
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= O F)
                (= Q P)))
       (or R (not S) (not T) U V a!5)
       (or R
           S
           (not T)
           U
           (not V)
           (and (not E)
                (not D)
                C
                B
                A
                (= G F)
                (= K J)
                (= K H)
                (= M L)
                (= O N)
                (= Q P)))
       (or R
           S
           (not T)
           U
           V
           (and (not E)
                (not D)
                (not C)
                B
                A
                (= G F)
                (= I H)
                (= M L)
                (= O N)
                (= Q P)
                (= Q J)))
       (or (not R) S T U (not V) a!6)
       (or (not R) (not S) (not T) U (not V) a!1)
       (or R (not S) (not T) U (not V) a!3)
       (or (not R)
           (not S)
           T
           U
           V
           (and (not E)
                D
                C
                (not B)
                (not A)
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or (not R)
           (not S)
           T
           U
           (not V)
           (and (not E)
                D
                (not C)
                (not B)
                A
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or (not R)
           (not S)
           (not T)
           U
           V
           (and (not E)
                (not D)
                C
                B
                A
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)))
       (or R S T U V a!7)
       (or R S T (not U) V a!7)
       (or (not R) S T (not U) V a!7)
       (or R
           S
           T
           U
           (not V)
           (and (not E)
                (not D)
                C
                B
                (not A)
                (= P 0)
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)))
       (or (not R)
           S
           T
           U
           V
           (and E
                (not D)
                (not C)
                B
                (not A)
                (= G F)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P))
           (not (<= M 0)))))
      )
      (state C B A D E P N L J H F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (state K G I H J F E D C B A)
        (or (and (not G) H I (not J) K) (and G H I (not J) K))
      )
      false
    )
  )
)

(check-sat)
(exit)
