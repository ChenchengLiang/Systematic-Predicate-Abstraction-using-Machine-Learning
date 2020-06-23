(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Bool Int Bool Bool Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Bool) (X Int) (Y Bool) (Z Bool) (A1 Int) (B1 Int) (C1 Bool) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (or (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)))
              K))
      (a!2 (= (or (not Y) (not (<= 2 X))) Z)))
  (and (= T U)
       (= S X)
       (= R 0)
       (= R S)
       (= Q V)
       (= P 0)
       (= P Q)
       (= O A1)
       (= N 0)
       (= N O)
       (= M T)
       (= L O2)
       (= L M)
       (= (<= 0 V) W)
       a!1
       a!2
       (= (and W Z C1) D1)
       (= C1 (<= 0 X))
       (= B Y)
       (= A (and K (<= 0 O2)))
       (= A B)
       (or (not S2) (= B2 0))
       (or (not R2) (= M1 1))
       (or (not Q2) (= P2 0))
       (or (not J) (= T1 P2))
       (or (not J) (= J1 V2))
       (or (not J) (= F1 U2))
       (or (not I) (= L1 T2))
       (or I (= H1 J1))
       (or (not I) (= H1 I1))
       (or (not I) (= E1 G1))
       (or I (= E1 F1))
       (or (not H) (= N1 O1))
       (or (not H) (= K1 M1))
       (or H (= K1 L1))
       (or H (= H1 N1))
       (or G (= R1 T1))
       (or (not G) (= R1 S1))
       (or (not G) (= P1 Q1))
       (or G (= E1 P1))
       (or (not F) (= W1 X1))
       (or (not F) (= U1 V1))
       (or F (= R1 U1))
       (or F (= K1 W1))
       (or (not E) (= C2 D2))
       (or (not E) (= A2 B2))
       (or (not E) (= Y1 Z1))
       (or E (= U1 A2))
       (or E (= P1 Y1))
       (or E (= N1 C2))
       (or (not D) (= M2 N2))
       (or (not D) (= K2 L2))
       (or D (= I2 M2))
       (or D (= A2 K2))
       (or (not C) (= I2 J2))
       (or (not C) (= G2 H2))
       (or (not C) (= E2 F2))
       (or C (= C2 I2))
       (or C (= Y1 E2))
       (or C (= W1 G2))
       (= U B1)))
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
       A3)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Bool) (X Int) (Y Bool) (Z Bool) (A1 Int) (B1 Int) (C1 Bool) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Bool) (B4 Int) (C4 Int) (D4 Bool) (E4 Bool) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Bool) (S5 Bool) (T5 Bool) (U5 Bool) (V5 Bool) (W5 Bool) (X5 Bool) (Y5 Bool) (Z5 Int) (A6 Int) (B6 Int) ) 
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
       A3)
        (let ((a!1 (= (or (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)))
              K))
      (a!2 (= (or (and (not D3)
                       (not E3)
                       (not F3)
                       (not G3)
                       (not H3)
                       (not I3)
                       (not J3)
                       (not K3))
                  (and (not D3)
                       (not E3)
                       (not F3)
                       (not G3)
                       (not H3)
                       (not I3)
                       (not J3)
                       K3)
                  (and (not D3)
                       (not E3)
                       (not F3)
                       (not G3)
                       (not H3)
                       (not I3)
                       J3
                       (not K3))
                  (and (not D3)
                       (not E3)
                       (not F3)
                       (not G3)
                       (not H3)
                       I3
                       (not J3)
                       (not K3))
                  (and (not D3)
                       (not E3)
                       (not F3)
                       (not G3)
                       H3
                       (not I3)
                       (not J3)
                       (not K3))
                  (and (not D3)
                       (not E3)
                       (not F3)
                       G3
                       (not H3)
                       (not I3)
                       (not J3)
                       (not K3))
                  (and (not D3)
                       (not E3)
                       F3
                       (not G3)
                       (not H3)
                       (not I3)
                       (not J3)
                       (not K3))
                  (and (not D3)
                       E3
                       (not F3)
                       (not G3)
                       (not H3)
                       (not I3)
                       (not J3)
                       (not K3))
                  (and D3
                       (not E3)
                       (not F3)
                       (not G3)
                       (not H3)
                       (not I3)
                       (not J3)
                       (not K3)))
              L3))
      (a!3 (= (or (not Y) (not (<= 2 X))) Z))
      (a!4 (= (or (not Z3) (not (<= 2 Y3))) A4))
      (a!5 (and (<= 1 U) (= O 0) (= Q 0) (= S 0)))
      (a!6 (= (and (<= 1 U) (<= 1 (+ O Q))) W5))
      (a!7 (= R5 (and (<= 1 U) (<= 1 (+ O Q)))))
      (a!8 (or (not W5) (= (+ O (* (- 1) Q) (* (- 1) A5)) 0)))
      (a!9 (or (not W5) (= (+ U (* (- 1) D5)) 1)))
      (a!10 (or (not V5) (= (+ S (* (- 1) X4)) (- 1))))
      (a!11 (or (not V5) (= (+ Q (* (- 1) W4)) 1)))
      (a!12 (or (not U5) (= (+ Q (* (- 1) S4)) (- 1))))
      (a!13 (or (not Y5) (= (+ U (* (- 1) N5)) 1)))
      (a!14 (or (not Y5) (= (+ Q (* (- 1) M5)) (- 1))))
      (a!15 (or (not X5) (= (+ U (* (- 1) J5)) 1)))
      (a!16 (or (not X5) (= (+ S (* (- 1) I5)) 1)))
      (a!17 (or (not X5) (= (+ O (* (- 1) G5)) (- 2))))
      (a!18 (or (not T5) (= (+ U (* (- 1) O4)) 1)))
      (a!19 (or (not S5) (= (+ U (* (- 1) I4)) 1)))
      (a!20 (or (not S5) (= (+ S (* (- 1) A6)) 1)))
      (a!21 (or (not S5) (= (+ O (* (- 1) H4)) (- 2))))
      (a!22 (or (not R5) (= (+ O Q (* (- 1) Z5)) (- 1))))
      (a!23 (or (not R5) (= (+ U (* (- 1) B6)) 1))))
  (and (= T U)
       (= S X)
       (= R S)
       (= Q V)
       (= P Q)
       (= O A1)
       (= N O)
       (= M N3)
       (= L M)
       (= V3 O5)
       (= U3 C4)
       (= U3 V3)
       (= T3 H5)
       (= S3 Y3)
       (= S3 T3)
       (= R3 L5)
       (= Q3 W3)
       (= Q3 R3)
       (= P3 F5)
       (= O3 B4)
       (= O3 P3)
       (= M3 N3)
       (= (<= 1 Q) V5)
       (= (<= 0 V) W)
       (= (<= 0 W3) X3)
       a!1
       a!2
       a!3
       a!4
       (= a!5 Y5)
       (= (and W Z C1) D1)
       (= (and X3 A4 D4) E4)
       a!6
       (= (and (<= 1 S) (<= 1 U)) X5)
       (= (and (<= 1 S) (<= 1 U)) S5)
       (= U5 (= O 1))
       (= C1 (<= 0 X))
       (= B Y)
       (= A B)
       (= T5 a!5)
       a!7
       (= D4 (<= 0 Y3))
       (= C3 (and L3 B (<= 0 P5)))
       (= B3 Z3)
       (= B3 C3)
       a!8
       a!9
       (or W5 (= U D5))
       (or W5 (= Q C5))
       (or W5 (= O A5))
       (or (not W5) (= C5 0))
       a!10
       a!11
       (or V5 (= S X4))
       (or V5 (= Q W4))
       a!12
       (or U5 (= Q S4))
       (or U5 (= O R4))
       (or (not U5) (= R4 0))
       (or I (= H1 J1))
       (or (not I) (= H1 I1))
       (or (not I) (= E1 G1))
       (or I (= E1 F1))
       (or (not H) (= N1 O1))
       (or (not H) (= K1 M1))
       (or H (= K1 L1))
       (or H (= H1 N1))
       (or G (= R1 T1))
       (or (not G) (= R1 S1))
       (or (not G) (= P1 Q1))
       (or G (= E1 P1))
       (or (not F) (= W1 X1))
       (or (not F) (= U1 V1))
       (or F (= R1 U1))
       (or F (= K1 W1))
       (or (not E) (= C2 D2))
       (or (not E) (= A2 B2))
       (or (not E) (= Y1 Z1))
       (or E (= U1 A2))
       (or E (= P1 Y1))
       (or E (= N1 C2))
       (or (not D) (= M2 N2))
       (or (not D) (= K2 L2))
       (or D (= I2 M2))
       (or D (= A2 K2))
       (or (not C) (= I2 J2))
       (or (not C) (= G2 H2))
       (or (not C) (= E2 F2))
       (or C (= C2 I2))
       (or C (= Y1 E2))
       (or C (= W1 G2))
       a!13
       a!14
       (or Y5 (= U N5))
       (or Y5 (= Q M5))
       a!15
       a!16
       a!17
       (or X5 (= U J5))
       (or X5 (= S I5))
       (or X5 (= O G5))
       a!18
       (or T5 (= U O4))
       (or T5 (= S N4))
       (or (not T5) (= N4 1))
       a!19
       a!20
       a!21
       (or S5 (= U I4))
       (or S5 (= S A6))
       (or S5 (= O H4))
       a!22
       a!23
       (or R5 (= U B6))
       (or R5 (= Q Q5))
       (or R5 (= O Z5))
       (or (not R5) (= Q5 0))
       (or K3 (= U K4))
       (or K3 (= Q U4))
       (or K3 (= O F4))
       (or (not K3) (= U4 Q5))
       (or (not K3) (= K4 B6))
       (or (not K3) (= F4 Z5))
       (or J3 (= S L4))
       (or (not J3) (= L4 A6))
       (or J3 (= J4 K4))
       (or (not J3) (= I4 J4))
       (or (not J3) (= G4 H4))
       (or J3 (= F4 G4))
       (or (not I3) (= O4 P4))
       (or (not I3) (= M4 N4))
       (or I3 (= L4 M4))
       (or I3 (= J4 P4))
       (or H3 (= T4 U4))
       (or (not H3) (= S4 T4))
       (or (not H3) (= Q4 R4))
       (or H3 (= G4 Q4))
       (or (not G3) (= X4 Y4))
       (or (not G3) (= V4 W4))
       (or G3 (= T4 V4))
       (or G3 (= M4 Y4))
       (or (not F3) (= D5 E5))
       (or (not F3) (= B5 C5))
       (or (not F3) (= Z4 A5))
       (or F3 (= V4 B5))
       (or F3 (= Q4 Z4))
       (or F3 (= P4 E5))
       (or (not E3) (= N5 O5))
       (or (not E3) (= L5 M5))
       (or E3 (= K5 O5))
       (or E3 (= B5 L5))
       (or (not D3) (= J5 K5))
       (or (not D3) (= H5 I5))
       (or (not D3) (= F5 G5))
       (or D3 (= E5 K5))
       (or D3 (= Z4 F5))
       (or D3 (= Y4 H5))
       (= U B1)))
      )
      (state C3
       B3
       D3
       E3
       F3
       G3
       H3
       I3
       J3
       K3
       L3
       N3
       M3
       P3
       O3
       R3
       Q3
       T3
       S3
       V3
       U3
       W3
       X3
       Y3
       Z3
       A4
       B4
       C4
       D4
       E4
       G4
       F4
       H4
       J4
       I4
       K4
       M4
       L4
       N4
       P4
       O4
       Q4
       R4
       T4
       S4
       U4
       V4
       W4
       Y4
       X4
       Z4
       A5
       B5
       C5
       E5
       D5
       F5
       G5
       H5
       I5
       K5
       J5
       L5
       M5
       O5
       N5
       P5
       Q5
       R5
       T5
       W5
       A6
       Z5
       B6
       Y5
       X5
       V5
       U5
       S5)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Bool) (X Int) (Y Bool) (Z Bool) (A1 Int) (B1 Int) (C1 Bool) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) ) 
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
       A3)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
