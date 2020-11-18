(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (and (= F true) (not E) (not D) (not C) (not B) (not A) (not G))
      )
      (state G F E D B C A H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) ) 
    (=>
      (and
        (state G F E D B C A P R T V X Z B1 D1 F1)
        (let ((a!1 (and N
                M
                L
                K
                J
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!2 (and N
                M
                L
                K
                (not J)
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!3 (and N
                M
                L
                K
                (not J)
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!4 (and N
                M
                L
                (not K)
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!5 (and N
                M
                L
                (not K)
                J
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!6 (and N
                M
                L
                (not K)
                (not J)
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!7 (and N
                M
                L
                (not K)
                (not J)
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!8 (and N
                M
                (not L)
                K
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
      (a!9 (or (not A)
               (not B)
               C
               D
               E
               F
               (not G)
               (and N
                    M
                    (not L)
                    K
                    J
                    (not I)
                    (not H)
                    (= P O)
                    (= R Q)
                    (= T S)
                    (= V U)
                    (= X W)
                    (= Z Y)
                    (= B1 A1)
                    (= D1 C1)
                    (= F1 E1))
               (not (<= 1 (+ P R X B1 F1)))))
      (a!10 (or (not A)
                (not B)
                C
                D
                (not E)
                F
                G
                (and N
                     M
                     (not L)
                     (not K)
                     J
                     I
                     (not H)
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U)
                     (= X W)
                     (= Z Y)
                     (= B1 A1)
                     (= D1 C1)
                     (= F1 E1))
                (not (<= 1 (+ P R V X B1)))))
      (a!11 (or (not A)
                (not B)
                C
                D
                E
                F
                G
                (and N
                     M
                     (not L)
                     (not K)
                     J
                     (not I)
                     (not H)
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U)
                     (= X W)
                     (= Z Y)
                     (= B1 A1)
                     (= D1 C1)
                     (= F1 E1))
                (not (<= 1 (+ R V X Z)))))
      (a!12 (and N
                 (not M)
                 (not L)
                 K
                 J
                 (not I)
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!13 (<= 0 (+ R (* (- 1) T) V X Z)))
      (a!14 (and N
                 (not M)
                 (not L)
                 K
                 (not J)
                 (not I)
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!15 (<= 0 (+ P R X B1 (* (- 1) D1) F1)))
      (a!16 (and N
                 (not M)
                 (not L)
                 (not K)
                 J
                 (not I)
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!17 (<= (+ P R X B1 (* (- 1) D1) F1) 0))
      (a!18 (and N
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 I
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!19 (= (+ R (* (- 1) T) V X Z) 0))
      (a!20 (and N
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 (not I)
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!21 (and (not N)
                 (not M)
                 L
                 K
                 (not J)
                 I
                 (not H)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!22 (and (not N)
                 M
                 (not L)
                 K
                 J
                 (not I)
                 (not H)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ P (* (- 1) O)) (- 1))))
      (a!23 (and (not N)
                 M
                 L
                 K
                 J
                 (not I)
                 (not H)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ P (* (- 1) O)) 1)))
      (a!24 (and (not N)
                 M
                 L
                 (not K)
                 (not J)
                 I
                 (not H)
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ R (* (- 1) Q)) (- 1))))
      (a!25 (and (not N)
                 (not M)
                 (not L)
                 K
                 (not J)
                 (not I)
                 H
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ R (* (- 1) Q)) 1)))
      (a!26 (and (not N)
                 M
                 (not L)
                 (not K)
                 (not J)
                 I
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ V (* (- 1) U)) (- 1))))
      (a!27 (and (not N)
                 M
                 L
                 (not K)
                 J
                 I
                 (not H)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ V (* (- 1) U)) 1)))
      (a!28 (and (not N)
                 (not M)
                 L
                 (not K)
                 (not J)
                 I
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ X (* (- 1) W)) (- 1))))
      (a!29 (and (not N)
                 M
                 (not L)
                 K
                 (not J)
                 (not I)
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ X (* (- 1) W)) 1)))
      (a!30 (and (not N)
                 (not M)
                 (not L)
                 K
                 J
                 (not I)
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ Z (* (- 1) Y)) (- 1))))
      (a!31 (and (not N)
                 (not M)
                 L
                 K
                 J
                 (not I)
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ Z (* (- 1) Y)) 1)))
      (a!32 (and (not N)
                 M
                 L
                 (not K)
                 J
                 (not I)
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!33 (and (not N)
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 I
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!34 (and (not N)
                 M
                 (not L)
                 (not K)
                 (not J)
                 I
                 (not H)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) 1)))
      (a!35 (and (not N)
                 (not M)
                 L
                 (not K)
                 J
                 I
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= D1 C1)
                 (= F1 E1)
                 (= (+ B1 (* (- 1) A1)) 1)))
      (a!36 (and (not N)
                 M
                 (not L)
                 K
                 J
                 (not I)
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= (+ F1 (* (- 1) E1)) (- 1))))
      (a!37 (and (not N)
                 M
                 L
                 (not K)
                 (not J)
                 (not I)
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= (+ F1 (* (- 1) E1)) 1)))
      (a!38 (and N
                 M
                 L
                 K
                 J
                 I
                 (not H)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)))
      (a!39 (and (not N)
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 (not I)
                 (not H)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1))))
  (and (or (not A) B C (not D) (not E) F G a!1 (<= 0 R))
       (or (not A) B C D (not E) F (not G) a!2 (<= 0 F1))
       (or (not A) B C (not D) (not E) F (not G) a!3 (<= 0 P))
       (or (not A) B C (not D) E F G a!4 (<= 0 X))
       (or (not A) (not B) C D E F G a!5 (<= 1 (+ R V X Z)))
       (or (not A) B C (not D) E F (not G) a!6 (<= 0 Z))
       (or (not A) (not B) C D E F (not G) a!7 (<= 1 (+ P R X B1 F1)))
       (or (not A) (not B) C D (not E) F G a!8 (<= 1 (+ P R V X B1)))
       a!9
       a!10
       a!11
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           (and N
                (not M)
                L
                K
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 P)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (not G)
           (and N
                (not M)
                L
                K
                J
                (not I)
                (not H)
                (= P O)
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
           (not D)
           (not E)
           F
           G
           (and N
                (not M)
                L
                (not K)
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 R)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           (and N
                (not M)
                L
                (not K)
                J
                (not I)
                (not H)
                (= P O)
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
           (not G)
           (and N
                (not M)
                (not L)
                K
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 F1)))
       (or A (not B) (not C) (not D) (not E) F G a!12 a!13)
       (or (not A)
           B
           C
           D
           E
           F
           (not G)
           (and N
                (not M)
                (not L)
                K
                J
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 V)))
       (or A (not B) (not C) (not D) (not E) F (not G) a!14 a!15)
       (or (not A)
           B
           C
           D
           (not E)
           F
           G
           (and N
                (not M)
                (not L)
                (not K)
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 0 B1)))
       (or (not A) B C D E F G a!16 a!17)
       (or (not A)
           B
           C
           D
           E
           F
           G
           (and N
                (not M)
                (not L)
                (not K)
                J
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not a!17))
       (or A (not B) (not C) (not D) E F (not G) a!18 a!19)
       (or (not A) B C D E F (not G) a!20 (<= 0 V))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           F
           (not G)
           (and (not N)
                M
                L
                K
                J
                I
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not a!15))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
           (and (not N)
                M
                L
                K
                J
                I
                (not H)
                (= P O)
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
           F
           (not G)
           (and (not N)
                M
                L
                K
                J
                (not I)
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not a!19))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           G
           (and (not N)
                M
                L
                K
                (not J)
                I
                (not H)
                (= P O)
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
           (not G)
           (and (not N)
                M
                L
                K
                (not J)
                (not I)
                H
                (= P O)
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
           F
           G
           (and (not N)
                M
                L
                K
                (not J)
                (not I)
                (not H)
                (= P O)
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
           (not D)
           (not E)
           F
           G
           (and (not N)
                M
                L
                (not K)
                J
                I
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not a!13))
       (or A
           (not B)
           C
           (not D)
           E
           F
           G
           (and (not N)
                M
                L
                (not K)
                J
                (not I)
                (not H)
                (= P O)
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
           C
           D
           (not E)
           F
           (not G)
           (and (not N)
                M
                L
                (not K)
                (not J)
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (<= 1 P)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not N)
                M
                (not L)
                K
                J
                I
                H
                (= P O)
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
           (not E)
           F
           (not G)
           (and (not N)
                M
                (not L)
                K
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 P))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not N)
                M
                (not L)
                K
                (not J)
                I
                H
                (= P O)
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
           (not E)
           (not F)
           G
           (and (not N)
                M
                (not L)
                K
                (not J)
                I
                (not H)
                (= P O)
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
           (and (not N)
                M
                (not L)
                K
                (not J)
                (not I)
                (not H)
                (= P O)
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
           F
           (not G)
           (and (not N)
                M
                (not L)
                (not K)
                J
                I
                H
                (= P O)
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
           (not F)
           (not G)
           (and (not N)
                M
                (not L)
                (not K)
                J
                I
                (not H)
                (= P O)
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
           (and (not N)
                M
                (not L)
                (not K)
                J
                (not I)
                H
                (= P O)
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
           D
           E
           F
           G
           (and (not N)
                M
                (not L)
                (not K)
                J
                (not I)
                (not H)
                (= P O)
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
           (and (not N)
                M
                (not L)
                (not K)
                (not J)
                (not I)
                H
                (= P O)
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
           (not E)
           (not F)
           (not G)
           (and (not N)
                M
                (not L)
                (not K)
                (not J)
                (not I)
                (not H)
                (= P O)
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
           F
           (not G)
           (and (not N)
                (not M)
                L
                K
                J
                I
                H
                (= P O)
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
           (not E)
           F
           (not G)
           (and (not N)
                (not M)
                L
                K
                J
                I
                (not H)
                (= P O)
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
           F
           (not G)
           (and (not N)
                (not M)
                L
                K
                J
                (not I)
                (not H)
                (= P O)
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
           D
           (not E)
           (not F)
           G
           (and (not N)
                (not M)
                L
                K
                (not J)
                I
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= G1 0))
       (or A B C (not D) (not E) F G a!21 (not (<= 1 T)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           G
           (and (not N)
                (not M)
                L
                K
                (not J)
                (not I)
                H
                (= P O)
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
           C
           (not D)
           E
           F
           G
           (and (not N)
                (not M)
                L
                K
                (not J)
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= T V)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           G
           (and (not N)
                (not M)
                L
                (not K)
                J
                I
                (not H)
                (= P O)
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
           F
           G
           (and (not N)
                (not M)
                L
                (not K)
                J
                (not I)
                H
                (= P O)
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
           C
           (not D)
           E
           F
           G
           (and (not N)
                (not M)
                L
                (not K)
                J
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= T V))
       (or A
           B
           C
           (not D)
           E
           F
           (not G)
           (and (not N)
                (not M)
                L
                (not K)
                (not J)
                I
                (not H)
                (= P O)
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
           D
           (not E)
           F
           (not G)
           (and (not N)
                (not M)
                L
                (not K)
                (not J)
                (not I)
                H
                (= P O)
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
           B
           C
           D
           (not E)
           F
           (not G)
           (and (not N)
                (not M)
                L
                (not K)
                (not J)
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (not (= B1 D1)))
       (or A
           B
           (not C)
           D
           (not E)
           F
           (not G)
           (and (not N)
                (not M)
                (not L)
                K
                J
                I
                H
                (= P O)
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
           D
           (not E)
           F
           (not G)
           (and (not N)
                (not M)
                (not L)
                K
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (= B1 D1))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           G
           (and (not N)
                (not M)
                (not L)
                K
                (not J)
                I
                H
                (= P O)
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
           F
           (not G)
           (and (not N)
                (not M)
                (not L)
                (not K)
                J
                I
                H
                (= P O)
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
           (not F)
           (not G)
           (and (not N)
                (not M)
                (not L)
                (not K)
                J
                (not I)
                H
                (= P O)
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
           (not E)
           (not F)
           (not G)
           (and (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                (not I)
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1))
           (<= 1 R))
       (or A (not B) C D E F (not G) a!22)
       (or A (not B) C (not D) E F (not G) a!23)
       (or A
           B
           C
           D
           E
           (not F)
           G
           (and (not N)
                (not M)
                (not L)
                K
                (not J)
                (not I)
                (not H)
                (= R Q)
                (= O 0)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A (not B) C (not D) E (not F) (not G) a!24)
       (or A B (not C) D E (not F) G a!25)
       (or A (not B) (not C) D E (not F) (not G) a!26)
       (or A (not B) C (not D) (not E) F G a!27)
       (or A B (not C) (not D) E (not F) (not G) a!28)
       (or A (not B) (not C) D E (not F) G a!29)
       (or A B (not C) D E F (not G) a!30)
       (or A B (not C) (not D) E F (not G) a!31)
       (or A (not B) (not C) (not D) E F G a!32)
       (or A B (not C) D E (not F) (not G) a!33)
       (or A (not B) C D E (not F) (not G) a!34)
       (or A B (not C) (not D) (not E) F G a!35)
       (or A (not B) (not C) D E F (not G) a!36)
       (or A (not B) (not C) D (not E) (not F) (not G) a!37)
       (or (not A) (not B) C (not D) (not E) (not F) (not G) a!38)
       (or (not A) (not B) C (not D) E (not F) (not G) a!1)
       (or (not A) (not B) C (not D) (not E) F (not G) a!2)
       (or (not A) (not B) C (not D) E F (not G) a!3)
       (or (not A) (not B) C (not D) (not E) (not F) G a!4)
       (or (not A) (not B) C (not D) E (not F) G a!5)
       (or (not A) (not B) C (not D) (not E) F G a!6)
       (or (not A) (not B) C (not D) E F G a!7)
       (or (not A) (not B) C D (not E) (not F) (not G) a!8)
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           G
           (and N
                M
                (not L)
                K
                (not J)
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           G
           (and N
                M
                (not L)
                K
                (not J)
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A)
           (not B)
           C
           D
           E
           (not F)
           (not G)
           (and N
                M
                (not L)
                (not K)
                (not J)
                I
                (not H)
                (= P O)
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
           (not E)
           (not F)
           (not G)
           (and N
                M
                (not L)
                (not K)
                (not J)
                (not I)
                (not H)
                (= P O)
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
           (not E)
           (not F)
           G
           (and N
                (not M)
                L
                K
                (not J)
                I
                (not H)
                (= P O)
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
           G
           (and N
                (not M)
                L
                K
                (not J)
                (not I)
                (not H)
                (= P O)
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
           (and N
                (not M)
                L
                (not K)
                (not J)
                I
                (not H)
                (= P O)
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
           (and N
                (not M)
                L
                (not K)
                (not J)
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A) B (not C) D E (not F) (not G) a!12)
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           G
           (and N
                (not M)
                (not L)
                K
                (not J)
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A) B (not C) D E F (not G) a!14)
       (or (not A)
           B
           C
           D
           E
           (not F)
           G
           (and N
                (not M)
                (not L)
                K
                (not J)
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A) B (not C) D E (not F) G a!16)
       (or (not A) B (not C) D (not E) F G a!18)
       (or (not A)
           B
           C
           D
           E
           (not F)
           (not G)
           (and N
                (not M)
                (not L)
                (not K)
                (not J)
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or (not A) B (not C) D E F G a!20)
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
           (and N
                (not M)
                (not L)
                (not K)
                (not J)
                (not I)
                (not H)
                (= P O)
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
           G
           (and (not N)
                M
                L
                K
                (not J)
                I
                H
                (= P O)
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
           G
           (and (not N)
                M
                L
                (not K)
                J
                I
                (not H)
                (= P O)
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
           (not G)
           (and (not N)
                M
                L
                (not K)
                (not J)
                I
                H
                (= P O)
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
           (and (not N)
                M
                (not L)
                (not K)
                (not J)
                I
                H
                (= P O)
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
           (and (not N)
                M
                (not L)
                (not K)
                (not J)
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A (not B) C D (not E) F G a!21)
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           G
           (and (not N)
                (not M)
                L
                (not K)
                J
                I
                H
                (= P O)
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
           (not F)
           G
           (and (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                I
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)))
       (or A B C D E F G a!39)
       (or A B C D (not E) (not F) (not G) a!39)
       (or A B C (not D) E (not F) G a!39)
       (or A B C (not D) E (not F) (not G) a!39)
       (or A B C (not D) (not E) (not F) G a!39)
       (or A B (not C) D E F G a!39)
       (or A B (not C) D (not E) (not F) (not G) a!39)
       (or A B (not C) (not D) E (not F) G a!39)
       (or A (not B) C D E (not F) G a!39)
       (or A (not B) C D (not E) (not F) (not G) a!39)
       (or A (not B) C (not D) E (not F) G a!39)
       (or A (not B) (not C) D E F G a!39)
       (or A (not B) (not C) D (not E) F (not G) a!39)
       (or (not A) (not B) C D (not E) F (not G) a!39)
       (or A
           B
           C
           D
           E
           F
           (not G)
           (and (not N)
                (not M)
                (not L)
                K
                J
                (not I)
                (not H)
                (= P O)
                (= Q 0)
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
           D
           (not E)
           F
           G
           (and (not N)
                (not M)
                (not L)
                (not K)
                J
                I
                (not H)
                (= W 0)
                (= P O)
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
           (not G)
           (and (not N)
                (not M)
                (not L)
                (not K)
                (not J)
                I
                (not H)
                (= Y 0)
                (= P O)
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
           (not E)
           (not F)
           G
           (and (not N)
                (not M)
                (not L)
                K
                (not J)
                I
                (not H)
                (= E1 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)))
       (or (not A) B C D (not E) F G a!38 (<= 0 B1))))
      )
      (state K J I L M H N O Q S U W Y A1 C1 E1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (state G F E D B C A H I J K L M N O P)
        (or (and A (not B) C (not D) (not E) (not F) (not G))
    (and A (not B) C (not D) (not E) (not F) G)
    (and A (not B) C (not D) (not E) F (not G))
    (and A (not B) C (not D) (not E) F G)
    (and A (not B) C (not D) E (not F) (not G))
    (and A B (not C) (not D) E F G)
    (and A B (not C) D (not E) (not F) (not G))
    (and A B (not C) D (not E) (not F) G)
    (and A B (not C) D (not E) F (not G))
    (and A B (not C) D (not E) F G)
    (and A B (not C) D E (not F) (not G))
    (and A B (not C) D E (not F) G)
    (and A B (not C) D E F (not G))
    (and A B (not C) D E F G))
      )
      false
    )
  )
)

(check-sat)
(exit)
