(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Bool Bool Bool Int Int Int Int Int Bool Int Bool Int Int Int Int Int Int Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (and A E1 (not (<= F1 0))) U)))
  (and a!1
       (= R (or (not G) (not H)))
       (= R E1)
       (= (not N1) A)
       (= W V)
       (= L K)
       (= L Z)
       (= K W)
       (= M 0)
       (= M Y)
       (= O N)
       (= O L)
       (= P 0)
       (= P B1)
       (= Q 0)
       (= Q D1)
       (= S N)
       (= S F1)
       (= Y X)
       (= B1 A1)
       (= D1 C1)
       (or (not H) (= J I))
       (or (not N1) (= M1 L1))
       (or (not N1) (= G1 I1))
       (or N1 (= H1 G1))
       (or (not G) (= F B))
       (or G (= H1 J1))
       (or (not G) (= H1 K1))
       (= (or (not U) (<= 0 V)) T)))
      )
      (state S
       F1
       R
       E1
       Q
       D1
       P
       B1
       O
       L
       M
       Y
       K
       W
       H1
       K1
       G
       J1
       G1
       I1
       N1
       A
       U
       C1
       A1
       Z
       X
       V
       T
       N
       H
       J
       I
       F
       B
       M1
       L1
       C
       D
       E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Int) (U Bool) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Int) (P1 Bool) (Q1 Int) (R1 Bool) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Bool) (X1 Int) (Y1 Int) (Z1 Bool) (A2 Int) (B2 Bool) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Bool) (J2 Int) (K2 Bool) (L2 Bool) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Bool) ) 
    (=>
      (and
        (state T
       G1
       S
       F1
       R
       E1
       Q
       C1
       P
       M
       N
       Z
       L
       X
       I1
       L1
       H
       K1
       H1
       J1
       B3
       A
       V
       D1
       B1
       A1
       Y
       W
       U
       O
       I
       K
       J
       G
       B
       A3
       Z2
       C
       D
       E)
        (let ((a!1 (= (and W2 P1 (not (<= X2 0))) L2))
      (a!2 (= (and A F1 (not (<= G1 0))) V))
      (a!3 (= I2 (and F1 (or (not U1) (not R1)))))
      (a!4 (or (not W1) (= (+ Z (* (- 1) X1)) (- 1))))
      (a!5 (or (not W1) (= (+ X (* (- 1) O1)) 1)))
      (a!6 (or (not Z1) (= (+ C1 (* (- 1) S1)) (- 1))))
      (a!7 (or (not Z1) (= (+ Z (* (- 1) Y1)) 1)))
      (a!8 (or (not B2) (= (+ E1 (* (- 1) V1)) (- 1))))
      (a!9 (or (not B2) (= (+ Z (* (- 1) A2)) 1))))
  (and (= (<= 1 Z) B2)
       (= (<= 1 X) W1)
       (= (or (not L2) (<= 0 M2)) K2)
       (= (or (not V) (<= 0 W)) U)
       a!1
       a!2
       a!3
       (= W2 I2)
       (= S F1)
       (= C2 M1)
       (= E2 D2)
       (= G2 Q1)
       (= H2 T1)
       (= N2 C2)
       (= N2 M2)
       (= P2 E2)
       (= P2 O2)
       (= R2 F2)
       (= R2 Q2)
       (= T2 G2)
       (= T2 S2)
       (= V2 H2)
       (= V2 U2)
       (= X2 J2)
       (= G1 J2)
       (= E1 D1)
       (= C1 B1)
       (= Z Y)
       (= X W)
       (= T G1)
       (= R E1)
       (= Q C1)
       (= P M)
       (= N Z)
       (= M F2)
       (= M A1)
       (= L X)
       (or B3 (= I1 H1))
       (or (not B3) (= H1 J1))
       (or (not N1) (= M1 O1))
       (or (not N1) (= X1 D2))
       (or N1 (= X M1))
       (or N1 (= Y2 D2))
       (or (not R1) (= Q1 S1))
       (or (not R1) (= Y1 Y2))
       (or R1 (= C1 Q1))
       (or R1 (= Y2 A2))
       (or (not U1) (= T1 V1))
       (or U1 (= E1 T1))
       a!4
       a!5
       (or W1 (= Z X1))
       (or W1 (= X O1))
       a!6
       a!7
       (or Z1 (= C1 S1))
       (or Z1 (= Z Y1))
       a!8
       a!9
       (or B2 (= E1 V1))
       (or B2 (= Z A2))
       (or (not H) (= I1 L1))
       (or H (= I1 K1))
       (= P1 true)
       (= (<= 1 Z) Z1)))
      )
      (state J2
       X2
       I2
       W2
       H2
       V2
       G2
       T2
       F2
       R2
       E2
       P2
       C2
       N2
       Y2
       Y1
       R1
       A2
       D2
       X1
       N1
       P1
       L2
       U2
       S2
       Q2
       O2
       M2
       K2
       F
       U1
       T1
       V1
       Q1
       S1
       M1
       O1
       W1
       Z1
       B2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) ) 
    (=>
      (and
        (state S
       F1
       R
       E1
       Q
       D1
       P
       B1
       O
       L
       M
       Y
       K
       W
       H1
       K1
       G
       J1
       G1
       I1
       N1
       A
       U
       C1
       A1
       Z
       X
       V
       T
       N
       H
       J
       I
       F
       B
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
