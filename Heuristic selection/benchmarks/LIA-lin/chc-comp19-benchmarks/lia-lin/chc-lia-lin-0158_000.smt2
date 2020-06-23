(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Bool Bool Bool Int Bool Bool Bool Int Bool Bool Bool Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Bool) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Int) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Int) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) ) 
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
      (a!2 (or M (and (not (<= 3 Z)) (not (<= 3 B1)) (not (<= 3 D1))))))
  (and (= C1 0)
       (= C1 D1)
       (= B1 I2)
       (= A1 0)
       (= A1 B1)
       (= Z H2)
       (= Y 0)
       (= Y Z)
       (= X G2)
       (= W N2)
       (= W X)
       (= V F2)
       (= U X)
       (= U V)
       (= T E2)
       (= S Q2)
       (= S T)
       (= R D2)
       (= Q P2)
       (= Q R)
       (= P C2)
       (= O O2)
       (= O P)
       a!1
       (= (or (not B) (not B2)) M2)
       (= N B2)
       (= M N)
       (= A (and L (<= 0 N2) (<= 0 O2) (<= 0 P2) (<= 0 Q2)))
       (= A B)
       (or (not M) (<= 3 Z) (<= 3 B1) (<= 3 D1))
       (or (not C3) (= A2 1))
       (or (not B3) (= V1 2))
       (or (not A3) (= Z2 0))
       (or (not Y2) (= R1 1))
       (or (not X2) (= L1 2))
       (or (not W2) (= V2 0))
       (or (not U2) (= F1 1))
       (or (not T2) (= J2 2))
       (or (not S2) (= R2 0))
       a!2
       (or (not K) (= K2 R2))
       (or (not K) (= J1 K3))
       (or J (= G1 K2))
       (or (not J) (= G1 J2))
       (or (not I) (= E3 F3))
       (or (not I) (= O1 D3))
       (or I (= E1 G1))
       (or (not I) (= E1 F1))
       (or (not H) (= M1 V2))
       (or H (= H1 J1))
       (or (not H) (= H1 I1))
       (or G (= K1 M1))
       (or (not G) (= K1 L1))
       (or (not F) (= G3 H3))
       (or (not F) (= Q1 R1))
       (or (not F) (= N1 P1))
       (or F (= N1 O1))
       (or F (= K1 Q1))
       (or (not E) (= W1 Z2))
       (or (not E) (= S1 T1))
       (or E (= H1 S1))
       (or (not D) (= I3 J3))
       (or (not D) (= Z1 A2))
       (or (not D) (= X1 Y1))
       (or D (= U1 Z1))
       (or D (= N1 X1))
       (or C (= U1 W1))
       (or (not C) (= U1 V1))
       (= D1 L2)))
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
       K3)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Bool) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Int) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Int) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Bool) (M3 Bool) (N3 Bool) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Bool) (Y3 Bool) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Bool) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Bool) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Int) (F6 Bool) (G6 Int) (H6 Bool) (I6 Bool) (J6 Bool) (K6 Int) (L6 Bool) (M6 Bool) (N6 Bool) (O6 Int) (P6 Bool) (Q6 Bool) (R6 Int) (S6 Int) (T6 Int) (U6 Int) (V6 Int) ) 
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
       K3)
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
      (a!2 (= (or (and (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3))
                  (and (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       V3)
                  (and (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       U3
                       (not V3))
                  (and (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       T3
                       (not U3)
                       (not V3))
                  (and (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       S3
                       (not T3)
                       (not U3)
                       (not V3))
                  (and (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       R3
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3))
                  (and (not N3)
                       (not O3)
                       (not P3)
                       Q3
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3))
                  (and (not N3)
                       (not O3)
                       P3
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3))
                  (and (not N3)
                       O3
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3))
                  (and N3
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)
                       (not S3)
                       (not T3)
                       (not U3)
                       (not V3)))
              W3))
      (a!3 (or (not Q6) (= (+ X (* (- 1) J5)) (- 1))))
      (a!4 (or M (and (not (<= 3 Z)) (not (<= 3 B1)) (not (<= 3 D1)))))
      (a!5 (or (not N6) (= (+ V (* (- 1) D5)) (- 1))))
      (a!6 (or (not M6) (= (+ X (* (- 1) A5)) (- 1))))
      (a!7 (or (not J6) (= (+ V (* (- 1) S4)) (- 1))))
      (a!8 (or (not I6) (= (+ X (* (- 1) V6)) (- 1))))
      (a!9 (or (not F6) (= (+ V (* (- 1) U6)) (- 1))))
      (a!10 (or Y3 (and (not (<= 3 J4)) (not (<= 3 L4)) (not (<= 3 N4))))))
  (and (= C1 D1)
       (= B1 I2)
       (= A1 B1)
       (= Z H2)
       (= Y Z)
       (= X G2)
       (= W X)
       (= V F2)
       (= U V)
       (= T E2)
       (= S T)
       (= R D2)
       (= Q R)
       (= P C2)
       (= O P)
       (= O4 L5)
       (= N4 W5)
       (= N4 O4)
       (= M4 C5)
       (= L4 T5)
       (= L4 M4)
       (= K4 Q4)
       (= J4 S5)
       (= J4 K4)
       (= I4 I5)
       (= H4 R5)
       (= H4 I4)
       (= G4 E5)
       (= F4 Q5)
       (= F4 G4)
       (= E4 E6)
       (= D4 P5)
       (= D4 E4)
       (= C4 D6)
       (= B4 O5)
       (= B4 C4)
       (= A4 C6)
       (= Z3 N5)
       (= Z3 A4)
       (= (= D1 2) N6)
       (= (= B1 2) J6)
       (= (= Z 2) F6)
       a!1
       a!2
       (= (or (not B) (not B2)) M2)
       (= (or (not L3) (not M5)) X5)
       (= Q6 (= D1 0))
       (= P6 (and (<= D4 V) (= D1 1)))
       (= N B2)
       (= M N)
       (= A B)
       (= M6 (= B1 0))
       (= L6 (and (<= B4 V) (= B1 1)))
       (= I6 (= Z 0))
       (= H6 (and (<= Z3 V) (= Z 1)))
       (= X3 M5)
       (= X3 Y3)
       (= M3 (and W3 B (<= 0 Y5) (<= 0 Z5) (<= 0 A6) (<= 0 B6)))
       (= L3 M3)
       (or (not M) (<= 3 Z) (<= 3 B1) (<= 3 D1))
       (or (not Y3) (<= 3 J4) (<= 3 L4) (<= 3 N4))
       a!3
       (or Q6 (= D1 K5))
       (or (not Q6) (= X T6))
       (or Q6 (= X J5))
       (or Q6 (= T T6))
       (or (not Q6) (= K5 1))
       (or P6 (= D1 F5))
       (or (not P6) (= F5 2))
       a!4
       (or J (= G1 K2))
       (or (not J) (= G1 J2))
       (or I (= E1 G1))
       (or (not I) (= E1 F1))
       (or H (= H1 J1))
       (or (not H) (= H1 I1))
       (or G (= K1 M1))
       (or (not G) (= K1 L1))
       (or (not F) (= Q1 R1))
       (or (not F) (= N1 P1))
       (or F (= N1 O1))
       (or F (= K1 Q1))
       (or (not E) (= S1 T1))
       (or E (= H1 S1))
       (or (not D) (= Z1 A2))
       (or (not D) (= X1 Y1))
       (or D (= U1 Z1))
       (or D (= N1 X1))
       (or C (= U1 W1))
       (or (not C) (= U1 V1))
       a!5
       (or N6 (= D1 O6))
       (or N6 (= V D5))
       (or (not N6) (= O6 0))
       a!6
       (or M6 (= B1 B5))
       (or (not M6) (= X S6))
       (or M6 (= X A5))
       (or M6 (= R S6))
       (or (not M6) (= B5 1))
       (or L6 (= B1 V4))
       (or (not L6) (= V4 2))
       a!7
       (or J6 (= B1 K6))
       (or J6 (= V S4))
       (or (not J6) (= K6 0))
       a!8
       (or I6 (= Z P4))
       (or I6 (= X V6))
       (or (not I6) (= X R6))
       (or I6 (= P R6))
       (or (not I6) (= P4 1))
       (or H6 (= Z U5))
       (or (not H6) (= U5 2))
       a!9
       (or F6 (= Z G6))
       (or F6 (= V U6))
       (or (not F6) (= G6 0))
       a!10
       (or V3 (= Z V5))
       (or V3 (= V U4))
       (or (not V3) (= V5 G6))
       (or (not V3) (= U4 U6))
       (or U3 (= R4 V5))
       (or (not U3) (= R4 U5))
       (or T3 (= X Y4))
       (or T3 (= P C6))
       (or (not T3) (= C6 R6))
       (or (not T3) (= Y4 V6))
       (or T3 (= Q4 R4))
       (or (not T3) (= P4 Q4))
       (or S3 (= B1 X4))
       (or (not S3) (= X4 K6))
       (or S3 (= T4 U4))
       (or (not S3) (= S4 T4))
       (or R3 (= W4 X4))
       (or (not R3) (= V4 W4))
       (or (not Q3) (= D6 S6))
       (or Q3 (= R D6))
       (or (not Q3) (= B5 C5))
       (or (not Q3) (= Z4 A5))
       (or Q3 (= Y4 Z4))
       (or Q3 (= W4 C5))
       (or P3 (= D1 H5))
       (or (not P3) (= H5 O6))
       (or (not P3) (= D5 E5))
       (or P3 (= T4 E5))
       (or (not O3) (= E6 T6))
       (or O3 (= T E6))
       (or (not O3) (= K5 L5))
       (or (not O3) (= I5 J5))
       (or O3 (= G5 L5))
       (or O3 (= Z4 I5))
       (or N3 (= G5 H5))
       (or (not N3) (= F5 G5))
       (= D1 L2)))
      )
      (state M3
       L3
       N3
       O3
       P3
       Q3
       R3
       S3
       T3
       U3
       V3
       W3
       Y3
       X3
       A4
       Z3
       C4
       B4
       E4
       D4
       G4
       F4
       I4
       H4
       K4
       J4
       M4
       L4
       O4
       N4
       Q4
       P4
       R4
       T4
       S4
       U4
       W4
       V4
       X4
       Z4
       Y4
       A5
       C5
       B5
       E5
       D5
       G5
       F5
       H5
       I5
       J5
       L5
       K5
       M5
       N5
       O5
       P5
       Q5
       R5
       S5
       T5
       U5
       V5
       W5
       X5
       Y5
       Z5
       A6
       B6
       G6
       F6
       H6
       I6
       K6
       J6
       L6
       M6
       O6
       N6
       P6
       Q6
       V6
       C6
       R6
       D6
       S6
       E6
       T6
       U6)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Bool) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Int) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Int) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) ) 
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
       K3)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
