(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (and (= G true) (not F) (not E) (not D) (not C) (not B) (not A) (not H))
      )
      (state H G F E D B C A I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) ) 
    (=>
      (and
        (state H G F E D B C A R T V X Z B1 D1 F1)
        (let ((a!1 (and P
                (not O)
                N
                M
                L
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!2 (and P
                (not O)
                N
                M
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!3 (and P
                (not O)
                N
                M
                (not L)
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!4 (and P
                (not O)
                N
                M
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!5 (and P
                (not O)
                (not N)
                (not M)
                L
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!6 (and P
                (not O)
                (not N)
                (not M)
                L
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!7 (and P
                (not O)
                (not N)
                (not M)
                L
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!8 (and P
                (not O)
                (not N)
                (not M)
                L
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!9 (and P
                (not O)
                (not N)
                (not M)
                (not L)
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!10 (and P
                 (not O)
                 (not N)
                 (not M)
                 (not L)
                 K
                 (not J)
                 I
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!11 (and P
                 (not O)
                 (not N)
                 (not M)
                 (not L)
                 (not K)
                 J
                 I
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!12 (and P
                 (not O)
                 (not N)
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 I
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!13 (and (not P)
                 O
                 N
                 M
                 (not L)
                 K
                 (not J)
                 (not I)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ R (* (- 1) Q)) (- 1))))
      (a!14 (and (not P)
                 O
                 (not N)
                 (not M)
                 L
                 K
                 J
                 (not I)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ R (* (- 1) Q)) 1)))
      (a!15 (and (not P)
                 (not O)
                 N
                 M
                 L
                 (not K)
                 J
                 (not I)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ R (* (- 1) Q)) 1)))
      (a!16 (and (not P)
                 (not O)
                 N
                 (not M)
                 (not L)
                 K
                 (not J)
                 I
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ R (* (- 1) Q)) 1)))
      (a!17 (and (not P)
                 (not O)
                 N
                 (not M)
                 (not L)
                 K
                 (not J)
                 (not I)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ R (* (- 1) Q)) 1)))
      (a!18 (and (not P)
                 O
                 (not N)
                 M
                 L
                 (not K)
                 (not J)
                 (not I)
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ V (* (- 1) U)) (- 1))))
      (a!19 (and (not P)
                 O
                 N
                 (not M)
                 L
                 K
                 (not J)
                 (not I)
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ V (* (- 1) U)) 1)))
      (a!20 (and (not P)
                 O
                 (not N)
                 M
                 (not L)
                 (not K)
                 (not J)
                 (not I)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!21 (and (not P)
                 (not O)
                 N
                 M
                 (not L)
                 K
                 J
                 (not I)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!22 (and (not P)
                 (not O)
                 N
                 (not M)
                 L
                 K
                 (not J)
                 I
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!23 (and (not P)
                 (not O)
                 N
                 (not M)
                 L
                 K
                 (not J)
                 (not I)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!24 (and (not P)
                 O
                 (not N)
                 (not M)
                 (not L)
                 (not K)
                 J
                 I
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) 1)))
      (a!25 (and (not P)
                 O
                 (not N)
                 M
                 (not L)
                 (not K)
                 J
                 I
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= (+ F1 (* (- 1) E1)) (- 1))))
      (a!26 (and (not P)
                 O
                 N
                 M
                 (not L)
                 K
                 J
                 I
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= (+ F1 (* (- 1) E1)) 1)))
      (a!27 (and (not P)
                 O
                 N
                 (not M)
                 (not L)
                 K
                 (not J)
                 (not I)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= (+ F1 (* (- 1) E1)) 1)))
      (a!28 (and (not P)
                 (not O)
                 N
                 M
                 L
                 (not K)
                 J
                 I
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= (+ F1 (* (- 1) E1)) 1)))
      (a!29 (and (not P)
                 (not O)
                 (not N)
                 M
                 (not L)
                 (not K)
                 (not J)
                 I
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= (+ F1 (* (- 1) E1)) 1)))
      (a!30 (and P
                 (not O)
                 N
                 M
                 L
                 K
                 J
                 (not I)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!31 (and (not P)
                 (not O)
                 (not N)
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 (not I)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1))))
  (and (or (not A) B C (not D) (not E) F G H a!1 (<= 0 R))
       (or (not A) B C (not D) E (not F) G H a!2 (<= 0 F1))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           G
           H
           (and P
                (not O)
                N
                M
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 R)))
       (or (not A) B C (not D) E F G (not H) a!3 (<= 0 D1))
       (or (not A) B C (not D) E (not F) G (not H) a!4 (<= 0 B1))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           (not H)
           (and P
                (not O)
                N
                (not M)
                L
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 B1)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           (not H)
           (and P
                (not O)
                N
                (not M)
                L
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 D1)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           G
           H
           (and P
                (not O)
                N
                (not M)
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 F1)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           H
           (and P
                (not O)
                N
                (not M)
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 Z)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           G
           (not H)
           (and P
                (not O)
                (not N)
                M
                L
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 X)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           G
           (not H)
           (and P
                (not O)
                (not N)
                M
                L
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= T 3)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           G
           H
           (and P
                (not O)
                (not N)
                M
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 V)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           G
           H
           (and P
                (not O)
                (not N)
                M
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= V 1)))
       (or (not A) B C D E F G H a!5 (<= F1 T))
       (or (not A)
           B
           C
           D
           E
           (not F)
           G
           (not H)
           (and P
                (not O)
                (not N)
                (not M)
                L
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= X 1)))
       (or (not A) B C D (not E) F G H a!6 (<= V 1))
       (or (not A)
           B
           C
           D
           E
           F
           G
           (not H)
           (and P
                (not O)
                (not N)
                (not M)
                L
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= D1 1)))
       (or (not A) B C D E (not F) G H a!7 (<= Z 1))
       (or (not A)
           B
           C
           D
           E
           (not F)
           G
           H
           (and P
                (not O)
                (not N)
                (not M)
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= Z 1)))
       (or (not A) B C D (not E) (not F) G H a!8 (<= 0 V))
       (or (not A)
           B
           C
           D
           E
           F
           G
           H
           (and P
                (not O)
                (not N)
                (not M)
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= F1 T)))
       (or (not A) B C D E F G (not H) a!9 (<= D1 1))
       (or (not A) B C D (not E) F G (not H) a!10 (<= T 3))
       (or (not A) B C D E (not F) G (not H) a!11 (<= X 1))
       (or (not A) B C D (not E) (not F) G (not H) a!12 (<= 0 X))
       (or A
           B
           C
           D
           (not E)
           F
           (not G)
           H
           (and P
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                O
                N
                M
                L
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 T)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and (not P)
                O
                N
                M
                L
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= D1 1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (not H)
           (and (not P)
                O
                N
                M
                L
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 F1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (and (not P)
                O
                N
                M
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                N
                M
                L
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 D1)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                N
                M
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= T 0)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                O
                N
                M
                (not L)
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 T))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           H
           (and (not P)
                O
                N
                M
                (not L)
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= D1 1))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (not H)
           (and (not P)
                O
                N
                M
                (not L)
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 F1))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           G
           H
           (and (not P)
                O
                N
                M
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                N
                M
                (not L)
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 D1))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                N
                M
                (not L)
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= T 0))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (not H)
           (and (not P)
                O
                N
                (not M)
                L
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not P)
                O
                N
                (not M)
                L
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 T)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           H
           (and (not P)
                O
                N
                (not M)
                L
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= T 3)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           (not H)
           (and (not P)
                O
                N
                (not M)
                L
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= F1 0)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           G
           H
           (and (not P)
                O
                N
                (not M)
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                N
                (not M)
                L
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 3 T)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                N
                (not M)
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 F1)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not P)
                O
                N
                (not M)
                (not L)
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 0 T))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           H
           (and (not P)
                O
                N
                (not M)
                (not L)
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= T 3))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           (not G)
           (not H)
           (and (not P)
                O
                N
                (not M)
                (not L)
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= F1 0))
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           (not H)
           (and (not P)
                O
                N
                (not M)
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                N
                (not M)
                (not L)
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 3 T))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 F1))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (not H)
           (and (not P)
                O
                (not N)
                M
                L
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                O
                (not N)
                M
                L
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= V 1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (and (not P)
                O
                (not N)
                M
                L
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= T 2)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           G
           (not H)
           (and (not P)
                O
                (not N)
                M
                L
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           (not H)
           (and (not P)
                O
                (not N)
                M
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 V)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                (not N)
                M
                L
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 2 T)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           (not H)
           (and (not P)
                O
                (not N)
                M
                (not L)
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                O
                (not N)
                M
                (not L)
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= V 1))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (and (not P)
                O
                (not N)
                M
                (not L)
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= T 2))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                (not N)
                M
                (not L)
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           (not H)
           (and (not P)
                O
                (not N)
                M
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 V))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                (not N)
                M
                (not L)
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 2 T))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           (not H)
           (and (not P)
                O
                (not N)
                (not M)
                L
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (not G)
           H
           (and (not P)
                O
                (not N)
                (not M)
                L
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 B1)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           (not H)
           (and (not P)
                O
                (not N)
                (not M)
                L
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= V 0))
       (or A
           B
           (not C)
           D
           E
           (not F)
           G
           H
           (and (not P)
                O
                (not N)
                (not M)
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 R))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                (not N)
                (not M)
                L
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= T 1)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           H
           (and (not P)
                O
                (not N)
                (not M)
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 0 V))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           G
           H
           (and (not P)
                O
                (not N)
                (not M)
                (not L)
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           B
           (not C)
           D
           E
           (not F)
           G
           H
           (and (not P)
                O
                (not N)
                (not M)
                (not L)
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 R)))
       (or A
           (not B)
           (not C)
           D
           E
           F
           (not G)
           H
           (and (not P)
                O
                (not N)
                (not M)
                (not L)
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 B1))
       (or A
           B
           (not C)
           D
           E
           F
           G
           H
           (and (not P)
                O
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 V)))
       (or A
           B
           (not C)
           D
           E
           F
           G
           (not H)
           (and (not P)
                O
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= V 0)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= T 1))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                N
                M
                L
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (not H)
           (and (not P)
                (not O)
                N
                M
                L
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 F1))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           (not H)
           (and (not P)
                (not O)
                N
                M
                L
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 R))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                (not O)
                N
                M
                L
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= X 1))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                (not O)
                N
                M
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= Z 0))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                (not O)
                N
                M
                (not L)
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= X 1)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                (not O)
                N
                M
                (not L)
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= Z 0)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           G
           (not H)
           (and (not P)
                (not O)
                N
                M
                (not L)
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 F1)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           (not H)
           (and (not P)
                (not O)
                N
                M
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 R)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (not H)
           (and (not P)
                (not O)
                N
                M
                (not L)
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 X)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           (not H)
           (and (not P)
                (not O)
                N
                M
                (not L)
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 Z)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                L
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 X))
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                L
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 0 Z))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                L
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           B
           C
           D
           (not E)
           F
           G
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                L
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 R)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 R)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                N
                (not M)
                (not L)
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                N
                (not M)
                (not L)
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                (not L)
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 R))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 R))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                M
                L
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= X 0)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                M
                L
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= D1 0)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           (not H)
           (and (not P)
                (not O)
                (not N)
                M
                L
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           B
           C
           D
           (not E)
           F
           G
           (not H)
           (and (not P)
                (not O)
                (not N)
                M
                L
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not G)
           (not H)
           (and (not P)
                (not O)
                (not N)
                M
                L
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 X)))
       (or A
           B
           C
           D
           (not E)
           F
           (not G)
           (not H)
           (and (not P)
                (not O)
                (not N)
                M
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 D1)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                M
                (not L)
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= X 0))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                M
                (not L)
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= D1 0))
       (or A
           (not B)
           C
           D
           E
           F
           G
           H
           (and (not P)
                (not O)
                (not N)
                M
                (not L)
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A
           B
           C
           D
           (not E)
           F
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                M
                (not L)
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not G)
           (not H)
           (and (not P)
                (not O)
                (not N)
                M
                (not L)
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 0 X))
       (or A
           B
           C
           D
           (not E)
           F
           (not G)
           (not H)
           (and (not P)
                (not O)
                (not N)
                M
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 0 D1))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                (not M)
                L
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 F1)))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                (not M)
                L
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 Z)))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           (not H)
           (and (not P)
                (not O)
                (not N)
                (not M)
                L
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= Z 1)))
       (or A
           (not B)
           C
           D
           E
           F
           G
           H
           (and (not P)
                (not O)
                (not N)
                (not M)
                L
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= G1 0)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 F1))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 Z))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           (not H)
           (and (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= Z 1))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A B (not C) (not D) (not E) F (not G) H a!13)
       (or A B (not C) D E (not F) G (not H) a!14)
       (or A B C (not D) (not E) (not F) G H a!15)
       (or A (not B) C (not D) E F (not G) H a!16)
       (or A B C (not D) E F (not G) H a!17)
       (or A B (not C) D (not E) F G H a!18)
       (or A B (not C) (not D) E F G (not H) a!19)
       (or A B (not C) D E (not F) (not G) (not H) a!20)
       (or A B C (not D) (not E) (not F) (not G) H a!21)
       (or A (not B) C (not D) E F G (not H) a!22)
       (or A B C (not D) E F G (not H) a!23)
       (or A (not B) (not C) D E F (not G) (not H) a!24)
       (or A (not B) (not C) D (not E) F (not G) (not H) a!25)
       (or A (not B) (not C) (not D) (not E) (not F) (not G) H a!26)
       (or A B (not C) (not D) E F (not G) H a!27)
       (or A (not B) C (not D) (not E) (not F) G H a!28)
       (or A (not B) C D E (not F) (not G) (not H) a!29)
       (or (not A) B C (not D) (not E) (not F) (not G) (not H) a!30)
       (or (not A) B C (not D) (not E) F (not G) (not H) a!1)
       (or (not A) B C (not D) (not E) (not F) (not G) H a!2)
       (or (not A) B C (not D) (not E) (not F) G (not H) a!3)
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           H
           (and P
                (not O)
                N
                M
                (not L)
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A) B C (not D) (not E) (not F) G H a!4)
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           (not G)
           (not H)
           (and P
                (not O)
                N
                M
                (not L)
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           (not G)
           H
           (and P
                (not O)
                N
                (not M)
                (not L)
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           H
           (and P
                (not O)
                N
                (not M)
                (not L)
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           (not H)
           (and P
                (not O)
                N
                (not M)
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           (not G)
           (not H)
           (and P
                (not O)
                N
                (not M)
                (not L)
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           (not G)
           H
           (and P
                (not O)
                (not N)
                M
                (not L)
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           (not G)
           H
           (and P
                (not O)
                (not N)
                M
                (not L)
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           (not G)
           (not H)
           (and P
                (not O)
                (not N)
                M
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A)
           B
           C
           D
           E
           (not F)
           (not G)
           (not H)
           (and P
                (not O)
                (not N)
                M
                (not L)
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A) (not B) C D E (not F) (not G) (not H) a!5)
       (or (not A) (not B) C D E F (not G) (not H) a!6)
       (or (not A) (not B) C D E (not F) (not G) H a!7)
       (or (not A) (not B) C D E F (not G) H a!8)
       (or (not A) (not B) C D E (not F) G (not H) a!9)
       (or (not A)
           B
           C
           D
           E
           (not F)
           (not G)
           H
           (and P
                (not O)
                (not N)
                (not M)
                (not L)
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A) (not B) C D E F G (not H) a!10)
       (or (not A)
           B
           C
           D
           E
           F
           (not G)
           H
           (and P
                (not O)
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A) (not B) C D E (not F) G H a!11)
       (or (not A)
           B
           C
           D
           E
           F
           (not G)
           (not H)
           (and P
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A) (not B) C D E F G H a!12)
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           H
           (and (not P)
                O
                N
                M
                L
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (not H)
           (and (not P)
                O
                N
                (not M)
                L
                K
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                O
                N
                (not M)
                (not L)
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
           (not H)
           (and (not P)
                O
                (not N)
                M
                L
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (not G)
           (not H)
           (and (not P)
                O
                (not N)
                M
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                O
                (not N)
                (not M)
                L
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not G)
           H
           (and (not P)
                (not O)
                N
                M
                L
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           H
           (and (not P)
                (not O)
                N
                M
                (not L)
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           G
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                (not L)
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                (not L)
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
           H
           (and (not P)
                (not O)
                (not N)
                M
                L
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           H
           (and (not P)
                (not O)
                (not N)
                M
                L
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A B C D E F G H a!31)
       (or A B C D (not E) (not F) G H a!31)
       (or A B C D (not E) (not F) G (not H) a!31)
       (or A B C (not D) E F G H a!31)
       (or A B C (not D) E (not F) (not G) (not H) a!31)
       (or A B C (not D) (not E) F (not G) H a!31)
       (or A B C (not D) (not E) F (not G) (not H) a!31)
       (or A B (not C) D E F (not G) H a!31)
       (or A B (not C) D E F (not G) (not H) a!31)
       (or A B (not C) D E (not F) (not G) H a!31)
       (or A B (not C) D (not E) (not F) G H a!31)
       (or A B (not C) D (not E) (not F) G (not H) a!31)
       (or A B (not C) (not D) E F G H a!31)
       (or A B (not C) (not D) E (not F) G (not H) a!31)
       (or A B (not C) (not D) (not E) F G H a!31)
       (or A B (not C) (not D) (not E) (not F) G (not H) a!31)
       (or A (not B) C D E F G (not H) a!31)
       (or A (not B) C D E (not F) G H a!31)
       (or A (not B) C D E (not F) G (not H) a!31)
       (or A (not B) C D (not E) (not F) G H a!31)
       (or A (not B) C D (not E) (not F) G (not H) a!31)
       (or A (not B) C (not D) E F G H a!31)
       (or A (not B) C (not D) E (not F) (not G) (not H) a!31)
       (or A (not B) C (not D) (not E) F (not G) H a!31)
       (or A (not B) C (not D) (not E) F (not G) (not H) a!31)
       (or A (not B) (not C) D E F G H a!31)
       (or A (not B) (not C) D E F G (not H) a!31)
       (or A (not B) (not C) D (not E) F G H a!31)
       (or A (not B) (not C) D (not E) F G (not H) a!31)
       (or A (not B) (not C) (not D) E F G H a!31)
       (or A (not B) (not C) (not D) E F G (not H) a!31)
       (or A (not B) (not C) (not D) E (not F) G H a!31)
       (or A (not B) (not C) (not D) (not E) F G H a!31)
       (or A (not B) (not C) (not D) (not E) F G (not H) a!31)
       (or A (not B) (not C) (not D) (not E) (not F) G H a!31)
       (or (not A) B C (not D) (not E) F G (not H) a!31)
       (or A
           B
           C
           D
           E
           F
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                K
                (not J)
                (not I)
                (= Q 0)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           H
           (and (not P)
                O
                (not N)
                M
                L
                (not K)
                J
                I
                (= S 3)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           H
           (and (not P)
                O
                (not N)
                (not M)
                L
                (not K)
                J
                I
                (= S 2)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           G
           (not H)
           (and (not P)
                O
                N
                M
                L
                K
                (not J)
                (not I)
                (= S 1)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           (not G)
           H
           (and (not P)
                O
                N
                (not M)
                (not L)
                K
                J
                I
                (= S 0)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           C
           D
           (not E)
           F
           G
           H
           (and (not P)
                (not O)
                (not N)
                M
                L
                (not K)
                (not J)
                (not I)
                (= S 0)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           C
           D
           E
           (not F)
           (not G)
           (not H)
           (and (not P)
                (not O)
                (not N)
                M
                (not L)
                (not K)
                (not J)
                (not I)
                (= U 0)
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (not G)
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                (not L)
                (not K)
                J
                I
                (= W 1)
                (= R Q)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                N
                M
                (not L)
                K
                J
                I
                (= W 0)
                (= R Q)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           (not H)
           (and (not P)
                (not O)
                (not N)
                (not M)
                L
                K
                J
                (not I)
                (= W 0)
                (= R Q)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           G
           (not H)
           (and (not P)
                (not O)
                N
                M
                L
                K
                J
                (not I)
                (= Y 1)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           H
           (and (not P)
                (not O)
                (not N)
                M
                L
                (not K)
                (not J)
                I
                (= Y 0)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           C
           D
           E
           (not F)
           (not G)
           H
           (and (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                K
                J
                (not I)
                (= Y 0)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           C
           D
           E
           F
           G
           (not H)
           (and (not P)
                (not O)
                (not N)
                (not M)
                L
                K
                (not J)
                (not I)
                (= A1 0)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= D1 C1)
                (= F1 E1)))
       (or A
           B
           C
           (not D)
           E
           F
           (not G)
           (not H)
           (and (not P)
                (not O)
                N
                (not M)
                (not L)
                (not K)
                J
                (not I)
                (= C1 1)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= F1 E1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           G
           (not H)
           (and (not P)
                O
                N
                M
                L
                K
                J
                I
                (= C1 0)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= F1 E1)))
       (or A
           B
           C
           D
           E
           (not F)
           G
           H
           (and (not P)
                (not O)
                (not N)
                (not M)
                L
                (not K)
                J
                (not I)
                (= C1 0)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= F1 E1)))
       (or A
           B
           C
           D
           E
           F
           (not G)
           (not H)
           (and (not P)
                (not O)
                (not N)
                (not M)
                (not L)
                (not K)
                J
                (not I)
                (= E1 0)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)))
       (or (not A) B C (not D) E F G H a!30 (<= 0 Z))))
      )
      (state K L J M N I O P Q S U W Y A1 C1 E1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (state H G F E D B C A I J K L M N O P)
        (or (and A (not B) (not C) D E (not F) G H)
    (and A (not B) (not C) D E F (not G) (not H))
    (and A (not B) (not C) D E F (not G) H)
    (and A (not B) (not C) D E F G (not H))
    (and A (not B) (not C) D E F G H)
    (and A B (not C) (not D) (not E) (not F) (not G) (not H))
    (and A B (not C) (not D) (not E) (not F) (not G) H)
    (and A B (not C) (not D) (not E) (not F) G (not H))
    (and A B (not C) (not D) (not E) (not F) G H)
    (and A B (not C) (not D) (not E) F (not G) (not H))
    (and A B (not C) (not D) (not E) F (not G) H)
    (and A B (not C) (not D) (not E) F G (not H))
    (and A B (not C) (not D) (not E) F G H))
      )
      false
    )
  )
)

(check-sat)
(exit)
