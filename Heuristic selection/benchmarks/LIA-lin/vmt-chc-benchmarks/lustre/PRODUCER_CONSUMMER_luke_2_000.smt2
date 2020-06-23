(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Bool Int Int Int Int Int Int Int Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (and (or (not F) (not N1))
                   (or (not F) (not G))
                   (or (not N1) (not G)))
              Q))
      (a!2 (= (and F1 (not (<= E1 0))) U))
      (a!3 (or (not U) (<= (+ X W (* (- 1) V)) 0))))
  (and a!1
       a!2
       (= R Q)
       (= R F1)
       (= K J)
       (= K V)
       (= J Z)
       (= L 0)
       (= L B1)
       (= N M)
       (= N K)
       (= O 0)
       (= O C1)
       (= P 0)
       (= P D1)
       (= S M)
       (= S E1)
       (= Z Y)
       (= B1 A1)
       (= C1 W)
       (= D1 X)
       (or (not G) (= I H))
       (or (not N1) (= M1 L1))
       (or N1 (= H1 J1))
       (or (not N1) (= H1 K1))
       (or (not F) (= B A))
       (or (not F) (= G1 I1))
       (or F (= H1 G1))
       (= a!3 T)))
      )
      (state S
       E1
       R
       F1
       G
       N1
       F
       Q
       P
       D1
       O
       C1
       N
       K
       L
       B1
       J
       Z
       H1
       K1
       J1
       G1
       I1
       U
       X
       W
       V
       A1
       Y
       T
       M
       I
       H
       B
       A
       M1
       L1
       C
       D
       E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Bool) (T Int) (U Bool) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Bool) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Bool) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Bool) (I2 Bool) (J2 Int) (K2 Bool) (L2 Bool) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Bool) (Y2 Int) (Z2 Int) (A3 Int) (B3 Bool) ) 
    (=>
      (and
        (state T
       F1
       S
       G1
       H
       B3
       G
       R
       Q
       E1
       P
       D1
       O
       L
       M
       C1
       K
       A1
       I1
       L1
       K1
       H1
       J1
       V
       Y
       X
       W
       B1
       Z
       U
       N
       J
       I
       B
       A
       A3
       Z2
       C
       D
       E)
        (let ((a!1 (or (not L2) (<= (+ O2 N2 (* (- 1) M2)) 0)))
      (a!2 (or (not V) (<= (+ Y X (* (- 1) W)) 0)))
      (a!3 (= (and (or (not T1) (not Q1))
                   (or (not T1) (not N1))
                   (or (not Q1) (not N1)))
              H2))
      (a!4 (= (and (or (not G) (not H))
                   (or (not G) (not B3))
                   (or (not H) (not B3)))
              R))
      (a!5 (= (and X2 (not (<= W2 0))) L2))
      (a!6 (= (and G1 (not (<= F1 0))) V))
      (a!7 (or (not V1) (= (+ C1 (* (- 1) W1)) (- 1))))
      (a!8 (or (not V1) (= (+ A1 (* (- 1) R1)) 1)))
      (a!9 (or (not Y1) (= (+ D1 (* (- 1) O1)) (- 1))))
      (a!10 (or (not Y1) (= (+ C1 (* (- 1) X1)) 1)))
      (a!11 (or (not A2) (= (+ E1 (* (- 1) U1)) (- 1))))
      (a!12 (or (not A2) (= (+ C1 (* (- 1) Z1)) 1))))
  (and (= (<= 1 C1) A2)
       (= (<= 1 A1) V1)
       (= a!1 K2)
       (= a!2 U)
       a!3
       a!4
       a!5
       a!6
       (= I2 (and G1 H2))
       (= X2 I2)
       (= S G1)
       (= B2 P1)
       (= D2 C2)
       (= F2 M1)
       (= G2 S1)
       (= Q2 B2)
       (= Q2 P2)
       (= S2 D2)
       (= S2 R2)
       (= T2 E2)
       (= T2 M2)
       (= U2 F2)
       (= U2 N2)
       (= V2 G2)
       (= V2 O2)
       (= W2 J2)
       (= F1 J2)
       (= E1 Y)
       (= D1 X)
       (= C1 B1)
       (= A1 Z)
       (= T F1)
       (= Q E1)
       (= P D1)
       (= O L)
       (= M C1)
       (= L E2)
       (= L W)
       (= K A1)
       (or (not B3) (= I1 L1))
       (or B3 (= I1 K1))
       (or (not N1) (= M1 O1))
       (or (not N1) (= X1 Y2))
       (or N1 (= D1 M1))
       (or N1 (= Y2 Z1))
       (or (not Q1) (= P1 R1))
       (or (not Q1) (= W1 C2))
       (or Q1 (= A1 P1))
       (or Q1 (= Y2 C2))
       (or (not T1) (= S1 U1))
       (or T1 (= E1 S1))
       a!7
       a!8
       (or V1 (= C1 W1))
       (or V1 (= A1 R1))
       a!9
       a!10
       (or Y1 (= D1 O1))
       (or Y1 (= C1 X1))
       a!11
       a!12
       (or A2 (= E1 U1))
       (or A2 (= C1 Z1))
       (or G (= I1 H1))
       (or (not G) (= H1 J1))
       (= (<= 1 C1) Y1)))
      )
      (state J2
       W2
       I2
       X2
       T1
       N1
       Q1
       H2
       G2
       V2
       F2
       U2
       E2
       T2
       D2
       S2
       B2
       Q2
       Y2
       X1
       Z1
       C2
       W1
       L2
       O2
       N2
       M2
       R2
       P2
       K2
       F
       S1
       U1
       P1
       R1
       M1
       O1
       V1
       Y1
       A2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) ) 
    (=>
      (and
        (state S
       E1
       R
       F1
       G
       N1
       F
       Q
       P
       D1
       O
       C1
       N
       K
       L
       B1
       J
       Z
       H1
       K1
       J1
       G1
       I1
       U
       X
       W
       V
       A1
       Y
       T
       M
       I
       H
       B
       A
       M1
       L1
       C
       D
       E)
        (not T)
      )
      false
    )
  )
)

(check-sat)
(exit)
