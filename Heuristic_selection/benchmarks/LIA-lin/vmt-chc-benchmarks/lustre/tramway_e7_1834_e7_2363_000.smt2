(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) ) 
    (=>
      (and
        (and (= (or (not G2) H2) T1)
     (= (or H (not G)) G1)
     (= (or (not U) H) X1)
     (= (or X (not W)) V)
     (= (or (not A1) (not C2)) Y1)
     (= (or (not Z1) A1) R1)
     (= (or (not A2) C1) S1)
     (= (and Y1 X1 W1 V1 U1 T1 S1 R1) D)
     (= (and H D2) B1)
     (= (and U G) D1)
     (= (and U (not G)) F1)
     (= (and H1 G1) Z)
     (= (and (not O1) (not M1)) I1)
     (= I2 L1)
     (= A Q1)
     (= C Y)
     (= D C)
     (= E N1)
     (= F U1)
     (= (not G) F)
     (= I (not H))
     (= I V1)
     (= J Z1)
     (= K A2)
     (= L G2)
     (= M H2)
     (= N E2)
     (= O F2)
     (= P C2)
     (= S B2)
     (= Y W)
     (= Z X)
     (= B1 A1)
     (= D1 C1)
     (= F1 E1)
     (= I1 H1)
     (= K1 P1)
     (= M1 J2)
     (= P1 O1)
     (= B2 D2)
     (or U (not T) S)
     (or (and (not U) T) (= S R))
     (or G (= R Q))
     (or (not R) (not G))
     (or L1 (= K1 J1))
     (or (not L1) K1)
     (or Q1 (= J1 B))
     (or (not Q1) (not J1))
     (not J2)
     (not I2)
     (not A)
     (not B)
     (not E)
     (not J)
     (not K)
     (not L)
     (not M)
     (not N)
     (not O)
     (not P)
     (not Q)
     (= (= F2 E2) W1))
      )
      (state S
       B2
       D2
       G
       U
       F1
       D1
       H
       B1
       P
       C2
       O
       F2
       N
       E2
       M
       H2
       L
       G2
       K
       A2
       J
       Z1
       A1
       Y1
       X1
       W1
       I
       V1
       F
       U1
       T1
       C1
       S1
       R1
       D
       C
       Y
       K1
       P1
       A
       Q1
       J1
       B
       O1
       M1
       I1
       E
       N1
       J2
       I2
       L1
       H1
       G1
       Z
       E1
       X
       W
       V
       R
       Q
       T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Bool) (N3 Bool) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Bool) (Y3 Bool) (Z3 Bool) (A4 Bool) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) (I4 Bool) (J4 Bool) (K4 Bool) (L4 Bool) (M4 Bool) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) ) 
    (=>
      (and
        (state S
       B2
       N4
       G
       U
       F1
       D1
       H
       B1
       P
       M4
       O
       P4
       N
       O4
       M
       R4
       L
       Q4
       K
       A2
       J
       Z1
       A1
       Y1
       X1
       W1
       I
       V1
       F
       U1
       T1
       C1
       S1
       R1
       D
       C
       Y
       K1
       P1
       A
       Q1
       J1
       B
       O1
       M1
       I1
       E
       N1
       T4
       S4
       L1
       H1
       G1
       Z
       E1
       X
       W
       V
       R
       Q
       T)
        (and (= (= I4 H4) A4)
     (= (or (not Q4) R4) T1)
     (= (or (not M2) C2) K3)
     (= (or (not S2) C2) B4)
     (= (or B3 (not A3)) Z2)
     (= (or (not D4) E3) V3)
     (= (or (not E4) G3) W3)
     (= (or G4 (not F4)) X3)
     (= (or (not J4) (not E3)) C4)
     (= (or C1 (not A2)) S1)
     (= (or (not A1) (not M4)) Y1)
     (= (or A1 (not Z1)) R1)
     (= (or (not W) X) V)
     (= (or H (not U)) X1)
     (= (or (not G) H) G1)
     (= (and C4 B4 A4 Z3 Y3 X3 W3 V3) I2)
     (= (and R1 S1 T1 U1 V1 W1 X1 Y1) D)
     (= (and S2 M2) H3)
     (= (and S2 (not M2)) J3)
     (= (and L3 K3) D3)
     (= (and (not S3) (not Q3)) M3)
     (= (and K4 C2) F3)
     (= (and (not M1) (not O1)) I1)
     (= (and G1 H1) Z)
     (= (and T (not U)) E2)
     (= (and H N4) B1)
     (= (and G U) D1)
     (= (and (not G) U) F1)
     (= S4 L1)
     (= D2 (or H (not C2)))
     (= J2 (and Y I2))
     (= N2 (or (not G) M2))
     (= O2 (or G (not M2)))
     (= P2 (or H (not C2)))
     (= R2 (or H (not C2)))
     (= T2 (or U (not S2)))
     (= U2 (or (not U) S2))
     (= C3 J2)
     (= C3 A3)
     (= D3 B3)
     (= F3 E3)
     (= H3 G3)
     (= J3 I3)
     (= M3 L3)
     (= P3 E2)
     (= Q3 D2)
     (= R3 F2)
     (= T3 O3)
     (= T3 S3)
     (= U3 G2)
     (= Y3 K2)
     (= Z3 L2)
     (= D4 N2)
     (= E4 O2)
     (= F4 P2)
     (= G4 Q2)
     (= H4 R2)
     (= I4 T2)
     (= J4 U2)
     (= L4 X2)
     (= L4 K4)
     (= B2 N4)
     (= B2 V2)
     (= P1 H2)
     (= P1 O1)
     (= N1 G2)
     (= M1 T4)
     (= K1 P1)
     (= I1 H1)
     (= F1 E1)
     (= E1 Q2)
     (= D1 C1)
     (= B1 A1)
     (= Z X)
     (= Y W)
     (= S B2)
     (= P M4)
     (= O P4)
     (= N O4)
     (= M R4)
     (= L Q4)
     (= K A2)
     (= J Z1)
     (= I V1)
     (= G F2)
     (= F U1)
     (= E N1)
     (= C Y)
     (= A Q1)
     (or (not Y2) X2 S2)
     (or S (not T) U)
     (or (and Y2 (not S2)) (= X2 W2))
     (or (and T (not U)) (= S R))
     (or M2 (= W2 V2))
     (or (not W2) (not M2))
     (or P3 (= O3 N3))
     (or (not P3) O3)
     (or U3 (= N3 H2))
     (or (not U3) (not N3))
     (or Q1 (= J1 B))
     (or L1 (= K1 J1))
     (or K1 (not L1))
     (or (not J1) (not Q1))
     (or G (= R Q))
     (or (not G) (not R))
     (= K2 true)
     (= L2 true)
     (= (= P4 O4) W1))
      )
      (state X2
       L4
       K4
       M2
       S2
       J3
       H3
       C2
       F3
       U2
       J4
       T2
       I4
       R2
       H4
       Q2
       G4
       P2
       F4
       O2
       E4
       N2
       D4
       E3
       C4
       B4
       A4
       L2
       Z3
       K2
       Y3
       X3
       G3
       W3
       V3
       I2
       J2
       C3
       O3
       T3
       G2
       U3
       N3
       H2
       S3
       Q3
       M3
       F2
       R3
       D2
       E2
       P3
       L3
       K3
       D3
       I3
       B3
       A3
       Z2
       W2
       V2
       Y2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) ) 
    (=>
      (and
        (state S
       B2
       D2
       G
       U
       F1
       D1
       H
       B1
       P
       C2
       O
       F2
       N
       E2
       M
       H2
       L
       G2
       K
       A2
       J
       Z1
       A1
       Y1
       X1
       W1
       I
       V1
       F
       U1
       T1
       C1
       S1
       R1
       D
       C
       Y
       K1
       P1
       A
       Q1
       J1
       B
       O1
       M1
       I1
       E
       N1
       J2
       I2
       L1
       H1
       G1
       Z
       E1
       X
       W
       V
       R
       Q
       T)
        (not V)
      )
      false
    )
  )
)

(check-sat)
(exit)
