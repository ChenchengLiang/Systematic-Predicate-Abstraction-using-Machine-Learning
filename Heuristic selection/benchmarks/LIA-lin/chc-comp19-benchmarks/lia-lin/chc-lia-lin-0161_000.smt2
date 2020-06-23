(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Int) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) ) 
    (=>
      (and
        (let ((a!1 (or (not W1) (= (and S1 (not U1) (not M2)) N2)))
      (a!2 (= (or (and (not F) (not G) H)
                  (and (not F) G (not H))
                  (and F (not G) (not H)))
              I)))
  (and (= (and (not U) W X Y (not A1) Y1 A2 B2 (<= Z 200) (<= 35 Z)) C2)
       (= (and R T (not U) V W X Y (not A1) (<= Z 200) (<= 35 Z)) B1)
       (= (and T2 U2 V2 W2) X2)
       (= Q2 (not A3))
       (= Q2 R2)
       (= P2 W2)
       (= O2 V2)
       (= N2 U2)
       (= L2 T2)
       (= J2 K2)
       (= H2 I2)
       (= F2 G2)
       (= D2 E2)
       (= Z1 A2)
       (= X1 Y1)
       (= V1 W1)
       (= T1 U1)
       (= R1 S1)
       (= P1 Q1)
       (= N1 S2)
       (= M1 N1)
       (= G1 H1)
       (= E1 F1)
       (= C1 D1)
       (= B1 J1)
       (= V B2)
       (= V O1)
       (= S T)
       (= Q R)
       (= N P)
       (= K L)
       (= J K)
       (= I M)
       (= C D)
       (= A B)
       (or (not P) (not J1) K1)
       (or (not L) (not M) (= N O))
       (or (and P J1) (= K1 L1))
       (or (not K2) (= (or E2 G2 I2) P2))
       (or K2 P2)
       (or C2 (= O2 (not S2)))
       (or (not C2) O2)
       a!1
       (or W1 N2)
       (or (not Q1) (= L2 (not S2)))
       (or Q1 L2)
       (or J1 (not L1))
       (or (not N) (and L M))
       (or (not H) (= B O))
       (or H O)
       (or (not D) (= A I1))
       (or D (= A E))
       (not Z2)
       (not Y2)
       (not J2)
       (not H2)
       (not F2)
       (not D2)
       (not Z1)
       (not X1)
       (not V1)
       (not T1)
       (not R1)
       (not P1)
       (not O1)
       (not M1)
       (not G1)
       (not E1)
       (not C1)
       (not S)
       (not Q)
       (= J true)
       (= E true)
       (not C)
       a!2))
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
       K2
       L2
       M2
       N2
       O2
       P2
       Q2
       R2
       S2
       T2
       U2
       V2
       W2
       X2
       Y2
       Z2
       A3
       B3
       C3
       D3
       E3
       F3)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Int) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Bool) (N3 Bool) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Bool) (Y3 Bool) (Z3 Bool) (A4 Bool) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Int) (G4 Bool) (H4 Bool) (I4 Bool) (J4 Bool) (K4 Bool) (L4 Bool) (M4 Bool) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Bool) (V4 Bool) (W4 Bool) (X4 Bool) (Y4 Bool) (Z4 Bool) (A5 Bool) (B5 Bool) (C5 Bool) (D5 Bool) (E5 Bool) (F5 Bool) (G5 Bool) (H5 Bool) (I5 Bool) (J5 Bool) (K5 Bool) (L5 Bool) (M5 Bool) (N5 Bool) (O5 Bool) (P5 Bool) (Q5 Bool) (R5 Bool) (S5 Bool) (T5 Bool) (U5 Bool) (V5 Bool) (W5 Bool) (X5 Bool) (Y5 Bool) (Z5 Bool) (A6 Bool) (B6 Bool) (C6 Bool) (D6 Bool) (E6 Bool) (F6 Bool) (G6 Bool) (H6 Bool) (I6 Bool) (J6 Bool) (K6 Bool) (L6 Bool) ) 
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
       K2
       L2
       M2
       N2
       O2
       P2
       Q2
       R2
       S2
       T2
       U2
       V2
       W2
       X2
       Y2
       Z2
       A3
       B3
       C3
       D3
       E3
       F3)
        (let ((a!1 (= (or (and (not L3) (not M3) N3)
                  (and (not L3) M3 (not N3))
                  (and L3 (not M3) (not N3)))
              O3))
      (a!2 (or (not W1) (= (and S1 (not U1) (not M2)) N2)))
      (a!3 (or (not J6) (and (not M4) (not S5) (or (not K4) (not V)))))
      (a!4 (or (not B5) (= (and X4 (not Z4) (not S5)) T5)))
      (a!5 (= (or (and (not F) (not G) H)
                  (and (not F) G (not H))
                  (and F (not G) (not H)))
              I)))
  (and a!1
       (= (and (not U) W X Y (not A1) Y1 A2 B2 (<= Z 200) (<= 35 Z)) C2)
       (= (and R T (not U) V W X Y (not A1) (<= Z 200) (<= 35 Z)) B1)
       (= (and (not A4) C4 D4 E4 (not G4) D5 F5 H5 (<= F4 200) (<= 35 F4)) I5)
       (= (and W3 Y3 (not A4) B4 C4 D4 E4 (not G4) (<= F4 200) (<= 35 F4)) H4)
       (= (and T2 U2 V2 W2) X2)
       (= (and Z5 A6 B6 C6) D6)
       (= (and E6 B3) L6)
       (= (and E6 B3) F6)
       (= Q2 R2)
       (= P2 W2)
       (= O2 V2)
       (= N2 U2)
       (= L2 T2)
       (= J2 K2)
       (= H2 I2)
       (= F2 G2)
       (= D2 E2)
       (= Z1 A2)
       (= X1 Y1)
       (= V1 W1)
       (= T1 U1)
       (= R1 S1)
       (= P1 Q1)
       (= N1 S2)
       (= N1 O4)
       (= M1 N1)
       (= G1 H1)
       (= E1 F1)
       (= C1 D1)
       (= B1 J1)
       (= V B2)
       (= V O1)
       (= S T)
       (= Q R)
       (= N P)
       (= K L)
       (= J K)
       (= I M)
       (= C D)
       (= A B)
       (= W5 X5)
       (= V5 C6)
       (= U5 B6)
       (= T5 A6)
       (= R5 Z5)
       (= Q5 (and Y5 (not S2)))
       (= P5 Q5)
       (= O5 (and M3 (not G)))
       (= N5 O5)
       (= M5 (and L3 (not F)))
       (= L5 M5)
       (= K5 (and N3 (not H)))
       (= J5 K5)
       (= G5 (and G6 C3))
       (= F5 G5)
       (= E5 (and E6 Z2))
       (= D5 E5)
       (= C5 (and H5 (not B2)))
       (= B5 C5)
       (= A5 (= I6 (not A3)))
       (= Z4 A5)
       (= Y4 (and H6 (not D3)))
       (= X4 Y4)
       (= W4 (= I6 (not A3)))
       (= V4 W4)
       (= U4 J6)
       (= S4 Y5)
       (= S4 T4)
       (= Q4 T4)
       (= N4 (= I6 (not A3)))
       (= M4 N4)
       (= L4 (and H6 (not D3)))
       (= K4 L4)
       (= J4 (and H6 (not D3)))
       (= I4 J4)
       (= H4 P4)
       (= B4 H5)
       (= B4 U4)
       (= Z3 (and G6 C3))
       (= Y3 Z3)
       (= X3 (and E6 Y2))
       (= W3 X3)
       (= U3 V3)
       (= Q3 (and (not F) (not G) (not H)))
       (= P3 R3)
       (= P3 Q3)
       (= O3 S3)
       (= K3 (or O4 B))
       (= J3 (and B4 (not V)))
       (= I3 J3)
       (= G3 H3)
       (or M4 S5 (and K4 V) (= J6 K6))
       (or (not P) (not J1) K1)
       (or (not L) (not M) (= N O))
       (or (not I4) K6 V)
       (or (not V3) (not P4) Q4)
       (or (not R3) (not S3) (= T3 U3))
       (or (and P J1) (= K1 L1))
       (or (and I4 (not V)) (= V K6))
       (or (and V3 P4) (= Q4 R4))
       (or (not K2) (= (or E2 G2 I2) P2))
       (or K2 P2)
       (or C2 (= O2 (not S2)))
       (or (not C2) O2)
       a!2
       (or W1 N2)
       (or (not Q1) (= L2 (not S2)))
       (or Q1 L2)
       (or (not N) (and L M))
       (or (not H) (= B O))
       (or H O)
       (or (not D) (= A I1))
       (or D (= A E))
       a!3
       (or (not P5) (= (or J5 L5 N5) V5))
       (or P5 V5)
       (or I5 (= U5 (not Y5)))
       (or (not I5) U5)
       a!4
       (or B5 T5)
       (or (not V4) (= R5 (not Y5)))
       (or V4 R5)
       (or (not P4) (= N1 R4))
       (or P4 (not R4))
       (or (not U3) (and R3 S3))
       (or (not N3) (= G3 T3))
       (or N3 T3)
       (or (not I3) (= H3 O4))
       (or I3 (= H3 K3))
       (= X5 true)
       a!5))
      )
      (state H3
       G3
       J3
       I3
       K3
       L3
       M3
       N3
       O3
       Q3
       P3
       R3
       S3
       U3
       T3
       V3
       X3
       W3
       Z3
       Y3
       A4
       B4
       C4
       D4
       E4
       F4
       G4
       H4
       J4
       I4
       L4
       K4
       N4
       M4
       O4
       P4
       Q4
       R4
       T4
       S4
       U4
       W4
       V4
       Y4
       X4
       A5
       Z4
       C5
       B5
       E5
       D5
       G5
       F5
       H5
       I5
       K5
       J5
       M5
       L5
       O5
       N5
       Q5
       P5
       R5
       S5
       T5
       U5
       V5
       X5
       W5
       Y5
       Z5
       A6
       B6
       C6
       D6
       F6
       L6
       I6
       E6
       G6
       H6
       K6
       J6)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Int) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) ) 
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
       K2
       L2
       M2
       N2
       O2
       P2
       Q2
       R2
       S2
       T2
       U2
       V2
       W2
       X2
       Y2
       Z2
       A3
       B3
       C3
       D3
       E3
       F3)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
