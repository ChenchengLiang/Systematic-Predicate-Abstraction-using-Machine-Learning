(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Bool Bool Bool Int Int Int Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Int) (W Bool) (X Bool) (Y Bool) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Bool) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Bool) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Bool) (Z2 Int) (A3 Int) (B3 Bool) (C3 Int) (D3 Int) (E3 Int) ) 
    (=>
      (and
        (let ((a!1 (or (not S) (<= (+ V U (* (- 1) R) N P) 0)))
      (a!2 (= (or (and (not S1)
                       (not D)
                       (not B3)
                       (not J1)
                       (not X1)
                       (not D1)
                       (not H2)
                       (not M2))
                  (and (not S1)
                       (not D)
                       (not B3)
                       (not J1)
                       (not X1)
                       (not D1)
                       (not H2)
                       M2)
                  (and (not S1)
                       (not D)
                       (not B3)
                       (not J1)
                       (not X1)
                       (not D1)
                       H2
                       (not M2))
                  (and (not S1)
                       (not D)
                       (not B3)
                       (not J1)
                       (not X1)
                       D1
                       (not H2)
                       (not M2))
                  (and (not S1)
                       (not D)
                       (not B3)
                       (not J1)
                       X1
                       (not D1)
                       (not H2)
                       (not M2))
                  (and (not S1)
                       (not D)
                       (not B3)
                       J1
                       (not X1)
                       (not D1)
                       (not H2)
                       (not M2))
                  (and (not S1)
                       (not D)
                       B3
                       (not J1)
                       (not X1)
                       (not D1)
                       (not H2)
                       (not M2))
                  (and (not S1)
                       D
                       (not B3)
                       (not J1)
                       (not X1)
                       (not D1)
                       (not H2)
                       (not M2))
                  (and S1
                       (not D)
                       (not B3)
                       (not J1)
                       (not X1)
                       (not D1)
                       (not H2)
                       (not M2)))
              K)))
  (and (= (and Y T W X) Q2)
       (= A1 S)
       (= X (or (not S) (<= 0 V)))
       (= W a!1)
       (= T (or (not S) (<= P R)))
       (= Y (or (not S) (<= 0 N)))
       (= L (and K (<= 0 V2)))
       (= L A1)
       (= I 0)
       (= I O)
       (= H 0)
       (= H S2)
       (= W2 V2)
       (= W2 U2)
       (= U2 T2)
       (= T2 R2)
       (= J 0)
       (= J Q)
       (= M V2)
       (= M Z)
       (= O N)
       (= Q P)
       (= Z R)
       (= R2 U)
       (= S2 V)
       (or M2 (= L2 R1))
       (or (not M2) (= J2 X2))
       (or M2 (= J2 C))
       (or (not M2) (= R1 N2))
       (or (not H2) (= W1 Z1))
       (or (not H2) (= F2 Y1))
       (or H2 (= F2 A3))
       (or H2 (= K2 W1))
       (or D1 (= H1 G1))
       (or (not D1) (= G1 F1))
       (or (not D1) (= B1 E1))
       (or D1 (= C1 B1))
       (or (not G) (= X2 1))
       (or X1 (= J2 N1))
       (or (not X1) (= U1 D2))
       (or X1 (= F2 U1))
       (or (not X1) (= N1 B2))
       (or (not E) (= F 0))
       (or (not J1) (= P1 O1))
       (or (not J1) (= C1 K1))
       (or J1 (= I1 C1))
       (or (not J1) (= M1 L1))
       (or J1 (= N1 M1))
       (or J1 (= Q1 P1))
       (or (not B3) (= D3 C3))
       (or (not B3) (= A3 Z2))
       (or (not B3) (= A E3))
       (or (not Y2) (= Z2 0))
       (or (not D) (= L2 O2))
       (or D (= L2 D3))
       (or (not D) (= C B))
       (or (not D) (= K2 P2))
       (or D (= K2 A))
       (or S1 (= W1 Q1))
       (or S1 (= U1 H1))
       (or (not S1) (= H1 F))
       (or (not S1) (= I1 T1))
       (or (not S1) (= Q1 V1))
       (or S1 (= R1 I1))
       a!2))
      )
      (state M
       Z
       L
       A1
       J1
       D1
       S1
       X1
       H2
       M2
       D
       B3
       K
       W2
       U2
       J
       Q
       I
       O
       H
       S2
       T2
       R2
       V
       U
       X
       W
       Y
       T
       Q2
       K2
       A
       P2
       L2
       O2
       D3
       J2
       C
       X2
       R1
       N2
       W1
       Z1
       F2
       Y1
       A3
       U1
       D2
       N1
       B2
       Q1
       V1
       H1
       F
       I1
       T1
       P1
       O1
       M1
       L1
       C1
       K1
       G1
       F1
       B1
       E1
       S
       R
       N
       P
       V2
       Z2
       Y2
       G
       E
       B
       E3
       C3
       A2
       C2
       E2
       G2
       I2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Int) (W Bool) (X Bool) (Y Bool) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Bool) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Bool) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Int) (S2 Int) (T2 Int) (U2 Bool) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Bool) (C3 Int) (D3 Int) (E3 Bool) (F3 Int) (G3 Bool) (H3 Int) (I3 Bool) (J3 Int) (K3 Bool) (L3 Int) (M3 Bool) (N3 Bool) (O3 Int) (P3 Int) (Q3 Bool) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Bool) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Bool) (M4 Bool) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Bool) (U4 Bool) (V4 Int) (W4 Int) (X4 Bool) (Y4 Bool) (Z4 Bool) (A5 Int) (B5 Bool) (C5 Int) (D5 Bool) (E5 Int) (F5 Int) (G5 Bool) (H5 Int) (I5 Int) (J5 Int) (K5 Bool) (L5 Int) (M5 Int) (N5 Int) (O5 Bool) (P5 Int) (Q5 Bool) (R5 Int) (S5 Int) (T5 Bool) (U5 Bool) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Bool) (E6 Int) (F6 Int) (G6 Bool) (H6 Int) (I6 Int) (J6 Int) ) 
    (=>
      (and
        (state M
       Z
       L
       A1
       J1
       D1
       S1
       X1
       H2
       M2
       D
       G6
       K
       B6
       Z5
       J
       Q
       I
       O
       H
       S2
       Y5
       R2
       V
       U
       X
       W
       Y
       T
       Q2
       K2
       A
       P2
       L2
       O2
       I6
       J2
       C
       C6
       R1
       N2
       W1
       Z1
       F2
       Y1
       F6
       U1
       D2
       N1
       B2
       Q1
       V1
       H1
       F
       I1
       T1
       P1
       O1
       M1
       L1
       C1
       K1
       G1
       F1
       B1
       E1
       S
       R
       N
       P
       A6
       E6
       D6
       G
       E
       B
       J6
       H6
       A2
       C2
       E2
       G2
       I2)
        (let ((a!1 (= (or (and (not T5)
                       (not Q5)
                       (not O5)
                       (not K5)
                       (not G5)
                       (not D5)
                       (not B3)
                       (not U2))
                  (and (not T5)
                       (not Q5)
                       (not O5)
                       (not K5)
                       (not G5)
                       (not D5)
                       (not B3)
                       U2)
                  (and (not T5)
                       (not Q5)
                       (not O5)
                       (not K5)
                       (not G5)
                       (not D5)
                       B3
                       (not U2))
                  (and (not T5)
                       (not Q5)
                       (not O5)
                       (not K5)
                       (not G5)
                       D5
                       (not B3)
                       (not U2))
                  (and (not T5)
                       (not Q5)
                       (not O5)
                       (not K5)
                       G5
                       (not D5)
                       (not B3)
                       (not U2))
                  (and (not T5)
                       (not Q5)
                       (not O5)
                       K5
                       (not G5)
                       (not D5)
                       (not B3)
                       (not U2))
                  (and (not T5)
                       (not Q5)
                       O5
                       (not K5)
                       (not G5)
                       (not D5)
                       (not B3)
                       (not U2))
                  (and (not T5)
                       Q5
                       (not O5)
                       (not K5)
                       (not G5)
                       (not D5)
                       (not B3)
                       (not U2))
                  (and T5
                       (not Q5)
                       (not O5)
                       (not K5)
                       (not G5)
                       (not D5)
                       (not B3)
                       (not U2)))
              L4))
      (a!2 (= (or (and (not D)
                       (not D1)
                       (not J1)
                       (not S1)
                       (not X1)
                       (not H2)
                       (not M2)
                       (not G6))
                  (and (not D)
                       (not D1)
                       (not J1)
                       (not S1)
                       (not X1)
                       (not H2)
                       (not M2)
                       G6)
                  (and (not D)
                       (not D1)
                       (not J1)
                       (not S1)
                       (not X1)
                       (not H2)
                       M2
                       (not G6))
                  (and (not D)
                       (not D1)
                       (not J1)
                       (not S1)
                       (not X1)
                       H2
                       (not M2)
                       (not G6))
                  (and (not D)
                       (not D1)
                       (not J1)
                       (not S1)
                       X1
                       (not H2)
                       (not M2)
                       (not G6))
                  (and (not D)
                       (not D1)
                       (not J1)
                       S1
                       (not X1)
                       (not H2)
                       (not M2)
                       (not G6))
                  (and (not D)
                       (not D1)
                       J1
                       (not S1)
                       (not X1)
                       (not H2)
                       (not M2)
                       (not G6))
                  (and (not D)
                       D1
                       (not J1)
                       (not S1)
                       (not X1)
                       (not H2)
                       (not M2)
                       (not G6))
                  (and D
                       (not D1)
                       (not J1)
                       (not S1)
                       (not X1)
                       (not H2)
                       (not M2)
                       (not G6)))
              K))
      (a!3 (and (<= 1 R2) (= O 0) (= Q 0) (= S2 0)))
      (a!4 (= (and (<= 1 R2) (<= 1 (+ Q O))) I3))
      (a!5 (= N3 (and (<= 1 R2) (<= 1 (+ Q O)))))
      (a!6 (or (not T4) (<= (+ W4 V4 (* (- 1) S4) O4 Q4) 0)))
      (a!7 (or (not S) (<= (+ V U (* (- 1) R) N P) 0)))
      (a!8 (or (not E3) (= (+ R2 (* (- 1) D3)) 1)))
      (a!9 (or (not E3) (= (+ O (* (- 1) S3)) (- 1))))
      (a!10 (or (not G3) (= (+ S2 (* (- 1) O3)) 1)))
      (a!11 (or (not G3) (= (+ R2 (* (- 1) F3)) 1)))
      (a!12 (or (not G3) (= (+ Q (* (- 1) Y3)) (- 2))))
      (a!13 (or (not I3) (= (+ Q O (* (- 1) X3)) 1)))
      (a!14 (or (not I3) (= (+ R2 (* (- 1) H3)) 1)))
      (a!15 (or (not K3) (= (+ R2 (* (- 1) J3)) 1)))
      (a!16 (or (not M3) (= (+ S2 (* (- 1) C3)) 1)))
      (a!17 (or (not M3) (= (+ R2 (* (- 1) L3)) 1)))
      (a!18 (or (not M3) (= (+ Q (* (- 1) A4)) (- 2))))
      (a!19 (or (not N3) (= (+ Q O (* (- 1) Y2)) (- 1))))
      (a!20 (or (not N3) (= (+ R2 (* (- 1) V2)) 1)))
      (a!21 (or (not Q3) (= (+ S2 (* (- 1) P3)) (- 1))))
      (a!22 (or (not Q3) (= (+ O (* (- 1) U3)) 1)))
      (a!23 (or (not W3) (= (+ O (* (- 1) V3)) (- 1)))))
  (and a!1
       a!2
       (= a!3 E3)
       (= (and Z4 Y4 X4 U4) U5)
       (= (and T W X Y) Q2)
       a!4
       (= (and (<= 1 R2) (<= 1 S2)) G3)
       (= (and (<= 1 R2) (<= 1 S2)) M3)
       (= K3 a!3)
       a!5
       (= W3 (= Q 1))
       (= M4 (and A1 L4 (<= 0 K4)))
       (= U4 (or (not T4) (<= Q4 S4)))
       (= X4 a!6)
       (= Y4 (or (not T4) (<= 0 W4)))
       (= Z4 (or (not T4) (<= 0 O4)))
       (= B5 M4)
       (= B5 T4)
       (= A1 S)
       (= Y (or (not S) (<= 0 N)))
       (= X (or (not S) (<= 0 V)))
       (= W a!7)
       (= T (or (not S) (<= P R)))
       (= L A1)
       (= B6 Z5)
       (= Z5 B4)
       (= Y5 R2)
       (= D4 C4)
       (= F4 E4)
       (= H4 G4)
       (= J4 I4)
       (= P4 H4)
       (= P4 O4)
       (= R4 J4)
       (= R4 Q4)
       (= A5 N4)
       (= A5 S4)
       (= V5 D4)
       (= V5 V4)
       (= W5 F4)
       (= W5 W4)
       (= X5 B4)
       (= S2 V)
       (= R2 U)
       (= Z N4)
       (= Z R)
       (= Q P)
       (= O N)
       (= M Z)
       (= J Q)
       (= I O)
       (= H S2)
       (or (not U2) (= T2 V2))
       (or (not U2) (= X2 W2))
       (or (not U2) (= Z2 Y2))
       (or U2 (= R2 T2))
       (or U2 (= Q Z2))
       (or U2 (= O X2))
       (or B3 (= Z2 R5))
       (or (not B3) (= A3 C3))
       (or (not B3) (= L3 S5))
       (or (not B3) (= R5 A4))
       (or B3 (= S5 T2))
       (or B3 (= S2 A3))
       a!8
       a!9
       (or E3 (= R2 D3))
       (or E3 (= O S3))
       a!10
       a!11
       a!12
       (or G3 (= S2 O3))
       (or G3 (= R2 F3))
       (or G3 (= Q Y3))
       a!13
       a!14
       (or (not I3) (= T3 0))
       (or I3 (= R2 H3))
       (or I3 (= Q X3))
       (or I3 (= O T3))
       a!15
       (or (not K3) (= R3 1))
       (or K3 (= S2 R3))
       (or K3 (= R2 J3))
       a!16
       a!17
       a!18
       (or M3 (= S2 C3))
       (or M3 (= R2 L3))
       (or M3 (= Q A4))
       a!19
       a!20
       (or (not N3) (= W2 0))
       (or N3 (= R2 V2))
       (or N3 (= Q Y2))
       (or N3 (= O W2))
       a!21
       a!22
       (or Q3 (= S2 P3))
       (or Q3 (= O U3))
       a!23
       (or (not W3) (= Z3 0))
       (or W3 (= Q Z3))
       (or W3 (= O V3))
       (or (not D5) (= D3 C4))
       (or (not D5) (= G4 S3))
       (or D5 (= C5 C4))
       (or D5 (= E5 G4))
       (or (not G5) (= F3 C5))
       (or (not G5) (= E4 O3))
       (or (not G5) (= I4 Y3))
       (or G5 (= F5 C5))
       (or G5 (= H5 E4))
       (or G5 (= I5 I4))
       (or (not K5) (= H3 F5))
       (or (not K5) (= E5 T3))
       (or (not K5) (= I5 X3))
       (or K5 (= J5 F5))
       (or K5 (= L5 E5))
       (or K5 (= M5 I5))
       (or (not O5) (= P3 H5))
       (or (not O5) (= L5 U3))
       (or O5 (= N5 H5))
       (or O5 (= P5 L5))
       (or (not Q5) (= V3 P5))
       (or (not Q5) (= M5 Z3))
       (or Q5 (= P5 X2))
       (or Q5 (= R5 M5))
       (or T5 (= A3 N5))
       (or (not T5) (= J3 J5))
       (or (not T5) (= N5 R3))
       (or T5 (= S5 J5))
       (or M2 (= L2 R1))
       (or (not M2) (= J2 C6))
       (or M2 (= J2 C))
       (or (not M2) (= R1 N2))
       (or H2 (= K2 W1))
       (or H2 (= F2 F6))
       (or (not H2) (= F2 Y1))
       (or (not H2) (= W1 Z1))
       (or X1 (= J2 N1))
       (or X1 (= F2 U1))
       (or (not X1) (= U1 D2))
       (or (not X1) (= N1 B2))
       (or S1 (= W1 Q1))
       (or S1 (= U1 H1))
       (or S1 (= R1 I1))
       (or (not S1) (= Q1 V1))
       (or (not S1) (= I1 T1))
       (or (not S1) (= H1 F))
       (or J1 (= Q1 P1))
       (or (not J1) (= P1 O1))
       (or J1 (= N1 M1))
       (or (not J1) (= M1 L1))
       (or J1 (= I1 C1))
       (or (not J1) (= C1 K1))
       (or D1 (= H1 G1))
       (or (not D1) (= G1 F1))
       (or D1 (= C1 B1))
       (or (not D1) (= B1 E1))
       (or D (= L2 I6))
       (or (not D) (= L2 O2))
       (or (not D) (= K2 P2))
       (or D (= K2 A))
       (= (<= 1 O) Q3)))
      )
      (state N4
       A5
       M4
       B5
       G5
       D5
       K5
       O5
       Q5
       T5
       B3
       U2
       L4
       B4
       X5
       J4
       R4
       H4
       P4
       F4
       W5
       D4
       V5
       W4
       V4
       Y4
       X4
       Z4
       U4
       U5
       R5
       Z2
       A4
       S5
       L3
       T2
       N5
       A3
       R3
       J5
       J3
       M5
       Z3
       P5
       V3
       X2
       L5
       U3
       H5
       P3
       I5
       X3
       E5
       T3
       F5
       H3
       I4
       Y3
       E4
       O3
       C5
       F3
       G4
       S3
       C4
       D3
       T4
       S4
       O4
       Q4
       K4
       W2
       N3
       K3
       I3
       C3
       Y2
       V2
       E3
       G3
       Q3
       W3
       M3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Int) (W Bool) (X Bool) (Y Bool) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Bool) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Bool) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Bool) (Z2 Int) (A3 Int) (B3 Bool) (C3 Int) (D3 Int) (E3 Int) ) 
    (=>
      (and
        (state M
       Z
       L
       A1
       J1
       D1
       S1
       X1
       H2
       M2
       D
       B3
       K
       W2
       U2
       J
       Q
       I
       O
       H
       S2
       T2
       R2
       V
       U
       X
       W
       Y
       T
       Q2
       K2
       A
       P2
       L2
       O2
       D3
       J2
       C
       X2
       R1
       N2
       W1
       Z1
       F2
       Y1
       A3
       U1
       D2
       N1
       B2
       Q1
       V1
       H1
       F
       I1
       T1
       P1
       O1
       M1
       L1
       C1
       K1
       G1
       F1
       B1
       E1
       S
       R
       N
       P
       V2
       Z2
       Y2
       G
       E
       B
       E3
       C3
       A2
       C2
       E2
       G2
       I2)
        (not Q2)
      )
      false
    )
  )
)

(check-sat)
(exit)
