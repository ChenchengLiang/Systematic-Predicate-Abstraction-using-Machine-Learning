(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Bool Bool Bool Int Bool Bool Bool Int Bool Bool Bool Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Bool) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Int) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Int) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) ) 
    (=>
      (and
        (let ((a!1 (= (or (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)))
              L))
      (a!2 (and (or (not (<= 3 B1)) (not (<= 3 D1))) (not (<= 3 Z)))))
  (and (= C1 0)
       (= C1 D1)
       (= B1 J2)
       (= A1 0)
       (= A1 B1)
       (= Z F2)
       (= Y 0)
       (= Y Z)
       (= X E2)
       (= W O2)
       (= W X)
       (= V D2)
       (= U X)
       (= U V)
       (= T C2)
       (= S R2)
       (= S T)
       (= R B2)
       (= Q Q2)
       (= Q R)
       (= P A2)
       (= O P2)
       (= O P)
       a!1
       (= (or (not Y1) (<= 0 E2)) N2)
       (= N Z1)
       (= M N)
       (= B Y1)
       (= A (and L (<= 0 O2) (<= 0 P2) (<= 0 Q2) (<= 0 R2)))
       (= A B)
       (or (not M) (and (<= 3 B1) (<= 3 D1)) (<= 3 Z))
       (or (not D3) (= X1 1))
       (or (not C3) (= S1 2))
       (or (not B3) (= A3 0))
       (or (not Z2) (= O1 1))
       (or (not Y2) (= I1 2))
       (or (not X2) (= W2 0))
       (or (not V2) (= M2 1))
       (or (not U2) (= H2 2))
       (or (not T2) (= S2 0))
       (or M a!2)
       (or (not K) (= I2 S2))
       (or (not K) (= G1 I3))
       (or J (= G2 I2))
       (or (not J) (= G2 H2))
       (or (not I) (= K3 L3))
       (or (not I) (= L2 M2))
       (or I (= G2 L2))
       (or (not I) (= L1 J3))
       (or (not H) (= J1 W2))
       (or H (= E1 G1))
       (or (not H) (= E1 F1))
       (or G (= H1 J1))
       (or (not G) (= H1 I1))
       (or (not F) (= E3 F3))
       (or (not F) (= N1 O1))
       (or (not F) (= K1 M1))
       (or F (= K1 L1))
       (or F (= H1 N1))
       (or (not E) (= T1 A3))
       (or (not E) (= P1 Q1))
       (or E (= E1 P1))
       (or (not D) (= G3 H3))
       (or (not D) (= W1 X1))
       (or (not D) (= U1 V1))
       (or D (= R1 W1))
       (or D (= K1 U1))
       (or C (= R1 T1))
       (or (not C) (= R1 S1))
       (= D1 K2)))
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
       F3
       G3
       H3
       I3
       J3
       K3
       L3)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Bool) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Int) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Int) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Bool) (N3 Bool) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Bool) (Y3 Bool) (Z3 Bool) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Bool) (L5 Bool) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Bool) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Bool) (I6 Int) (J6 Bool) (K6 Bool) (L6 Bool) (M6 Int) (N6 Bool) (O6 Bool) (P6 Bool) (Q6 Int) (R6 Bool) (S6 Bool) (T6 Int) (U6 Int) (V6 Int) (W6 Int) (X6 Int) ) 
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
       F3
       G3
       H3
       I3
       J3
       K3
       L3)
        (let ((a!1 (= (or (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)))
              L))
      (a!2 (= (or (and (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3)
                       (not W3))
                  (and (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3)
                       W3)
                  (and (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       V3
                       (not W3))
                  (and (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       U3
                       (not V3)
                       (not W3))
                  (and (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       T3
                       (not U3)
                       (not V3)
                       (not W3))
                  (and (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       S3
                       (not T3)
                       (not U3)
                       (not V3)
                       (not W3))
                  (and (not O3)
                       (not P3)
                       (not Q3)
                       R3
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3)
                       (not W3))
                  (and (not O3)
                       (not P3)
                       Q3
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3)
                       (not W3))
                  (and (not O3)
                       P3
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3)
                       (not W3))
                  (and O3
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3)
                       (not W3)))
              X3))
      (a!3 (or (not S6) (= (+ X (* (- 1) H5)) (- 1))))
      (a!4 (and (or (not (<= 3 B1)) (not (<= 3 D1))) (not (<= 3 Z))))
      (a!5 (or (not P6) (= (+ V (* (- 1) B5)) (- 1))))
      (a!6 (or (not O6) (= (+ X (* (- 1) Y4)) (- 1))))
      (a!7 (or (not L6) (= (+ V (* (- 1) Q4)) (- 1))))
      (a!8 (or (not K6) (= (+ X (* (- 1) X6)) (- 1))))
      (a!9 (or (not H6) (= (+ V (* (- 1) W6)) (- 1))))
      (a!10 (and (or (not (<= 3 M4)) (not (<= 3 O4))) (not (<= 3 K4)))))
  (and (= C1 D1)
       (= B1 J2)
       (= A1 B1)
       (= Z F2)
       (= Y Z)
       (= X E2)
       (= W X)
       (= V D2)
       (= U V)
       (= T C2)
       (= S T)
       (= R B2)
       (= Q R)
       (= P A2)
       (= O P)
       (= P4 J5)
       (= O4 W5)
       (= O4 P4)
       (= N4 A5)
       (= M4 V5)
       (= M4 N4)
       (= L4 Y5)
       (= K4 R5)
       (= K4 L4)
       (= J4 G5)
       (= I4 Q5)
       (= I4 J4)
       (= H4 C5)
       (= G4 P5)
       (= G4 H4)
       (= F4 G6)
       (= E4 O5)
       (= E4 F4)
       (= D4 F6)
       (= C4 N5)
       (= C4 D4)
       (= B4 E6)
       (= A4 M5)
       (= A4 B4)
       (= (= D1 2) P6)
       (= (= B1 2) L6)
       (= (= Z 2) H6)
       a!1
       a!2
       (= (or (not Y1) (<= 0 E2)) N2)
       (= (or (not K5) (<= 0 Q5)) Z5)
       (= S6 (= D1 0))
       (= R6 (and (<= E4 V) (= D1 1)))
       (= N Z1)
       (= M N)
       (= B Y1)
       (= A B)
       (= O6 (= B1 0))
       (= N6 (and (<= C4 V) (= B1 1)))
       (= K6 (= Z 0))
       (= J6 (and (<= A4 V) (= Z 1)))
       (= Y3 L5)
       (= Y3 Z3)
       (= N3 (and X3 B (<= 0 A6) (<= 0 B6) (<= 0 C6) (<= 0 D6)))
       (= M3 K5)
       (= M3 N3)
       (or (not M) (and (<= 3 B1) (<= 3 D1)) (<= 3 Z))
       (or (not Z3) (and (<= 3 M4) (<= 3 O4)) (<= 3 K4))
       a!3
       (or S6 (= D1 I5))
       (or (not S6) (= X V6))
       (or S6 (= X H5))
       (or S6 (= T V6))
       (or (not S6) (= I5 1))
       (or R6 (= D1 D5))
       (or (not R6) (= D5 2))
       (or M a!4)
       (or J (= G2 I2))
       (or (not J) (= G2 H2))
       (or (not I) (= L2 M2))
       (or I (= G2 L2))
       (or H (= E1 G1))
       (or (not H) (= E1 F1))
       (or G (= H1 J1))
       (or (not G) (= H1 I1))
       (or (not F) (= N1 O1))
       (or (not F) (= K1 M1))
       (or F (= K1 L1))
       (or F (= H1 N1))
       (or (not E) (= P1 Q1))
       (or E (= E1 P1))
       (or (not D) (= W1 X1))
       (or (not D) (= U1 V1))
       (or D (= R1 W1))
       (or D (= K1 U1))
       (or C (= R1 T1))
       (or (not C) (= R1 S1))
       a!5
       (or P6 (= D1 Q6))
       (or P6 (= V B5))
       (or (not P6) (= Q6 0))
       a!6
       (or O6 (= B1 Z4))
       (or (not O6) (= X U6))
       (or O6 (= X Y4))
       (or O6 (= R U6))
       (or (not O6) (= Z4 1))
       (or N6 (= B1 T4))
       (or (not N6) (= T4 2))
       a!7
       (or L6 (= B1 M6))
       (or L6 (= V Q4))
       (or (not L6) (= M6 0))
       a!8
       (or K6 (= Z X5))
       (or K6 (= X X6))
       (or (not K6) (= X T6))
       (or K6 (= P T6))
       (or (not K6) (= X5 1))
       (or J6 (= Z S5))
       (or (not J6) (= S5 2))
       a!9
       (or H6 (= Z I6))
       (or H6 (= V W6))
       (or (not H6) (= I6 0))
       (or Z3 a!10)
       (or W3 (= Z U5))
       (or W3 (= V S4))
       (or (not W3) (= U5 I6))
       (or (not W3) (= S4 W6))
       (or V3 (= T5 U5))
       (or (not V3) (= S5 T5))
       (or U3 (= X W4))
       (or U3 (= P E6))
       (or (not U3) (= E6 T6))
       (or (not U3) (= X5 Y5))
       (or U3 (= T5 Y5))
       (or (not U3) (= W4 X6))
       (or T3 (= B1 V4))
       (or (not T3) (= V4 M6))
       (or T3 (= R4 S4))
       (or (not T3) (= Q4 R4))
       (or S3 (= U4 V4))
       (or (not S3) (= T4 U4))
       (or (not R3) (= F6 U6))
       (or R3 (= R F6))
       (or (not R3) (= Z4 A5))
       (or (not R3) (= X4 Y4))
       (or R3 (= W4 X4))
       (or R3 (= U4 A5))
       (or Q3 (= D1 F5))
       (or (not Q3) (= F5 Q6))
       (or (not Q3) (= B5 C5))
       (or Q3 (= R4 C5))
       (or (not P3) (= G6 V6))
       (or P3 (= T G6))
       (or (not P3) (= I5 J5))
       (or (not P3) (= G5 H5))
       (or P3 (= E5 J5))
       (or P3 (= X4 G5))
       (or O3 (= E5 F5))
       (or (not O3) (= D5 E5))
       (= D1 K2)))
      )
      (state N3
       M3
       O3
       P3
       Q3
       R3
       S3
       T3
       U3
       V3
       W3
       X3
       Z3
       Y3
       B4
       A4
       D4
       C4
       F4
       E4
       H4
       G4
       J4
       I4
       L4
       K4
       N4
       M4
       P4
       O4
       R4
       Q4
       S4
       U4
       T4
       V4
       X4
       W4
       Y4
       A5
       Z4
       C5
       B5
       E5
       D5
       F5
       G5
       H5
       J5
       I5
       K5
       L5
       M5
       N5
       O5
       P5
       Q5
       R5
       T5
       S5
       U5
       V5
       W5
       Y5
       X5
       Z5
       A6
       B6
       C6
       D6
       I6
       H6
       J6
       K6
       M6
       L6
       N6
       O6
       Q6
       P6
       R6
       S6
       F6
       U6
       G6
       V6
       W6
       X6
       E6
       T6)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Bool) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Int) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Int) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) ) 
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
       F3
       G3
       H3
       I3
       J3
       K3
       L3)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
