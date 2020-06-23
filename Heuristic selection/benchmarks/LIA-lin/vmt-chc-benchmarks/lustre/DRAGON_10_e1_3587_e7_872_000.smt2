(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Bool Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Bool) (Q Int) (R Bool) (S Int) (T Bool) (U Int) (V Int) (W Bool) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Bool) (G1 Int) (H1 Int) (I1 Bool) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Bool) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Bool) (Q2 Int) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Int) (F3 Bool) (G3 Int) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Bool) (M3 Bool) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Bool) (V3 Int) (W3 Int) (X3 Int) (Y3 Bool) (Z3 Int) (A4 Bool) (B4 Int) (C4 Int) (D4 Bool) (E4 Int) (F4 Int) ) 
    (=>
      (and
        (let ((a!1 (= F1 (and E1 (not (<= Z 0)))))
      (a!2 (= (or (and (not Y3)
                       (not D4)
                       (not A)
                       (not D)
                       (not I1)
                       (not T1)
                       (not G)
                       (not N1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3))
                  (and (not Y3)
                       (not D4)
                       (not A)
                       (not D)
                       (not I1)
                       (not T1)
                       (not G)
                       (not N1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       U3)
                  (and (not Y3)
                       (not D4)
                       (not A)
                       (not D)
                       (not I1)
                       (not T1)
                       (not G)
                       (not N1)
                       (not Y1)
                       (not C3)
                       M3
                       (not U3))
                  (and (not Y3)
                       (not D4)
                       (not A)
                       (not D)
                       (not I1)
                       (not T1)
                       (not G)
                       (not N1)
                       (not Y1)
                       C3
                       (not M3)
                       (not U3))
                  (and (not Y3)
                       (not D4)
                       (not A)
                       (not D)
                       (not I1)
                       (not T1)
                       (not G)
                       (not N1)
                       Y1
                       (not C3)
                       (not M3)
                       (not U3))
                  (and (not Y3)
                       (not D4)
                       (not A)
                       (not D)
                       (not I1)
                       (not T1)
                       (not G)
                       N1
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3))
                  (and (not Y3)
                       (not D4)
                       (not A)
                       (not D)
                       (not I1)
                       (not T1)
                       G
                       (not N1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3))
                  (and (not Y3)
                       (not D4)
                       (not A)
                       (not D)
                       (not I1)
                       T1
                       (not G)
                       (not N1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3))
                  (and (not Y3)
                       (not D4)
                       (not A)
                       (not D)
                       I1
                       (not T1)
                       (not G)
                       (not N1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3))
                  (and (not Y3)
                       (not D4)
                       (not A)
                       D
                       (not I1)
                       (not T1)
                       (not G)
                       (not N1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3))
                  (and (not Y3)
                       (not D4)
                       A
                       (not D)
                       (not I1)
                       (not T1)
                       (not G)
                       (not N1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3))
                  (and (not Y3)
                       D4
                       (not A)
                       (not D)
                       (not I1)
                       (not T1)
                       (not G)
                       (not N1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3))
                  (and Y3
                       (not D4)
                       (not A)
                       (not D)
                       (not I1)
                       (not T1)
                       (not G)
                       (not N1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3)))
              E1)))
  (and (= (or (not D2) (<= 0 E2)) C2)
       (= A4 P2)
       (= S2 D2)
       (= P2 O2)
       a!1
       (= F1 S2)
       (= K2 J2)
       (= G2 F2)
       (= J 0)
       (= L K)
       (= A1 Z)
       (= A1 L)
       (= B1 0)
       (= B1 G2)
       (= C1 0)
       (= C1 I2)
       (= D1 0)
       (= D1 K2)
       (= I2 H2)
       (= M2 J)
       (= M2 L2)
       (= N2 K)
       (= N2 E2)
       (= A4 (<= 2 G2))
       (or (not U3) (= Y2 W3))
       (or U3 (= O3 A2))
       (or (not U3) (= O3 V3))
       (or U3 (= X3 Y2))
       (or M3 (= T3 S3))
       (or M3 (= Q3 M1))
       (or (not M3) (= Q3 P3))
       (or M3 (= Y2 X2))
       (or (not M3) (= M X2))
       (or (not M3) (= K3 O))
       (or (not M3) (= A3 N3))
       (or M3 (= A3 S1))
       (or M3 (= O3 K3))
       (or (not M3) (= S3 R3))
       (or (not C3) (= W2 E3))
       (or C3 (= K3 I3))
       (or C3 (= A3 W2))
       (or (not C3) (= I3 G3))
       (or Y1 (= H1 F4))
       (or (not Y1) (= H1 B2))
       (or Y1 (= L1 C))
       (or (not Y1) (= L1 V))
       (or (not Y1) (= R1 Z1))
       (or (not Y1) (= W1 Y))
       (or Y1 (= W1 C4))
       (or Y1 (= X1 R1))
       (or Y1 (= A2 F))
       (or (not Y1) (= A2 X))
       (or (not N1) (= P1 O1))
       (or N1 (= P1 Q1))
       (or (not N1) (= M1 S))
       (or N1 (= M1 G1))
       (or (not T) (= U 1))
       (or (not R) (= S 0))
       (or (not P) (= Q 0))
       (or (not N) (= O 0))
       (or (not N) (= M 0))
       (or (not G) (= F E))
       (or (not G) (= I H))
       (or (not T1) (= Q1 V1))
       (or T1 (= S1 R1))
       (or (not T1) (= S1 U1))
       (or T1 (= W1 Q1))
       (or (not I1) (= K1 U))
       (or I1 (= K1 L1))
       (or (not I1) (= G1 J1))
       (or I1 (= H1 G1))
       (or D (= T2 I))
       (or (not D) (= T2 V2))
       (or (not D) (= C B))
       (or A (= T2 Q2))
       (or (not A) (= F4 E4))
       (or (not A) (= Q2 U2))
       (or (not D4) (= C4 B4))
       (or (not D4) (= X1 R2))
       (or D4 (= Q2 X1))
       (or (not W) (= Y 0))
       (or (not W) (= V 1))
       (or (not W) (= X 0))
       (or Y3 (= T3 K1))
       (or (not Y3) (= T3 Q))
       (or (not Y3) (= X3 Z3))
       (or Y3 (= X3 P1))
       a!2))
      )
      (state F1
       S2
       M3
       C3
       U3
       Y3
       N1
       I1
       T1
       Y1
       D4
       A
       D
       G
       E1
       A1
       L
       A4
       P2
       N2
       K
       M2
       J
       D1
       K2
       C1
       I2
       B1
       G2
       X3
       P1
       Z3
       T3
       Q
       K1
       Y2
       W3
       O3
       V3
       A2
       S3
       R3
       Q3
       M1
       P3
       K3
       O
       A3
       S1
       N3
       M
       X2
       I3
       G3
       W2
       E3
       T2
       V2
       I
       Q2
       U2
       D2
       X1
       R2
       O2
       E2
       L2
       J2
       H2
       F2
       C2
       W1
       C4
       Y
       L1
       C
       V
       H1
       F4
       B2
       F
       X
       R1
       Z1
       Q1
       V1
       U1
       O1
       S
       G1
       U
       J1
       Z
       W
       T
       R
       P
       N
       H
       E
       B
       E4
       B4
       Z2
       B3
       D3
       F3
       H3
       J3
       L3)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Bool) (Q Int) (R Bool) (S Int) (T Bool) (U Int) (V Int) (W Bool) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Bool) (G1 Int) (H1 Int) (I1 Bool) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Bool) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Bool) (Q2 Int) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Int) (F3 Bool) (G3 Int) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Bool) (M3 Bool) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Bool) (V3 Int) (W3 Int) (X3 Int) (Y3 Bool) (Z3 Int) (A4 Bool) (B4 Int) (C4 Bool) (D4 Int) (E4 Int) (F4 Bool) (G4 Int) (H4 Int) (I4 Bool) (J4 Int) (K4 Int) (L4 Bool) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Bool) (T4 Int) (U4 Bool) (V4 Int) (W4 Bool) (X4 Int) (Y4 Bool) (Z4 Int) (A5 Bool) (B5 Int) (C5 Bool) (D5 Int) (E5 Bool) (F5 Bool) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Bool) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Bool) (R5 Int) (S5 Bool) (T5 Int) (U5 Int) (V5 Bool) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Int) (M6 Bool) (N6 Bool) (O6 Int) (P6 Int) (Q6 Bool) (R6 Int) (S6 Int) (T6 Int) (U6 Bool) (V6 Int) (W6 Int) (X6 Int) (Y6 Int) (Z6 Bool) (A7 Int) (B7 Int) (C7 Bool) (D7 Int) (E7 Bool) (F7 Bool) (G7 Int) (H7 Int) (I7 Int) (J7 Int) (K7 Int) (L7 Int) (M7 Int) (N7 Int) (O7 Int) (P7 Int) (Q7 Bool) (R7 Bool) (S7 Int) (T7 Bool) (U7 Int) (V7 Int) (W7 Bool) (X7 Int) (Y7 Int) (Z7 Bool) (A8 Int) (B8 Int) (C8 Bool) (D8 Int) (E8 Bool) (F8 Bool) (G8 Int) (H8 Int) (I8 Int) (J8 Bool) (K8 Int) (L8 Int) ) 
    (=>
      (and
        (state F1
       S2
       M3
       C3
       U3
       Y3
       N1
       I1
       T1
       Y1
       J8
       A
       D
       G
       E1
       A1
       L
       A4
       P2
       N2
       K
       M2
       J
       D1
       K2
       C1
       I2
       B1
       G2
       X3
       P1
       Z3
       T3
       Q
       K1
       Y2
       W3
       O3
       V3
       A2
       S3
       R3
       Q3
       M1
       P3
       K3
       O
       A3
       S1
       N3
       M
       X2
       I3
       G3
       W2
       E3
       T2
       V2
       I
       Q2
       U2
       D2
       X1
       R2
       O2
       E2
       L2
       J2
       H2
       F2
       C2
       W1
       I8
       Y
       L1
       C
       V
       H1
       L8
       B2
       F
       X
       R1
       Z1
       Q1
       V1
       U1
       O1
       S
       G1
       U
       J1
       Z
       W
       T
       R
       P
       N
       H
       E
       B
       K8
       H8
       Z2
       B3
       D3
       F3
       H3
       J3
       L3)
        (let ((a!1 (= (or (and (not E8)
                       (not C8)
                       (not Z7)
                       (not W7)
                       (not C7)
                       (not Z6)
                       (not U6)
                       (not Q6)
                       (not L4)
                       (not I4)
                       (not F4)
                       (not C4))
                  (and (not E8)
                       (not C8)
                       (not Z7)
                       (not W7)
                       (not C7)
                       (not Z6)
                       (not U6)
                       (not Q6)
                       (not L4)
                       (not I4)
                       (not F4)
                       C4)
                  (and (not E8)
                       (not C8)
                       (not Z7)
                       (not W7)
                       (not C7)
                       (not Z6)
                       (not U6)
                       (not Q6)
                       (not L4)
                       (not I4)
                       F4
                       (not C4))
                  (and (not E8)
                       (not C8)
                       (not Z7)
                       (not W7)
                       (not C7)
                       (not Z6)
                       (not U6)
                       (not Q6)
                       (not L4)
                       I4
                       (not F4)
                       (not C4))
                  (and (not E8)
                       (not C8)
                       (not Z7)
                       (not W7)
                       (not C7)
                       (not Z6)
                       (not U6)
                       (not Q6)
                       L4
                       (not I4)
                       (not F4)
                       (not C4))
                  (and (not E8)
                       (not C8)
                       (not Z7)
                       (not W7)
                       (not C7)
                       (not Z6)
                       (not U6)
                       Q6
                       (not L4)
                       (not I4)
                       (not F4)
                       (not C4))
                  (and (not E8)
                       (not C8)
                       (not Z7)
                       (not W7)
                       (not C7)
                       (not Z6)
                       U6
                       (not Q6)
                       (not L4)
                       (not I4)
                       (not F4)
                       (not C4))
                  (and (not E8)
                       (not C8)
                       (not Z7)
                       (not W7)
                       (not C7)
                       Z6
                       (not U6)
                       (not Q6)
                       (not L4)
                       (not I4)
                       (not F4)
                       (not C4))
                  (and (not E8)
                       (not C8)
                       (not Z7)
                       (not W7)
                       C7
                       (not Z6)
                       (not U6)
                       (not Q6)
                       (not L4)
                       (not I4)
                       (not F4)
                       (not C4))
                  (and (not E8)
                       (not C8)
                       (not Z7)
                       W7
                       (not C7)
                       (not Z6)
                       (not U6)
                       (not Q6)
                       (not L4)
                       (not I4)
                       (not F4)
                       (not C4))
                  (and (not E8)
                       (not C8)
                       Z7
                       (not W7)
                       (not C7)
                       (not Z6)
                       (not U6)
                       (not Q6)
                       (not L4)
                       (not I4)
                       (not F4)
                       (not C4))
                  (and (not E8)
                       C8
                       (not Z7)
                       (not W7)
                       (not C7)
                       (not Z6)
                       (not U6)
                       (not Q6)
                       (not L4)
                       (not I4)
                       (not F4)
                       (not C4))
                  (and E8
                       (not C8)
                       (not Z7)
                       (not W7)
                       (not C7)
                       (not Z6)
                       (not U6)
                       (not Q6)
                       (not L4)
                       (not I4)
                       (not F4)
                       (not C4)))
              M6))
      (a!2 (= (or (and (not A)
                       (not D)
                       (not G)
                       (not I1)
                       (not N1)
                       (not T1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3)
                       (not Y3)
                       (not J8))
                  (and (not A)
                       (not D)
                       (not G)
                       (not I1)
                       (not N1)
                       (not T1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3)
                       (not Y3)
                       J8)
                  (and (not A)
                       (not D)
                       (not G)
                       (not I1)
                       (not N1)
                       (not T1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3)
                       Y3
                       (not J8))
                  (and (not A)
                       (not D)
                       (not G)
                       (not I1)
                       (not N1)
                       (not T1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       U3
                       (not Y3)
                       (not J8))
                  (and (not A)
                       (not D)
                       (not G)
                       (not I1)
                       (not N1)
                       (not T1)
                       (not Y1)
                       (not C3)
                       M3
                       (not U3)
                       (not Y3)
                       (not J8))
                  (and (not A)
                       (not D)
                       (not G)
                       (not I1)
                       (not N1)
                       (not T1)
                       (not Y1)
                       C3
                       (not M3)
                       (not U3)
                       (not Y3)
                       (not J8))
                  (and (not A)
                       (not D)
                       (not G)
                       (not I1)
                       (not N1)
                       (not T1)
                       Y1
                       (not C3)
                       (not M3)
                       (not U3)
                       (not Y3)
                       (not J8))
                  (and (not A)
                       (not D)
                       (not G)
                       (not I1)
                       (not N1)
                       T1
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3)
                       (not Y3)
                       (not J8))
                  (and (not A)
                       (not D)
                       (not G)
                       (not I1)
                       N1
                       (not T1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3)
                       (not Y3)
                       (not J8))
                  (and (not A)
                       (not D)
                       (not G)
                       I1
                       (not N1)
                       (not T1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3)
                       (not Y3)
                       (not J8))
                  (and (not A)
                       (not D)
                       G
                       (not I1)
                       (not N1)
                       (not T1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3)
                       (not Y3)
                       (not J8))
                  (and (not A)
                       D
                       (not G)
                       (not I1)
                       (not N1)
                       (not T1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3)
                       (not Y3)
                       (not J8))
                  (and A
                       (not D)
                       (not G)
                       (not I1)
                       (not N1)
                       (not T1)
                       (not Y1)
                       (not C3)
                       (not M3)
                       (not U3)
                       (not Y3)
                       (not J8)))
              E1))
      (a!3 (and (<= 1 N2) (= G2 0) (= I2 0) (= K2 0) (= M2 0)))
      (a!4 (= (and (<= 1 N2) (<= 1 (+ M2 K2 I2 G2))) Y4))
      (a!5 (= (and (<= 0 (+ M2 K2 I2 G2)) (<= 1 N2)) U4))
      (a!6 (or S2 (and M6 (not (<= L6 0)))))
      (a!7 (or (not S4) (= (+ N2 (* (- 1) R4)) 1)))
      (a!8 (or (not S4) (= (+ G2 (* (- 1) I5)) (- 1))))
      (a!9 (or (not U4) (= (+ M2 K2 (* (- 1) T5)) 0)))
      (a!10 (or (not U4) (= (+ I2 G2 (* (- 1) N5)) (- 1))))
      (a!11 (or (not U4) (= (+ N2 (* (- 1) T4)) 1)))
      (a!12 (or (not W4) (= (+ N2 (* (- 1) V4)) 1)))
      (a!13 (or (not W4) (= (+ M2 (* (- 1) C6)) (- 1))))
      (a!14 (or (not Y4) (= (+ M2 K2 I2 G2 (* (- 1) O5)) 0)))
      (a!15 (or (not Y4) (= (+ N2 (* (- 1) X4)) 1)))
      (a!16 (or (not A5) (= (+ N2 (* (- 1) Z4)) (- 1))))
      (a!17 (or (not A5) (= (+ M2 (* (- 1) D4)) 1)))
      (a!18 (or (not C5) (= (+ N2 (* (- 1) B5)) (- 1))))
      (a!19 (or (not C5) (= (+ I2 (* (- 1) G4)) 1)))
      (a!20 (or (not E5) (= (+ N2 (* (- 1) D5)) (- 1))))
      (a!21 (or (not E5) (= (+ K2 (* (- 1) J4)) 1)))
      (a!22 (or (not F5) (= (+ N2 (* (- 1) M4)) (- 1))))
      (a!23 (or (not F5) (= (+ G2 (* (- 1) N4)) 1)))
      (a!24 (or (not L5) (= (+ M2 (* (- 1) Y5)) (- 1))))
      (a!25 (or (not L5) (= (+ G2 (* (- 1) K5)) 1)))
      (a!26 (or (not Q5) (= (+ M2 (* (- 1) B6)) (- 1))))
      (a!27 (or (not S5) (= (+ K2 I2 (* (- 1) R5)) 1)))
      (a!28 (or (not V5) (= (+ M2 (* (- 1) A6)) (- 1)))))
  (and (= (<= 1 K2) E5)
       (= (<= 1 I2) C5)
       (= (<= 1 G2) F5)
       (= (<= 1 G2) L5)
       a!1
       a!2
       (= (or (not F7) (<= 0 G7)) E7)
       (= (or (not D2) (<= 0 E2)) C2)
       (= a!3 S4)
       (= a!3 W4)
       a!4
       a!5
       (= Q5 (and (= I2 1) (= K2 0)))
       (= S5 (<= 2 (+ K2 I2)))
       (= V5 (and (= I2 0) (= K2 1)))
       (= N6 a!6)
       (= R7 Q7)
       (= R7 F8)
       (= T7 N6)
       (= T7 F7)
       (= A4 P2)
       (= S2 D2)
       (= P2 O2)
       (= F1 S2)
       (= Q4 P4)
       (= Q4 O7)
       (= H5 G5)
       (= H5 P7)
       (= G6 F6)
       (= I6 H6)
       (= K6 J6)
       (= I7 G6)
       (= I7 H7)
       (= K7 I6)
       (= K7 J7)
       (= M7 K6)
       (= M7 L7)
       (= O7 N7)
       (= P7 G7)
       (= G8 E6)
       (= N2 E2)
       (= N2 K)
       (= M2 L2)
       (= M2 J)
       (= K2 J2)
       (= I2 H2)
       (= G2 F2)
       (= D1 K2)
       (= C1 I2)
       (= B1 G2)
       (= A1 L)
       (= L E6)
       (= F8 (<= 2 I7))
       (= A4 (<= 2 G2))
       (or J8 (= Q2 X1))
       (or (not J8) (= X1 R2))
       (or (not C4) (= B4 D4))
       (or (not C4) (= Z4 B7))
       (or C4 (= S7 B7))
       (or C4 (= M2 B4))
       (or (not F4) (= E4 G4))
       (or (not F4) (= B5 S7))
       (or F4 (= U7 S7))
       (or F4 (= I2 E4))
       (or (not I4) (= H4 J4))
       (or (not I4) (= D5 U7))
       (or I4 (= U7 K4))
       (or I4 (= K2 H4))
       (or (not L4) (= K4 M4))
       (or (not L4) (= O4 N4))
       (or L4 (= N2 K4))
       (or L4 (= G2 O4))
       a!7
       a!8
       (or S4 (= N2 R4))
       (or S4 (= G2 I5))
       a!9
       a!10
       a!11
       (or (not U4) (= J5 0))
       (or (not U4) (= Z5 0))
       (or U4 (= N2 T4))
       (or U4 (= M2 Z5))
       (or U4 (= K2 T5))
       (or U4 (= I2 N5))
       (or U4 (= G2 J5))
       a!12
       a!13
       (or W4 (= N2 V4))
       (or W4 (= M2 C6))
       a!14
       a!15
       (or (not Y4) (= M5 0))
       (or (not Y4) (= X5 1))
       (or (not Y4) (= D6 0))
       (or Y4 (= N2 X4))
       (or Y4 (= M2 D6))
       (or Y4 (= K2 X5))
       (or Y4 (= I2 O5))
       (or Y4 (= G2 M5))
       a!16
       a!17
       (or A5 (= N2 Z4))
       (or A5 (= M2 D4))
       a!18
       a!19
       (or C5 (= N2 B5))
       (or C5 (= I2 G4))
       a!20
       a!21
       (or E5 (= N2 D5))
       (or E5 (= K2 J4))
       a!22
       a!23
       (or F5 (= N2 M4))
       (or F5 (= G2 N4))
       a!24
       a!25
       (or L5 (= M2 Y5))
       (or L5 (= G2 K5))
       a!26
       (or (not Q5) (= P5 0))
       (or Q5 (= M2 B6))
       (or Q5 (= I2 P5))
       a!27
       (or (not S5) (= W5 1))
       (or S5 (= K2 W5))
       (or S5 (= I2 R5))
       a!28
       (or (not V5) (= U5 0))
       (or V5 (= M2 A6))
       (or V5 (= K2 U5))
       (or (not Q6) (= O6 R5))
       (or Q6 (= P6 O6))
       (or (not Q6) (= R6 W5))
       (or Q6 (= R6 S6))
       (or (not U6) (= T6 P5))
       (or U6 (= T6 O6))
       (or (not U6) (= V6 B6))
       (or U6 (= V6 W6))
       (or (not Z6) (= W6 C6))
       (or (not Z6) (= Y6 V4))
       (or Z6 (= Y6 X6))
       (or Z6 (= A7 W6))
       (or C7 (= B4 A7))
       (or C7 (= E4 P6))
       (or C7 (= H4 S6))
       (or (not C7) (= X4 X6))
       (or (not C7) (= P6 O5))
       (or (not C7) (= S6 X5))
       (or (not C7) (= A7 D6))
       (or C7 (= B7 X6))
       (or C7 (= D7 O4))
       (or (not C7) (= D7 M5))
       (or (not W7) (= R4 G5))
       (or (not W7) (= F6 I5))
       (or W7 (= V7 G5))
       (or W7 (= X7 F6))
       (or (not Z7) (= P4 Z5))
       (or (not Z7) (= H6 N5))
       (or (not Z7) (= J6 T5))
       (or Z7 (= T6 H6))
       (or Z7 (= Y6 V7))
       (or (not Z7) (= V7 T4))
       (or (not Z7) (= X7 J5))
       (or Z7 (= Y7 P4))
       (or Z7 (= A8 X7))
       (or Z7 (= B8 J6))
       (or (not C8) (= K5 A8))
       (or (not C8) (= Y7 Y5))
       (or C8 (= A8 D7))
       (or C8 (= D8 Y7))
       (or (not E8) (= U5 B8))
       (or E8 (= V6 D8))
       (or E8 (= B8 R6))
       (or (not E8) (= D8 A6))
       (or (not Y3) (= X3 Z3))
       (or Y3 (= X3 P1))
       (or Y3 (= T3 K1))
       (or (not Y3) (= T3 Q))
       (or U3 (= X3 Y2))
       (or (not U3) (= O3 V3))
       (or U3 (= O3 A2))
       (or (not U3) (= Y2 W3))
       (or M3 (= T3 S3))
       (or (not M3) (= S3 R3))
       (or (not M3) (= Q3 P3))
       (or M3 (= Q3 M1))
       (or M3 (= O3 K3))
       (or (not M3) (= K3 O))
       (or (not M3) (= A3 N3))
       (or M3 (= A3 S1))
       (or M3 (= Y2 X2))
       (or (not M3) (= M X2))
       (or C3 (= K3 I3))
       (or (not C3) (= I3 G3))
       (or C3 (= A3 W2))
       (or (not C3) (= W2 E3))
       (or (not Y1) (= A2 X))
       (or Y1 (= A2 F))
       (or Y1 (= X1 R1))
       (or Y1 (= W1 I8))
       (or (not Y1) (= W1 Y))
       (or (not Y1) (= R1 Z1))
       (or (not Y1) (= L1 V))
       (or Y1 (= L1 C))
       (or Y1 (= H1 L8))
       (or (not Y1) (= H1 B2))
       (or T1 (= W1 Q1))
       (or (not T1) (= S1 U1))
       (or T1 (= S1 R1))
       (or (not T1) (= Q1 V1))
       (or N1 (= P1 Q1))
       (or (not N1) (= P1 O1))
       (or N1 (= M1 G1))
       (or (not N1) (= M1 S))
       (or I1 (= K1 L1))
       (or (not I1) (= K1 U))
       (or I1 (= H1 G1))
       (or (not I1) (= G1 J1))
       (or (not D) (= T2 V2))
       (or D (= T2 I))
       (or A (= T2 Q2))
       (or (not A) (= Q2 U2))
       (= (<= 1 M2) A5)))
      )
      (state N6
       T7
       Z7
       W7
       C8
       E8
       U6
       Q6
       Z6
       C7
       C4
       F4
       I4
       L4
       M6
       E6
       G8
       F8
       R7
       P7
       H5
       O7
       Q4
       K6
       M7
       I6
       K7
       G6
       I7
       D8
       V6
       A6
       B8
       U5
       R6
       Y7
       Y5
       A8
       K5
       D7
       J6
       T5
       H6
       T6
       N5
       X7
       J5
       V7
       Y6
       T4
       Z5
       P4
       F6
       I5
       G5
       R4
       U7
       D5
       K4
       S7
       B5
       F7
       B7
       Z4
       Q7
       G7
       N7
       L7
       J7
       H7
       E7
       A7
       B4
       D6
       S6
       H4
       X5
       P6
       E4
       O5
       O4
       M5
       X6
       X4
       W6
       C6
       V4
       B6
       P5
       O6
       W5
       R5
       L6
       Y4
       S5
       Q5
       V5
       U4
       M4
       N4
       J4
       G4
       D4
       S4
       L5
       W4
       A5
       C5
       E5
       F5)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Bool) (Q Int) (R Bool) (S Int) (T Bool) (U Int) (V Int) (W Bool) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Bool) (G1 Int) (H1 Int) (I1 Bool) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Bool) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Bool) (Q2 Int) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Int) (F3 Bool) (G3 Int) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Bool) (M3 Bool) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Bool) (V3 Int) (W3 Int) (X3 Int) (Y3 Bool) (Z3 Int) (A4 Bool) (B4 Int) (C4 Int) (D4 Bool) (E4 Int) (F4 Int) ) 
    (=>
      (and
        (state F1
       S2
       M3
       C3
       U3
       Y3
       N1
       I1
       T1
       Y1
       D4
       A
       D
       G
       E1
       A1
       L
       A4
       P2
       N2
       K
       M2
       J
       D1
       K2
       C1
       I2
       B1
       G2
       X3
       P1
       Z3
       T3
       Q
       K1
       Y2
       W3
       O3
       V3
       A2
       S3
       R3
       Q3
       M1
       P3
       K3
       O
       A3
       S1
       N3
       M
       X2
       I3
       G3
       W2
       E3
       T2
       V2
       I
       Q2
       U2
       D2
       X1
       R2
       O2
       E2
       L2
       J2
       H2
       F2
       C2
       W1
       C4
       Y
       L1
       C
       V
       H1
       F4
       B2
       F
       X
       R1
       Z1
       Q1
       V1
       U1
       O1
       S
       G1
       U
       J1
       Z
       W
       T
       R
       P
       N
       H
       E
       B
       E4
       B4
       Z2
       B3
       D3
       F3
       H3
       J3
       L3)
        (not C2)
      )
      false
    )
  )
)

(check-sat)
(exit)
