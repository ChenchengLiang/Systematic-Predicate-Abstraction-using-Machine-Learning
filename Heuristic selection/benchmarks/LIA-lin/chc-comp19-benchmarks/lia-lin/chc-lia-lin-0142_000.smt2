(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Bool Bool Int Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Bool) (I2 Int) (J2 Int) (K2 Int) (L2 Bool) (M2 Bool) (N2 Int) (O2 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (and (or (not C) (not D))
                   (or (not C) (not E))
                   (or (not C) (not F))
                   (or (not D) (not E))
                   (or (not D) (not F))
                   (or (not E) (not F)))
              G)))
  (and (= R 0)
       (= R S)
       (= Q Y)
       (= P 0)
       (= P Q)
       (= O X)
       (= N 0)
       (= N O)
       (= M W)
       (= L F2)
       (= L M)
       (= K V)
       (= J 0)
       (= J K)
       (= (or (not T) A1) B1)
       a!1
       (= I U)
       (= H I)
       (= B T)
       (= A G)
       (= A B)
       (or (not M2) (= B2 0))
       (or (not M2) (= Z1 0))
       (or (not L2) (= P1 0))
       (or (not L2) (= N1 1))
       (or (not L2) (= K1 0))
       (or (not L2) (= E1 0))
       (or (not H2) (= K2 1))
       (or (not H2) (= J2 0))
       (or (not H2) (= I2 0))
       (or (not H2) (= G2 0))
       (or F (= A2 C2))
       (or (not F) (= A2 B2))
       (or (not F) (= X1 Z1))
       (or F (= X1 Y1))
       (or (not F) (= V1 W1))
       (or (not F) (= T1 U1))
       (or (not F) (= R1 S1))
       (or F (= I1 V1))
       (or F (= F1 T1))
       (or F (= C1 R1))
       (or (not E) (= C2 E2))
       (or (not E) (= Y1 D2))
       (or E (= O1 C2))
       (or E (= L1 Y1))
       (or D (= O1 Q1))
       (or (not D) (= O1 P1))
       (or (not D) (= L1 N1))
       (or D (= L1 M1))
       (or (not D) (= I1 K1))
       (or D (= I1 J1))
       (or (not D) (= F1 H1))
       (or D (= F1 G1))
       (or (not D) (= C1 E1))
       (or D (= C1 D1))
       (or (not C) (= Q1 J2))
       (or (not C) (= M1 K2))
       (or (not C) (= J1 I2))
       (or (not C) (= G1 N2))
       (or (not C) (= D1 G2))
       (= A1 true)
       (not H)
       (= S Z)))
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
       O2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Bool) (I2 Int) (J2 Int) (K2 Int) (L2 Bool) (M2 Bool) (N2 Int) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Bool) (J3 Bool) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Bool) (Q3 Bool) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Bool) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Bool) (A5 Bool) (B5 Bool) (C5 Int) (D5 Int) ) 
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
       O2)
        (let ((a!1 (= (and (or (not C) (not D))
                   (or (not C) (not E))
                   (or (not C) (not F))
                   (or (not D) (not E))
                   (or (not D) (not F))
                   (or (not E) (not F)))
              G))
      (a!2 (= (and (or (not R2) (not S2))
                   (or (not R2) (not T2))
                   (or (not R2) (not U2))
                   (or (not S2) (not T2))
                   (or (not S2) (not U2))
                   (or (not T2) (not U2)))
              V2))
      (a!3 (= P3
              (= (+ V
                    W
                    X
                    Y
                    Z
                    (* (- 1) K3)
                    (* (- 1) L3)
                    (* (- 1) M3)
                    (* (- 1) N3)
                    (* (- 1) O3))
                 0)))
      (a!4 (or (not Z4) (= (+ K M O Q S (* (- 1) W3)) 1)))
      (a!5 (or (not U4) (= (+ K M O Q S (* (- 1) C5)) 1)))
      (a!6 (or (not B5) (= (+ O Q (* (- 1) L4)) (- 1))))
      (a!7 (or (not B5) (= (+ K S (* (- 1) H4)) 0)))
      (a!8 (or (not B5) (= (+ M (* (- 1) J4)) 1)))
      (a!9 (or (not A5) (= (+ S (* (- 1) T4)) (- 1))))
      (a!10 (or (not A5) (= (+ Q (* (- 1) S4)) 1))))
  (and (= R S)
       (= Q Y)
       (= P Q)
       (= O X)
       (= N O)
       (= M W)
       (= L M)
       (= K V)
       (= J K)
       (= H3 Q4)
       (= G3 O3)
       (= G3 H3)
       (= F3 N4)
       (= E3 N3)
       (= E3 F3)
       (= D3 K4)
       (= C3 M3)
       (= C3 D3)
       (= B3 I4)
       (= A3 L3)
       (= A3 B3)
       (= Z2 G4)
       (= Y2 K3)
       (= Y2 Z2)
       (= (<= 1 Q) A5)
       (= (<= 1 M) U4)
       (= (<= 1 M) B5)
       (= (<= K O) Z4)
       (= (or (not T) A1) B1)
       (= (or (not I3) P3) Q3)
       a!1
       a!2
       (= I U)
       (= H I)
       (= B T)
       (= A B)
       a!3
       (= X2 (<= 2 E3))
       (= W2 J3)
       (= W2 X2)
       (= Q2 (and V2 B))
       (= P2 I3)
       (= P2 Q2)
       a!4
       (or Z4 (= S D4))
       (or Z4 (= Q C4))
       (or Z4 (= O Z3))
       (or Z4 (= M W3))
       (or Z4 (= K T3))
       (or (not Z4) (= D4 0))
       (or (not Z4) (= C4 1))
       (or (not Z4) (= Z3 0))
       (or (not Z4) (= T3 0))
       a!5
       (or (not U4) (= W4 0))
       (or U4 (= S X4))
       (or U4 (= Q Y4))
       (or U4 (= O W4))
       (or U4 (= M C5))
       (or U4 (= K V4))
       (or (not U4) (= Y4 1))
       (or (not U4) (= X4 0))
       (or (not U4) (= V4 0))
       (or F (= A2 C2))
       (or (not F) (= A2 B2))
       (or (not F) (= X1 Z1))
       (or F (= X1 Y1))
       (or (not F) (= V1 W1))
       (or (not F) (= T1 U1))
       (or (not F) (= R1 S1))
       (or F (= I1 V1))
       (or F (= F1 T1))
       (or F (= C1 R1))
       (or (not E) (= C2 E2))
       (or (not E) (= Y1 D2))
       (or E (= O1 C2))
       (or E (= L1 Y1))
       (or D (= O1 Q1))
       (or (not D) (= O1 P1))
       (or (not D) (= L1 N1))
       (or D (= L1 M1))
       (or (not D) (= I1 K1))
       (or D (= I1 J1))
       (or (not D) (= F1 H1))
       (or D (= F1 G1))
       (or (not D) (= C1 E1))
       (or D (= C1 D1))
       a!6
       a!7
       a!8
       (or B5 (= S P4))
       (or B5 (= Q O4))
       (or B5 (= O L4))
       (or B5 (= M J4))
       (or B5 (= K H4))
       (or (not B5) (= P4 0))
       (or (not B5) (= O4 0))
       a!9
       a!10
       (or A5 (= S T4))
       (or A5 (= Q S4))
       (or U2 (= Q4 R4))
       (or (not U2) (= P4 Q4))
       (or (not U2) (= N4 O4))
       (or U2 (= M4 N4))
       (or (not U2) (= K4 L4))
       (or (not U2) (= I4 J4))
       (or (not U2) (= G4 H4))
       (or U2 (= Y3 K4))
       (or U2 (= V3 I4))
       (or U2 (= S3 G4))
       (or (not T2) (= R4 T4))
       (or (not T2) (= M4 S4))
       (or T2 (= E4 R4))
       (or T2 (= B4 M4))
       (or S2 (= S F4))
       (or S2 (= Q A4))
       (or S2 (= O X3))
       (or S2 (= M U3))
       (or S2 (= K R3))
       (or (not S2) (= F4 X4))
       (or (not S2) (= A4 Y4))
       (or (not S2) (= X3 W4))
       (or (not S2) (= U3 C5))
       (or (not S2) (= R3 V4))
       (or R2 (= E4 F4))
       (or (not R2) (= D4 E4))
       (or (not R2) (= B4 C4))
       (or R2 (= A4 B4))
       (or (not R2) (= Y3 Z3))
       (or R2 (= X3 Y3))
       (or (not R2) (= V3 W3))
       (or R2 (= U3 V3))
       (or (not R2) (= S3 T3))
       (or R2 (= R3 S3))
       (= S Z)))
      )
      (state Q2
       P2
       S2
       R2
       T2
       U2
       V2
       X2
       W2
       Z2
       Y2
       B3
       A3
       D3
       C3
       F3
       E3
       H3
       G3
       I3
       J3
       K3
       L3
       M3
       N3
       O3
       P3
       Q3
       S3
       R3
       T3
       V3
       U3
       W3
       Y3
       X3
       Z3
       B4
       A4
       C4
       E4
       D4
       F4
       G4
       H4
       I4
       J4
       K4
       L4
       N4
       M4
       O4
       Q4
       P4
       R4
       S4
       T4
       D5
       V4
       U4
       W4
       X4
       Y4
       Z4
       B5
       C5
       A5)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Bool) (I2 Int) (J2 Int) (K2 Int) (L2 Bool) (M2 Bool) (N2 Int) (O2 Bool) ) 
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
       O2)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
