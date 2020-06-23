(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (and (= E true) (not D) (not C) (not B) (not A) (not N) (not F))
      )
      (state F E D C B A N G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Bool) ) 
    (=>
      (and
        (state F E D C B A C1 O Q S U W Y A1)
        (let ((a!1 (and M
                L
                K
                J
                I
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
      (a!2 (<= 1 (+ O Q S U W Y A1)))
      (a!3 (or A
               (not B)
               (not C)
               D
               (not E)
               F
               (not C1)
               (and M
                    L
                    K
                    (not J)
                    I
                    (not H)
                    (not G)
                    (= O N)
                    (= Q P)
                    (= S R)
                    (= U T)
                    (= W V)
                    (= Y X)
                    (= A1 Z))
               (not (<= (+ U Y) 1))))
      (a!4 (or A
               (not B)
               C
               (not D)
               (not E)
               (not F)
               (not C1)
               (and M
                    L
                    K
                    (not J)
                    (not I)
                    (not H)
                    (not G)
                    (= O N)
                    (= Q P)
                    (= S R)
                    (= U T)
                    (= W V)
                    (= Y X)
                    (= A1 Z))
               (not (<= (+ S A1) 1))))
      (a!5 (and M
                (not L)
                (not K)
                (not J)
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
      (a!6 (= (+ O (* (- 1) N) S W A1) 0))
      (a!7 (= (+ O (* (- 1) N) Q U Y) 0))
      (a!8 (and M
                (not L)
                K
                J
                (not I)
                (not H)
                (not G)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)
                (= (+ O (* (- 1) N)) 1)))
      (a!9 (and M
                (not L)
                (not K)
                J
                (not I)
                (not H)
                (not G)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)
                (= (+ O (* (- 1) N)) 1)))
      (a!10 (and M
                 (not L)
                 (not K)
                 J
                 (not I)
                 H
                 (not G)
                 (= O N)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= A1 Z)
                 (= (+ Q (* (- 1) P) U Y) (- 1))))
      (a!11 (and (not M)
                 L
                 K
                 J
                 (not I)
                 H
                 G
                 (= O N)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= A1 Z)
                 (= (+ Q (* (- 1) P) U Y) (- 1))))
      (a!12 (and M
                 L
                 (not K)
                 (not J)
                 I
                 H
                 (not G)
                 (= O N)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= A1 Z)
                 (= (+ Q (* (- 1) P)) 1)))
      (a!13 (and (not M)
                 (not L)
                 K
                 (not J)
                 I
                 H
                 G
                 (= O N)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= A1 Z)
                 (= (+ Q (* (- 1) P)) 1)))
      (a!14 (and (not M)
                 L
                 (not K)
                 J
                 (not I)
                 (not H)
                 (not G)
                 (= O N)
                 (= Q P)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= A1 Z)
                 (= (+ S (* (- 1) R)) 1)))
      (a!15 (and (not M)
                 (not L)
                 K
                 J
                 I
                 (not H)
                 (not G)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= W V)
                 (= Y X)
                 (= A1 Z)
                 (= (+ U (* (- 1) T)) 1)))
      (a!16 (and M
                 (not L)
                 K
                 J
                 (not I)
                 H
                 (not G)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= Y X)
                 (= A1 Z)
                 (= (+ S W (* (- 1) V) A1) (- 1))))
      (a!17 (and M
                 L
                 (not K)
                 J
                 (not I)
                 (not H)
                 (not G)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= Y X)
                 (= A1 Z)
                 (= (+ S (* (- 1) V) A1) (- 1))))
      (a!18 (and (not M)
                 L
                 K
                 J
                 (not I)
                 (not H)
                 G
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= Y X)
                 (= A1 Z)
                 (= (+ W (* (- 1) V)) 1)))
      (a!19 (and (not M)
                 L
                 K
                 (not J)
                 I
                 (not H)
                 (not G)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= Y X)
                 (= A1 Z)
                 (= (+ W (* (- 1) V)) 1)))
      (a!20 (and (not M)
                 (not L)
                 K
                 J
                 I
                 H
                 (not G)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= A1 Z)
                 (= (+ Y (* (- 1) X)) (- 1))))
      (a!21 (and (not M)
                 L
                 (not K)
                 J
                 (not I)
                 H
                 (not G)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= (+ A1 (* (- 1) Z)) (- 1))))
      (a!22 (and M
                 L
                 K
                 J
                 I
                 H
                 (not G)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= A1 Z)))
      (a!23 (and (not M)
                 (not L)
                 (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= A1 Z))))
  (and (or A (not B) (not C) D (not E) (not F) (not C1) a!1 a!2)
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (not C1)
           (and M
                L
                K
                J
                (not I)
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not a!2))
       a!3
       a!4
       (or A
           B
           (not C)
           D
           (not E)
           F
           C1
           (and M
                L
                (not K)
                J
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (= B1 0))
       (or A
           (not B)
           C
           D
           E
           F
           (not C1)
           (and M
                L
                (not K)
                (not J)
                I
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 Q)))
       (or A
           (not B)
           C
           D
           E
           F
           (not C1)
           (and M
                L
                (not K)
                (not J)
                (not I)
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 Q))
       (or A
           B
           (not C)
           D
           E
           F
           (not C1)
           (and M
                L
                (not K)
                (not J)
                (not I)
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (= B1 0))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not C1)
           (and M
                (not L)
                K
                (not J)
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 O)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not C1)
           (and M
                (not L)
                K
                (not J)
                I
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 O))
       (or A
           B
           (not C)
           D
           E
           F
           (not C1)
           (and M
                (not L)
                K
                (not J)
                (not I)
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (= B1 0)))
       (or A
           B
           C
           D
           E
           F
           (not C1)
           (and M
                (not L)
                K
                (not J)
                (not I)
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (= B1 0))
       (or A
           B
           C
           D
           (not E)
           F
           (not C1)
           (and M
                (not L)
                (not K)
                (not J)
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 O)))
       (or A
           B
           C
           D
           (not E)
           F
           (not C1)
           (and M
                (not L)
                (not K)
                (not J)
                I
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 O))
       (or A
           B
           C
           D
           E
           F
           (not C1)
           (and M
                (not L)
                (not K)
                (not J)
                (not I)
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (= B1 0)))
       (or A (not B) C (not D) (not E) (not F) (not C1) a!5 (<= (+ S A1) 1))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           C1
           (and M
                (not L)
                (not K)
                (not J)
                (not I)
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (= B1 0))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           C1
           (and (not M)
                L
                K
                J
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (= B1 0))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           C1
           (and (not M)
                L
                K
                (not J)
                I
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 W)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           C1
           (and (not M)
                L
                K
                (not J)
                I
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 W))
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           C1
           (and (not M)
                L
                K
                (not J)
                (not I)
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (= B1 0)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                L
                K
                (not J)
                (not I)
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 W)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           C1
           (and (not M)
                L
                K
                (not J)
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (= B1 0))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                L
                K
                (not J)
                (not I)
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 W))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           C1
           (and (not M)
                L
                (not K)
                J
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (= B1 0)))
       (or A
           (not B)
           C
           D
           E
           F
           C1
           (and (not M)
                L
                (not K)
                J
                I
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (= B1 0))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           C1
           (and (not M)
                L
                (not K)
                (not J)
                I
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 W)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           C1
           (and (not M)
                L
                (not K)
                (not J)
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 S)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           C1
           (and (not M)
                L
                (not K)
                (not J)
                I
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 W))
       (or A
           (not B)
           C
           D
           (not E)
           F
           C1
           (and (not M)
                L
                (not K)
                (not J)
                I
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 S))
       (or (not A)
           (not B)
           C
           D
           E
           F
           C1
           (and (not M)
                L
                (not K)
                (not J)
                (not I)
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (= B1 0)))
       (or A
           (not B)
           C
           D
           E
           F
           C1
           (and (not M)
                L
                (not K)
                (not J)
                (not I)
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (= B1 0)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                L
                (not K)
                (not J)
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (= B1 0))
       (or A
           B
           (not C)
           D
           E
           (not F)
           C1
           (and (not M)
                L
                (not K)
                (not J)
                (not I)
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (= B1 0))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                K
                J
                (not I)
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 U)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                K
                J
                (not I)
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 U))
       (or A
           B
           (not C)
           D
           E
           (not F)
           C1
           (and (not M)
                (not L)
                K
                (not J)
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (= B1 0)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           C1
           (and (not M)
                (not L)
                K
                (not J)
                I
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 Q)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           C1
           (and (not M)
                (not L)
                K
                (not J)
                I
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (= B1 0)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           C1
           (and (not M)
                (not L)
                K
                (not J)
                (not I)
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 Q))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                K
                (not J)
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (= B1 0)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                (not K)
                J
                I
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (= B1 0))
       (or A
           B
           C
           D
           (not E)
           F
           C1
           (and (not M)
                (not L)
                (not K)
                (not J)
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 O)))
       (or (not A)
           B
           C
           D
           E
           F
           C1
           (and (not M)
                (not L)
                (not K)
                (not J)
                I
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (<= 1 Q)))
       (or A
           B
           C
           D
           (not E)
           F
           C1
           (and (not M)
                (not L)
                (not K)
                (not J)
                I
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 O))
       (or (not A)
           B
           C
           D
           E
           F
           C1
           (and (not M)
                (not L)
                (not K)
                (not J)
                (not I)
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (<= 1 Q))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                (not K)
                (not J)
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z))
           (not (= B1 0)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           C1
           (and (not M)
                L
                (not K)
                J
                (not I)
                (not H)
                G
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)
                a!6))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                K
                J
                (not I)
                (not H)
                G
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)
                a!6))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           C1
           (and (not M)
                L
                K
                (not J)
                I
                H
                (not G)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)
                a!7))
       (or (not A)
           B
           C
           D
           E
           (not F)
           C1
           (and (not M)
                (not L)
                (not K)
                (not J)
                I
                H
                G
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)
                a!7))
       (or A B (not C) D (not E) (not F) (not C1) a!8)
       (or A B C D (not E) (not F) (not C1) a!9)
       (or A B C (not D) E F (not C1) a!10)
       (or (not A) (not B) (not C) (not D) E F C1 a!11)
       (or A (not B) C D E (not F) (not C1) a!12)
       (or (not A) B (not C) D E (not F) C1 a!13)
       (or A (not B) C D (not E) (not F) C1 a!14)
       (or A B (not C) (not D) (not E) F C1 a!15)
       (or A B (not C) (not D) E F (not C1) a!16)
       (or A (not B) C D (not E) (not F) (not C1) a!17)
       (or (not A) (not B) (not C) D (not E) (not F) C1 a!18)
       (or A (not B) (not C) D (not E) F C1 a!19)
       (or A B (not C) (not D) E (not F) C1 a!20)
       (or A (not B) C (not D) E F C1 a!21)
       (or A (not B) (not C) (not D) (not E) (not F) (not C1) a!22)
       (or A (not B) (not C) (not D) E (not F) (not C1) a!1)
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not C1)
           (and M
                L
                K
                J
                (not I)
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not C1)
           (and M
                L
                K
                (not J)
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (not C1)
           (and M
                L
                K
                (not J)
                (not I)
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not C1)
           (and M
                (not L)
                K
                J
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not C1)
           (and M
                (not L)
                (not K)
                J
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A) B C D E F (not C1) a!5)
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (not C1)
           (and (not M)
                L
                K
                J
                I
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           C1
           (and (not M)
                L
                K
                J
                I
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                L
                (not K)
                J
                I
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           C1
           (and (not M)
                L
                (not K)
                J
                (not I)
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                K
                J
                I
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           C1
           (and (not M)
                (not L)
                K
                J
                I
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                K
                (not J)
                (not I)
                H
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                (not K)
                J
                I
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A B C D E F C1 a!23)
       (or A B C D E (not F) C1 a!23)
       (or A B C D E (not F) (not C1) a!23)
       (or A B (not C) D E (not F) (not C1) a!23)
       (or A B (not C) (not D) E F C1 a!23)
       (or A (not B) C D E (not F) C1 a!23)
       (or A (not B) C D (not E) F (not C1) a!23)
       (or A (not B) (not C) D E F C1 a!23)
       (or A (not B) (not C) (not D) (not E) F (not C1) a!23)
       (or (not A) B C D (not E) F C1 a!23)
       (or (not A) B (not C) D (not E) F C1 a!23)
       (or (not A) (not B) C D E (not F) C1 a!23)
       (or (not A) (not B) (not C) D E (not F) C1 a!23)
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           C1
           (and (not M)
                L
                K
                J
                (not I)
                (not H)
                (not G)
                (= P 0)
                (= O N)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           C1
           (and (not M)
                (not L)
                (not K)
                J
                I
                H
                (not G)
                (= P 0)
                (= O N)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                (not K)
                J
                (not I)
                (not H)
                G
                (= P 0)
                (= O N)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (not C1)
           (and M
                L
                (not K)
                J
                (not I)
                H
                (not G)
                (= R 0)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not C1)
           (and M
                (not L)
                K
                J
                I
                (not H)
                (not G)
                (= R 0)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           B
           C
           (not D)
           E
           F
           C1
           (and (not M)
                (not L)
                (not K)
                J
                (not I)
                H
                (not G)
                (= R 0)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           C1
           (and (not M)
                L
                (not K)
                J
                I
                (not H)
                G
                (= R 1)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           C1
           (and (not M)
                (not L)
                K
                J
                I
                (not H)
                G
                (= R 1)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (not C1)
           (and M
                (not L)
                (not K)
                J
                I
                (not H)
                (not G)
                (= T 0)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           F
           C1
           (and (not M)
                L
                K
                J
                I
                (not H)
                G
                (= T 0)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                K
                (not J)
                (not I)
                (not H)
                (not G)
                (= T 0)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           C1
           (and (not M)
                L
                K
                J
                (not I)
                H
                (not G)
                (= T 1)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           C1
           (and (not M)
                (not L)
                (not K)
                J
                (not I)
                H
                G
                (= T 1)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           C1
           (and (not M)
                L
                (not K)
                J
                (not I)
                H
                G
                (= V 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= Y X)
                (= A1 Z)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           C1
           (and (not M)
                (not L)
                K
                J
                (not I)
                H
                G
                (= V 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= Y X)
                (= A1 Z)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           C1
           (and (not M)
                (not L)
                (not K)
                J
                (not I)
                (not H)
                (not G)
                (= V 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= Y X)
                (= A1 Z)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (not C1)
           (and M
                (not L)
                (not K)
                J
                I
                H
                (not G)
                (= X 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= A1 Z)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           (not F)
           C1
           (and (not M)
                L
                K
                J
                I
                H
                G
                (= X 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= A1 Z)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           C1
           (and (not M)
                L
                K
                J
                I
                (not H)
                (not G)
                (= X 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= A1 Z)))
       (or A
           B
           (not C)
           D
           E
           F
           C1
           (and (not M)
                (not L)
                K
                (not J)
                (not I)
                H
                (not G)
                (= X 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= A1 Z)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           C1
           (and (not M)
                (not L)
                (not K)
                J
                I
                (not H)
                G
                (= X 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= A1 Z)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (not C1)
           (and M
                L
                (not K)
                J
                I
                (not H)
                (not G)
                (= Z 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not C1)
           (and M
                (not L)
                K
                J
                I
                H
                (not G)
                (= Z 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           C1
           (and (not M)
                L
                (not K)
                J
                I
                H
                G
                (= Z 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
           C1
           (and (not M)
                (not L)
                K
                J
                I
                H
                G
                (= Z 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           C1
           (and (not M)
                (not L)
                (not K)
                J
                I
                (not H)
                (not G)
                (= Z 0)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A (not B) (not C) D (not E) F (not C1) a!22 (<= (+ U Y) 1))))
      )
      (state I H J K L G M N P R T V X Z)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (state F E D C B A N G H I J K L M)
        (or (and N (not A) B C D (not E) F)
    (and N (not A) B C D E F)
    (and N A (not B) (not C) (not D) (not E) (not F)))
      )
      false
    )
  )
)

(check-sat)
(exit)
