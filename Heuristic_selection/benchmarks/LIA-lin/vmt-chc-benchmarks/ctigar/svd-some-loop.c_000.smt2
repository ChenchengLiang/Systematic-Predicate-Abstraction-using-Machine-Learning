(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) ) 
    (=>
      (and
        (and (= E true) (not D) (not C) (not B) (not A) (not M) (not F))
      )
      (state F E D C A B M L K J I H G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) ) 
    (=>
      (and
        (state F E D C A B A1 Y W U S Q O)
        (let ((a!1 (and M
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
                (= Y X)))
      (a!2 (and M
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
                (= Y X)))
      (a!3 (and M
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
                (= Y X)))
      (a!4 (and M
                (not L)
                K
                J
                I
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
      (a!5 (and M
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
                (= Y X)))
      (a!6 (and M
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
                (= Y X)))
      (a!7 (and M
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
                (= Y X)))
      (a!8 (and M
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
                (= Y X)))
      (a!9 (and M
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
                (= Y X)))
      (a!10 (and M
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
                 (= Y X)))
      (a!11 (and (not M)
                 L
                 K
                 J
                 I
                 (not H)
                 G
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)))
      (a!12 (and (not M)
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
                 (= Y X)))
      (a!13 (and (not M)
                 L
                 K
                 J
                 (not I)
                 H
                 G
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)))
      (a!14 (and (not M)
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
                 (= Y X)))
      (a!15 (and (not M)
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
                 (= W V)
                 (= Y X)))
      (a!16 (and (not M)
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
                 (= Y X)))
      (a!17 (and (not M)
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
                 (= Y X)))
      (a!18 (and (not M)
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
                 (= Y X)))
      (a!19 (and (not M)
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
                 (= Y X)))
      (a!20 (and (not M)
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
                 (= Y X)))
      (a!21 (and (not M)
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
                 (= Y X)))
      (a!22 (and (not M)
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
                 (= Y X)))
      (a!23 (and (not M)
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
                 (= Y X)))
      (a!24 (and (not M)
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
                 (= Y X)))
      (a!25 (and M
                 (not L)
                 K
                 J
                 I
                 (not H)
                 (not G)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= (+ O (* (- 1) N)) 1)))
      (a!26 (and M
                 (not L)
                 (not K)
                 J
                 I
                 (not H)
                 (not G)
                 (= O N)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= (+ Q (* (- 1) P)) (- 1))))
      (a!27 (and (not M)
                 L
                 K
                 J
                 I
                 H
                 G
                 (= O N)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= (+ Q (* (- 1) P)) (- 1))))
      (a!28 (and (not M)
                 (not L)
                 K
                 (not J)
                 (not I)
                 (not H)
                 G
                 (= O N)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= (+ Q (* (- 1) P)) (- 1))))
      (a!29 (and (not M)
                 L
                 K
                 (not J)
                 I
                 H
                 G
                 (= O N)
                 (= Q P)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= (+ S (* (- 1) R)) (- 1))))
      (a!30 (and (not M)
                 L
                 (not K)
                 (not J)
                 (not I)
                 H
                 G
                 (= O N)
                 (= Q P)
                 (= U T)
                 (= W V)
                 (= Y X)
                 (= (+ S (* (- 1) R)) (- 1))))
      (a!31 (and (not M)
                 (not L)
                 (not K)
                 (not J)
                 I
                 (not H)
                 (not G)
                 (= O N)
                 (= Q P)
                 (= S R)
                 (= W V)
                 (= Y X)
                 (= (+ T (* (- 1) O)) 1)))
      (a!32 (and (not M)
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
                 (= Y X))))
  (and (or (not A) B C D E (not F) (not A1) a!1 (<= 1 O))
       (or (not A) B C (not D) E F (not A1) a!2 (<= O Y))
       (or (not A) B C (not D) E (not F) (not A1) a!3 (<= 1 O))
       (or (not A) B (not C) D E F (not A1) a!4 (<= O Y))
       (or (not A)
           B
           (not C)
           D
           E
           F
           (not A1)
           (and M
                (not L)
                K
                J
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (<= O Y)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           (not A1)
           (and M
                (not L)
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
                (= Y X))
           (not (<= 1 O)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not A1)
           (and M
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
                (= Y X))
           (not (<= O Y)))
       (or (not A)
           B
           C
           D
           E
           (not F)
           (not A1)
           (and M
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
                (= Y X))
           (not (<= 1 O)))
       (or A B C (not D) E F A1 a!5 (not (<= Y O)))
       (or A
           B
           C
           D
           E
           (not F)
           (not A1)
           (and M
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
                (= Y X))
           (<= Q Y))
       (or A B C D (not E) (not F) (not A1) a!6 (<= 1 Q))
       (or A B C (not D) (not E) F (not A1) a!7 (<= Q Y))
       (or A B C (not D) (not E) (not F) (not A1) a!8 (<= 1 O))
       (or A B (not C) D (not E) F (not A1) a!9 (<= O Y))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not A1)
           (and M
                (not L)
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
                (= Y X))
           (not (<= O Y)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (not A1)
           (and M
                (not L)
                (not K)
                J
                (not I)
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (<= 1 O)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (not A1)
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
                (= Y X))
           (not (<= Q Y)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (not A1)
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
                (= Y X))
           (not (<= 1 Q)))
       (or A
           B
           C
           D
           E
           (not F)
           (not A1)
           (and M
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
                (= Y X))
           (not (<= Q Y)))
       (or A B C (not D) (not E) F A1 a!10 (= Z 0))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           A1
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
                (= Y X))
           (<= Q Y))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           A1
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
                (= Y X))
           (<= S Y))
       (or A (not B) (not C) D E (not F) A1 a!11 (<= 1 S))
       (or A (not B) (not C) (not D) E F A1 a!12 (<= S Y))
       (or A (not B) (not C) (not D) E (not F) A1 a!13 (<= 1 Q))
       (or (not A) (not B) C D E F A1 a!14 (<= Q Y))
       (or (not A) (not B) C D E (not F) A1 a!15 (<= 1 O))
       (or (not A) (not B) C (not D) E F A1 a!16 (<= O Y))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           A1
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
                (= Y X))
           (not (<= O Y)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           A1
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
                (= Y X))
           (not (<= 1 O)))
       (or (not A)
           (not B)
           C
           D
           E
           F
           A1
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
                (= Y X))
           (not (<= Q Y)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           A1
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
                (= Y X))
           (not (<= 1 Q)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           A1
           (and (not M)
                L
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
                (= Y X))
           (not (<= S Y)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           A1
           (and (not M)
                L
                (not K)
                J
                (not I)
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (<= 1 S)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           A1
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
                (= Y X))
           (not (<= S Y)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           A1
           (and (not M)
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
                (= W V)
                (= Y X))
           (<= S Y))
       (or (not A) B (not C) D E (not F) A1 a!17 (<= 1 S))
       (or (not A) B (not C) (not D) E F A1 a!18 (<= S Y))
       (or (not A) B (not C) (not D) E (not F) A1 a!19 (<= 1 Q))
       (or A (not B) C D E F A1 a!20 (<= Q Y))
       (or A
           (not B)
           C
           D
           E
           F
           A1
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
                (= Y X))
           (not (<= Q Y)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
           A1
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
                (= Y X))
           (not (<= 1 Q)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           A1
           (and (not M)
                (not L)
                K
                J
                I
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (<= S Y)))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           A1
           (and (not M)
                (not L)
                K
                J
                (not I)
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (<= 1 S)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           A1
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
                (= Y X))
           (not (<= S Y)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           A1
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
                (= Y X))
           (not (<= Q Y)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           A1
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
                (= Y X))
           (<= Q Y))
       (or A B (not C) D E F A1 a!21 (<= 1 Q))
       (or A B (not C) D E (not F) A1 a!22 (<= Q Y))
       (or A B (not C) (not D) E F A1 a!23 (<= 1 O))
       (or A B (not C) (not D) E (not F) A1 a!24 (<= O Y))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           A1
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
                (= Y X))
           (not (<= O Y)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           A1
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
                (= Y X))
           (not (<= 1 O)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           A1
           (and (not M)
                (not L)
                (not K)
                J
                (not I)
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (<= Q Y)))
       (or A
           B
           (not C)
           D
           E
           F
           A1
           (and (not M)
                (not L)
                (not K)
                J
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (<= 1 Q)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           A1
           (and (not M)
                (not L)
                (not K)
                J
                (not I)
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X))
           (not (<= Q Y)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           A1
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
                (= Y X))
           (not (= Z 0)))
       (or A
           B
           C
           (not D)
           E
           F
           A1
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
                (= Y X))
           (<= Y O))
       (or A
           B
           C
           D
           E
           (not F)
           A1
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
                (= Y X))
           (not (<= 1 O)))
       (or (not A) B (not C) D (not E) (not F) (not A1) a!25)
       (or A
           B
           C
           D
           (not E)
           F
           A1
           (and (not M)
                (not L)
                (not K)
                (not J)
                (not I)
                H
                (not G)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)
                (= Y N)))
       (or A B (not C) D (not E) (not F) (not A1) a!26)
       (or (not A) (not B) (not C) (not D) E (not F) A1 a!27)
       (or (not A) B C D E F A1 a!28)
       (or A
           B
           C
           D
           (not E)
           F
           (not A1)
           (and M
                (not L)
                (not K)
                (not J)
                (not I)
                H
                (not G)
                (= O N)
                (= S R)
                (= U T)
                (= U P)
                (= W V)
                (= Y X)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           A1
           (and (not M)
                (not L)
                K
                (not J)
                I
                H
                G
                (= O N)
                (= S R)
                (= U T)
                (= U P)
                (= W V)
                (= Y X)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           A1
           (and (not M)
                (not L)
                (not K)
                (not J)
                I
                H
                G
                (= O N)
                (= S R)
                (= U T)
                (= U P)
                (= W V)
                (= Y X)))
       (or (not A) (not B) C (not D) E (not F) A1 a!29)
       (or A (not B) C D E (not F) A1 a!30)
       (or A
           (not B)
           (not C)
           D
           E
           F
           A1
           (and (not M)
                L
                (not K)
                J
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= U T)
                (= U R)
                (= W V)
                (= Y X)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           A1
           (and (not M)
                (not L)
                K
                J
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= U T)
                (= U R)
                (= W V)
                (= Y X)))
       (or A B C D (not E) (not F) A1 a!31)
       (or A (not B) C D E F (not A1) a!1)
       (or (not A) B (not C) (not D) (not E) (not F) (not A1) a!2)
       (or (not A) B (not C) (not D) E (not F) (not A1) a!3)
       (or (not A) B (not C) (not D) (not E) F (not A1) a!4)
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           (not A1)
           (and M
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
                (= Y X)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           (not A1)
           (and M
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
                (= Y X)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not A1)
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
                (= Y X)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           (not A1)
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
                (= Y X)))
       (or (not A) B C D (not E) F (not A1) a!5)
       (or (not A) B C D E F (not A1) a!6)
       (or A B (not C) (not D) (not E) (not F) (not A1) a!7)
       (or A B (not C) (not D) E (not F) (not A1) a!8)
       (or A B (not C) (not D) (not E) F (not A1) a!9)
       (or A
           B
           (not C)
           D
           E
           (not F)
           (not A1)
           (and M
                (not L)
                (not K)
                J
                (not I)
                H
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A
           B
           (not C)
           D
           E
           F
           (not A1)
           (and M
                (not L)
                (not K)
                J
                (not I)
                (not H)
                G
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
           E
           (not F)
           (not A1)
           (and M
                (not L)
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
                (= Y X)))
       (or A
           B
           C
           (not D)
           E
           F
           (not A1)
           (and M
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
                (= Y X)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (not A1)
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
                (= Y X)))
       (or A B C D E F (not A1) a!10)
       (or (not A) (not B) (not C) (not D) (not E) F A1 a!11)
       (or (not A) (not B) (not C) (not D) E F A1 a!12)
       (or (not A) (not B) (not C) D (not E) (not F) A1 a!13)
       (or (not A) (not B) (not C) D E (not F) A1 a!14)
       (or (not A) (not B) (not C) D (not E) F A1 a!15)
       (or (not A) (not B) (not C) D E F A1 a!16)
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           A1
           (and (not M)
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
                (= Y X)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           A1
           (and (not M)
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
                (= Y X)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           A1
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
                (= Y X)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           A1
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
                (= Y X)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           A1
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
                (= Y X)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           A1
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
                (= Y X)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           A1
           (and (not M)
                L
                (not K)
                J
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or A (not B) C (not D) (not E) (not F) A1 a!17)
       (or A (not B) C (not D) E (not F) A1 a!18)
       (or A (not B) C (not D) (not E) F A1 a!19)
       (or A (not B) C (not D) E F A1 a!20)
       (or A
           (not B)
           C
           D
           (not E)
           F
           A1
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
                (= Y X)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (not F)
           A1
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
                (= Y X)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           A1
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
                (= Y X)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           A1
           (and (not M)
                (not L)
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
                (= Y X)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           A1
           (and (not M)
                (not L)
                K
                J
                (not I)
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= Y X)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           A1
           (and (not M)
                (not L)
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
                (= Y X)))
       (or (not A) B C (not D) (not E) F A1 a!21)
       (or (not A) B C (not D) E F A1 a!22)
       (or (not A) B C D (not E) (not F) A1 a!23)
       (or (not A) B C D E (not F) A1 a!24)
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           A1
           (and (not M)
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
                (= Y X)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           A1
           (and (not M)
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
                (= Y X)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           A1
           (and (not M)
                (not L)
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
                (= Y X)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           A1
           (and (not M)
                (not L)
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
                (= Y X)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           A1
           (and (not M)
                (not L)
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
                (= Y X)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (not A1)
           (and (not M)
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
                (= Y X)))
       (or A B C D E F A1 a!32)
       (or A (not B) C D (not E) F (not A1) a!32)
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           (not A1)
           (and M
                (not L)
                K
                J
                (not I)
                H
                G
                (= T O)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)
                (= Y X)))
       (or A
           B
           C
           D
           E
           (not F)
           A1
           (and M
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
                (= Y X))
           (<= 1 O))))
      )
      (state H G I J K L M X V T R P N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) ) 
    (=>
      (and
        (state F E D C A B M L K J I H G)
        (or (and (not M) (not A) B (not C) D (not E) (not F))
    (and (not M) (not A) B (not C) D (not E) F)
    (and (not M) (not A) B (not C) D E (not F))
    (and (not M) (not A) B (not C) D E F)
    (and (not M) A (not B) (not C) (not D) (not E) F)
    (and (not M) A (not B) (not C) (not D) E F)
    (and (not M) A (not B) (not C) D (not E) (not F))
    (and (not M) A (not B) (not C) D E (not F))
    (and (not M) A B C (not D) (not E) (not F))
    (and (not M) A B C (not D) (not E) F)
    (and (not M) A B C (not D) E (not F))
    (and (not M) A B C (not D) E F)
    (and (not M) A B C D (not E) (not F))
    (and (not M) A B C D E (not F))
    (and M (not A) (not B) C D (not E) F)
    (and M (not A) (not B) C D E (not F))
    (and M (not A) (not B) C D E F)
    (and M (not A) B (not C) (not D) (not E) (not F))
    (and M A (not B) (not C) (not D) (not E) (not F))
    (and M A (not B) C D (not E) F)
    (and M A (not B) C D E (not F))
    (and M A (not B) C D E F))
      )
      false
    )
  )
)

(check-sat)
(exit)
