(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (and (= G true) (not F) (not E) (not D) (not C) (not B) (not A) (not H))
      )
      (state H G F E D B A C I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) ) 
    (=>
      (and
        (state H G F E D B A C R T V X Z B1)
        (let ((a!1 (and P
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
                (= B1 A1)))
      (a!2 (and P
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
                (= B1 A1)))
      (a!3 (and P
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
                (= B1 A1)))
      (a!4 (and P
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
                (= B1 A1)))
      (a!5 (and P
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
                (= B1 A1)))
      (a!6 (and P
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
                (= B1 A1)))
      (a!7 (and (not P)
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
                (= B1 A1)))
      (a!8 (and (not P)
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
                (= B1 A1)))
      (a!9 (and (not P)
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
                (= B1 A1)))
      (a!10 (and (not P)
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
                 (= B1 A1)))
      (a!11 (and (not P)
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
                 (= B1 A1)))
      (a!12 (and (not P)
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
                 (= B1 A1)))
      (a!13 (and (not P)
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
                 (= B1 A1)))
      (a!14 (and (not P)
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
                 (= B1 A1)))
      (a!15 (and (not P)
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
                 (= B1 A1)))
      (a!16 (and (not P)
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
                 (= B1 A1)))
      (a!17 (and (not P)
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
                 (= B1 A1)))
      (a!18 (and (not P)
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
                 (= B1 A1)))
      (a!19 (and (not P)
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
                 (= B1 A1)))
      (a!20 (and (not P)
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
                 (= B1 A1)))
      (a!21 (and (not P)
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
                 (= B1 A1)))
      (a!22 (and (not P)
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
                 (= B1 A1)))
      (a!23 (and (not P)
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
                 (= B1 A1)))
      (a!24 (and (not P)
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
                 (= B1 A1)))
      (a!25 (and (not P)
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
                 (= B1 A1)))
      (a!26 (and (not P)
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
                 (= B1 A1)))
      (a!27 (and (not P)
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
                 (= B1 A1)))
      (a!28 (and (not P)
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
                 (= B1 A1)))
      (a!29 (and (not P)
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
                 (= B1 A1)))
      (a!30 (and (not P)
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
                 (= B1 A1)))
      (a!31 (and (not P)
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
                 (= B1 A1)))
      (a!32 (and (not P)
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
                 (= B1 A1)))
      (a!33 (and (not P)
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
                 (= B1 A1)))
      (a!34 (and (not P)
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
                 (= B1 A1)))
      (a!35 (and (not P)
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
                 (= B1 A1)))
      (a!36 (and (not P)
                 O
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
                 (= (+ R (* (- 1) Q)) 1)))
      (a!37 (and P
                 (not O)
                 (not N)
                 (not M)
                 (not L)
                 (not K)
                 (not J)
                 I
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ T (* (- 1) S)) (- 1))))
      (a!38 (and (not P)
                 O
                 N
                 (not M)
                 (not L)
                 (not K)
                 J
                 I
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ T (* (- 1) S)) (- 1))))
      (a!39 (and (not P)
                 O
                 (not N)
                 M
                 (not L)
                 (not K)
                 J
                 I
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ T (* (- 1) S)) (- 1))))
      (a!40 (and (not P)
                 (not O)
                 (not N)
                 M
                 (not L)
                 K
                 J
                 (not I)
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ T (* (- 1) S)) (- 1))))
      (a!41 (and (not P)
                 O
                 (not N)
                 (not M)
                 L
                 (not K)
                 J
                 I
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ V (* (- 1) U)) (- 1))))
      (a!42 (and (not P)
                 (not O)
                 N
                 (not M)
                 L
                 K
                 (not J)
                 I
                 (= R Q)
                 (= T S)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= (+ V (* (- 1) U)) (- 1))))
      (a!43 (and (not P)
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
                 (= Z Y)
                 (= B1 A1)
                 (= (+ R (* (- 1) W)) (- 1))))
      (a!44 (and (not P)
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
                 (= B1 A1)))
      (a!45 (and (not P)
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
                 (= B1 A1))))
  (and (or A
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
                L
                (not K)
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= 1 R))
       (or A B C D E (not F) (not G) (not H) a!1 (<= 1 R))
       (or A B C D (not E) F (not G) H a!2 (<= R Z))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
           (not H)
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
                (= B1 A1))
           (<= T B1))
       (or (not A) (not B) C (not D) (not E) F G H a!3 (<= 1 T))
       (or (not A) (not B) C (not D) (not E) F G (not H) a!4 (<= T B1))
       (or (not A) (not B) C (not D) (not E) (not F) G H a!5 (<= 1 R))
       (or (not A) (not B) C (not D) (not E) (not F) G (not H) a!6 (<= R Z))
       (or (not A)
           (not B)
           C
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
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= R Z)))
       (or (not A)
           (not B)
           C
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
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 R)))
       (or (not A)
           (not B)
           C
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
                (not K)
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= T B1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           G
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
                (= B1 A1))
           (not (<= 1 T)))
       (or (not A)
           (not B)
           C
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
                (= B1 A1))
           (not (<= T B1)))
       (or A
           B
           C
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
                K
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (= C1 0))
       (or (not A) (not B) C D (not E) F G H a!7 (<= 1 R))
       (or (not A) (not B) C D (not E) F G (not H) a!8 (<= R B1))
       (or (not A) (not B) C D (not E) (not F) G H a!9 (<= 1 R))
       (or (not A) (not B) C D (not E) (not F) G (not H) a!10 (<= R Z))
       (or (not A)
           (not B)
           C
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
                (= B1 A1))
           (not (<= R Z)))
       (or (not A)
           (not B)
           C
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
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 R)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           G
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
                (= B1 A1))
           (not (<= R B1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           G
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
                (= B1 A1))
           (not (<= 1 R)))
       (or (not A) B C (not D) (not E) F (not G) H a!11 (<= T B1))
       (or (not A) B C (not D) (not E) F G (not H) a!12 (<= 1 T))
       (or (not A) B C (not D) (not E) (not F) G H a!13 (<= T B1))
       (or (not A) B C (not D) (not E) (not F) G (not H) a!14 (<= 1 R))
       (or (not A) (not B) C D E F G H a!15 (<= R Z))
       (or (not A)
           (not B)
           C
           D
           E
           F
           G
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
                (= B1 A1))
           (not (<= R Z)))
       (or (not A)
           B
           C
           (not D)
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
                (= B1 A1))
           (not (<= 1 R)))
       (or (not A)
           B
           C
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
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= T B1)))
       (or (not A)
           B
           C
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
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 T)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (not G)
           H
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
                (= B1 A1))
           (not (<= T B1)))
       (or A
           B
           C
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
                (not K)
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= T Z))
       (or A (not B) C (not D) E (not F) G H a!16 (<= 1 R))
       (or A (not B) C (not D) E (not F) G (not H) a!17 (<= R B1))
       (or A (not B) C (not D) (not E) F G H a!18 (<= 1 R))
       (or A (not B) C (not D) (not E) F G (not H) a!19 (<= R Z))
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           H
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
                (= B1 A1))
           (<= V B1))
       (or A (not B) C (not D) (not E) (not F) G (not H) a!20 (<= 1 V))
       (or (not A) B C D E F G H a!21 (<= V B1))
       (or (not A) B C D E F G (not H) a!22 (<= 1 T))
       (or (not A) B C D E (not F) G H a!23 (<= T Z))
       (or (not A) B C D E (not F) G (not H) a!24 (<= 1 R))
       (or (not A) B C D (not E) F G H a!25 (<= R Z))
       (or (not A)
           B
           C
           D
           (not E)
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
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= R Z)))
       (or (not A)
           B
           C
           D
           E
           (not F)
           G
           (not H)
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
                (= B1 A1))
           (not (<= 1 R)))
       (or (not A)
           B
           C
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
                (= B1 A1))
           (not (<= T Z)))
       (or (not A)
           B
           C
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
                (= B1 A1))
           (not (<= 1 T)))
       (or (not A)
           B
           C
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
                (= B1 A1))
           (not (<= V B1)))
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
                L
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 V)))
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
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= V B1)))
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
                (= B1 A1))
           (not (<= R Z)))
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
                (= B1 A1))
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
                K
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= R B1)))
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
                (= B1 A1))
           (not (<= 1 R)))
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
                (= B1 A1))
           (<= V B1))
       (or A (not B) C D E F G H a!26 (<= 1 V))
       (or A (not B) C D E F G (not H) a!27 (<= V B1))
       (or A (not B) C D E (not F) G H a!28 (<= 1 R))
       (or A (not B) C D E (not F) G (not H) a!29 (<= R Z))
       (or A (not B) C D (not E) F G H a!30 (<= 1 T))
       (or A (not B) C D (not E) F G (not H) a!31 (<= T Z))
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
                (= B1 A1))
           (not (<= T Z)))
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
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 T)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           G
           (not H)
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
                (= B1 A1))
           (not (<= R Z)))
       (or A
           (not B)
           C
           D
           E
           (not F)
           G
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
                (= B1 A1))
           (not (<= 1 R)))
       (or A
           (not B)
           C
           D
           E
           F
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
                (= B1 A1))
           (not (<= V B1)))
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
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 V)))
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
                (not J)
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= V B1)))
       (or A
           B
           C
           (not D)
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
                (= B1 A1))
           (not (<= T Z)))
       (or A
           B
           C
           (not D)
           (not E)
           F
           (not G)
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
                (= B1 A1))
           (not (= C1 0)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           G
           H
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
                (= B1 A1))
           (<= T Z))
       (or A B C D (not E) (not F) (not G) H a!32 (<= 1 R))
       (or A B C D (not E) (not F) (not G) (not H) a!33 (<= R B1))
       (or A B C (not D) E F (not G) H a!34 (<= 1 T))
       (or A B C (not D) E F (not G) (not H) a!35 (<= T Z))
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
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= T Z)))
       (or A
           B
           C
           (not D)
           E
           F
           (not G)
           H
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
                (= B1 A1))
           (not (<= 1 T)))
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
                (= B1 A1))
           (not (<= R B1)))
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
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 R)))
       (or A
           B
           C
           D
           (not E)
           (not F)
           G
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
                (= B1 A1))
           (not (<= T Z)))
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
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= R Z)))
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
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 R)))
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
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= 1 R)))
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
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= B1 Z)))
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
                J
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (<= Z B1))
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
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1))
           (not (<= Z B1)))
       (or (not A) (not B) C (not D) E F G H a!36)
       (or A B (not C) D E F G H a!37)
       (or (not A) (not B) C D E F G (not H) a!38)
       (or (not A) B C (not D) E F G (not H) a!39)
       (or A B C (not D) E (not F) (not G) H a!40)
       (or (not A) B C D (not E) F G (not H) a!41)
       (or A (not B) C D (not E) (not F) G H a!42)
       (or A B C D E (not F) G (not H) a!43)
       (or A B (not C) D (not E) F G H a!1)
       (or A B (not C) D E (not F) (not G) (not H) a!2)
       (or A B (not C) D E (not F) (not G) H a!3)
       (or A B (not C) D E (not F) G H a!4)
       (or A B (not C) D E F (not G) (not H) a!5)
       (or A B (not C) D E F G (not H) a!6)
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (not G)
           (not H)
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
                (= B1 A1)))
       (or (not A)
           (not B)
           C
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
                (= B1 A1)))
       (or (not A)
           (not B)
           C
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
                (= B1 A1)))
       (or (not A)
           (not B)
           C
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
                (not I)
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
           E
           F
           (not G)
           H
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
                (= B1 A1)))
       (or (not A) (not B) C (not D) E (not F) (not G) H a!7)
       (or (not A) (not B) C (not D) E (not F) G H a!8)
       (or (not A) (not B) C (not D) E F (not G) (not H) a!9)
       (or (not A) (not B) C (not D) E F G (not H) a!10)
       (or (not A)
           (not B)
           C
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
                (= B1 A1)))
       (or (not A)
           (not B)
           C
           D
           (not E)
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
                (= B1 A1)))
       (or (not A)
           (not B)
           C
           D
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
                (= B1 A1)))
       (or (not A)
           (not B)
           C
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
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A B (not C) D E (not F) G (not H) a!11)
       (or (not A) (not B) C D E (not F) (not G) (not H) a!12)
       (or (not A) (not B) C D E (not F) G (not H) a!13)
       (or (not A) (not B) C D E (not F) (not G) H a!14)
       (or (not A) (not B) C D E (not F) G H a!15)
       (or (not A)
           (not B)
           C
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
                (not I)
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
                (= B1 A1)))
       (or (not A)
           B
           C
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
                (not I)
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
           F
           (not G)
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
                (= B1 A1)))
       (or (not A)
           (not B)
           C
           D
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
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or (not A) B C (not D) E (not F) (not G) (not H) a!16)
       (or (not A) B C (not D) E (not F) G (not H) a!17)
       (or (not A) B C (not D) E (not F) (not G) H a!18)
       (or (not A) B C (not D) E (not F) G H a!19)
       (or (not A) B C (not D) E F (not G) H a!20)
       (or (not A) B C (not D) E F G H a!21)
       (or (not A) B C D (not E) (not F) (not G) (not H) a!22)
       (or (not A) B C D (not E) (not F) G (not H) a!23)
       (or (not A) B C D (not E) (not F) (not G) H a!24)
       (or (not A) B C D (not E) (not F) G H a!25)
       (or (not A)
           B
           C
           D
           (not E)
           F
           (not G)
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
                (= B1 A1)))
       (or (not A)
           B
           C
           D
           E
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
                (not I)
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
           E
           (not F)
           (not G)
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
                (= B1 A1)))
       (or (not A)
           B
           C
           D
           E
           F
           (not G)
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
                (= B1 A1)))
       (or (not A)
           B
           C
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
                (not K)
                J
                (not I)
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
                (= B1 A1)))
       (or (not A)
           B
           C
           D
           (not E)
           F
           (not G)
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
                (= B1 A1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
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
                (= B1 A1)))
       (or A
           (not B)
           C
           (not D)
           (not E)
           F
           (not G)
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
                (= B1 A1)))
       (or A
           (not B)
           C
           (not D)
           E
           (not F)
           (not G)
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
                (= B1 A1)))
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
                J
                (not I)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A (not B) C (not D) E F (not G) (not H) a!26)
       (or A (not B) C (not D) E F G (not H) a!27)
       (or A (not B) C (not D) E F (not G) H a!28)
       (or A (not B) C (not D) E F G H a!29)
       (or A (not B) C D (not E) (not F) (not G) (not H) a!30)
       (or A (not B) C D (not E) (not F) G (not H) a!31)
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
                (= B1 A1)))
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
                (= B1 A1)))
       (or A
           (not B)
           C
           D
           E
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
                (= B1 A1)))
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
                (not I)
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
                (= B1 A1)))
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
                (not I)
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
                (= B1 A1)))
       (or (not A)
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
                L
                K
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A B C (not D) (not E) F G (not H) a!32)
       (or A B C (not D) (not E) F (not G) H a!33)
       (or A B C (not D) (not E) F G H a!34)
       (or A B C (not D) E (not F) (not G) (not H) a!35)
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
                (not L)
                K
                (not J)
                I
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
           E
           F
           G
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
                (= B1 A1)))
       (or A
           B
           C
           (not D)
           E
           F
           G
           H
           (and (not P)
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
                (= B1 A1)))
       (or A
           B
           C
           D
           (not E)
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
                I
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
                (not J)
                (not I)
                (= R Q)
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
                (= B1 A1)))
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
                (not J)
                I
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or A B (not C) D (not E) F (not G) (not H) a!44)
       (or (not A) (not B) C (not D) E F (not G) H a!44)
       (or A B C D E F G H a!45)
       (or A B C D E F G (not H) a!45)
       (or A B (not C) D (not E) F (not G) H a!45)
       (or (not A)
           (not B)
           C
           (not D)
           E
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
                (= R S)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)))
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           G
           H
           (and (not P)
                O
                (not N)
                M
                L
                (not K)
                (not J)
                I
                (= R S)
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
           H
           (and (not P)
                (not O)
                N
                M
                L
                K
                (not J)
                I
                (= R U)
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)))
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
                (not J)
                I
                (= Q B1)
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
           F
           G
           (not H)
           (and P
                (not O)
                (not N)
                (not M)
                L
                (not K)
                J
                I
                (= Q Z)
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
           G
           H
           (and (not P)
                (not O)
                (not N)
                M
                L
                K
                (not J)
                I
                (= S X)
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
                (= S X)
                (= R Q)
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
                (= U X)
                (= R Q)
                (= T S)
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
           (not H)
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
                (= B1 A1))
           (<= B1 Z))))
      )
      (state J I K L M N O P Q S U W Y A1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (state H G F E D B A C I J K L M N)
        (or (and (not A) (not B) (not C) D (not E) F G H)
    (and (not A) (not B) (not C) D E (not F) (not G) (not H))
    (and (not A) (not B) (not C) D E (not F) (not G) H)
    (and (not A) (not B) (not C) D E (not F) G (not H))
    (and (not A) (not B) C (not D) (not E) (not F) (not G) H)
    (and (not A) (not B) C (not D) (not E) (not F) G H)
    (and (not A) (not B) C (not D) (not E) F (not G) (not H))
    (and (not A) (not B) C (not D) (not E) F G (not H))
    (and (not A) (not B) C (not D) (not E) F G H)
    (and (not A) (not B) C (not D) E (not F) (not G) (not H))
    (and (not A) B (not C) (not D) E F (not G) H)
    (and (not A) B (not C) (not D) E F G H)
    (and (not A) B (not C) D (not E) (not F) (not G) (not H))
    (and (not A) B (not C) D (not E) (not F) (not G) H)
    (and (not A) B (not C) D (not E) (not F) G (not H))
    (and (not A) B (not C) D (not E) (not F) G H)
    (and A (not B) (not C) (not D) E F (not G) (not H))
    (and A (not B) (not C) (not D) E F (not G) H)
    (and A (not B) (not C) (not D) E F G (not H))
    (and A (not B) (not C) (not D) E F G H)
    (and A (not B) (not C) D (not E) (not F) (not G) (not H))
    (and A (not B) (not C) D (not E) (not F) G (not H))
    (and A (not B) (not C) D (not E) F (not G) (not H))
    (and A (not B) (not C) D (not E) F (not G) H)
    (and A (not B) (not C) D (not E) F G (not H))
    (and A (not B) (not C) D (not E) F G H)
    (and A B (not C) (not D) (not E) F (not G) (not H))
    (and A B (not C) (not D) (not E) F (not G) H)
    (and A B (not C) (not D) (not E) F G (not H))
    (and A B (not C) (not D) (not E) F G H)
    (and A B (not C) D (not E) (not F) (not G) H)
    (and A B (not C) D (not E) (not F) G H)
    (and A B (not C) D (not E) F (not G) (not H))
    (and A B (not C) D (not E) F G (not H)))
      )
      false
    )
  )
)

(check-sat)
(exit)
