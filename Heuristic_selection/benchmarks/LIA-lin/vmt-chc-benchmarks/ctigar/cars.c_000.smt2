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
                (= B1 A1)))
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
                (= B1 A1)))
      (a!5 (and N
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
      (a!6 (<= 0 (+ P R (* (- 2) V) (* 2 Z))))
      (a!7 (and N
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
      (a!8 (not (<= 75 (+ X (* 5 Z)))))
      (a!9 (not (<= (+ X (* (- 5) Z)) 75)))
      (a!10 (<= (+ P R (* (- 2) V) (* (- 2) Z)) 0))
      (a!11 (not (<= 0 (+ T (* (- 2) X) B1))))
      (a!12 (or A
                B
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
                     (= B1 A1))
                (<= 0 (+ T (* (- 2) X) B1))))
      (a!13 (not (<= (+ T (* (- 2) X) B1) 0)))
      (a!14 (or A
                B
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
                     (not H)
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U)
                     (= X W)
                     (= Z Y)
                     (= B1 A1))
                (<= (+ T (* (- 2) X) B1) 0)))
      (a!15 (and (not N)
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
      (a!16 (not (= (+ P R (* (- 2) V)) 0)))
      (a!17 (or A
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
                (= (+ P R (* (- 2) V)) 0)))
      (a!18 (and (not N)
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
                 (= B1 A1)))
      (a!19 (and (not N)
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
                 (= B1 A1)))
      (a!20 (and (not N)
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
                 (= B1 A1)))
      (a!22 (and N
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 I
                 (not H)
                 (= P O)
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ R T (* (- 1) S)) 0)))
      (a!23 (and (not N)
                 M
                 L
                 (not K)
                 (not J)
                 I
                 (not H)
                 (= P O)
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ R T (* (- 1) S)) 0)))
      (a!24 (and N
                 (not M)
                 (not L)
                 K
                 J
                 (not I)
                 (not H)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ V (* (- 1) U)) (- 1))))
      (a!25 (and (not N)
                 M
                 L
                 K
                 J
                 (not I)
                 (not H)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ V (* (- 1) U)) 1)))
      (a!26 (and N
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
                 (= Z Y)
                 (= B1 A1)
                 (= (+ V X (* (- 1) W)) 0)))
      (a!27 (and (not N)
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
                 (= Z Y)
                 (= B1 A1)
                 (= (+ V X (* (- 1) W)) 0)))
      (a!28 (and N
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
                 (= B1 A1)
                 (= (+ Z (* (- 1) Y)) (- 1))))
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
                 (= X W)
                 (= B1 A1)
                 (= (+ Z (* (- 1) Y)) (- 1))))
      (a!30 (and N
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
                 (= (+ P B1 (* (- 1) A1)) 0)))
      (a!31 (and (not N)
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
                 (= (+ P B1 (* (- 1) A1)) 0)))
      (a!32 (and N
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
      (a!33 (and (not N)
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
(let ((a!4 (or A (not B) (not C) D E (not F) (not G) a!3 (<= 75 (+ X (* 5 Z)))))
      (a!21 (or A
                (not B)
                C
                (not D)
                E
                (not F)
                (not G)
                a!20
                (<= (+ X (* (- 5) Z)) 75))))
  (and (or A (not B) (not C) D E (not F) G a!1 (<= (- 6) V))
       (or A (not B) C (not D) (not E) (not F) (not G) a!2 (<= 0 P))
       a!4
       (or A (not B) (not C) D (not E) (not F) G a!5 a!6)
       (or A (not B) (not C) D (not E) (not F) (not G) a!7 (<= P R))
       (or A
           (not B)
           (not C)
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
           (not (<= P R)))
       (or A
           (not B)
           (not C)
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
           (not a!6))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (not G)
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
           a!8)
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           G
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
           (not (<= (- 6) V)))
       (or A
           (not B)
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
                (= B1 A1))
           (not (<= 0 P)))
       (or A
           (not B)
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
                (= B1 A1))
           (not (<= V 6)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
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
           a!9)
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           G
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
                (= B1 A1))
           (not a!10))
       (or A
           (not B)
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
                (= B1 A1))
           (not (<= R 5)))
       (or A
           B
           (not C)
           D
           E
           (not F)
           G
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
                (= B1 A1))
           (= C1 0))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (not G)
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
           a!11)
       a!12
       (or A
           B
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
                (= Z Y)
                (= B1 A1))
           (= C1 0))
       (or A
           B
           (not C)
           D
           (not E)
           (not F)
           (not G)
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
           a!13)
       a!14
       (or A
           B
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
                (= Z Y)
                (= B1 A1))
           (<= V 5))
       (or A
           B
           (not C)
           D
           (not E)
           F
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
                (= B1 A1))
           (not (<= V 5)))
       (or A
           B
           (not C)
           D
           E
           F
           (not G)
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
           (not (<= (- 5) V)))
       (or A
           B
           (not C)
           D
           E
           F
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
                (= B1 A1))
           (<= (- 5) V))
       (or A B C (not D) (not E) (not F) (not G) a!15 (not (<= V 5)))
       (or A
           B
           (not C)
           D
           E
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
                (= B1 A1))
           (not (= C1 0)))
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
                (= B1 A1))
           (<= V 5))
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
           (not (<= (- 5) V)))
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
                (= Z Y)
                (= B1 A1))
           (<= (- 5) V))
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
           a!16)
       a!17
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
                (= B1 A1))
           (<= P R))
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
           (not (<= P R)))
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
                (= B1 A1))
           (not (<= R 5)))
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
                (= B1 A1))
           (<= R 5))
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
           (<= 0 P))
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
           (not (<= 0 P)))
       (or A (not B) C (not D) E (not F) G a!18 a!10)
       (or A (not B) C D (not E) (not F) (not G) a!19 (<= R 5))
       a!21
       (or A (not B) C D E (not F) G a!22)
       (or A B (not C) (not D) E (not F) G a!23)
       (or A (not B) C D (not E) F G a!24)
       (or A B (not C) (not D) (not E) F G a!25)
       (or A (not B) C D E (not F) (not G) a!26)
       (or A B (not C) (not D) E (not F) (not G) a!27)
       (or A (not B) C D (not E) (not F) G a!28)
       (or A B (not C) (not D) (not E) (not F) G a!29)
       (or A (not B) C D E F (not G) a!30)
       (or A B (not C) (not D) E F (not G) a!31)
       (or A (not B) (not C) (not D) (not E) (not F) (not G) a!32)
       (or A (not B) (not C) (not D) (not E) (not F) G a!1)
       (or A (not B) (not C) (not D) (not E) F (not G) a!2)
       (or A (not B) (not C) (not D) (not E) F G a!3)
       (or A (not B) (not C) (not D) E (not F) (not G) a!5)
       (or A
           (not B)
           (not C)
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
       (or A (not B) (not C) (not D) E F (not G) a!7)
       (or A
           (not B)
           (not C)
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
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           G
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
       (or A
           (not B)
           (not C)
           D
           E
           F
           (not G)
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
       (or A
           (not B)
           (not C)
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
       (or A
           (not B)
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
                (= B1 A1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
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
                (= B1 A1)))
       (or A
           (not B)
           C
           (not D)
           E
           F
           (not G)
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
                (= B1 A1)))
       (or A
           (not B)
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
                (= B1 A1)))
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
       (or A B (not C) (not D) (not E) F (not G) a!15)
       (or (not A) B C D E (not F) G a!18)
       (or (not A) B C D E F (not G) a!19)
       (or (not A) B C D E F G a!20)
       (or A B C D E F G a!33)
       (or A B C D (not E) (not F) G a!33)
       (or A B C D (not E) (not F) (not G) a!33)
       (or A B C (not D) E (not F) G a!33)
       (or A B C (not D) E (not F) (not G) a!33)
       (or A B C (not D) (not E) F (not G) a!33)
       (or A B (not C) D E F G a!33)
       (or A B (not C) D E (not F) (not G) a!33)
       (or A B (not C) D (not E) (not F) G a!33)
       (or A B (not C) (not D) E F G a!33)
       (or A (not B) C D E F G a!33)
       (or A (not B) (not C) (not D) E (not F) G a!33)
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
                (not K)
                (not J)
                I
                (not H)
                (= S 100)
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
           E
           F
           (not G)
           (and (not N)
                (not M)
                (not L)
                (not K)
                J
                I
                (not H)
                (= W 75)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= Z Y)
                (= B1 A1)))
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
                K
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
                K
                (not J)
                (not I)
                (not H)
                (= A1 (- 50))
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)))
       (or A (not B) C (not D) (not E) (not F) G a!32 (<= V 6)))))
      )
      (state I J K L M N H O Q S U W Y A1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (state G F E D C B A H I J K L M N)
        (or (and (not A) B C D (not E) (not F) G)
    (and (not A) B C D (not E) F G)
    (and (not A) B C D E (not F) (not G))
    (and (not A) B C D E (not F) G)
    (and (not A) B C D E F (not G))
    (and (not A) B C D E F G)
    (and A (not B) (not C) (not D) (not E) (not F) (not G))
    (and A (not B) (not C) (not D) (not E) (not F) G)
    (and A (not B) (not C) (not D) (not E) F (not G)))
      )
      false
    )
  )
)

(check-sat)
(exit)
