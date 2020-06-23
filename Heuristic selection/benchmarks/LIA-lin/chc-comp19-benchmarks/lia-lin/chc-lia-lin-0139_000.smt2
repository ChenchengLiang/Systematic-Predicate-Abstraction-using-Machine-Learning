(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Bool Bool Int Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Bool) (G2 Int) (H2 Int) (I2 Int) (J2 Bool) (K2 Bool) (L2 Int) (M2 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (and (or (not C) (not D))
                   (or (not C) (not E))
                   (or (not C) (not F))
                   (or (not D) (not E))
                   (or (not D) (not F))
                   (or (not E) (not F)))
              G))
      (a!2 (= A (and G (not (<= D2 0))))))
  (and (= R 0)
       (= R S)
       (= Q X)
       (= P 0)
       (= P Q)
       (= O W)
       (= N 0)
       (= N O)
       (= M V)
       (= L D2)
       (= L M)
       (= K U)
       (= J 0)
       (= J K)
       (= (or (not B) (not T)) Z)
       a!1
       (= I T)
       (= H I)
       a!2
       (= A B)
       (or (not K2) (= Z1 0))
       (or (not K2) (= X1 0))
       (or (not J2) (= N1 0))
       (or (not J2) (= L1 1))
       (or (not J2) (= I1 0))
       (or (not J2) (= C1 0))
       (or (not F2) (= I2 1))
       (or (not F2) (= H2 0))
       (or (not F2) (= G2 0))
       (or (not F2) (= E2 0))
       (or F (= Y1 A2))
       (or (not F) (= Y1 Z1))
       (or (not F) (= V1 X1))
       (or F (= V1 W1))
       (or (not F) (= T1 U1))
       (or (not F) (= R1 S1))
       (or (not F) (= P1 Q1))
       (or F (= G1 T1))
       (or F (= D1 R1))
       (or F (= A1 P1))
       (or (not E) (= A2 C2))
       (or (not E) (= W1 B2))
       (or E (= M1 A2))
       (or E (= J1 W1))
       (or D (= M1 O1))
       (or (not D) (= M1 N1))
       (or (not D) (= J1 L1))
       (or D (= J1 K1))
       (or (not D) (= G1 I1))
       (or D (= G1 H1))
       (or (not D) (= D1 F1))
       (or D (= D1 E1))
       (or (not D) (= A1 C1))
       (or D (= A1 B1))
       (or (not C) (= O1 H2))
       (or (not C) (= K1 I2))
       (or (not C) (= H1 G2))
       (or (not C) (= E1 L2))
       (or (not C) (= B1 E2))
       (not H)
       (= S Y)))
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
       M2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Bool) (G2 Int) (H2 Int) (I2 Int) (J2 Bool) (K2 Bool) (L2 Int) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Bool) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Bool) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Bool) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Bool) (X4 Bool) (Y4 Bool) (Z4 Int) ) 
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
       M2)
        (let ((a!1 (= (<= (+ K (* (- 1) O)) (- 1)) W4))
      (a!2 (= (and (or (not C) (not D))
                   (or (not C) (not E))
                   (or (not C) (not F))
                   (or (not D) (not E))
                   (or (not D) (not F))
                   (or (not E) (not F)))
              G))
      (a!3 (= (and (or (not P2) (not Q2))
                   (or (not P2) (not R2))
                   (or (not P2) (not S2))
                   (or (not Q2) (not R2))
                   (or (not Q2) (not S2))
                   (or (not R2) (not S2)))
              T2))
      (a!4 (or B (and T2 (not (<= Q4 0)))))
      (a!5 (or (not Y4) (= (+ O Q (* (- 1) H4)) (- 1))))
      (a!6 (or (not Y4) (= (+ K S (* (- 1) D4)) 0)))
      (a!7 (or (not Y4) (= (+ M (* (- 1) F4)) 1)))
      (a!8 (or (not R4) (= (+ K M O Q S (* (- 1) Z4)) 1)))
      (a!9 (or (not X4) (= (+ S (* (- 1) P4)) (- 1))))
      (a!10 (or (not X4) (= (+ Q (* (- 1) O4)) 1)))
      (a!11 (or (not W4) (= (+ K M O Q S (* (- 1) S3)) 1))))
  (and (= R S)
       (= Q X)
       (= P Q)
       (= O W)
       (= N O)
       (= M V)
       (= L M)
       (= K U)
       (= J K)
       (= F3 M4)
       (= E3 L3)
       (= E3 F3)
       (= D3 J4)
       (= C3 K3)
       (= C3 D3)
       (= B3 G4)
       (= A3 J3)
       (= A3 B3)
       (= Z2 E4)
       (= Y2 I3)
       (= Y2 Z2)
       (= X2 C4)
       (= W2 H3)
       (= W2 X2)
       (= (<= 1 Q) X4)
       (= (<= 1 M) Y4)
       (= (<= 1 M) R4)
       a!1
       (= (or (not B) (not T)) Z)
       (= (or (not N2) (not G3)) M3)
       a!2
       a!3
       (= I T)
       (= H I)
       (= A B)
       (= V2 (<= 2 C3))
       (= U2 G3)
       (= U2 V2)
       (= O2 a!4)
       (= N2 O2)
       a!5
       a!6
       a!7
       (or Y4 (= S L4))
       (or Y4 (= Q K4))
       (or Y4 (= O H4))
       (or Y4 (= M F4))
       (or Y4 (= K D4))
       (or (not Y4) (= L4 0))
       (or (not Y4) (= K4 0))
       a!8
       (or (not R4) (= S4 0))
       (or R4 (= S U4))
       (or R4 (= Q V4))
       (or R4 (= O T4))
       (or R4 (= M Z4))
       (or R4 (= K S4))
       (or (not R4) (= V4 1))
       (or (not R4) (= U4 0))
       (or (not R4) (= T4 0))
       (or F (= Y1 A2))
       (or (not F) (= Y1 Z1))
       (or (not F) (= V1 X1))
       (or F (= V1 W1))
       (or (not F) (= T1 U1))
       (or (not F) (= R1 S1))
       (or (not F) (= P1 Q1))
       (or F (= G1 T1))
       (or F (= D1 R1))
       (or F (= A1 P1))
       (or (not E) (= A2 C2))
       (or (not E) (= W1 B2))
       (or E (= M1 A2))
       (or E (= J1 W1))
       (or D (= M1 O1))
       (or (not D) (= M1 N1))
       (or (not D) (= J1 L1))
       (or D (= J1 K1))
       (or (not D) (= G1 I1))
       (or D (= G1 H1))
       (or (not D) (= D1 F1))
       (or D (= D1 E1))
       (or (not D) (= A1 C1))
       (or D (= A1 B1))
       a!9
       a!10
       (or X4 (= S P4))
       (or X4 (= Q O4))
       a!11
       (or W4 (= S Z3))
       (or W4 (= Q Y3))
       (or W4 (= O V3))
       (or W4 (= M S3))
       (or W4 (= K P3))
       (or (not W4) (= Z3 0))
       (or (not W4) (= Y3 1))
       (or (not W4) (= V3 0))
       (or (not W4) (= P3 0))
       (or S2 (= M4 N4))
       (or (not S2) (= L4 M4))
       (or (not S2) (= J4 K4))
       (or S2 (= I4 J4))
       (or (not S2) (= G4 H4))
       (or (not S2) (= E4 F4))
       (or (not S2) (= C4 D4))
       (or S2 (= U3 G4))
       (or S2 (= R3 E4))
       (or S2 (= O3 C4))
       (or (not R2) (= N4 P4))
       (or (not R2) (= I4 O4))
       (or R2 (= A4 N4))
       (or R2 (= X3 I4))
       (or Q2 (= S B4))
       (or Q2 (= Q W3))
       (or Q2 (= O T3))
       (or Q2 (= M Q3))
       (or Q2 (= K N3))
       (or (not Q2) (= B4 U4))
       (or (not Q2) (= W3 V4))
       (or (not Q2) (= T3 T4))
       (or (not Q2) (= Q3 Z4))
       (or (not Q2) (= N3 S4))
       (or P2 (= A4 B4))
       (or (not P2) (= Z3 A4))
       (or (not P2) (= X3 Y3))
       (or P2 (= W3 X3))
       (or (not P2) (= U3 V3))
       (or P2 (= T3 U3))
       (or (not P2) (= R3 S3))
       (or P2 (= Q3 R3))
       (or (not P2) (= O3 P3))
       (or P2 (= N3 O3))
       (= S Y)))
      )
      (state O2
       N2
       Q2
       P2
       R2
       S2
       T2
       V2
       U2
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
       G3
       H3
       I3
       J3
       K3
       L3
       M3
       O3
       N3
       P3
       R3
       Q3
       S3
       U3
       T3
       V3
       X3
       W3
       Y3
       A4
       Z3
       B4
       C4
       D4
       E4
       F4
       G4
       H4
       J4
       I4
       K4
       M4
       L4
       N4
       O4
       P4
       Q4
       S4
       R4
       T4
       U4
       V4
       W4
       Y4
       Z4
       X4)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Bool) (G2 Int) (H2 Int) (I2 Int) (J2 Bool) (K2 Bool) (L2 Int) (M2 Bool) ) 
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
       M2)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
