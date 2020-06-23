(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (and (= E true) (not D) (not C) (not B) (not A) (not L) (not F))
      )
      (state F E D B A C L K J I H G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) ) 
    (=>
      (and
        (state F E D B A C Y W U S Q O)
        (let ((a!1 (not (<= (+ W (* (- 1) U)) (- 1))))
      (a!2 (and M
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
                (= W V)))
      (a!3 (not (<= (+ U (* (- 1) O)) (- 1))))
      (a!4 (and M
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
                (= W V)))
      (a!5 (and M
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
                (= W V)))
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
                (= W V)))
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
                (= W V)))
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
                (= W V)))
      (a!9 (and M
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
                (= W V)))
      (a!10 (and M
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
                 (= W V)))
      (a!11 (and M
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
                 (= W V)))
      (a!12 (not (<= (+ U (* (- 1) O)) 1)))
      (a!13 (and M
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
                 (= W V)))
      (a!14 (and M
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
                 (= W V)))
      (a!15 (and M
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
                 (= W V)))
      (a!16 (and M
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
                 (= W V)))
      (a!17 (and (not M)
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
                 (= W V)))
      (a!18 (and (not M)
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
                 (= W V)))
      (a!19 (and (not M)
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
                 (= W V)))
      (a!20 (and (not M)
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
                 (= W V)))
      (a!21 (and (not M)
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
                 (= W V)))
      (a!22 (and (not M)
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
                 (= W V)))
      (a!23 (and (not M)
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
                 (= W V)))
      (a!24 (or (not A)
                (not B)
                C
                (not D)
                (not E)
                F
                Y
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
                     (= W V))
                (= (+ U (* (- 1) O)) 2)))
      (a!25 (not (= (+ U (* (- 1) O)) 2)))
      (a!26 (or (not A)
                (not B)
                C
                D
                (not E)
                F
                Y
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
                     (= W V))
                (<= (+ U (* (- 1) O)) 1)))
      (a!27 (or (not A)
                B
                C
                (not D)
                (not E)
                (not F)
                Y
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
                     (= W V))
                (= (+ U (* (- 1) O)) 1)))
      (a!28 (not (= (+ U (* (- 1) O)) 1)))
      (a!29 (and (not M)
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
                 (= W V)))
      (a!30 (or (not A)
                B
                C
                D
                E
                F
                Y
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
                     (= W V))
                (= (+ U (* (- 1) O)) 1)))
      (a!31 (or A
                B
                C
                (not D)
                (not E)
                (not F)
                Y
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
                     (= W V))
                (<= (+ U (* (- 1) O)) (- 1))))
      (a!32 (not (<= (- 1) (+ S (* (- 1) Q)))))
      (a!33 (and (<= (+ W (* (- 1) U)) (- 1)) (not (= W 0))))
      (a!34 (and M
                 (not L)
                 (not K)
                 J
                 I
                 (not H)
                 G
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= (+ O (* (- 1) N)) (- 1))))
      (a!35 (and (not M)
                 L
                 K
                 J
                 (not I)
                 (not H)
                 (not G)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= (+ O (* (- 1) N)) (- 1))))
      (a!36 (and (not M)
                 L
                 (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= (+ O (* (- 1) N)) (- 1))))
      (a!37 (and (not M)
                 L
                 (not K)
                 J
                 I
                 H
                 (not G)
                 (= O N)
                 (= Q P)
                 (= U T)
                 (= W V)
                 (= (+ S (* (- 1) R)) (- 1))))
      (a!38 (and (not M)
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
                 (= W V)))
      (a!39 (and (not M)
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
                 (= W V)))
      (a!40 (and (not M)
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
                 (= W V)))
      (a!41 (or A
                B
                (not C)
                (not D)
                (not E)
                (not F)
                Y
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
                     (= W V))
                (<= (- 1) (+ S (* (- 1) Q)))
                (= (+ U (* (- 1) O)) 1))))
  (and (or A
           B
           C
           (not D)
           E
           F
           Y
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
                (= W V))
           a!1
           (= W 0))
       (or A
           B
           C
           D
           (not E)
           F
           Y
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
                (= W V))
           (not (<= U 0)))
       (or A
           B
           C
           D
           E
           (not F)
           Y
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
                (= W V))
           (not (<= Q 0)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           Y
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
                (= W V))
           (<= 0 W))
       (or A B C (not D) (not E) (not F) Y a!2 a!3)
       (or A (not B) C D (not E) F Y a!4 (<= 1 O))
       (or A (not B) C (not D) E F Y a!5 (not (<= U O)))
       (or A (not B) C (not D) E (not F) Y a!6 (<= 0 O))
       (or A (not B) C D E F (not Y) a!7 (not (<= U O)))
       (or A (not B) C D E (not F) (not Y) a!8 (<= 0 O))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (not Y)
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
                (= W V))
           (not (<= 0 O)))
       (or A
           (not B)
           C
           D
           E
           F
           (not Y)
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
                (= W V))
           (<= U O))
       (or (not A)
           B
           C
           D
           (not E)
           F
           Y
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
                (= W V))
           (= X 0))
       (or (not A) B C D (not E) (not F) Y a!9 (not (<= U O)))
       (or (not A) B C (not D) (not E) F Y a!10 (<= 0 O))
       (or (not A) (not B) C D (not E) F Y a!11 a!12)
       (or (not A) (not B) C D (not E) (not F) Y a!13 (<= (- 1) O))
       (or A (not B) C D (not E) (not F) Y a!14 (= X 0))
       (or A
           B
           (not C)
           D
           (not E)
           F
           Y
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
                (= W V))
           (= X 0))
       (or A B (not C) D (not E) (not F) Y a!15 (not (<= U O)))
       (or A B (not C) (not D) (not E) F Y a!16 (<= 0 O))
       (or A (not B) (not C) D E F Y a!17 (not (<= U O)))
       (or A (not B) (not C) D E (not F) Y a!18 (<= 0 O))
       (or A (not B) (not C) (not D) E (not F) Y a!19 (not (<= Q S)))
       (or (not A) B (not C) D E F Y a!20 (<= 0 S))
       (or (not A) B (not C) D E (not F) Y a!21 (not (<= U O)))
       (or (not A) B (not C) (not D) E F Y a!22 (<= 0 O))
       (or A (not B) (not C) (not D) E F Y a!23 (= X 0))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           Y
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
                (= W V))
           (not (<= 0 O)))
       (or (not A)
           B
           (not C)
           D
           E
           (not F)
           Y
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
                (= W V))
           (<= U O))
       (or (not A)
           B
           (not C)
           D
           E
           F
           Y
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
                (= W V))
           (not (<= 0 S)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           Y
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
                (= W V))
           (<= Q S))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           Y
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
                (= W V))
           (not (= X 0)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           Y
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
                (= W V))
           (not (<= 0 O)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           Y
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
                (= W V))
           (<= U O))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           Y
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
                (= W V))
           (not (<= 0 O)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           Y
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
                (= W V))
           (<= U O))
       (or A
           B
           (not C)
           D
           (not E)
           F
           Y
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
                (= W V))
           (not (= X 0)))
       a!24
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           Y
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
                (= W V))
           a!25)
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           Y
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
                (= W V))
           (not (<= (- 1) O)))
       a!26
       a!27
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
           Y
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
                (= W V))
           a!28)
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           Y
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
                (= W V))
           (not (<= 0 O)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           Y
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
                (= W V))
           (<= U O))
       (or (not A) B C D E F Y a!29 a!28)
       (or (not A)
           B
           C
           D
           (not E)
           F
           Y
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
                (= W V))
           (not (= X 0)))
       a!30
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           Y
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
                (= W V))
           (not (<= 0 O)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           Y
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
                (= W V))
           (<= U O))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           Y
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
                (= W V))
           (not (= X 0)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           Y
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
                (= W V))
           (not (<= 1 O)))
       a!31
       (or A
           B
           C
           D
           (not E)
           (not F)
           Y
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
                (= W V))
           (not (<= 0 W)))
       (or A
           B
           C
           D
           E
           (not F)
           Y
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
                (= W V))
           (<= Q 0))
       (or A
           B
           C
           D
           (not E)
           F
           Y
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
                (= W V))
           (<= U 0))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           Y
           (and a!32 a!28)
           (and (not M) L K J I H G (= O N) (= Q P) (= S R) (= U T) (= W V)))
       (or A
           B
           C
           (not D)
           E
           F
           Y
           a!33
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
                (= W V)))
       (or A (not B) C (not D) E F (not Y) a!34)
       (or (not A) B (not C) (not D) (not E) (not F) Y a!35)
       (or (not A) (not B) C (not D) (not E) (not F) Y a!36)
       (or A
           B
           C
           (not D)
           E
           (not F)
           Y
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
                (= W N)))
       (or A (not B) (not C) (not D) (not E) F Y a!37)
       (or (not A) B C D (not E) (not F) (not Y) a!2)
       (or (not A) B C D E (not F) (not Y) a!4)
       (or (not A) B C D (not E) F (not Y) a!5)
       (or (not A) B C D E F (not Y) a!6)
       (or A (not B) C (not D) (not E) (not F) (not Y) a!7)
       (or A (not B) C (not D) E (not F) (not Y) a!8)
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not Y)
           (and M
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
                (= W V)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not Y)
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
                (= W V)))
       (or A B C (not D) (not E) (not F) (not Y) a!9)
       (or A B C (not D) E (not F) (not Y) a!10)
       (or A B C (not D) (not E) F (not Y) a!11)
       (or A B C (not D) E F (not Y) a!13)
       (or A B C D E (not F) (not Y) a!14)
       (or A B C D (not E) F (not Y) a!15)
       (or A B C D E F (not Y) a!16)
       (or (not A) (not B) (not C) (not D) E (not F) Y a!17)
       (or (not A) (not B) (not C) (not D) (not E) F Y a!18)
       (or (not A) (not B) (not C) (not D) E F Y a!19)
       (or (not A) (not B) (not C) D (not E) (not F) Y a!20)
       (or (not A) (not B) (not C) D E (not F) Y a!21)
       (or (not A) (not B) (not C) D (not E) F Y a!22)
       (or (not A) B (not C) (not D) E (not F) Y a!23)
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           Y
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
                (= W V)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           Y
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
                (= W V)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           Y
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
                (= W V)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           Y
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
                (= W V)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           Y
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
                (= W V)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           Y
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
                (= W V)))
       (or A B (not C) (not D) E (not F) Y a!38)
       (or (not A) (not B) (not C) D E F Y a!38)
       (or A
           B
           (not C)
           (not D)
           E
           F
           Y
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
                (= W V)))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           Y
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
                (= W V)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           Y
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
                (= W V)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           Y
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
                (= W V)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           Y
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
                (= W V)))
       (or (not A) B C D E (not F) Y a!29)
       (or A (not B) C (not D) (not E) F (not Y) a!39)
       (or A (not B) C (not D) (not E) (not F) Y a!39)
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           Y
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
                (= W V)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           Y
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
                (= W V)))
       (or A
           (not B)
           C
           D
           E
           F
           Y
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
                (= W V)))
       (or A B C D E F Y a!40)
       (or A B C D (not E) (not F) (not Y) a!40)
       (or A B C (not D) (not E) F Y a!40)
       (or (not A) B C (not D) E F (not Y) a!40)
       (or (not A) B C (not D) E (not F) (not Y) a!40)
       (or (not A) B C (not D) (not E) F (not Y) a!40)
       (or (not A) (not B) C D E F Y a!40)
       (or (not A) (not B) C (not D) E (not F) Y a!40)
       (or (not A) (not B) (not C) (not D) (not E) (not F) Y a!40)
       (or A
           B
           (not C)
           D
           E
           (not F)
           Y
           (and (not M)
                L
                (not K)
                (not J)
                (not I)
                H
                G
                (= R 0)
                (= O N)
                (= Q P)
                (= U T)
                (= W V)))
       (or A
           B
           (not C)
           D
           E
           F
           Y
           (and (not M)
                L
                (not K)
                (not J)
                (not I)
                (not H)
                G
                (= V O)
                (= O N)
                (= Q P)
                (= S R)
                (= U T)))
       a!41))
      )
      (state H G I J K L M V T R P N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (state F E D B A C L K J I H G)
        (or (and (not L) A B C (not D) (not E) F)
    (and (not L) A B C (not D) E (not F))
    (and (not L) A B C (not D) E F)
    (and (not L) A B C D (not E) (not F))
    (and (not L) A B C D (not E) F)
    (and (not L) A B C D E (not F))
    (and L (not A) (not B) (not C) (not D) (not E) (not F))
    (and L (not A) (not B) (not C) (not D) E (not F))
    (and L (not A) (not B) (not C) D (not E) (not F))
    (and L (not A) (not B) (not C) D (not E) F)
    (and L (not A) (not B) (not C) D E (not F))
    (and L (not A) (not B) (not C) D E F)
    (and L (not A) B (not C) D (not E) F)
    (and L (not A) B (not C) D E F)
    (and L A (not B) (not C) (not D) (not E) (not F))
    (and L A (not B) (not C) (not D) (not E) F)
    (and L A (not B) (not C) (not D) E (not F))
    (and L A (not B) (not C) (not D) E F))
      )
      false
    )
  )
)

(check-sat)
(exit)
