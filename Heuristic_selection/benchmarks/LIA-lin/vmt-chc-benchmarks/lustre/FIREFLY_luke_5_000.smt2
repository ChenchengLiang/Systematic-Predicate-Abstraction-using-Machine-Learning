(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Bool Bool Bool Int Int Int Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Bool) (H Int) (I Bool) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Int) (W Bool) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Int) (I2 Bool) (J2 Int) (K2 Bool) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Int) (C3 Int) ) 
    (=>
      (and
        (let ((a!1 (or (not S) (<= (+ V U (* (- 1) R) P N) 0)))
      (a!2 (= (or (and (not W1)
                       (not H1)
                       (not D)
                       (not Z2)
                       (not B1)
                       (not Q1)
                       (not B2)
                       (not K2))
                  (and (not W1)
                       (not H1)
                       (not D)
                       (not Z2)
                       (not B1)
                       (not Q1)
                       (not B2)
                       K2)
                  (and (not W1)
                       (not H1)
                       (not D)
                       (not Z2)
                       (not B1)
                       (not Q1)
                       B2
                       (not K2))
                  (and (not W1)
                       (not H1)
                       (not D)
                       (not Z2)
                       (not B1)
                       Q1
                       (not B2)
                       (not K2))
                  (and (not W1)
                       (not H1)
                       (not D)
                       (not Z2)
                       B1
                       (not Q1)
                       (not B2)
                       (not K2))
                  (and (not W1)
                       (not H1)
                       (not D)
                       Z2
                       (not B1)
                       (not Q1)
                       (not B2)
                       (not K2))
                  (and (not W1)
                       (not H1)
                       D
                       (not Z2)
                       (not B1)
                       (not Q1)
                       (not B2)
                       (not K2))
                  (and (not W1)
                       H1
                       (not D)
                       (not Z2)
                       (not B1)
                       (not Q1)
                       (not B2)
                       (not K2))
                  (and W1
                       (not H1)
                       (not D)
                       (not Z2)
                       (not B1)
                       (not Q1)
                       (not B2)
                       (not K2)))
              S2)))
  (and (= (and T W) O2)
       (= W a!1)
       (= T (or (not S) (<= P R)))
       (= Y S)
       (= L (and S2 (<= 0 J)))
       (= L Y)
       (= W2 V2)
       (= V2 P2)
       (= U2 0)
       (= U2 O)
       (= T2 0)
       (= T2 Q2)
       (= R2 0)
       (= R2 Q)
       (= K W2)
       (= K J)
       (= M J)
       (= M X)
       (= O N)
       (= Q P)
       (= X R)
       (= P2 U)
       (= Q2 V)
       (or K2 (= Z1 P1))
       (or (not K2) (= P1 L2))
       (or (not K2) (= V1 H))
       (or K2 (= V1 C))
       (or (not B2) (= J2 D2))
       (or B2 (= J2 Y2))
       (or (not B2) (= U1 F2))
       (or B2 (= H2 U1))
       (or Q1 (= U1 O1))
       (or Q1 (= P1 G1))
       (or (not Q1) (= G1 R1))
       (or Q1 (= S1 F1))
       (or (not Q1) (= O1 T1))
       (or (not Q1) (= F1 F))
       (or (not B1) (= Z C1))
       (or B1 (= A1 Z))
       (or (not B1) (= E1 D1))
       (or B1 (= F1 E1))
       (or (not G) (= H 1))
       (or (not E) (= F 0))
       (or (not Z2) (= B3 A3))
       (or (not Z2) (= Y2 X2))
       (or (not Z2) (= A C3))
       (or (not D) (= Z1 M2))
       (or D (= Z1 B3))
       (or (not D) (= H2 N2))
       (or D (= H2 A))
       (or (not D) (= C B))
       (or (not I) (= X2 0))
       (or H1 (= G1 A1))
       (or H1 (= O1 N1))
       (or (not H1) (= A1 I1))
       (or (not H1) (= K1 J1))
       (or H1 (= L1 K1))
       (or (not H1) (= N1 M1))
       (or W1 (= J2 S1))
       (or (not W1) (= S1 Y1))
       (or (not W1) (= L1 X1))
       (or W1 (= V1 L1))
       a!2))
      )
      (state M
       X
       L
       Y
       H1
       B1
       Q1
       W1
       B2
       K2
       D
       Z2
       S2
       K
       W2
       R2
       Q
       U2
       O
       T2
       Q2
       V2
       P2
       V
       U
       W
       T
       O2
       H2
       A
       N2
       Z1
       M2
       B3
       V1
       C
       H
       P1
       L2
       U1
       F2
       J2
       D2
       Y2
       S1
       Y1
       L1
       X1
       O1
       T1
       F1
       F
       G1
       R1
       N1
       M1
       K1
       J1
       A1
       I1
       E1
       D1
       Z
       C1
       S
       R
       P
       N
       J
       X2
       I
       G
       E
       B
       C3
       A3
       A2
       C2
       E2
       G2
       I2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Bool) (H Int) (I Bool) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Int) (W Bool) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Int) (I2 Bool) (J2 Int) (K2 Bool) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Int) (C3 Bool) (D3 Int) (E3 Bool) (F3 Int) (G3 Bool) (H3 Int) (I3 Bool) (J3 Int) (K3 Bool) (L3 Bool) (M3 Int) (N3 Int) (O3 Bool) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Bool) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Bool) (K4 Bool) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Bool) (S4 Bool) (T4 Int) (U4 Int) (V4 Bool) (W4 Int) (X4 Bool) (Y4 Int) (Z4 Bool) (A5 Int) (B5 Int) (C5 Bool) (D5 Int) (E5 Int) (F5 Int) (G5 Bool) (H5 Int) (I5 Int) (J5 Int) (K5 Bool) (L5 Int) (M5 Bool) (N5 Int) (O5 Int) (P5 Bool) (Q5 Bool) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Bool) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Bool) (D6 Int) (E6 Int) (F6 Int) ) 
    (=>
      (and
        (state M
       X
       L
       Y
       H1
       B1
       Q1
       W1
       B2
       K2
       D
       C6
       V5
       K
       Z5
       U5
       Q
       X5
       O
       W5
       Q2
       Y5
       P2
       V
       U
       W
       T
       O2
       H2
       A
       N2
       Z1
       M2
       E6
       V1
       C
       H
       P1
       L2
       U1
       F2
       J2
       D2
       B6
       S1
       Y1
       L1
       X1
       O1
       T1
       F1
       F
       G1
       R1
       N1
       M1
       K1
       J1
       A1
       I1
       E1
       D1
       Z
       C1
       S
       R
       P
       N
       J
       A6
       I
       G
       E
       B
       F6
       D6
       A2
       C2
       E2
       G2
       I2)
        (let ((a!1 (= (or (and (not P5)
                       (not M5)
                       (not K5)
                       (not G5)
                       (not C5)
                       (not Z4)
                       (not Z2)
                       (not S2))
                  (and (not P5)
                       (not M5)
                       (not K5)
                       (not G5)
                       (not C5)
                       (not Z4)
                       (not Z2)
                       S2)
                  (and (not P5)
                       (not M5)
                       (not K5)
                       (not G5)
                       (not C5)
                       (not Z4)
                       Z2
                       (not S2))
                  (and (not P5)
                       (not M5)
                       (not K5)
                       (not G5)
                       (not C5)
                       Z4
                       (not Z2)
                       (not S2))
                  (and (not P5)
                       (not M5)
                       (not K5)
                       (not G5)
                       C5
                       (not Z4)
                       (not Z2)
                       (not S2))
                  (and (not P5)
                       (not M5)
                       (not K5)
                       G5
                       (not C5)
                       (not Z4)
                       (not Z2)
                       (not S2))
                  (and (not P5)
                       (not M5)
                       K5
                       (not G5)
                       (not C5)
                       (not Z4)
                       (not Z2)
                       (not S2))
                  (and (not P5)
                       M5
                       (not K5)
                       (not G5)
                       (not C5)
                       (not Z4)
                       (not Z2)
                       (not S2))
                  (and P5
                       (not M5)
                       (not K5)
                       (not G5)
                       (not C5)
                       (not Z4)
                       (not Z2)
                       (not S2)))
              J4))
      (a!2 (= (or (and (not D)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not W1)
                       (not B2)
                       (not K2)
                       (not C6))
                  (and (not D)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not W1)
                       (not B2)
                       (not K2)
                       C6)
                  (and (not D)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not W1)
                       (not B2)
                       K2
                       (not C6))
                  (and (not D)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not W1)
                       B2
                       (not K2)
                       (not C6))
                  (and (not D)
                       (not B1)
                       (not H1)
                       (not Q1)
                       W1
                       (not B2)
                       (not K2)
                       (not C6))
                  (and (not D)
                       (not B1)
                       (not H1)
                       Q1
                       (not W1)
                       (not B2)
                       (not K2)
                       (not C6))
                  (and (not D)
                       (not B1)
                       H1
                       (not Q1)
                       (not W1)
                       (not B2)
                       (not K2)
                       (not C6))
                  (and (not D)
                       B1
                       (not H1)
                       (not Q1)
                       (not W1)
                       (not B2)
                       (not K2)
                       (not C6))
                  (and D
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not W1)
                       (not B2)
                       (not K2)
                       (not C6)))
              V5))
      (a!3 (and (<= 1 P2) (= O 0) (= Q 0) (= Q2 0)))
      (a!4 (= (and (<= 1 P2) (<= 1 (+ Q O))) G3))
      (a!5 (= L3 (and (<= 1 P2) (<= 1 (+ Q O)))))
      (a!6 (or (not R4) (<= (+ U4 T4 (* (- 1) Q4) O4 M4) 0)))
      (a!7 (or (not S) (<= (+ V U (* (- 1) R) P N) 0)))
      (a!8 (or (not C3) (= (+ P2 (* (- 1) B3)) 1)))
      (a!9 (or (not C3) (= (+ O (* (- 1) Q3)) (- 1))))
      (a!10 (or (not E3) (= (+ Q2 (* (- 1) M3)) 1)))
      (a!11 (or (not E3) (= (+ P2 (* (- 1) D3)) 1)))
      (a!12 (or (not E3) (= (+ Q (* (- 1) W3)) (- 2))))
      (a!13 (or (not G3) (= (+ Q O (* (- 1) V3)) (- 1))))
      (a!14 (or (not G3) (= (+ P2 (* (- 1) F3)) 1)))
      (a!15 (or (not I3) (= (+ P2 (* (- 1) H3)) 1)))
      (a!16 (or (not K3) (= (+ Q2 (* (- 1) A3)) 1)))
      (a!17 (or (not K3) (= (+ P2 (* (- 1) J3)) 1)))
      (a!18 (or (not K3) (= (+ Q (* (- 1) Y3)) (- 2))))
      (a!19 (or (not L3) (= (+ Q O (* (- 1) W2)) (- 1))))
      (a!20 (or (not L3) (= (+ P2 (* (- 1) T2)) 1)))
      (a!21 (or (not O3) (= (+ Q2 (* (- 1) N3)) (- 1))))
      (a!22 (or (not O3) (= (+ O (* (- 1) S3)) 1)))
      (a!23 (or (not U3) (= (+ O (* (- 1) T3)) (- 1)))))
  (and a!1
       a!2
       (= a!3 C3)
       a!4
       (= (and (<= 1 P2) (<= 1 Q2)) E3)
       (= (and (<= 1 P2) (<= 1 Q2)) K3)
       (= (and V4 S4) Q5)
       (= (and T W) O2)
       (= I3 a!3)
       a!5
       (= U3 (= Q 1))
       (= K4 (and Y J4 (<= 0 I4)))
       (= S4 (or (not R4) (<= O4 Q4)))
       (= V4 a!6)
       (= X4 K4)
       (= X4 R4)
       (= Y S)
       (= W a!7)
       (= T (or (not S) (<= P R)))
       (= L Y)
       (= Z5 Z3)
       (= Y5 P2)
       (= X5 O)
       (= W5 Q2)
       (= U5 Q)
       (= B4 A4)
       (= D4 C4)
       (= F4 E4)
       (= H4 G4)
       (= N4 F4)
       (= N4 M4)
       (= P4 H4)
       (= P4 O4)
       (= W4 L4)
       (= W4 Q4)
       (= R5 B4)
       (= R5 T4)
       (= S5 D4)
       (= S5 U4)
       (= T5 Z3)
       (= Q2 V)
       (= P2 U)
       (= X L4)
       (= X R)
       (= Q P)
       (= O N)
       (= M X)
       (= K Z5)
       (or (not S2) (= R2 T2))
       (or (not S2) (= V2 U2))
       (or (not S2) (= X2 W2))
       (or S2 (= P2 R2))
       (or S2 (= Q X2))
       (or S2 (= O V2))
       (or Z2 (= X2 N5))
       (or (not Z2) (= Y2 A3))
       (or (not Z2) (= J3 O5))
       (or (not Z2) (= N5 Y3))
       (or Z2 (= O5 R2))
       (or Z2 (= Q2 Y2))
       a!8
       a!9
       (or C3 (= P2 B3))
       (or C3 (= O Q3))
       a!10
       a!11
       a!12
       (or E3 (= Q2 M3))
       (or E3 (= P2 D3))
       (or E3 (= Q W3))
       a!13
       a!14
       (or (not G3) (= R3 0))
       (or G3 (= P2 F3))
       (or G3 (= Q V3))
       (or G3 (= O R3))
       a!15
       (or (not I3) (= P3 1))
       (or I3 (= Q2 P3))
       (or I3 (= P2 H3))
       a!16
       a!17
       a!18
       (or K3 (= Q2 A3))
       (or K3 (= P2 J3))
       (or K3 (= Q Y3))
       a!19
       a!20
       (or (not L3) (= U2 0))
       (or L3 (= P2 T2))
       (or L3 (= Q W2))
       (or L3 (= O U2))
       a!21
       a!22
       (or O3 (= Q2 N3))
       (or O3 (= O S3))
       a!23
       (or (not U3) (= X3 0))
       (or U3 (= Q X3))
       (or U3 (= O T3))
       (or (not Z4) (= B3 A4))
       (or (not Z4) (= E4 Q3))
       (or Z4 (= Y4 A4))
       (or Z4 (= A5 E4))
       (or (not C5) (= D3 Y4))
       (or (not C5) (= C4 M3))
       (or (not C5) (= G4 W3))
       (or C5 (= B5 Y4))
       (or C5 (= D5 C4))
       (or C5 (= E5 G4))
       (or (not G5) (= F3 B5))
       (or (not G5) (= A5 R3))
       (or (not G5) (= E5 V3))
       (or G5 (= F5 B5))
       (or G5 (= H5 A5))
       (or G5 (= I5 E5))
       (or (not K5) (= N3 D5))
       (or (not K5) (= H5 S3))
       (or K5 (= J5 D5))
       (or K5 (= L5 H5))
       (or (not M5) (= T3 L5))
       (or (not M5) (= I5 X3))
       (or M5 (= L5 V2))
       (or M5 (= N5 I5))
       (or P5 (= Y2 J5))
       (or (not P5) (= H3 F5))
       (or (not P5) (= J5 P3))
       (or P5 (= O5 F5))
       (or K2 (= Z1 P1))
       (or (not K2) (= V1 H))
       (or K2 (= V1 C))
       (or (not K2) (= P1 L2))
       (or B2 (= J2 B6))
       (or (not B2) (= J2 D2))
       (or B2 (= H2 U1))
       (or (not B2) (= U1 F2))
       (or W1 (= J2 S1))
       (or W1 (= V1 L1))
       (or (not W1) (= S1 Y1))
       (or (not W1) (= L1 X1))
       (or Q1 (= U1 O1))
       (or Q1 (= S1 F1))
       (or Q1 (= P1 G1))
       (or (not Q1) (= O1 T1))
       (or (not Q1) (= G1 R1))
       (or (not Q1) (= F1 F))
       (or H1 (= O1 N1))
       (or (not H1) (= N1 M1))
       (or H1 (= L1 K1))
       (or (not H1) (= K1 J1))
       (or H1 (= G1 A1))
       (or (not H1) (= A1 I1))
       (or B1 (= F1 E1))
       (or (not B1) (= E1 D1))
       (or B1 (= A1 Z))
       (or (not B1) (= Z C1))
       (or (not D) (= H2 N2))
       (or D (= H2 A))
       (or D (= Z1 E6))
       (or (not D) (= Z1 M2))
       (= (<= 1 O) O3)))
      )
      (state L4
       W4
       K4
       X4
       C5
       Z4
       G5
       K5
       M5
       P5
       Z2
       S2
       J4
       Z3
       T5
       H4
       P4
       F4
       N4
       D4
       S5
       B4
       R5
       U4
       T4
       V4
       S4
       Q5
       N5
       X2
       Y3
       O5
       J3
       R2
       J5
       Y2
       P3
       F5
       H3
       I5
       X3
       L5
       T3
       V2
       H5
       S3
       D5
       N3
       E5
       V3
       A5
       R3
       B5
       F3
       G4
       W3
       C4
       M3
       Y4
       D3
       E4
       Q3
       A4
       B3
       R4
       Q4
       O4
       M4
       I4
       U2
       L3
       I3
       G3
       A3
       W2
       T2
       C3
       E3
       O3
       U3
       K3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Bool) (H Int) (I Bool) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Int) (W Bool) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Int) (I2 Bool) (J2 Int) (K2 Bool) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Int) (C3 Int) ) 
    (=>
      (and
        (state M
       X
       L
       Y
       H1
       B1
       Q1
       W1
       B2
       K2
       D
       Z2
       S2
       K
       W2
       R2
       Q
       U2
       O
       T2
       Q2
       V2
       P2
       V
       U
       W
       T
       O2
       H2
       A
       N2
       Z1
       M2
       B3
       V1
       C
       H
       P1
       L2
       U1
       F2
       J2
       D2
       Y2
       S1
       Y1
       L1
       X1
       O1
       T1
       F1
       F
       G1
       R1
       N1
       M1
       K1
       J1
       A1
       I1
       E1
       D1
       Z
       C1
       S
       R
       P
       N
       J
       X2
       I
       G
       E
       B
       C3
       A3
       A2
       C2
       E2
       G2
       I2)
        (not O2)
      )
      false
    )
  )
)

(check-sat)
(exit)
