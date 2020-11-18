(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (and (= E true) (not D) (not C) (not B) (not A) (not L) (not F))
      )
      (state F E D C A B L K J I H G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) ) 
    (=>
      (and
        (state F E D C A B Y W U S Q O)
        (let ((a!1 (and M
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
      (a!2 (and M
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
                (= W V)))
      (a!3 (and M
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
      (a!4 (and M
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
                (= W V)))
      (a!5 (and M
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
                (= W V)))
      (a!6 (and M
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
      (a!7 (and M
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
                (= W V)))
      (a!8 (and M
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
      (a!9 (and M
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
                (= W V)))
      (a!10 (and M
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
                 (= W V)))
      (a!11 (and M
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
      (a!12 (and M
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
      (a!13 (and M
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
                 (= W V)))
      (a!14 (and M
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
      (a!15 (and M
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
      (a!16 (and (not M) L K J I H G (= O N) (= Q P) (= S R) (= U T) (= W V)))
      (a!17 (and (not M)
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
                 (= W V)))
      (a!18 (and (not M)
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
                 (= W V)))
      (a!19 (and (not M)
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
      (a!20 (and (not M)
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
                 (= W V)))
      (a!21 (and (not M)
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
                 (= W V)))
      (a!22 (and (not M)
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
      (a!23 (and (not M)
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
                 (= W V)))
      (a!24 (and (not M)
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
                 (= W V)))
      (a!25 (and (not M)
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
                 (= W V)))
      (a!26 (and (not M)
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
      (a!27 (and M
                 L
                 (not K)
                 (not J)
                 (not I)
                 H
                 G
                 (= Q P)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= (+ O (* (- 1) N)) 1)))
      (a!28 (and M
                 (not L)
                 K
                 (not J)
                 (not I)
                 H
                 G
                 (= O N)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= (+ Q (* (- 1) P)) (- 1))))
      (a!29 (and M
                 (not L)
                 (not K)
                 (not J)
                 I
                 H
                 (not G)
                 (= O N)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= (+ Q (* (- 1) P)) (- 1))))
      (a!30 (and (not M)
                 (not L)
                 K
                 (not J)
                 I
                 H
                 (not G)
                 (= O N)
                 (= S R)
                 (= U T)
                 (= W V)
                 (= (+ Q (* (- 1) P)) (- 1))))
      (a!31 (and (not M)
                 L
                 K
                 J
                 I
                 H
                 (not G)
                 (= O N)
                 (= Q P)
                 (= U T)
                 (= W V)
                 (= (+ S (* (- 1) R)) (- 1))))
      (a!32 (and (not M)
                 L
                 (not K)
                 J
                 (not I)
                 H
                 (not G)
                 (= O N)
                 (= Q P)
                 (= U T)
                 (= W V)
                 (= (+ S (* (- 1) R)) (- 1))))
      (a!33 (and (not M)
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
                 (= W V))))
  (and (or (not A) B (not C) D (not E) F (not Y) a!1 (<= 1 O))
       (or (not A) B (not C) D (not E) (not F) (not Y) a!2 (<= O W))
       (or (not A) B (not C) (not D) (not E) F (not Y) a!3 (<= 1 O))
       (or (not A) B (not C) (not D) (not E) (not F) (not Y) a!4 (<= O W))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not Y)
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
                (= W V))
           (not (<= O W)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           F
           (not Y)
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
                (= W V))
           (not (<= 1 O)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           (not F)
           (not Y)
           (and M
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
           (not (<= O W)))
       (or (not A)
           B
           (not C)
           D
           (not E)
           F
           (not Y)
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
                (= W V))
           (not (<= 1 O)))
       (or A B C (not D) (not E) F Y a!5 (not (<= W O)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not Y)
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
                (= W V))
           (<= Q W))
       (or A B (not C) D E (not F) (not Y) a!6 (<= 1 Q))
       (or A B (not C) (not D) E F (not Y) a!7 (<= Q W))
       (or A B (not C) (not D) E (not F) (not Y) a!8 (<= 1 O))
       (or (not A) B C D E F (not Y) a!9 (<= O W))
       (or (not A)
           B
           C
           D
           E
           F
           (not Y)
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
                (= W V))
           (not (<= O W)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not Y)
           (and M
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
           (not (<= 1 O)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (not Y)
           (and M
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
           (not (<= Q W)))
       (or A
           B
           (not C)
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
           (not (<= 1 Q)))
       (or A
           B
           (not C)
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
                (= W V))
           (not (<= Q W)))
       (or A B C (not D) E (not F) Y a!10 (= X 0))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
           Y
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
                (= W V))
           (<= Q W))
       (or (not A)
           (not B)
           C
           D
           E
           F
           Y
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
                (= W V))
           (<= S W))
       (or (not A) (not B) C D (not E) F Y a!11 (<= 1 S))
       (or (not A) (not B) C D (not E) (not F) Y a!12 (<= S W))
       (or (not A) (not B) C (not D) (not E) F Y a!13 (<= 1 Q))
       (or (not A) (not B) C (not D) (not E) (not F) Y a!14 (<= Q W))
       (or (not A) (not B) (not C) D (not E) F Y a!15 (<= 1 O))
       (or (not A) (not B) (not C) D (not E) (not F) Y a!16 (<= O W))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           (not F)
           Y
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
                (= W V))
           (not (<= O W)))
       (or (not A)
           (not B)
           (not C)
           D
           (not E)
           F
           Y
           (and (not M)
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
                (= W V))
           (not (<= 1 O)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           Y
           (and (not M)
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
                (= W V))
           (not (<= Q W)))
       (or (not A)
           (not B)
           C
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
                (= W V))
           (not (<= 1 Q)))
       (or (not A)
           (not B)
           C
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
                (= W V))
           (not (<= S W)))
       (or (not A)
           (not B)
           C
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
                (= W V))
           (not (<= 1 S)))
       (or (not A)
           (not B)
           C
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
           (not (<= S W)))
       (or A
           (not B)
           C
           D
           E
           F
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
           (<= S W))
       (or A (not B) C D (not E) F Y a!17 (<= 1 S))
       (or A (not B) C D (not E) (not F) Y a!18 (<= S W))
       (or A (not B) C (not D) (not E) F Y a!19 (<= 1 Q))
       (or A (not B) C (not D) (not E) (not F) Y a!20 (<= Q W))
       (or A
           (not B)
           C
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
           (not (<= Q W)))
       (or A
           (not B)
           C
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
           (not (<= 1 Q)))
       (or A
           (not B)
           C
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
           (not (<= S W)))
       (or A
           (not B)
           C
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
           (not (<= 1 S)))
       (or A
           (not B)
           C
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
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (not (<= S W)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
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
           (not (<= Q W)))
       (or A
           B
           (not C)
           D
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
                (= W V))
           (<= Q W))
       (or A B (not C) D (not E) F Y a!21 (<= 1 Q))
       (or A B (not C) D (not E) (not F) Y a!22 (<= Q W))
       (or A B (not C) (not D) (not E) F Y a!23 (<= 1 O))
       (or A B (not C) (not D) (not E) (not F) Y a!24 (<= O W))
       (or (not A) B C D (not E) F Y a!25 (<= 1 U))
       (or (not A) B C D (not E) (not F) Y a!26 (<= U W))
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
           (not (<= U W)))
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
           (not (<= 1 U)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           Y
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
                (= W V))
           (not (<= O W)))
       (or A
           B
           (not C)
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
                (= W V))
           (not (<= 1 O)))
       (or A
           B
           (not C)
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
           (not (<= Q W)))
       (or A
           B
           (not C)
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
           (not (<= 1 Q)))
       (or A
           B
           (not C)
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
                (= W V))
           (not (<= Q W)))
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
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (not (= X 0)))
       (or A
           B
           C
           (not D)
           (not E)
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
           (<= W O))
       (or A
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
                (not H)
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (not (<= 1 O)))
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
                G
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V))
           (<= U 0))
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
           (not (<= U 0)))
       (or A (not B) C D E (not F) (not Y) a!27)
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
                (= Q P)
                (= S R)
                (= U T)
                (= W V)
                (= W N)))
       (or (not A) B C D E (not F) (not Y) a!28)
       (or A B C (not D) (not E) F (not Y) a!29)
       (or (not A) B C (not D) (not E) F Y a!30)
       (or A
           B
           (not C)
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
                (= S R)
                (= U T)
                (= U P)
                (= W V)))
       (or (not A)
           B
           (not C)
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
                (= S R)
                (= U T)
                (= U P)
                (= W V)))
       (or A
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
                (= S R)
                (= U T)
                (= U P)
                (= W V)))
       (or (not A) (not B) (not C) (not D) (not E) F Y a!31)
       (or A (not B) (not C) D (not E) F Y a!32)
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
                (= U T)
                (= U R)
                (= W V)))
       (or (not A)
           B
           (not C)
           (not D)
           (not E)
           (not F)
           Y
           (and (not M)
                L
                (not K)
                (not J)
                (not I)
                (not H)
                (not G)
                (= O N)
                (= Q P)
                (= U T)
                (= U R)
                (= W V)))
       (or A (not B) C (not D) (not E) (not F) (not Y) a!1)
       (or A (not B) C (not D) E (not F) (not Y) a!2)
       (or A (not B) C (not D) (not E) F (not Y) a!3)
       (or A (not B) C (not D) E F (not Y) a!4)
       (or A
           (not B)
           C
           D
           E
           F
           (not Y)
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
                (= W V)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           (not F)
           (not Y)
           (and M (not L) K J I H G (= O N) (= Q P) (= S R) (= U T) (= W V)))
       (or (not A)
           B
           (not C)
           (not D)
           E
           F
           (not Y)
           (and M
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
           B
           (not C)
           D
           E
           (not F)
           (not Y)
           (and M
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
       (or (not A) B (not C) D E F (not Y) a!5)
       (or (not A) B C (not D) (not E) (not F) (not Y) a!6)
       (or (not A) B C (not D) E (not F) (not Y) a!7)
       (or (not A) B C (not D) (not E) F (not Y) a!8)
       (or (not A) B C (not D) E F (not Y) a!9)
       (or (not A)
           B
           C
           D
           (not E)
           F
           (not Y)
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
                (= W V)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not Y)
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
                (= W V)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not Y)
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
                (= W V)))
       (or A
           B
           (not C)
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
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
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
                (= W V)))
       (or A B C (not D) (not E) (not F) (not Y) a!10)
       (or A B C (not D) E F (not Y) a!11)
       (or A B C D (not E) (not F) (not Y) a!12)
       (or A B C D E (not F) (not Y) a!13)
       (or A B C D (not E) F (not Y) a!14)
       (or A B C D E F (not Y) a!15)
       (or (not A) (not B) (not C) (not D) (not E) (not F) Y a!16)
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
           F
           Y
           (and (not M)
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
       (or (not A)
           (not B)
           (not C)
           D
           E
           (not F)
           Y
           (and (not M)
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
       (or (not A)
           (not B)
           (not C)
           D
           E
           F
           Y
           (and (not M)
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
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           Y
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
                (= W V)))
       (or (not A)
           (not B)
           C
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
                (= W V)))
       (or (not A)
           (not B)
           C
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
                (= W V)))
       (or (not A)
           (not B)
           (not C)
           (not D)
           E
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
       (or A (not B) (not C) (not D) E (not F) Y a!17)
       (or A (not B) (not C) (not D) (not E) F Y a!18)
       (or A (not B) (not C) (not D) E F Y a!19)
       (or A (not B) (not C) D (not E) (not F) Y a!20)
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
                (= W V)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           Y
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
                (= W V)))
       (or A
           (not B)
           C
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
       (or A
           (not B)
           C
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
                (= O N)
                (= Q P)
                (= S R)
                (= U T)
                (= W V)))
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
           B
           C
           (not D)
           E
           (not F)
           (not Y)
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
                (= W V)))
       (or (not A) B (not C) (not D) E F Y a!21)
       (or (not A) B (not C) D (not E) (not F) Y a!22)
       (or (not A) B (not C) D E (not F) Y a!23)
       (or (not A) B (not C) D (not E) F Y a!24)
       (or (not A) B (not C) D E F Y a!25)
       (or (not A) B C (not D) (not E) (not F) Y a!26)
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
       (or (not A)
           B
           C
           D
           E
           (not F)
           Y
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
                (= W V)))
       (or (not A)
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
                (= W V)))
       (or A
           B
           (not C)
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
                (= W V)))
       (or A
           B
           (not C)
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
                (= W V)))
       (or A
           B
           (not C)
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
       (or (not A)
           B
           C
           (not D)
           E
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
                (= W V)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not Y)
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
                (= W V)))
       (or A B C D E F Y a!33)
       (or A B C D E (not F) Y a!33)
       (or A (not B) (not C) D E F (not Y) a!33)
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not Y)
           (and M
                L
                (not K)
                (not J)
                (not I)
                H
                (not G)
                (= T O)
                (= O N)
                (= Q P)
                (= S R)
                (= W V)))
       (or A
           B
           C
           (not D)
           E
           F
           Y
           (and M
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
           (<= 1 O))))
      )
      (state H G I J K L M V T R P N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (state F E D C A B L K J I H G)
        (or (and (not L) (not A) B C (not D) E F)
    (and (not L) (not A) B C D (not E) (not F))
    (and (not L) (not A) B C D (not E) F)
    (and (not L) (not A) B C D E (not F))
    (and (not L) A (not B) (not C) D E F)
    (and (not L) A (not B) C (not D) (not E) (not F))
    (and (not L) A (not B) C (not D) (not E) F)
    (and (not L) A (not B) C (not D) E (not F))
    (and (not L) A (not B) C (not D) E F)
    (and (not L) A (not B) C D (not E) (not F))
    (and (not L) A B C D E F)
    (and L (not A) (not B) (not C) (not D) (not E) (not F))
    (and L (not A) (not B) (not C) (not D) (not E) F)
    (and L (not A) (not B) (not C) (not D) E (not F))
    (and L (not A) (not B) (not C) (not D) E F)
    (and L (not A) (not B) (not C) D (not E) (not F))
    (and L (not A) B (not C) D (not E) (not F))
    (and L (not A) B (not C) D (not E) F)
    (and L (not A) B (not C) D E (not F))
    (and L (not A) B (not C) D E F)
    (and L A (not B) (not C) D (not E) (not F))
    (and L A (not B) (not C) D (not E) F)
    (and L A (not B) (not C) D E (not F))
    (and L A (not B) (not C) D E F))
      )
      false
    )
  )
)

(check-sat)
(exit)
