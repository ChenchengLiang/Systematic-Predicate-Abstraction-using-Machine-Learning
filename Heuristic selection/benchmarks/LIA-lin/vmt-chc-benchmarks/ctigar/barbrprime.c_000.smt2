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
      (a!2 (and (not P)
                O
                (not N)
                M
                L
                (not K)
                (not J)
                I
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= (+ R (* (- 1) Q)) (- 1))))
      (a!3 (and (not P)
                O
                (not N)
                (not M)
                (not L)
                K
                J
                I
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= (+ R (* (- 1) Q)) 1)))
      (a!4 (and (not P)
                (not O)
                N
                M
                (not L)
                (not K)
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
      (a!5 (and (not P)
                (not O)
                (not N)
                M
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
      (a!6 (and (not P)
                (not O)
                (not N)
                M
                (not L)
                (not K)
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
      (a!7 (and (not P)
                O
                (not N)
                (not M)
                L
                (not K)
                J
                (not I)
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= (+ V (* (- 1) U)) (- 1))))
      (a!8 (and (not P)
                O
                (not N)
                M
                (not L)
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= (+ V (* (- 1) U)) 1)))
      (a!9 (and (not P)
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
                (= D1 C1)
                (= F1 E1)
                (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!10 (and (not P)
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
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!11 (and (not P)
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
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!12 (and (not P)
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
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!13 (and (not P)
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
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) 1)))
      (a!14 (and (not P)
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
                 (= (+ F1 (* (- 1) E1)) (- 1))))
      (a!15 (and (not P)
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
                 (= (+ F1 (* (- 1) E1)) 1)))
      (a!16 (and (not P)
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
                 (= (+ F1 (* (- 1) E1)) 1)))
      (a!17 (and (not P)
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
                 (= (+ F1 (* (- 1) E1)) 1)))
      (a!18 (and (not P)
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
                 (= (+ F1 (* (- 1) E1)) 1)))
      (a!19 (and P
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
      (a!20 (and (not P)
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
  (and (or (not A) B C D E F G H a!1 (<= T 3))
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
           (not (<= F1 T)))
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
           (not (<= T 3)))
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
           (not (<= 1 F1)))
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
           (<= 1 F1))
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
           (not (<= D1 1)))
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
           (not (<= 1 D1)))
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
           (<= D1 1))
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
                (not I)
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
           (not (= F1 0)))
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
           (= F1 0))
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
           (not (<= T 3)))
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
           (not (<= 3 T)))
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
           (<= T 3))
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
           (<= 3 T))
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
           (not (= G1 0)))
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
           (= G1 0))
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
           (not (<= T 2)))
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
           (not (<= 2 T)))
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
           (<= T 2))
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
           (not C)
           (not D)
           (not E)
           (not F)
           G
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
           (= G1 0))
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
           (not (<= 1 B1)))
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
           (not (<= T 1)))
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
           (<= 1 B1))
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
           (<= T 1))
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
           (not (<= 1 T)))
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
           (not (= G1 0)))
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
           (<= 1 T))
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
           (= G1 0))
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
           (not (<= T 0)))
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
           (<= T 0))
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
           (not (<= 0 T)))
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
           (not (= G1 0)))
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
           (<= 0 T))
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
           (not F)
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
           (not (<= 1 F1)))
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
                (= F1 E1))
           (<= 1 F1))
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
           (not (<= V 1)))
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
           (not (<= 1 V)))
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
           (<= V 1))
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
           (<= 1 V))
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
           (not (= G1 0)))
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
           (<= 1 R))
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
           (not (<= V 0)))
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
                I
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
           F
           G
           H
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
           (<= 0 V))
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
           (not (<= 0 V)))
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
           (<= X 1))
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
           (not (<= X 1)))
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
           (not (<= 1 X)))
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
           (= G1 0))
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
           D
           (not E)
           (not F)
           (not G)
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
           (not (<= X 0)))
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
           (not (<= 0 X)))
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
           (<= X 0))
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
           (<= 0 X))
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
           (not (= G1 0)))
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
           (= G1 0))
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
           (not (<= 1 F1)))
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
           (not (<= Z 1)))
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
           (<= 1 F1))
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
                (= F1 E1))
           (<= Z 1))
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
           (not (<= 1 Z)))
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
           (not (= G1 0)))
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
           (<= 1 Z))
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
           C
           (not D)
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
           (not (<= 1 R)))
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
           (<= 1 R))
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
           (<= Z 0))
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
           (not (<= Z 0)))
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
           (not (<= 0 Z)))
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
           (<= 0 Z))
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
           (= G1 0))
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
           (not (= G1 0)))
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
                (= F1 E1))
           (<= 1 R))
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
           (not (<= D1 0)))
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
           (not (<= 0 D1)))
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
           (<= D1 0))
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
           (<= 0 D1))
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
           (not (= G1 0)))
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
       (or A B (not C) (not D) (not E) F (not G) H a!2)
       (or A B (not C) D E (not F) G (not H) a!3)
       (or A (not B) C (not D) E F (not G) H a!4)
       (or A B C (not D) (not E) (not F) G H a!5)
       (or A B C (not D) E F (not G) H a!6)
       (or A B (not C) D (not E) F G H a!7)
       (or A B (not C) (not D) E F G (not H) a!8)
       (or A B (not C) D E (not F) (not G) (not H) a!9)
       (or A (not B) C (not D) E F G (not H) a!10)
       (or A B C (not D) (not E) (not F) (not G) H a!11)
       (or A B C (not D) E F G (not H) a!12)
       (or A (not B) (not C) D E F (not G) (not H) a!13)
       (or A (not B) (not C) D (not E) F (not G) (not H) a!14)
       (or A (not B) (not C) (not D) (not E) (not F) (not G) H a!15)
       (or A B (not C) (not D) E F (not G) H a!16)
       (or A (not B) C (not D) (not E) (not F) G H a!17)
       (or A (not B) C D E (not F) (not G) (not H) a!18)
       (or (not A) B C D E (not F) (not G) H a!19)
       (or (not A) B C D E (not F) G (not H) a!1)
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
           E
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
           (not E)
           (not F)
           (not G)
           (not H)
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
                (= F1 E1)))
       (or A B C D E F G H a!20)
       (or A B C D (not E) (not F) G H a!20)
       (or A B C D (not E) (not F) G (not H) a!20)
       (or A B C (not D) E F G H a!20)
       (or A B C (not D) E (not F) (not G) (not H) a!20)
       (or A B C (not D) (not E) F (not G) H a!20)
       (or A B C (not D) (not E) F (not G) (not H) a!20)
       (or A B (not C) D E F (not G) H a!20)
       (or A B (not C) D E F (not G) (not H) a!20)
       (or A B (not C) D E (not F) (not G) H a!20)
       (or A B (not C) D (not E) (not F) G H a!20)
       (or A B (not C) D (not E) (not F) G (not H) a!20)
       (or A B (not C) (not D) E F G H a!20)
       (or A B (not C) (not D) E (not F) G (not H) a!20)
       (or A B (not C) (not D) (not E) F G H a!20)
       (or A B (not C) (not D) (not E) (not F) G (not H) a!20)
       (or A (not B) C D E F G (not H) a!20)
       (or A (not B) C D E (not F) G H a!20)
       (or A (not B) C D E (not F) G (not H) a!20)
       (or A (not B) C D (not E) (not F) G H a!20)
       (or A (not B) C D (not E) (not F) G (not H) a!20)
       (or A (not B) C (not D) E F G H a!20)
       (or A (not B) C (not D) E (not F) (not G) (not H) a!20)
       (or A (not B) C (not D) (not E) F (not G) H a!20)
       (or A (not B) C (not D) (not E) F (not G) (not H) a!20)
       (or A (not B) (not C) D E F G H a!20)
       (or A (not B) (not C) D E F G (not H) a!20)
       (or A (not B) (not C) D (not E) F G H a!20)
       (or A (not B) (not C) D (not E) F G (not H) a!20)
       (or A (not B) (not C) (not D) E F G H a!20)
       (or A (not B) (not C) (not D) E F G (not H) a!20)
       (or A (not B) (not C) (not D) E (not F) G H a!20)
       (or A (not B) (not C) (not D) (not E) F G H a!20)
       (or A (not B) (not C) (not D) (not E) F G (not H) a!20)
       (or A (not B) (not C) (not D) (not E) (not F) G H a!20)
       (or (not A) B C D E (not F) G H a!20)
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
                (not K)
                (not J)
                I
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
                N
                (not M)
                L
                K
                J
                (not I)
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
                N
                (not M)
                (not L)
                K
                J
                (not I)
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
                (not N)
                M
                L
                (not K)
                J
                I
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
                M
                (not L)
                K
                (not J)
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
                (not M)
                L
                (not K)
                J
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
                (not M)
                L
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
                M
                (not L)
                K
                (not J)
                (not I)
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
                L
                K
                (not J)
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
           (not D)
           (not E)
           (not F)
           G
           (not H)
           (and (not P)
                (not O)
                (not N)
                M
                L
                K
                J
                I
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
                N
                (not M)
                L
                (not K)
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
           (not F)
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
                (not L)
                (not K)
                J
                I
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
                (not N)
                M
                (not L)
                K
                (not J)
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
                (not L)
                K
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
                K
                (not J)
                (not I)
                (= E1 0)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)))
       (or (not A) B C D E F G (not H) a!19 (<= F1 T))))
      )
      (state I J K L M N O P Q S U W Y A1 C1 E1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (state H G F E D B C A I J K L M N O P)
        (or (and A (not B) (not C) (not D) (not E) F (not G) H)
    (and A (not B) (not C) (not D) (not E) F G (not H)))
      )
      false
    )
  )
)

(check-sat)
(exit)
