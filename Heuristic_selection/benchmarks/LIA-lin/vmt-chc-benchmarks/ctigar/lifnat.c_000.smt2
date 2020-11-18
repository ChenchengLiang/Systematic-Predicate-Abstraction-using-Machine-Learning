(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (and (= F true) (not E) (not D) (not C) (not B) (not A) (not G))
      )
      (state G F E D C B A H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) ) 
    (=>
      (and
        (state G F E D C B A P R T V X Z B1)
        (let ((a!1 (and N
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
                (= B1 A1)))
      (a!2 (<= 1 (+ P R T V X Z B1)))
      (a!3 (and N
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
                (= B1 A1)))
      (a!4 (and N
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
                (= B1 A1)))
      (a!5 (and N
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
                (= B1 A1)))
      (a!6 (and N
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
                (= X W)
                (= Z Y)
                (= B1 A1)))
      (a!7 (and N
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
                (= B1 A1)))
      (a!8 (and N
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
                (= B1 A1)))
      (a!9 (and N
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
                (= B1 A1)))
      (a!10 (and N
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
                 (= B1 A1)))
      (a!11 (or (not A)
                B
                (not C)
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
                     H
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U)
                     (= X W)
                     (= Z Y)
                     (= B1 A1))
                (not (<= (+ V Z) 1))))
      (a!12 (or (not A)
                B
                (not C)
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
                     H
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U)
                     (= X W)
                     (= Z Y)
                     (= B1 A1))
                (not (<= (+ T B1) 1))))
      (a!13 (= (+ P (* (- 1) O) T X B1) 0))
      (a!14 (= (+ P (* (- 1) O) R V Z) 0))
      (a!15 (and N
                 (not M)
                 L
                 (not K)
                 (not J)
                 I
                 (not H)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ P (* (- 1) O)) 1)))
      (a!16 (and N
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 I
                 (not H)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ P (* (- 1) O)) 1)))
      (a!17 (and N
                 (not M)
                 (not L)
                 (not K)
                 J
                 I
                 (not H)
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ R (* (- 1) Q) V Z) (- 1))))
      (a!18 (and (not N)
                 M
                 L
                 (not K)
                 J
                 I
                 H
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ R (* (- 1) Q) V Z) (- 1))))
      (a!19 (and N
                 (not M)
                 (not L)
                 K
                 J
                 (not I)
                 H
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ R (* (- 1) Q)) 1)))
      (a!20 (and (not N)
                 M
                 L
                 K
                 J
                 (not I)
                 (not H)
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ R (* (- 1) Q)) 1)))
      (a!21 (and (not N)
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 I
                 H
                 (= P O)
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ T (* (- 1) S)) 1)))
      (a!22 (and (not N)
                 (not M)
                 L
                 K
                 (not J)
                 I
                 (not H)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ V (* (- 1) U)) 1)))
      (a!23 (and N
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
                 (= Z Y)
                 (= B1 A1)
                 (= (+ T X (* (- 1) W) B1) (- 1))))
      (a!24 (and N
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
                 (= Z Y)
                 (= B1 A1)
                 (= (+ T (* (- 1) W) B1) (- 1))))
      (a!25 (and (not N)
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
                 (= Z Y)
                 (= B1 A1)
                 (= (+ X (* (- 1) W)) 1)))
      (a!26 (and (not N)
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
                 (= Z Y)
                 (= B1 A1)
                 (= (+ X (* (- 1) W)) 1)))
      (a!27 (and (not N)
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
                 (= B1 A1)
                 (= (+ Z (* (- 1) Y)) (- 1))))
      (a!28 (and (not N)
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
                 (= (+ B1 (* (- 1) A1)) (- 1))))
      (a!29 (and N
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
                 (= B1 A1)))
      (a!30 (and (not N)
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
                 (= B1 A1))))
  (and (or (not A) (not B) C D (not E) (not F) G a!1 (<= 0 Z))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           G
           (and N
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
                (= B1 A1))
           (not a!2))
       (or (not A) (not B) C D (not E) (not F) (not G) a!3 (<= 0 V))
       (or (not A) (not B) C (not D) E (not F) G a!4 a!2)
       (or (not A)
           (not B)
           C
           D
           (not E)
           (not F)
           (not G)
           (and N
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
                (= B1 A1))
           (not (<= 0 V)))
       (or (not A) B (not C) (not D) E (not F) (not G) a!5 (<= 0 P))
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
                (= B1 A1))
           (not (<= 0 Z)))
       (or (not A) B (not C) (not D) (not E) (not F) G a!6 (<= 0 X))
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
                (= B1 A1))
           (not (<= 0 T)))
       (or (not A) B (not C) D (not E) (not F) (not G) a!7 (<= (+ T B1) 1))
       (or (not A) B (not C) (not D) (not E) (not F) (not G) a!8 (<= 0 B1))
       (or (not A) B (not C) (not D) E (not F) G a!9 (<= (+ V Z) 1))
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
                (= B1 A1))
           (not (<= 0 R)))
       (or (not A) (not B) C D E (not F) G a!10 (<= 0 T))
       (or (not A)
           B
           (not C)
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
                (= B1 A1))
           (not (<= 0 B1)))
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
                J
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 P)))
       (or (not A)
           B
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 0 X)))
       a!11
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
                (= B1 A1))
           (<= 1 P))
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
                (= B1 A1))
           (not (= C1 0)))
       (or (not A)
           B
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 0 P)))
       a!12
       (or (not A)
           B
           C
           D
           E
           F
           G
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
                (= B1 A1))
           (= C1 0))
       (or A
           B
           C
           (not D)
           E
           (not F)
           G
           (and N
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
                (= B1 A1))
           (= C1 0))
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
                J
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 P)))
       (or (not A)
           B
           (not C)
           D
           E
           F
           G
           (and N
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
                (= B1 A1))
           (not (<= 1 R)))
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
                (= B1 A1))
           (<= 1 P))
       (or (not A)
           B
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= 1 R))
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
                (= B1 A1))
           (not (= C1 0)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           G
           (and N
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
                (= B1 A1))
           (= C1 0))
       (or A
           (not B)
           (not C)
           (not D)
           E
           F
           G
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
                (= B1 A1))
           (= C1 0))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
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
                (= B1 A1))
           (not (<= 1 X)))
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           G
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
                (= B1 A1))
           (<= 1 X))
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
                (= B1 A1))
           (not (<= 1 R)))
       (or A
           (not B)
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (= C1 0)))
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
                (= B1 A1))
           (<= 1 R))
       (or A
           (not B)
           (not C)
           D
           E
           F
           G
           (and (not N)
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
                (= B1 A1))
           (= C1 0))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
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
                (= B1 A1))
           (not (= C1 0)))
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
                (= B1 A1))
           (= C1 0))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           (and (not N)
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
                (= B1 A1))
           (not (<= 1 X)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
           (and (not N)
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
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= 1 X))
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
                (= B1 A1))
           (not (<= 1 R)))
       (or A
           (not B)
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (= C1 0)))
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
                (= B1 A1))
           (<= 1 R))
       (or A
           (not B)
           C
           D
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
                (= B1 A1))
           (= C1 0))
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
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (= C1 0)))
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
                (= B1 A1))
           (= C1 0))
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
                (= B1 A1))
           (not (= C1 0)))
       (or A
           B
           C
           (not D)
           E
           (not F)
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
                (= B1 A1))
           (not (= C1 0)))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (not G)
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
                (= B1 A1))
           (not (<= 1 V)))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
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
                (= B1 A1))
           (not (<= 1 X)))
       (or A
           B
           C
           (not D)
           E
           (not F)
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
                (= B1 A1))
           (<= 1 V))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
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
                (= B1 A1))
           (<= 1 X))
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
                (= B1 A1))
           (not (= C1 0)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           G
           (and (not N)
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
                (= B1 A1))
           (not (<= 1 T)))
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
                J
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 P)))
       (or A
           B
           (not C)
           D
           E
           F
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
                (= B1 A1))
           (= C1 0))
       (or A
           B
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= 1 T))
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
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= 1 P))
       (or A
           B
           (not C)
           D
           E
           F
           G
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
                (= B1 A1))
           (not (= C1 0)))
       (or A
           B
           C
           (not D)
           E
           F
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
                (= B1 A1))
           (= C1 0))
       (or A
           (not B)
           C
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
                (not H)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                a!13))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
           (and (not N)
                M
                (not L)
                (not K)
                (not J)
                I
                H
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                a!13))
       (or A
           (not B)
           C
           D
           E
           F
           (not G)
           (and (not N)
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
                a!14))
       (or A
           B
           (not C)
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
                H
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                a!14))
       (or (not A) B C (not D) E (not F) (not G) a!15)
       (or (not A) B C D E (not F) (not G) a!16)
       (or (not A) B C D (not E) F G a!17)
       (or A (not B) (not C) (not D) (not E) F G a!18)
       (or (not A) B (not C) D E F (not G) a!19)
       (or A (not B) C (not D) E F (not G) a!20)
       (or A B (not C) D E (not F) (not G) a!21)
       (or A B C (not D) (not E) (not F) G a!22)
       (or (not A) B C (not D) (not E) F G a!23)
       (or (not A) B (not C) D E (not F) (not G) a!24)
       (or A (not B) (not C) (not D) E (not F) (not G) a!25)
       (or A B (not C) (not D) E (not F) G a!26)
       (or A B C (not D) (not E) F (not G) a!27)
       (or A B (not C) D (not E) F G a!28)
       (or (not A) (not B) C (not D) (not E) (not F) (not G) a!29)
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (not G)
           (and N
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
                (= B1 A1)))
       (or (not A) (not B) C (not D) (not E) F (not G) a!1)
       (or (not A) (not B) C (not D) (not E) (not F) G a!3)
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           G
           (and N
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
                (= B1 A1)))
       (or (not A) (not B) C (not D) (not E) F G a!4)
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (not G)
           (and N
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
                (= B1 A1)))
       (or (not A) (not B) (not C) D E (not F) (not G) a!5)
       (or (not A)
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
                (= B1 A1)))
       (or (not A) (not B) (not C) D E F (not G) a!6)
       (or (not A) (not B) (not C) D (not E) (not F) G a!7)
       (or (not A)
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
                (= B1 A1)))
       (or (not A) (not B) (not C) D E (not F) G a!8)
       (or (not A)
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
                (= B1 A1)))
       (or (not A) (not B) (not C) D (not E) F G a!9)
       (or (not A) (not B) (not C) D E F G a!10)
       (or (not A)
           B
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or (not A)
           B
           (not C)
           D
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
                (= B1 A1)))
       (or (not A)
           B
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or (not A)
           B
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or (not A)
           B
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           (not F)
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
                (= B1 A1)))
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
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
                (= B1 A1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           (not F)
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
                (= B1 A1)))
       (or A
           (not B)
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
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
                (= B1 A1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
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
                (= B1 A1)))
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
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (not G)
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
                (= B1 A1)))
       (or A
           B
           C
           (not D)
           (not E)
           (not F)
           (not G)
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
                (= B1 A1)))
       (or A
           B
           (not C)
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
                (= B1 A1)))
       (or A B C D E F G a!30)
       (or A B C D E F (not G) a!30)
       (or A B C (not D) (not E) F G a!30)
       (or A B (not C) D E F (not G) a!30)
       (or A B (not C) (not D) E F G a!30)
       (or A (not B) C D E (not F) G a!30)
       (or A (not B) C (not D) E (not F) G a!30)
       (or A (not B) (not C) D E F (not G) a!30)
       (or A (not B) (not C) (not D) E F (not G) a!30)
       (or (not A) B C D E F (not G) a!30)
       (or (not A) B C (not D) E F (not G) a!30)
       (or (not A) B (not C) D E (not F) G a!30)
       (or (not A) (not B) C (not D) E (not F) (not G) a!30)
       (or A
           (not B)
           C
           D
           E
           (not F)
           (not G)
           (and (not N)
                M
                (not L)
                (not K)
                (not J)
                I
                (not H)
                (= Q 0)
                (= P O)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           (not G)
           (and (not N)
                (not M)
                L
                (not K)
                (not J)
                I
                H
                (= Q 0)
                (= P O)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
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
                (= Q 0)
                (= P O)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
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
                (= S 0)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or (not A)
           B
           (not C)
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
                H
                (= S 0)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
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
                (= S 0)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           (not B)
           C
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
                (not H)
                (= S 1)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
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
                (= S 1)
                (= P O)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
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
                (= U 0)
                (= P O)
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)))
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
                (= U 0)
                (= P O)
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           (not G)
           (and (not N)
                (not M)
                L
                (not K)
                (not J)
                (not I)
                (not H)
                (= U 0)
                (= P O)
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           G
           (and (not N)
                M
                (not L)
                (not K)
                J
                I
                (not H)
                (= U 1)
                (= P O)
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           B
           (not C)
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
                H
                (= U 1)
                (= P O)
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A
           (not B)
           C
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
                (not H)
                (= W 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)))
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           G
           (and (not N)
                M
                (not L)
                (not K)
                J
                I
                H
                (= W 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)))
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
                (= W 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)))
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
                (= Y 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= B1 A1)))
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
                (= Y 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= B1 A1)))
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
                (= Y 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= B1 A1)))
       (or A
           B
           (not C)
           (not D)
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
                (= Y 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= B1 A1)))
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
                (= Y 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= B1 A1)))
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
                (= A1 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)))
       (or (not A)
           B
           (not C)
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
                H
                (= A1 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)))
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
                (= A1 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)))
       (or A
           (not B)
           (not C)
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
                H
                (= A1 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)))
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
                (= A1 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)))
       (or (not A) (not B) C D E (not F) (not G) a!29 (<= 0 R))))
      )
      (state K J I L H M N O Q S U W Y A1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (state G F E D C B A H I J K L M N)
        (or (and A B (not C) D E (not F) (not G))
    (and A B (not C) D E (not F) G)
    (and A B (not C) D E F (not G))
    (and A B (not C) D E F G)
    (and A B C (not D) (not E) (not F) (not G))
    (and A B C (not D) (not E) (not F) G)
    (and A B C (not D) (not E) F (not G))
    (and A B C (not D) (not E) F G)
    (and A B C (not D) E (not F) (not G))
    (and A B C (not D) E F (not G)))
      )
      false
    )
  )
)

(check-sat)
(exit)
