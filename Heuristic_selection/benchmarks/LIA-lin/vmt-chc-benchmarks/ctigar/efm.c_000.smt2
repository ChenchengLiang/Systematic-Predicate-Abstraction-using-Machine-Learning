(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (and (= F true) (not E) (not D) (not C) (not B) (not A) (not G))
      )
      (state G F E D C B A H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) ) 
    (=>
      (and
        (state G F E D C B A P R T V X Z)
        (let ((a!1 (and N
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
                (= Z Y)))
      (a!2 (or (not A)
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
                    (= Z Y))
               (not (<= 1 (+ P R V)))))
      (a!3 (and N
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
                (= Z Y)))
      (a!4 (<= 0 (+ P R (* (- 1) T) (* (- 1) Z))))
      (a!5 (and N
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
                (= Z Y)))
      (a!6 (and N
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
                (= Z Y)))
      (a!7 (or (not A)
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
                    (= Z Y))
               (not (<= 1 (+ P Z)))))
      (a!8 (and N
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
                (= Z Y)))
      (a!9 (and N
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
                (= Z Y)))
      (a!10 (and N
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
                 (= Z Y)))
      (a!11 (and N
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
                 (= Z Y)))
      (a!12 (and N
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
                 (= Z Y)))
      (a!13 (or A
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
                     (= Z Y))
                (not (<= (+ T X Z) 1))))
      (a!14 (or A
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
                     (= Z Y))
                (not (<= (+ T Z) 1))))
      (a!15 (or A
                (not B)
                (not C)
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
                     H
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U)
                     (= X W)
                     (= Z Y))
                (not (<= 1 (+ T X Z)))))
      (a!16 (and (not N)
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
                 (= Z Y)))
      (a!17 (and (not N)
                 M
                 L
                 (not K)
                 J
                 I
                 (not H)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= (+ P (* (- 1) O)) (- 1))))
      (a!18 (and (not N)
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
                 (= (+ P (* (- 1) O)) (- 1))))
      (a!19 (and (not N)
                 (not M)
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
                 (= (+ P (* (- 1) O)) 1)))
      (a!20 (and (not N)
                 M
                 (not L)
                 K
                 J
                 I
                 (not H)
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= (+ R (* (- 1) Q)) (- 1))))
      (a!21 (and (not N)
                 (not M)
                 (not L)
                 K
                 (not J)
                 I
                 H
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= (+ R (* (- 1) Q)) (- 1))))
      (a!22 (and (not N)
                 M
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
                 (= (+ R (* (- 1) Q)) 1)))
      (a!23 (and (not N)
                 (not M)
                 L
                 K
                 (not J)
                 I
                 H
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= (+ R (* (- 1) Q)) 1)))
      (a!24 (and (not N)
                 M
                 (not L)
                 (not K)
                 J
                 I
                 H
                 (= P O)
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= (+ T (* (- 1) S) X) 0)))
      (a!25 (and (not N)
                 (not M)
                 (not L)
                 (not K)
                 J
                 I
                 H
                 (= P O)
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= (+ T (* (- 1) S)) 1)))
      (a!26 (and (not N)
                 (not M)
                 L
                 K
                 J
                 I
                 H
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= (+ V (* (- 1) U)) (- 1))))
      (a!27 (and (not N)
                 M
                 L
                 (not K)
                 (not J)
                 I
                 (not H)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= (+ V (* (- 1) U)) 1)))
      (a!28 (and (not N)
                 M
                 (not L)
                 K
                 (not J)
                 I
                 (not H)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= (+ V (* (- 1) U)) 1)))
      (a!29 (and (not N)
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
                 (= Z Y)
                 (= (+ X (* (- 1) W) Z) 0)))
      (a!30 (and (not N)
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
                 (= (+ Z (* (- 1) Y)) (- 1))))
      (a!31 (and N
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
                 (= Z Y)))
      (a!32 (and (not N)
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
                 (= Z Y))))
  (and (or (not A) B C D (not E) (not F) G a!1 (<= 1 (+ P Z)))
       a!2
       (or (not A) B C D (not E) (not F) (not G) a!3 a!4)
       (or (not A) B C (not D) E (not F) G a!5 (<= 1 (+ P R V)))
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
                (= Z Y))
           (not a!4))
       (or A (not B) (not C) (not D) E (not F) (not G) a!6 (<= (+ T Z) 1))
       a!7
       (or A (not B) (not C) (not D) (not E) (not F) G a!8 (<= 0 Z))
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
                (= Z Y))
           (not (<= 0 V)))
       (or A (not B) (not C) D (not E) (not F) (not G) a!9 (<= 1 (+ T X Z)))
       (or A (not B) (not C) (not D) (not E) (not F) (not G) a!10 (<= 0 T))
       (or A (not B) (not C) (not D) E (not F) G a!11 (<= (+ T X Z) 1))
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
                (= Z Y))
           (not (<= 0 R)))
       (or (not A) B C D E (not F) G a!12 (<= 0 V))
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
                (= Z Y))
           (not (<= 0 T)))
       (or A
           (not B)
           C
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
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (not (<= 1 V)))
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
                (= Z Y))
           (not (<= 0 Z)))
       a!13
       (or A
           (not B)
           C
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
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (<= 1 V))
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
                (= Z Y))
           (not (= A1 0)))
       a!14
       a!15
       (or A
           (not B)
           C
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
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (= A1 0))
       (or A
           B
           C
           (not D)
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
                (= Z Y))
           (= A1 0))
       (or A
           (not B)
           C
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
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (not (<= 1 T)))
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
                K
                (not J)
                (not I)
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (not (<= 1 R)))
       (or A
           (not B)
           C
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
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (<= 1 T))
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
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (not (<= 1 V)))
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
                (= Z Y))
           (<= 1 R))
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
                (= Z Y))
           (not (= A1 0)))
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
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (<= 1 V))
       (or A
           (not B)
           C
           (not D)
           E
           F
           G
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
                (= Z Y))
           (= A1 0))
       (or A
           B
           (not C)
           (not D)
           E
           F
           G
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
                (= Z Y))
           (= A1 0))
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
                (= Z Y))
           (not (= A1 0)))
       (or A
           B
           (not C)
           (not D)
           E
           (not F)
           G
           (and (not N)
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
                (= Z Y))
           (not (<= 1 R)))
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
                J
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (not (= Z 0)))
       (or A
           B
           C
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
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (not (= A1 0)))
       (or A
           B
           (not C)
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
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (<= 1 R))
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
                (= Z Y))
           (= Z 0))
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
                J
                I
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (not (<= 1 X)))
       (or A B C (not D) E (not F) (not G) a!16 (not (= X 0)))
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
                (= Z Y))
           (not (= A1 0)))
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
                J
                (not I)
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (not (= T 1)))
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
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (<= 1 X))
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
                (= Z Y))
           (= X 0))
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
                (not K)
                (not J)
                (not I)
                H
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (= A1 0))
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
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (= T 1))
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
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (not (= V 0)))
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
                (= Z Y))
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
                (= Z Y))
           (not (<= 1 P)))
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
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (= V 0))
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
                (= Z Y))
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
                (= Z Y))
           (<= 1 P))
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
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (not (= R 0)))
       (or A
           B
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
                (= Z Y))
           (not (<= 1 P)))
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
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y))
           (= R 0))
       (or A
           B
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
                (= Z Y))
           (<= 1 P))
       (or A (not B) C (not D) (not E) F G a!17)
       (or A (not B) (not C) D E (not F) (not G) a!18)
       (or A B (not C) D E (not F) (not G) a!19)
       (or A (not B) C D (not E) F (not G) a!20)
       (or A B (not C) D (not E) (not F) G a!21)
       (or A (not B) (not C) D E F (not G) a!22)
       (or A B (not C) (not D) (not E) (not F) G a!23)
       (or A (not B) (not C) D (not E) F G a!24)
       (or A B (not C) D (not E) F G a!25)
       (or A B (not C) (not D) (not E) F (not G) a!26)
       (or A (not B) C (not D) E (not F) (not G) a!27)
       (or A (not B) C D (not E) (not F) G a!28)
       (or A (not B) C (not D) (not E) (not F) G a!29)
       (or A B (not C) D (not E) F (not G) a!30)
       (or (not A) B C (not D) (not E) (not F) (not G) a!31)
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
                (= Z Y)))
       (or (not A) B C (not D) (not E) F (not G) a!1)
       (or (not A) B C (not D) (not E) (not F) G a!3)
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
                (= Z Y)))
       (or (not A) B C (not D) (not E) F G a!5)
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
                (= Z Y)))
       (or (not A) B (not C) D E (not F) (not G) a!6)
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
                (= Z Y)))
       (or (not A) B (not C) D E F (not G) a!8)
       (or (not A) B (not C) D (not E) (not F) G a!9)
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
                (= Z Y)))
       (or (not A) B (not C) D E (not F) G a!10)
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
                (= Z Y)))
       (or (not A) B (not C) D (not E) F G a!11)
       (or (not A) B (not C) D E F G a!12)
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
                (= Z Y)))
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
                (= Z Y)))
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
                (= Z Y)))
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
                (= Z Y)))
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
                J
                I
                (not H)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
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
                (= Z Y)))
       (or A B (not C) D (not E) (not F) (not G) a!16)
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
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
                (= Z Y)))
       (or A B C D E F G a!32)
       (or A B C D E F (not G) a!32)
       (or A B C D (not E) F G a!32)
       (or A B C D (not E) F (not G) a!32)
       (or A B C (not D) E F G a!32)
       (or A B C (not D) E F (not G) a!32)
       (or A B C (not D) (not E) F G a!32)
       (or A B (not C) D E F G a!32)
       (or A B (not C) D E F (not G) a!32)
       (or A B (not C) (not D) E F (not G) a!32)
       (or A B (not C) (not D) (not E) F G a!32)
       (or A (not B) C D E F (not G) a!32)
       (or A (not B) C D (not E) F G a!32)
       (or A (not B) C (not D) E F (not G) a!32)
       (or A (not B) (not C) D E (not F) G a!32)
       (or (not A) B C (not D) E (not F) (not G) a!32)
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
                (= W 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
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
                (= Y 0)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)))
       (or (not A) B C D E (not F) (not G) a!31 (<= 0 R))))
      )
      (state K J I L H M N O Q S U W Y)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (state G F E D C B A H I J K L M)
        (or (and A (not B) (not C) D E (not F) (not G))
    (and A (not B) (not C) D E (not F) G)
    (and A (not B) (not C) D E F (not G))
    (and A (not B) (not C) D E F G)
    (and A (not B) C (not D) (not E) (not F) (not G))
    (and A (not B) C (not D) (not E) (not F) G)
    (and A (not B) C (not D) (not E) F (not G))
    (and A (not B) C (not D) (not E) F G)
    (and A (not B) C (not D) E (not F) (not G))
    (and A (not B) C (not D) E F (not G)))
      )
      false
    )
  )
)

(check-sat)
(exit)
