(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Bool) (N3 Bool) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (and U3 T3 S3 Y2 V2 C2 S1 (or (not J) (not C))) Z2)))
  (and (= (or I2 F2 (not D2)) B2)
       (= (or G3 D3 (not B3)) A3)
       (= (or P3 M3 (not K3)) J3)
       (= (or (not L) (not D)) T)
       (= (or (not R) (and V U T S)) Q)
       (= (or C1 (not P)) I1)
       (= (or O2 (not L2)) N2)
       (= (or S2 (not P2)) R2)
       a!1
       (= (and (not N1) M1 (not L1)) W)
       (= (and (not N1) M1 (not L1)) Q1)
       (= (and (not N1) (not M1) (not L1)) P1)
       (= (and P1 J) A1)
       (= (and P1 (not J)) G1)
       (= (and Q1 C) F1)
       (= (and Q1 (not C)) H1)
       (= P A1)
       (= C1 (and (not N1) (not M1) (not L1)))
       (= (not C1) M2)
       (= F1 G)
       (= G1 D)
       (= H1 L)
       (= I1 S)
       (= J1 U)
       (= K1 V)
       (= (not L1) U2)
       (= (not M1) X2)
       (= O1 R)
       (= S1 R1)
       (= U1 T1)
       (= V1 H)
       (= X1 W1)
       (= Y1 M)
       (= A2 Z1)
       (= C2 B2)
       (= E2 D2)
       (= F2 A)
       (= H2 G2)
       (= I2 K)
       (= K2 J2)
       (= M2 L2)
       (= Q2 N1)
       (= Q2 P2)
       (= U2 T2)
       (= V2 (or (not T2) M1))
       (= X2 W2)
       (= Y2 (or (not W2) N1 L1))
       (= Z2 O1)
       (= A3 J1)
       (= C3 B3)
       (= D3 O)
       (= F3 E3)
       (= G3 X)
       (= I3 H3)
       (= J3 K1)
       (= L3 K3)
       (= M3 F)
       (= O3 N3)
       (= P3 B1)
       (= R3 Q3)
       (= S3 C1)
       (or C (= B A))
       (or (not C) (= C A))
       (or C (= E K))
       (or (not C) (= K D))
       (or (not G) (= C F))
       (or (not G) (= C1 B1))
       (or G (= D1 F))
       (or G (= E1 B1))
       (or J (= I H))
       (or (not J) (= J H))
       (or (not J) (= M L))
       (or J (= N M))
       (or (not P) (= J O))
       (or (not P) (= X W))
       (or P (= Y O))
       (or P (= Z X))
       (or W1 I)
       (or Z1 N)
       (or G2 B)
       (or J2 E)
       (or E3 Y)
       (or H3 Z)
       (or N3 D1)
       (or Q3 E1)
       (not U1)
       (not X1)
       (not A2)
       (not E2)
       (not H2)
       (not K2)
       (not C3)
       (not F3)
       (not I3)
       (not L3)
       (not O3)
       (not R3)
       (= T3 true)
       (= U3 true)
       (= (or Y1 V1 (not T1)) R1)))
      )
      (state R3
       Q3
       E1
       O3
       N3
       D1
       L3
       I3
       H3
       Z
       F3
       E3
       Y
       C3
       C
       J
       S1
       C2
       S3
       T3
       U3
       V2
       Y2
       Z2
       M1
       X2
       L1
       U2
       Q2
       N1
       C1
       M2
       K2
       J2
       E
       H2
       G2
       B
       E2
       A2
       Z1
       N
       X1
       U1
       W1
       I
       P3
       M3
       K3
       J3
       B1
       F
       K1
       G3
       D3
       B3
       A3
       X
       O
       J1
       P
       I1
       O1
       W2
       T2
       P2
       S2
       R2
       L2
       O2
       N2
       I2
       F2
       D2
       B2
       K
       A
       Y1
       V1
       T1
       R1
       M
       H
       Q1
       P1
       H1
       G1
       F1
       A1
       R
       W
       V
       U
       L
       D
       T
       S
       G
       Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Bool) (N3 Bool) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Bool) (Y3 Bool) (Z3 Bool) (A4 Bool) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) (I4 Bool) (J4 Bool) (K4 Bool) (L4 Bool) (M4 Bool) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Bool) (V4 Bool) (W4 Bool) (X4 Bool) (Y4 Bool) (Z4 Bool) (A5 Bool) (B5 Bool) (C5 Bool) (D5 Bool) (E5 Bool) (F5 Bool) (G5 Bool) (H5 Bool) (I5 Bool) (J5 Bool) (K5 Bool) (L5 Bool) (M5 Bool) (N5 Bool) (O5 Bool) (P5 Bool) (Q5 Bool) (R5 Bool) (S5 Bool) (T5 Bool) (U5 Bool) (V5 Bool) (W5 Bool) (X5 Bool) (Y5 Bool) (Z5 Bool) (A6 Bool) (B6 Bool) (C6 Bool) (D6 Bool) (E6 Bool) (F6 Bool) (G6 Bool) (H6 Bool) (I6 Bool) (J6 Bool) (K6 Bool) (L6 Bool) (M6 Bool) (N6 Bool) (O6 Bool) (P6 Bool) (Q6 Bool) (R6 Bool) (S6 Bool) (T6 Bool) (U6 Bool) (V6 Bool) (W6 Bool) (X6 Bool) (Y6 Bool) (Z6 Bool) (A7 Bool) (B7 Bool) (C7 Bool) (D7 Bool) (E7 Bool) (F7 Bool) (G7 Bool) (H7 Bool) (I7 Bool) (J7 Bool) (K7 Bool) (L7 Bool) (M7 Bool) (N7 Bool) (O7 Bool) (P7 Bool) ) 
    (=>
      (and
        (state R3
       Q3
       E1
       O3
       N3
       D1
       L3
       I3
       H3
       Z
       F3
       E3
       Y
       C3
       C
       J
       S1
       C2
       S3
       T3
       U3
       V2
       Y2
       Z2
       M1
       X2
       L1
       U2
       Q2
       N1
       C1
       M2
       K2
       J2
       E
       H2
       G2
       B
       E2
       A2
       Z1
       N
       X1
       U1
       W1
       I
       P3
       M3
       K3
       J3
       B1
       F
       K1
       G3
       D3
       B3
       A3
       X
       O
       J1
       P
       I1
       O1
       W2
       T2
       P2
       S2
       R2
       L2
       O2
       N2
       I2
       F2
       D2
       B2
       K
       A
       Y1
       V1
       T1
       R1
       M
       H
       Q1
       P1
       H1
       G1
       F1
       A1
       R
       W
       V
       U
       L
       D
       T
       S
       G
       Q)
        (let ((a!1 (or O1 (and O5 N5 M5 L5 W4 T4 R4 (or (not A4) (not V3))))))
  (and (= (or D7 C7 (not B7)) A7)
       (= (or (not H7) H5 F5) O5)
       (= (or L7 K7 (not J7)) I7)
       (= (or P7 O7 (not N7)) M7)
       (= (or (not K3) M3 P3) J3)
       (= (or (not B3) D3 G3) A3)
       (= (or (not D2) F2 I2) B2)
       (= (or (not T1) V1 Y1) R1)
       (= (or (not I4) (not F4)) H6)
       (= (or (not D6) L4) Q6)
       (= (or (not F6) (and J6 I6 H6 G6)) E6)
       (= (or (not E7) S4) U4)
       (= (or (not F7) V4) X4)
       (= (or (not G7) J5) N5)
       (= (or (not P2) S2) R2)
       (= (or (not L2) O2) N2)
       (= (or (not R) (and S T U V)) Q)
       (= (or (not P) C1) I1)
       (= (or (not D) (not L)) T)
       (= (and J5 (not H5) (not F5)) O4)
       (= (and J5 (not H5) (not F5)) V6)
       (= (and (not J5) (not H5) (not F5)) U6)
       (= (and (not L1) M1 (not N1)) Q1)
       (= (and (not L1) M1 (not N1)) W)
       (= (and (not L1) (not M1) (not N1)) P1)
       (= (and U6 A4) L6)
       (= (and U6 (not A4)) O6)
       (= (and V6 V3) N6)
       (= (and V6 (not V3)) P6)
       (= (and J P1) A1)
       (= (and (not J) P1) G1)
       (= (and C Q1) F1)
       (= (and (not C) Q1) H1)
       (= X3 U5)
       (= Z3 C5)
       (= C4 R5)
       (= E4 Z4)
       (= H4 D5)
       (= K4 A5)
       (= L4 (and (not J5) (not H5) (not F5)))
       (= N4 V5)
       (= Q4 S5)
       (= U4 T4)
       (= X4 W4)
       (= Y4 (or J T1))
       (= Z4 (or J W1))
       (= A5 (or J Z1))
       (= B5 (or C D2))
       (= C5 (or C G2))
       (= D5 (or C J2))
       (= E5 (and C1 (not L4)))
       (= G5 (and (not N1) F5))
       (= I5 (and L1 (not H5)))
       (= K5 (and M1 (not J5)))
       (= P5 a!1)
       (= Q5 (or P B3))
       (= R5 (or P E3))
       (= S5 (or P H3))
       (= T5 (or G K3))
       (= U5 (or G N3))
       (= V5 (or G Q3))
       (= D6 L6)
       (= N6 Z5)
       (= O6 F4)
       (= P6 I4)
       (= Q6 G6)
       (= R6 I6)
       (= S6 J6)
       (= T6 P5)
       (= T6 F6)
       (= W6 L5)
       (= X6 Y4)
       (= Y6 A6)
       (= Z6 B6)
       (= A7 M5)
       (= B7 B5)
       (= C7 W5)
       (= D7 X5)
       (= E7 E5)
       (= F7 G5)
       (= G7 I5)
       (= H7 K5)
       (= I7 R6)
       (= J7 Q5)
       (= K7 C6)
       (= L7 K6)
       (= M7 S6)
       (= N7 T5)
       (= O7 Y5)
       (= P7 M6)
       (= R3 Q3)
       (= P3 B1)
       (= O3 N3)
       (= M3 F)
       (= L3 K3)
       (= J3 K1)
       (= I3 H3)
       (= G3 X)
       (= F3 E3)
       (= D3 O)
       (= C3 B3)
       (= A3 J1)
       (= Z2 O1)
       (= Y2 (or L1 N1 (not W2)))
       (= X2 W2)
       (= V2 (or M1 (not T2)))
       (= U2 T2)
       (= Q2 P2)
       (= M2 L2)
       (= K2 J2)
       (= I2 K)
       (= H2 G2)
       (= F2 A)
       (= E2 D2)
       (= C2 B2)
       (= A2 Z1)
       (= Y1 M)
       (= X1 W1)
       (= V1 H)
       (= U1 T1)
       (= S1 R1)
       (= O1 R)
       (= K1 V)
       (= J1 U)
       (= I1 S)
       (= H1 L)
       (= G1 D)
       (= F1 G)
       (= C1 (and (not L1) (not M1) (not N1)))
       (= P S4)
       (= P A1)
       (= G V4)
       (or (not V3) (= W5 V3))
       (or V3 (= W5 Y3))
       (or (not V3) (= X5 F4))
       (or V3 (= X5 G4))
       (or (not X3) (= W3 (and M3 V3)))
       (or X3 W3)
       (or (not Z3) (= Y3 (and F2 V3)))
       (or Z3 Y3)
       (or (not A4) (= A6 A4))
       (or A4 (= A6 D4))
       (or (not A4) (= B6 I4))
       (or A4 (= B6 J4))
       (or (not C4) (= B4 (and D3 A4)))
       (or C4 B4)
       (or (not E4) (= D4 (and V1 A4)))
       (or E4 D4)
       (or (not H4) (= G4 (or I2 F4)))
       (or H4 G4)
       (or (not K4) (= J4 (or Y1 I4)))
       (or K4 J4)
       (or (not N4) (= M4 (or P3 L4)))
       (or N4 M4)
       (or (not Q4) (= P4 (or G3 O4)))
       (or Q4 P4)
       (or (not Z5) (= Y5 V3))
       (or Z5 (= Y5 W3))
       (or (not Z5) (= M6 L4))
       (or Z5 (= M6 M4))
       (or (not D6) (= C6 A4))
       (or D6 (= C6 B4))
       (or (not D6) (= K6 O4))
       (or D6 (= K6 P4))
       (or P (= Z X))
       (or P (= Y O))
       (or (not P) (= X W))
       (or (not P) (= J O))
       (or J (= N M))
       (or (not J) (= M L))
       (or (not J) (= J H))
       (or J (= I H))
       (or G (= E1 B1))
       (or G (= D1 F))
       (or (not G) (= C1 B1))
       (or (not G) (= C F))
       (or (not C) (= K D))
       (or C (= E K))
       (or (not C) (= C A))
       (or C (= B A))
       (= R4 true)
       (= (or Z6 Y6 (not X6)) W6)))
      )
      (state V5
       N4
       M4
       U5
       X3
       W3
       T5
       S5
       Q4
       P4
       R5
       C4
       B4
       Q5
       V3
       A4
       L5
       M5
       R4
       T4
       W4
       N5
       O5
       P5
       J5
       K5
       H5
       I5
       G5
       F5
       L4
       E5
       D5
       H4
       G4
       C5
       Z3
       Y3
       B5
       A5
       K4
       J4
       Z4
       Y4
       E4
       D4
       P7
       O7
       N7
       M7
       M6
       Y5
       S6
       L7
       K7
       J7
       I7
       K6
       C6
       R6
       D6
       Q6
       T6
       H7
       G7
       F7
       V4
       X4
       E7
       S4
       U4
       D7
       C7
       B7
       A7
       X5
       W5
       Z6
       Y6
       X6
       W6
       B6
       A6
       V6
       U6
       P6
       O6
       N6
       L6
       F6
       O4
       J6
       I6
       I4
       F4
       H6
       G6
       Z5
       E6)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Bool) (N3 Bool) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) ) 
    (=>
      (and
        (state R3
       Q3
       E1
       O3
       N3
       D1
       L3
       I3
       H3
       Z
       F3
       E3
       Y
       C3
       C
       J
       S1
       C2
       S3
       T3
       U3
       V2
       Y2
       Z2
       M1
       X2
       L1
       U2
       Q2
       N1
       C1
       M2
       K2
       J2
       E
       H2
       G2
       B
       E2
       A2
       Z1
       N
       X1
       U1
       W1
       I
       P3
       M3
       K3
       J3
       B1
       F
       K1
       G3
       D3
       B3
       A3
       X
       O
       J1
       P
       I1
       O1
       W2
       T2
       P2
       S2
       R2
       L2
       O2
       N2
       I2
       F2
       D2
       B2
       K
       A
       Y1
       V1
       T1
       R1
       M
       H
       Q1
       P1
       H1
       G1
       F1
       A1
       R
       W
       V
       U
       L
       D
       T
       S
       G
       Q)
        (not Q)
      )
      false
    )
  )
)

(check-sat)
(exit)
