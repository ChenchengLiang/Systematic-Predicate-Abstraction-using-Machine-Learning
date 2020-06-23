(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (and (= E true) (not D) (not C) (not B) (not A) (not F))
      )
      (state F E D B C A G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) ) 
    (=>
      (and
        (state F E D B C A N P R T V X Z B1 D1 F1 H1)
        (let ((a!1 (and L
                K
                (not J)
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
      (a!2 (and L
                (not K)
                J
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
      (a!3 (not (<= 0 (+ N P (* (- 1) H1)))))
      (a!4 (and L
                (not K)
                J
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
      (a!5 (or (not A)
               B
               C
               (not D)
               E
               F
               (and L
                    (not K)
                    (not J)
                    I
                    H
                    (not G)
                    (= N M)
                    (= P O)
                    (= R Q)
                    (= T S)
                    (= V U)
                    (= X W)
                    (= Z Y)
                    (= B1 A1)
                    (= D1 C1)
                    (= F1 E1)
                    (= H1 G1))
               (<= 0 (+ N P (* (- 1) H1)))))
      (a!6 (and (not L)
                K
                J
                I
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
      (a!7 (and (not L)
                K
                J
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
      (a!8 (or A
               (not B)
               (not C)
               D
               E
               F
               (and (not L)
                    K
                    J
                    (not I)
                    H
                    (not G)
                    (= N M)
                    (= P O)
                    (= R Q)
                    (= T S)
                    (= V U)
                    (= X W)
                    (= Z Y)
                    (= B1 A1)
                    (= D1 C1)
                    (= F1 E1)
                    (= H1 G1))
               (<= 0 (+ N P (* (- 1) H1)))))
      (a!9 (or A
               (not B)
               C
               (not D)
               (not E)
               (not F)
               (and (not L)
                    K
                    (not J)
                    I
                    (not H)
                    (not G)
                    (= N M)
                    (= P O)
                    (= R Q)
                    (= T S)
                    (= V U)
                    (= X W)
                    (= Z Y)
                    (= B1 A1)
                    (= D1 C1)
                    (= F1 E1)
                    (= H1 G1))
               (= (+ P (* (- 1) H1)) (- 1))))
      (a!10 (not (= (+ P (* (- 1) H1)) (- 1))))
      (a!11 (not (<= (+ P (* (- 1) H1)) (- 1))))
      (a!12 (or A
                (not B)
                C
                D
                E
                (not F)
                (and (not L)
                     (not K)
                     J
                     (not I)
                     H
                     G
                     (= N M)
                     (= P O)
                     (= R Q)
                     (= T S)
                     (= V U)
                     (= X W)
                     (= Z Y)
                     (= B1 A1)
                     (= D1 C1)
                     (= F1 E1)
                     (= H1 G1))
                (<= (+ P (* (- 1) H1)) (- 1))))
      (a!13 (and (not L)
                 (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)))
      (a!14 (and L
                 (not K)
                 J
                 (not I)
                 H
                 (not G)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ N (* (- 1) M)) (- 1))))
      (a!15 (and (not L)
                 K
                 J
                 I
                 (not H)
                 G
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ N (* (- 1) M)) (- 1))))
      (a!16 (and L
                 (not K)
                 (not J)
                 (not I)
                 H
                 (not G)
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ P (* (- 1) O)) (- 1))))
      (a!17 (and (not L)
                 K
                 (not J)
                 (not I)
                 H
                 G
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ P (* (- 1) O)) (- 1))))
      (a!18 (and (not L)
                 (not K)
                 J
                 I
                 (not H)
                 G
                 (= N M)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ P (* (- 1) O)) (- 1))))
      (a!19 (and L
                 (not K)
                 (not J)
                 (not I)
                 (not H)
                 (not G)
                 (= N M)
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ P (* (- 1) Q) F1) 0)))
      (a!20 (and (not L)
                 K
                 (not J)
                 (not I)
                 (not H)
                 G
                 (= N M)
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ P (* (- 1) Q) F1) 0)))
      (a!21 (and (not L)
                 (not K)
                 J
                 I
                 H
                 (not G)
                 (= N M)
                 (= P O)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ P (* (- 1) Q) F1) 0)))
      (a!22 (and (not L)
                 K
                 J
                 I
                 H
                 (not G)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ T (* (- 1) S) V) 0)))
      (a!23 (and (not L)
                 K
                 (not J)
                 I
                 H
                 G
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ T (* (- 1) S) V) 0)))
      (a!24 (and (not L)
                 (not K)
                 (not J)
                 I
                 (not H)
                 (not G)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ W (* (- 1) H1)) (- 1))))
      (a!25 (and (not L)
                 (not K)
                 J
                 (not I)
                 (not H)
                 (not G)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)
                 (= (+ P (* (- 1) Y)) (- 1))))
      (a!26 (and L
                 K
                 (not J)
                 (not I)
                 H
                 (not G)
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1)))
      (a!27 (and (not L)
                 (not K)
                 (not J)
                 I
                 (not H)
                 G
                 (= N M)
                 (= P O)
                 (= R Q)
                 (= T S)
                 (= V U)
                 (= X W)
                 (= Z Y)
                 (= B1 A1)
                 (= D1 C1)
                 (= F1 E1)
                 (= H1 G1))))
  (and (or (not A) (not B) C (not D) E F a!1 (<= 0 H1))
       (or (not A)
           (not B)
           C
           (not D)
           E
           (not F)
           (and L
                (not K)
                J
                I
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (<= B1 H1))
       (or (not A)
           (not B)
           C
           (not D)
           E
           F
           (and L
                (not K)
                J
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (not (<= 0 H1)))
       (or A B C (not D) E F a!2 (<= 0 X))
       (or A
           B
           C
           (not D)
           E
           (not F)
           (and L
                (not K)
                J
                (not I)
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (not (<= X P)))
       (or (not A)
           B
           C
           (not D)
           E
           F
           (and L
                (not K)
                J
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           a!3)
       (or (not A) B C (not D) (not E) F a!4 (= I1 0))
       a!5
       (or (not A)
           B
           C
           (not D)
           (not E)
           F
           (and L
                (not K)
                (not J)
                I
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (not (= I1 0)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (and L
                (not K)
                (not J)
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (not (= V 1)))
       (or A (not B) (not C) D E F a!6 a!3)
       (or A (not B) (not C) D (not E) F a!7 (= I1 0))
       a!8
       (or A
           (not B)
           (not C)
           D
           (not E)
           F
           (and (not L)
                K
                J
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (not (= I1 0)))
       (or A
           B
           (not C)
           (not D)
           E
           F
           (and (not L)
                K
                (not J)
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (= V 1))
       a!9
       (or A
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (and (not L)
                K
                (not J)
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           a!10)
       (or A
           (not B)
           C
           D
           E
           (not F)
           (and (not L)
                (not K)
                J
                I
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           a!11)
       a!12
       (or A
           B
           C
           (not D)
           E
           (not F)
           (and (not L)
                (not K)
                (not J)
                I
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (<= X P))
       (or A
           B
           C
           (not D)
           E
           F
           (and (not L)
                (not K)
                (not J)
                I
                H
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (not (<= 0 X)))
       (or A
           B
           C
           D
           E
           (not F)
           (and (not L)
                (not K)
                (not J)
                (not I)
                H
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (not (<= 0 H1)))
       (or A
           B
           C
           D
           (not E)
           F
           (and (not L)
                (not K)
                (not J)
                (not I)
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1))
           (<= B1 H1))
       (or A B C D E (not F) a!13 (<= 0 H1))
       (or A B C D (not E) F a!13 (not (<= B1 H1)))
       (or (not A) (not B) C D E F a!14)
       (or A (not B) (not C) (not D) (not E) F a!15)
       (or (not A)
           B
           C
           D
           (not E)
           (not F)
           (and L
                (not K)
                (not J)
                I
                (not H)
                (not G)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= M 1)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
       (or A
           B
           (not C)
           (not D)
           (not E)
           (not F)
           (and (not L)
                K
                J
                (not I)
                (not H)
                (not G)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= M 1)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
       (or (not A) B C D E F a!16)
       (or A B (not C) D E (not F) a!17)
       (or A (not B) C (not D) (not E) F a!18)
       (or A
           B
           C
           (not D)
           (not E)
           F
           (and (not L)
                (not K)
                (not J)
                I
                (not H)
                G
                (= N M)
                (= R Q)
                (= T S)
                (= O 0)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
       (or A (not B) (not C) (not D) (not E) (not F) a!19)
       (or A B (not C) D (not E) F a!20)
       (or A (not B) C (not D) E F a!21)
       (or A (not B) (not C) (not D) E F a!22)
       (or A B (not C) (not D) E (not F) a!23)
       (or A B C D (not E) (not F) a!24)
       (or A B C (not D) (not E) (not F) a!25)
       (or (not A) B (not C) D (not E) F a!26)
       (or (not A) B (not C) D E (not F) a!1)
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           (not F)
           (and L
                K
                (not J)
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
       (or (not A)
           (not B)
           C
           (not D)
           (not E)
           F
           (and L
                (not K)
                J
                I
                (not H)
                G
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
       (or (not A) (not B) C D (not E) (not F) a!2)
       (or (not A) B C (not D) (not E) (not F) a!4)
       (or (not A)
           (not B)
           C
           D
           (not E)
           F
           (and L
                (not K)
                (not J)
                I
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
       (or (not A) (not B) C D E (not F) a!6)
       (or A (not B) (not C) D (not E) (not F) a!7)
       (or A
           (not B)
           (not C)
           (not D)
           E
           (not F)
           (and (not L)
                K
                J
                (not I)
                (not H)
                (not G)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
       (or A B (not C) D (not E) (not F) a!27)
       (or A (not B) C (not D) E (not F) a!27)
       (or (not A) B C D (not E) F a!27)
       (or A B C D E F a!13)
       (or (not A) B (not C) D E F a!13)
       (or A
           B
           (not C)
           (not D)
           (not E)
           F
           (and (not L)
                K
                (not J)
                I
                (not H)
                G
                (= N M)
                (= P O)
                (= S 1)
                (= R Q)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
       (or A
           (not B)
           C
           D
           E
           F
           (and (not L)
                (not K)
                J
                (not I)
                H
                (not G)
                (= N M)
                (= P C1)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= F1 E1)
                (= H1 G1)))
       (or A
           (not B)
           C
           D
           (not E)
           F
           (and (not L)
                (not K)
                J
                (not I)
                (not H)
                G
                (= N M)
                (= U 1)
                (= P O)
                (= R Q)
                (= T S)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= F1 E1)
                (= H1 G1)))
       (or (not A)
           B
           C
           (not D)
           E
           (not F)
           (and L
                (not K)
                (not J)
                I
                H
                G
                (= N E1)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= H1 G1)))
       (or A
           (not B)
           (not C)
           D
           E
           (not F)
           (and (not L)
                K
                J
                (not I)
                H
                G
                (= N E1)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= H1 G1)))
       (or A
           (not B)
           C
           D
           (not E)
           (not F)
           (and (not L)
                (not K)
                J
                I
                (not H)
                (not G)
                (= E1 (- 1))
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= H1 G1)))
       (or (not A)
           B
           C
           D
           E
           (not F)
           (and L
                (not K)
                (not J)
                (not I)
                H
                G
                (= E1 0)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= H1 G1)))
       (or A
           B
           (not C)
           D
           E
           F
           (and (not L)
                K
                (not J)
                (not I)
                H
                (not G)
                (= E1 0)
                (= N M)
                (= P O)
                (= R Q)
                (= T S)
                (= V U)
                (= X W)
                (= Z Y)
                (= B1 A1)
                (= D1 C1)
                (= H1 G1)))
       (or (not A) (not B) C (not D) E (not F) a!26 (not (<= B1 H1)))))
      )
      (state G H I J K L M O Q S U W Y A1 C1 E1 G1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (state F E D B C A G H I J K L M N O P Q)
        (or (and A (not B) C (not D) (not E) F) (and A (not B) C (not D) E (not F)))
      )
      false
    )
  )
)

(check-sat)
(exit)
