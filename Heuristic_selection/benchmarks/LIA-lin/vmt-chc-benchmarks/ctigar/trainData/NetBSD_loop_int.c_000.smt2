(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) ) 
    (=>
      (and
        (and (= A true) (not N) (not M) (not L) (not B))
      )
      (state B A L N M K J I H G F E D C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Bool) (C1 Bool) ) 
    (=>
      (and
        (state D A A1 C1 B1 Y W U S Q O M K I)
        (let ((a!1 (and G
                F
                (not E)
                (not C)
                (not B)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
      (a!2 (and G
                (not F)
                E
                C
                B
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
      (a!3 (not (<= 1 (+ M (* (- 1) K)))))
      (a!4 (or (not A)
               D
               A1
               (not B1)
               C1
               (and G
                    (not F)
                    (not E)
                    (not C)
                    B
                    (= I H)
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P)
                    (= S R)
                    (= U T)
                    (= W V)
                    (= Y X))
               (<= 1 (+ M (* (- 1) K)))))
      (a!5 (or (not A)
               (not D)
               A1
               B1
               (not C1)
               (and (not G)
                    F
                    E
                    (not C)
                    B
                    (= I H)
                    (= K J)
                    (= M L)
                    (= O N)
                    (= Q P)
                    (= S R)
                    (= U T)
                    (= W V)
                    (= Y X))
               (<= 0 (+ Y M (* (- 1) I)))))
      (a!6 (not (<= 0 (+ Y M (* (- 1) I)))))
      (a!7 (and (not G)
                F
                E
                C
                B
                (= I H)
                (= K J)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= (+ M (* (- 1) L)) (- 1))))
      (a!8 (and (not G)
                (not F)
                (not E)
                (not C)
                (not B)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))))
  (and (or (not A) (not D) (not A1) B1 (not C1) a!1 (<= 0 M))
       (or (not A) D A1 (not B1) C1 a!2 a!3)
       (or (not A)
           (not D)
           A1
           (not B1)
           C1
           (and G
                (not F)
                E
                C
                (not B)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (= Z 0))
       (or (not A)
           (not D)
           A1
           (not B1)
           C1
           (and G
                (not F)
                E
                (not C)
                (not B)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (= Z 0)))
       a!4
       (or (not A)
           (not D)
           (not A1)
           B1
           (not C1)
           (and G
                (not F)
                (not E)
                (not C)
                (not B)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (<= 0 M)))
       a!5
       (or (not A)
           (not D)
           A1
           B1
           (not C1)
           (and (not G)
                F
                E
                (not C)
                (not B)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           a!6)
       (or (not A)
           D
           A1
           B1
           C1
           (and (not G)
                (not F)
                (not E)
                (not C)
                B
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (<= K 0))
       (or (not A)
           (not D)
           (not A1)
           B1
           C1
           (and (not G)
                F
                (not E)
                (not C)
                (not B)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= W H)
                (= Y X)))
       (or A (not D) (not A1) B1 (not C1) a!7)
       (or A
           D
           A1
           B1
           (not C1)
           (and (not G)
                F
                (not E)
                C
                (not B)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= S R)
                (= U T)
                (= U P)
                (= W V)
                (= Y X)))
       (or A D A1 (not B1) (not C1) a!1)
       (or (not A) (not D) (not A1) (not B1) C1 a!2)
       (or (not A)
           D
           (not A1)
           (not B1)
           C1
           (and G
                (not F)
                E
                (not C)
                B
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A
           (not D)
           A1
           (not B1)
           C1
           (and G
                (not F)
                (not E)
                C
                B
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A
           D
           A1
           (not B1)
           C1
           (and G
                (not F)
                (not E)
                C
                (not B)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A
           D
           (not A1)
           B1
           (not C1)
           (and (not G)
                F
                E
                C
                (not B)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A
           (not D)
           A1
           B1
           (not C1)
           (and (not G)
                F
                (not E)
                C
                B
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A
           (not D)
           (not A1)
           (not B1)
           C1
           (and (not G)
                F
                (not E)
                (not C)
                B
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A D A1 B1 C1 a!8)
       (or A D (not A1) (not B1) C1 a!8)
       (or (not A) D A1 (not B1) (not C1) a!8)
       (or (not A) D (not A1) B1 (not C1) a!8)
       (or (not A)
           D
           A1
           B1
           (not C1)
           (and (not G)
                F
                (not E)
                (not C)
                B
                (= I H)
                (= K J)
                (= L 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A
           (not D)
           A1
           B1
           C1
           (and (not G)
                (not F)
                (not E)
                C
                B
                (= I H)
                (= N 0)
                (= K J)
                (= M L)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or (not A)
           D
           (not A1)
           B1
           C1
           (and (not G)
                (not F)
                E
                (not C)
                B
                (= R O)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)
                (= Y X)))
       (or (not A)
           (not D)
           A1
           B1
           C1
           (and (not G)
                (not F)
                E
                (not C)
                (not B)
                (= T 0)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)
                (= Y X)))
       (or A
           D
           (not A1)
           B1
           C1
           (and (not G)
                (not F)
                E
                C
                (not B)
                (= V K)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= Y X)))
       (or A
           (not D)
           (not A1)
           B1
           C1
           (and (not G)
                (not F)
                E
                C
                B
                (= X O)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
       (or (not A)
           D
           A1
           B1
           C1
           (and G
                F
                (not E)
                C
                (not B)
                (= I H)
                (= K J)
                (= M L)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (<= K 0)))))
      )
      (state B C E F G X V T R P N L J H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) ) 
    (=>
      (and
        (state B A L N M K J I H G F E D C)
        (or (and (not L) M N (not A) (not B)) (and L M (not N) A B))
      )
      false
    )
  )
)

(check-sat)
(exit)
