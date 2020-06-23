(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Int) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (or (and (not N) (not O) P)
                  (and (not N) O (not P))
                  (and N (not O) (not P)))
              Q)))
  (and (= (and Z B1 (not C1) (not E1) F1 G1 H1 I1 (<= D1 200) (<= 35 D1)) J1)
       (= Y1 (not E2))
       (= Y1 Z1)
       (= X1 C2)
       (= V1 A2)
       (= U1 V1)
       (= O1 P1)
       (= M1 N1)
       (= K1 L1)
       (= J1 R1)
       (= F1 B2)
       (= F1 W1)
       (= A1 B1)
       (= Y Z)
       (= V X)
       (= S T)
       (= R S)
       (= Q U)
       (= K L)
       (= I J)
       (= G H)
       (= E F)
       (= C D)
       (= A B)
       (or (not X) (not R1) S1)
       (or (not T) (not U) (= V W))
       (or (and X R1) (= S1 T1))
       (or R1 (not T1))
       (or (not V) (and T U))
       (or (not P) (= J W))
       (or P W)
       (or (not L) (= I Q1))
       (or L (= I M))
       (or (not H) (= (or B D F) X1))
       (or H X1)
       (not D2)
       (not W1)
       (not U1)
       (not O1)
       (not M1)
       (not K1)
       (not A1)
       (not Y)
       (= R true)
       (= M true)
       (not K)
       (not G)
       (not E)
       (not C)
       (not A)
       a!1))
      )
      (state A
       B
       C
       D
       E
       F
       G
       H
       I
       J
       K
       L
       M
       N
       O
       P
       Q
       R
       S
       T
       U
       V
       W
       X
       Y
       Z
       A1
       B1
       C1
       D1
       E1
       F1
       G1
       H1
       I1
       J1
       K1
       L1
       M1
       N1
       O1
       P1
       Q1
       R1
       S1
       T1
       U1
       V1
       W1
       X1
       Y1
       Z1
       A2
       B2
       C2
       D2
       E2
       F2
       G2
       H2
       I2
       J2
       K2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Int) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Bool) (N3 Bool) (O3 Int) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Bool) (Y3 Bool) (Z3 Bool) (A4 Bool) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) (I4 Bool) (J4 Bool) (K4 Bool) (L4 Bool) (M4 Bool) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Bool) (V4 Bool) ) 
    (=>
      (and
        (state A
       B
       C
       D
       E
       F
       G
       H
       I
       J
       K
       L
       M
       N
       O
       P
       Q
       R
       S
       T
       U
       V
       W
       X
       Y
       Z
       A1
       B1
       C1
       D1
       E1
       F1
       G1
       H1
       I1
       J1
       K1
       L1
       M1
       N1
       O1
       P1
       Q1
       R1
       S1
       T1
       U1
       V1
       W1
       X1
       Y1
       Z1
       A2
       B2
       C2
       D2
       E2
       F2
       G2
       H2
       I2
       J2
       K2)
        (let ((a!1 (= (or (and (not Y2) (not Z2) A3)
                  (and (not Y2) Z2 (not A3))
                  (and Y2 (not Z2) (not A3)))
              B3))
      (a!2 (or (not T4) (and (not Z3) (not V4) (or (not X3) (not F1)))))
      (a!3 (= (or (and (not N) (not O) P)
                  (and (not N) O (not P))
                  (and N (not O) (not P)))
              Q)))
  (and a!1
       (= (and Z B1 (not C1) (not E1) F1 G1 H1 I1 (<= D1 200) (<= 35 D1)) J1)
       (= (and J3 L3 (not N3) (not P3) Q3 R3 S3 T3 (<= O3 200) (<= 35 O3)) U3)
       (= (and O4 F2) P4)
       (= Y1 Z1)
       (= X1 C2)
       (= V1 A2)
       (= V1 B4)
       (= U1 V1)
       (= O1 P1)
       (= M1 N1)
       (= K1 L1)
       (= J1 R1)
       (= F1 B2)
       (= F1 W1)
       (= A1 B1)
       (= Y Z)
       (= V X)
       (= S T)
       (= R S)
       (= Q U)
       (= K L)
       (= I J)
       (= G H)
       (= E F)
       (= C D)
       (= A B)
       (= J4 K4)
       (= I4 N4)
       (= H4 T4)
       (= F4 L4)
       (= F4 G4)
       (= D4 G4)
       (= Z3 A4)
       (= Y3 (and R4 (not H2)))
       (= X3 Y3)
       (= W3 (and R4 (not H2)))
       (= V3 W3)
       (= U3 C4)
       (= Q3 M4)
       (= Q3 H4)
       (= M3 (and Q4 G2))
       (= L3 M3)
       (= K3 (and O4 D2))
       (= J3 K3)
       (= H3 I3)
       (= D3 (and (not N) (not O) (not P)))
       (= C3 E3)
       (= C3 D3)
       (= B3 F3)
       (= X2 (or B4 J))
       (= W2 (and Q3 (not F1)))
       (= V2 W2)
       (= T2 U2)
       (= S2 (and L4 (not A2)))
       (= R2 S2)
       (= Q2 (and Z2 (not O)))
       (= P2 Q2)
       (= O2 (and Y2 (not N)))
       (= N2 O2)
       (= M2 (and A3 (not P)))
       (= L2 M2)
       (or Z3 V4 (and X3 F1) (= T4 U4))
       (or (not X) (not R1) S1)
       (or (not T) (not U) (= V W))
       (or (not V3) U4 F1)
       (or (not I3) (not C4) D4)
       (or (not E3) (not F3) (= G3 H3))
       (or (and X R1) (= S1 T1))
       (or (and V3 (not F1)) (= F1 U4))
       (or (and I3 C4) (= D4 E4))
       (or (not V) (and T U))
       (or (not P) (= J W))
       (or P W)
       (or (not L) (= I Q1))
       (or L (= I M))
       (or (not H) (= (or B D F) X1))
       (or H X1)
       a!2
       (or (not C4) (= V1 E4))
       (or C4 (not E4))
       (or (not H3) (and E3 F3))
       (or (not A3) (= T2 G3))
       (or A3 G3)
       (or (not V2) (= U2 B4))
       (or V2 (= U2 X2))
       (or (not R2) (= (or L2 N2 P2) I4))
       (or R2 I4)
       (= K4 true)
       (not A4)
       a!3))
      )
      (state M2
       L2
       O2
       N2
       Q2
       P2
       S2
       R2
       U2
       T2
       W2
       V2
       X2
       Y2
       Z2
       A3
       B3
       D3
       C3
       E3
       F3
       H3
       G3
       I3
       K3
       J3
       M3
       L3
       N3
       O3
       P3
       Q3
       R3
       S3
       T3
       U3
       W3
       V3
       Y3
       X3
       A4
       Z3
       B4
       C4
       D4
       E4
       G4
       F4
       H4
       I4
       K4
       J4
       L4
       M4
       N4
       P4
       S4
       O4
       Q4
       R4
       V4
       U4
       T4)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Int) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) ) 
    (=>
      (and
        (state A
       B
       C
       D
       E
       F
       G
       H
       I
       J
       K
       L
       M
       N
       O
       P
       Q
       R
       S
       T
       U
       V
       W
       X
       Y
       Z
       A1
       B1
       C1
       D1
       E1
       F1
       G1
       H1
       I1
       J1
       K1
       L1
       M1
       N1
       O1
       P1
       Q1
       R1
       S1
       T1
       U1
       V1
       W1
       X1
       Y1
       Z1
       A2
       B2
       C2
       D2
       E2
       F2
       G2
       H2
       I2
       J2
       K2)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
