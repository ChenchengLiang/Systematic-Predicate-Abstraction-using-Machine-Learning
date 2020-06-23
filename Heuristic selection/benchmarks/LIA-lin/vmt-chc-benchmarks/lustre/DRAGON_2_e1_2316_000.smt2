(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Bool) (S Int) (T Bool) (U Int) (V Bool) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Bool) (H1 Bool) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Bool) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Bool) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Bool) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Int) (F3 Bool) (G3 Int) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Bool) (M3 Int) (N3 Int) (O3 Bool) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Bool) (X3 Int) (Y3 Int) (Z3 Int) (A4 Bool) (B4 Int) (C4 Bool) (D4 Int) (E4 Int) (F4 Bool) (G4 Int) ) 
    (=>
      (and
        (let ((a!1 (= H1 (and G1 (not (<= B1 0)))))
      (a!2 (= (or (and (not A4)
                       (not O3)
                       (not F4)
                       (not B)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not F)
                       (not I)
                       (not Y1)
                       (not C3)
                       (not W3))
                  (and (not A4)
                       (not O3)
                       (not F4)
                       (not B)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not F)
                       (not I)
                       (not Y1)
                       (not C3)
                       W3)
                  (and (not A4)
                       (not O3)
                       (not F4)
                       (not B)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not F)
                       (not I)
                       (not Y1)
                       C3
                       (not W3))
                  (and (not A4)
                       (not O3)
                       (not F4)
                       (not B)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not F)
                       (not I)
                       Y1
                       (not C3)
                       (not W3))
                  (and (not A4)
                       (not O3)
                       (not F4)
                       (not B)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not F)
                       I
                       (not Y1)
                       (not C3)
                       (not W3))
                  (and (not A4)
                       (not O3)
                       (not F4)
                       (not B)
                       (not K1)
                       (not P1)
                       (not V1)
                       F
                       (not I)
                       (not Y1)
                       (not C3)
                       (not W3))
                  (and (not A4)
                       (not O3)
                       (not F4)
                       (not B)
                       (not K1)
                       (not P1)
                       V1
                       (not F)
                       (not I)
                       (not Y1)
                       (not C3)
                       (not W3))
                  (and (not A4)
                       (not O3)
                       (not F4)
                       (not B)
                       (not K1)
                       P1
                       (not V1)
                       (not F)
                       (not I)
                       (not Y1)
                       (not C3)
                       (not W3))
                  (and (not A4)
                       (not O3)
                       (not F4)
                       (not B)
                       K1
                       (not P1)
                       (not V1)
                       (not F)
                       (not I)
                       (not Y1)
                       (not C3)
                       (not W3))
                  (and (not A4)
                       (not O3)
                       (not F4)
                       B
                       (not K1)
                       (not P1)
                       (not V1)
                       (not F)
                       (not I)
                       (not Y1)
                       (not C3)
                       (not W3))
                  (and (not A4)
                       (not O3)
                       F4
                       (not B)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not F)
                       (not I)
                       (not Y1)
                       (not C3)
                       (not W3))
                  (and (not A4)
                       O3
                       (not F4)
                       (not B)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not F)
                       (not I)
                       (not Y1)
                       (not C3)
                       (not W3))
                  (and A4
                       (not O3)
                       (not F4)
                       (not B)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not F)
                       (not I)
                       (not Y1)
                       (not C3)
                       (not W3)))
              G1)))
  (and (= (or C (not D2)) C2)
       (= C4 P2)
       (= Q2 D2)
       (= P2 O2)
       a!1
       (= H1 Q2)
       (= N2 M)
       (= N2 M2)
       (= F1 0)
       (= F1 J2)
       (= D1 0)
       (= D1 F2)
       (= L 0)
       (= N M)
       (= C1 B1)
       (= C1 N)
       (= E1 0)
       (= E1 H2)
       (= F2 E2)
       (= H2 G2)
       (= J2 I2)
       (= L2 L)
       (= L2 K2)
       (= C4 (<= 2 F2))
       (or (not W3) (= N3 Y3))
       (or W3 (= Q3 A2))
       (or (not W3) (= Q3 X3))
       (or W3 (= Z3 N3))
       (or C3 (= A3 W2))
       (or (not C3) (= W2 E3))
       (or C3 (= X2 I3))
       (or (not C3) (= I3 G3))
       (or (not Y1) (= T1 Z1))
       (or Y1 (= M3 E4))
       (or (not Y1) (= M3 A1))
       (or Y1 (= J1 A))
       (or (not Y1) (= J1 B2))
       (or (not Y1) (= N1 X))
       (or Y1 (= N1 E))
       (or (not Y1) (= A2 Z))
       (or Y1 (= A2 H))
       (or Y1 (= K3 T1))
       (or (not R) (= S 0))
       (or (not P) (= O 0))
       (or (not P) (= Q 0))
       (or (not I) (= H G))
       (or (not I) (= K J))
       (or (not F) (= E D))
       (or (not F) (= T2 V2))
       (or F (= T2 K))
       (or V1 (= M3 S1))
       (or (not V1) (= S1 X1))
       (or (not V1) (= U1 W1))
       (or V1 (= U1 T1))
       (or (not P1) (= R1 Q1))
       (or P1 (= R1 S1))
       (or (not P1) (= O1 U))
       (or P1 (= O1 I1))
       (or (not K1) (= M1 W))
       (or K1 (= M1 N1))
       (or (not K1) (= I1 L1))
       (or K1 (= J1 I1))
       (or (not B) (= R2 U2))
       (or (not B) (= A G4))
       (or B (= T2 R2))
       (or (not Y) (= Z 0))
       (or (not Y) (= X 1))
       (or (not Y) (= A1 0))
       (or F4 (= R2 K3))
       (or (not F4) (= E4 D4))
       (or (not F4) (= K3 S2))
       (or (not T) (= U 0))
       (or (not V) (= W 1))
       (or O3 (= V3 U3))
       (or O3 (= S3 O1))
       (or (not O3) (= S3 R3))
       (or O3 (= N3 Y2))
       (or O3 (= A3 U1))
       (or (not O3) (= A3 P3))
       (or (not O3) (= O Y2))
       (or (not O3) (= X2 Q))
       (or O3 (= Q3 X2))
       (or (not O3) (= U3 T3))
       (or A4 (= V3 M1))
       (or (not A4) (= V3 S))
       (or (not A4) (= Z3 B4))
       (or A4 (= Z3 R1))
       (= C true)
       a!2))
      )
      (state H1
       Q2
       O3
       C3
       W3
       A4
       P1
       K1
       V1
       Y1
       F4
       B
       F
       I
       G1
       C1
       N
       C4
       P2
       N2
       M
       L2
       L
       F1
       J2
       E1
       H2
       D1
       F2
       Z3
       R1
       B4
       V3
       S
       M1
       N3
       Y3
       Q3
       X3
       A2
       U3
       T3
       S3
       O1
       R3
       X2
       Q
       A3
       U1
       P3
       O
       Y2
       I3
       G3
       W2
       E3
       T2
       V2
       K
       R2
       U2
       K3
       S2
       D2
       O2
       M2
       K2
       I2
       G2
       E2
       C
       C2
       M3
       E4
       A1
       N1
       E
       X
       J1
       A
       B2
       H
       Z
       T1
       Z1
       S1
       X1
       W1
       Q1
       U
       I1
       W
       L1
       B1
       Y
       V
       T
       R
       P
       J
       G
       D
       G4
       D4
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
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Bool) (S Int) (T Bool) (U Int) (V Bool) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Bool) (H1 Bool) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Bool) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Bool) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Bool) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Int) (F3 Bool) (G3 Int) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Bool) (M3 Int) (N3 Int) (O3 Bool) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Bool) (X3 Int) (Y3 Int) (Z3 Int) (A4 Bool) (B4 Int) (C4 Bool) (D4 Int) (E4 Bool) (F4 Int) (G4 Int) (H4 Bool) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Bool) (P4 Int) (Q4 Bool) (R4 Int) (S4 Int) (T4 Bool) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Bool) (B5 Int) (C5 Bool) (D5 Int) (E5 Bool) (F5 Int) (G5 Bool) (H5 Int) (I5 Bool) (J5 Int) (K5 Bool) (L5 Int) (M5 Bool) (N5 Bool) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Bool) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Bool) (Z5 Int) (A6 Bool) (B6 Int) (C6 Int) (D6 Bool) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Int) (R6 Int) (S6 Int) (T6 Int) (U6 Bool) (V6 Bool) (W6 Int) (X6 Int) (Y6 Bool) (Z6 Int) (A7 Int) (B7 Int) (C7 Bool) (D7 Int) (E7 Int) (F7 Int) (G7 Int) (H7 Bool) (I7 Int) (J7 Int) (K7 Bool) (L7 Int) (M7 Bool) (N7 Bool) (O7 Int) (P7 Int) (Q7 Int) (R7 Int) (S7 Int) (T7 Bool) (U7 Bool) (V7 Bool) (W7 Int) (X7 Int) (Y7 Int) (Z7 Bool) (A8 Int) (B8 Int) (C8 Bool) (D8 Int) (E8 Int) (F8 Bool) (G8 Int) (H8 Bool) (I8 Bool) (J8 Int) (K8 Int) (L8 Int) (M8 Bool) (N8 Int) ) 
    (=>
      (and
        (state H1
       Q2
       O3
       C3
       W3
       A4
       P1
       K1
       V1
       Y1
       M8
       B
       F
       I
       G1
       C1
       N
       C4
       P2
       N2
       M
       L2
       L
       F1
       J2
       E1
       H2
       D1
       F2
       Z3
       R1
       B4
       V3
       S
       M1
       N3
       Y3
       Q3
       X3
       A2
       U3
       T3
       S3
       O1
       R3
       X2
       Q
       A3
       U1
       P3
       O
       Y2
       I3
       G3
       W2
       E3
       T2
       V2
       K
       R2
       U2
       K3
       S2
       D2
       O2
       M2
       K2
       I2
       G2
       E2
       C
       C2
       M3
       L8
       A1
       N1
       E
       X
       J1
       A
       B2
       H
       Z
       T1
       Z1
       S1
       X1
       W1
       Q1
       U
       I1
       W
       L1
       B1
       Y
       V
       T
       R
       P
       J
       G
       D
       N8
       K8
       Z2
       B3
       D3
       F3
       H3
       J3
       L3)
        (let ((a!1 (= (or (and (not H8)
                       (not F8)
                       (not C8)
                       (not Z7)
                       (not K7)
                       (not H7)
                       (not C7)
                       (not Y6)
                       (not T4)
                       (not Q4)
                       (not H4)
                       (not E4))
                  (and (not H8)
                       (not F8)
                       (not C8)
                       (not Z7)
                       (not K7)
                       (not H7)
                       (not C7)
                       (not Y6)
                       (not T4)
                       (not Q4)
                       (not H4)
                       E4)
                  (and (not H8)
                       (not F8)
                       (not C8)
                       (not Z7)
                       (not K7)
                       (not H7)
                       (not C7)
                       (not Y6)
                       (not T4)
                       (not Q4)
                       H4
                       (not E4))
                  (and (not H8)
                       (not F8)
                       (not C8)
                       (not Z7)
                       (not K7)
                       (not H7)
                       (not C7)
                       (not Y6)
                       (not T4)
                       Q4
                       (not H4)
                       (not E4))
                  (and (not H8)
                       (not F8)
                       (not C8)
                       (not Z7)
                       (not K7)
                       (not H7)
                       (not C7)
                       (not Y6)
                       T4
                       (not Q4)
                       (not H4)
                       (not E4))
                  (and (not H8)
                       (not F8)
                       (not C8)
                       (not Z7)
                       (not K7)
                       (not H7)
                       (not C7)
                       Y6
                       (not T4)
                       (not Q4)
                       (not H4)
                       (not E4))
                  (and (not H8)
                       (not F8)
                       (not C8)
                       (not Z7)
                       (not K7)
                       (not H7)
                       C7
                       (not Y6)
                       (not T4)
                       (not Q4)
                       (not H4)
                       (not E4))
                  (and (not H8)
                       (not F8)
                       (not C8)
                       (not Z7)
                       (not K7)
                       H7
                       (not C7)
                       (not Y6)
                       (not T4)
                       (not Q4)
                       (not H4)
                       (not E4))
                  (and (not H8)
                       (not F8)
                       (not C8)
                       (not Z7)
                       K7
                       (not H7)
                       (not C7)
                       (not Y6)
                       (not T4)
                       (not Q4)
                       (not H4)
                       (not E4))
                  (and (not H8)
                       (not F8)
                       (not C8)
                       Z7
                       (not K7)
                       (not H7)
                       (not C7)
                       (not Y6)
                       (not T4)
                       (not Q4)
                       (not H4)
                       (not E4))
                  (and (not H8)
                       (not F8)
                       C8
                       (not Z7)
                       (not K7)
                       (not H7)
                       (not C7)
                       (not Y6)
                       (not T4)
                       (not Q4)
                       (not H4)
                       (not E4))
                  (and (not H8)
                       F8
                       (not C8)
                       (not Z7)
                       (not K7)
                       (not H7)
                       (not C7)
                       (not Y6)
                       (not T4)
                       (not Q4)
                       (not H4)
                       (not E4))
                  (and H8
                       (not F8)
                       (not C8)
                       (not Z7)
                       (not K7)
                       (not H7)
                       (not C7)
                       (not Y6)
                       (not T4)
                       (not Q4)
                       (not H4)
                       (not E4)))
              U6))
      (a!2 (= (or (and (not B)
                       (not F)
                       (not I)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not Y1)
                       (not C3)
                       (not O3)
                       (not W3)
                       (not A4)
                       (not M8))
                  (and (not B)
                       (not F)
                       (not I)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not Y1)
                       (not C3)
                       (not O3)
                       (not W3)
                       (not A4)
                       M8)
                  (and (not B)
                       (not F)
                       (not I)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not Y1)
                       (not C3)
                       (not O3)
                       (not W3)
                       A4
                       (not M8))
                  (and (not B)
                       (not F)
                       (not I)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not Y1)
                       (not C3)
                       (not O3)
                       W3
                       (not A4)
                       (not M8))
                  (and (not B)
                       (not F)
                       (not I)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not Y1)
                       (not C3)
                       O3
                       (not W3)
                       (not A4)
                       (not M8))
                  (and (not B)
                       (not F)
                       (not I)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not Y1)
                       C3
                       (not O3)
                       (not W3)
                       (not A4)
                       (not M8))
                  (and (not B)
                       (not F)
                       (not I)
                       (not K1)
                       (not P1)
                       (not V1)
                       Y1
                       (not C3)
                       (not O3)
                       (not W3)
                       (not A4)
                       (not M8))
                  (and (not B)
                       (not F)
                       (not I)
                       (not K1)
                       (not P1)
                       V1
                       (not Y1)
                       (not C3)
                       (not O3)
                       (not W3)
                       (not A4)
                       (not M8))
                  (and (not B)
                       (not F)
                       (not I)
                       (not K1)
                       P1
                       (not V1)
                       (not Y1)
                       (not C3)
                       (not O3)
                       (not W3)
                       (not A4)
                       (not M8))
                  (and (not B)
                       (not F)
                       (not I)
                       K1
                       (not P1)
                       (not V1)
                       (not Y1)
                       (not C3)
                       (not O3)
                       (not W3)
                       (not A4)
                       (not M8))
                  (and (not B)
                       (not F)
                       I
                       (not K1)
                       (not P1)
                       (not V1)
                       (not Y1)
                       (not C3)
                       (not O3)
                       (not W3)
                       (not A4)
                       (not M8))
                  (and (not B)
                       F
                       (not I)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not Y1)
                       (not C3)
                       (not O3)
                       (not W3)
                       (not A4)
                       (not M8))
                  (and B
                       (not F)
                       (not I)
                       (not K1)
                       (not P1)
                       (not V1)
                       (not Y1)
                       (not C3)
                       (not O3)
                       (not W3)
                       (not A4)
                       (not M8)))
              G1))
      (a!3 (and (<= 1 N2) (= F2 0) (= H2 0) (= J2 0) (= L2 0)))
      (a!4 (= (and (<= 1 N2) (<= 1 (+ L2 J2 H2 F2))) G5))
      (a!5 (= (and (<= 0 (+ L2 J2 H2 F2)) (<= 1 N2)) C5))
      (a!6 (= O4
              (= (+ M2
                    K2
                    I2
                    G2
                    E2
                    (* (- 1) N4)
                    (* (- 1) M4)
                    (* (- 1) L4)
                    (* (- 1) K4)
                    (* (- 1) J4))
                 0)))
      (a!7 (= V6 (and Q2 U6 (not (<= T6 0)))))
      (a!8 (or (not A5) (= (+ N2 (* (- 1) Z4)) 1)))
      (a!9 (or (not A5) (= (+ F2 (* (- 1) Q5)) (- 1))))
      (a!10 (or (not C5) (= (+ L2 J2 (* (- 1) B6)) 0)))
      (a!11 (or (not C5) (= (+ H2 F2 (* (- 1) V5)) (- 1))))
      (a!12 (or (not C5) (= (+ N2 (* (- 1) B5)) 1)))
      (a!13 (or (not E5) (= (+ N2 (* (- 1) D5)) 1)))
      (a!14 (or (not E5) (= (+ L2 (* (- 1) K6)) (- 1))))
      (a!15 (or (not G5) (= (+ L2 J2 H2 F2 (* (- 1) W5)) 0)))
      (a!16 (or (not G5) (= (+ N2 (* (- 1) F5)) 1)))
      (a!17 (or (not I5) (= (+ N2 (* (- 1) H5)) (- 1))))
      (a!18 (or (not I5) (= (+ L2 (* (- 1) F4)) 1)))
      (a!19 (or (not K5) (= (+ N2 (* (- 1) J5)) (- 1))))
      (a!20 (or (not K5) (= (+ H2 (* (- 1) I4)) 1)))
      (a!21 (or (not M5) (= (+ N2 (* (- 1) L5)) (- 1))))
      (a!22 (or (not M5) (= (+ J2 (* (- 1) R4)) 1)))
      (a!23 (or (not N5) (= (+ N2 (* (- 1) U4)) (- 1))))
      (a!24 (or (not N5) (= (+ F2 (* (- 1) V4)) 1)))
      (a!25 (or (not T5) (= (+ L2 (* (- 1) G6)) (- 1))))
      (a!26 (or (not T5) (= (+ F2 (* (- 1) S5)) 1)))
      (a!27 (or (not Y5) (= (+ L2 (* (- 1) J6)) (- 1))))
      (a!28 (or (not A6) (= (+ J2 H2 (* (- 1) Z5)) 1)))
      (a!29 (or (not D6) (= (+ L2 (* (- 1) I6)) (- 1)))))
  (and (= (<= 1 J2) M5)
       (= (<= 1 H2) K5)
       (= (<= 1 F2) N5)
       (= (<= 1 F2) T5)
       a!1
       a!2
       (= (or (not N7) O4) M7)
       (= (or C (not D2)) C2)
       (= a!3 A5)
       (= a!3 E5)
       a!4
       a!5
       a!6
       (= Y5 (and (= H2 1) (= J2 0)))
       (= A6 (<= 2 (+ J2 H2)))
       (= D6 (and (= H2 0) (= J2 1)))
       a!7
       (= U7 T7)
       (= U7 I8)
       (= V7 V6)
       (= V7 N7)
       (= C4 P2)
       (= Q2 D2)
       (= P2 O2)
       (= H1 Q2)
       (= Y4 X4)
       (= Y4 R7)
       (= P5 O5)
       (= P5 S7)
       (= O6 N6)
       (= Q6 P6)
       (= S6 R6)
       (= O7 J4)
       (= O7 O6)
       (= P7 K4)
       (= P7 Q6)
       (= Q7 L4)
       (= Q7 S6)
       (= R7 M4)
       (= S7 N4)
       (= J8 M6)
       (= N2 M2)
       (= N2 M)
       (= L2 K2)
       (= L2 L)
       (= J2 I2)
       (= H2 G2)
       (= F2 E2)
       (= F1 J2)
       (= E1 H2)
       (= D1 F2)
       (= C1 N)
       (= N M6)
       (= I8 (<= 2 O7))
       (= C4 (<= 2 F2))
       (or (not M8) (= K3 S2))
       (or M8 (= R2 K3))
       (or (not E4) (= D4 F4))
       (or (not E4) (= H5 J7))
       (or E4 (= W7 J7))
       (or E4 (= L2 D4))
       (or (not H4) (= G4 I4))
       (or (not H4) (= J5 W7))
       (or H4 (= X7 W7))
       (or H4 (= H2 G4))
       (or (not Q4) (= P4 R4))
       (or (not Q4) (= L5 X7))
       (or Q4 (= X7 S4))
       (or Q4 (= J2 P4))
       (or (not T4) (= S4 U4))
       (or (not T4) (= W4 V4))
       (or T4 (= N2 S4))
       (or T4 (= F2 W4))
       a!8
       a!9
       (or A5 (= N2 Z4))
       (or A5 (= F2 Q5))
       a!10
       a!11
       a!12
       (or (not C5) (= R5 0))
       (or (not C5) (= H6 0))
       (or C5 (= N2 B5))
       (or C5 (= L2 H6))
       (or C5 (= J2 B6))
       (or C5 (= H2 V5))
       (or C5 (= F2 R5))
       a!13
       a!14
       (or E5 (= N2 D5))
       (or E5 (= L2 K6))
       a!15
       a!16
       (or (not G5) (= U5 0))
       (or (not G5) (= F6 1))
       (or (not G5) (= L6 0))
       (or G5 (= N2 F5))
       (or G5 (= L2 L6))
       (or G5 (= J2 F6))
       (or G5 (= H2 W5))
       (or G5 (= F2 U5))
       a!17
       a!18
       (or I5 (= N2 H5))
       (or I5 (= L2 F4))
       a!19
       a!20
       (or K5 (= N2 J5))
       (or K5 (= H2 I4))
       a!21
       a!22
       (or M5 (= N2 L5))
       (or M5 (= J2 R4))
       a!23
       a!24
       (or N5 (= N2 U4))
       (or N5 (= F2 V4))
       a!25
       a!26
       (or T5 (= L2 G6))
       (or T5 (= F2 S5))
       a!27
       (or (not Y5) (= X5 0))
       (or Y5 (= L2 J6))
       (or Y5 (= H2 X5))
       a!28
       (or (not A6) (= E6 1))
       (or A6 (= J2 E6))
       (or A6 (= H2 Z5))
       a!29
       (or (not D6) (= C6 0))
       (or D6 (= L2 I6))
       (or D6 (= J2 C6))
       (or (not Y6) (= W6 Z5))
       (or Y6 (= X6 W6))
       (or (not Y6) (= Z6 E6))
       (or Y6 (= Z6 A7))
       (or (not C7) (= B7 X5))
       (or C7 (= B7 W6))
       (or (not C7) (= D7 J6))
       (or C7 (= D7 E7))
       (or (not H7) (= E7 K6))
       (or (not H7) (= G7 D5))
       (or H7 (= G7 F7))
       (or H7 (= I7 E7))
       (or K7 (= D4 I7))
       (or K7 (= G4 X6))
       (or K7 (= P4 A7))
       (or (not K7) (= F5 F7))
       (or (not K7) (= X6 W5))
       (or (not K7) (= A7 F6))
       (or (not K7) (= I7 L6))
       (or K7 (= J7 F7))
       (or K7 (= L7 W4))
       (or (not K7) (= L7 U5))
       (or (not Z7) (= Z4 O5))
       (or (not Z7) (= N6 Q5))
       (or Z7 (= Y7 O5))
       (or Z7 (= A8 N6))
       (or (not C8) (= X4 H6))
       (or (not C8) (= P6 V5))
       (or (not C8) (= R6 B6))
       (or C8 (= B7 P6))
       (or C8 (= G7 Y7))
       (or (not C8) (= Y7 B5))
       (or (not C8) (= A8 R5))
       (or C8 (= B8 X4))
       (or C8 (= D8 A8))
       (or C8 (= E8 R6))
       (or (not F8) (= S5 D8))
       (or (not F8) (= B8 G6))
       (or F8 (= D8 L7))
       (or F8 (= G8 B8))
       (or (not H8) (= C6 E8))
       (or H8 (= D7 G8))
       (or H8 (= E8 Z6))
       (or (not H8) (= G8 I6))
       (or (not A4) (= Z3 B4))
       (or A4 (= Z3 R1))
       (or A4 (= V3 M1))
       (or (not A4) (= V3 S))
       (or W3 (= Z3 N3))
       (or (not W3) (= Q3 X3))
       (or W3 (= Q3 A2))
       (or (not W3) (= N3 Y3))
       (or O3 (= V3 U3))
       (or (not O3) (= U3 T3))
       (or (not O3) (= S3 R3))
       (or O3 (= S3 O1))
       (or O3 (= Q3 X2))
       (or O3 (= N3 Y2))
       (or (not O3) (= A3 P3))
       (or O3 (= A3 U1))
       (or (not O3) (= X2 Q))
       (or (not O3) (= O Y2))
       (or (not C3) (= I3 G3))
       (or C3 (= A3 W2))
       (or C3 (= X2 I3))
       (or (not C3) (= W2 E3))
       (or Y1 (= M3 L8))
       (or (not Y1) (= M3 A1))
       (or Y1 (= K3 T1))
       (or (not Y1) (= A2 Z))
       (or Y1 (= A2 H))
       (or (not Y1) (= T1 Z1))
       (or (not Y1) (= N1 X))
       (or Y1 (= N1 E))
       (or (not Y1) (= J1 B2))
       (or Y1 (= J1 A))
       (or V1 (= M3 S1))
       (or (not V1) (= U1 W1))
       (or V1 (= U1 T1))
       (or (not V1) (= S1 X1))
       (or P1 (= R1 S1))
       (or (not P1) (= R1 Q1))
       (or P1 (= O1 I1))
       (or (not P1) (= O1 U))
       (or K1 (= M1 N1))
       (or (not K1) (= M1 W))
       (or K1 (= J1 I1))
       (or (not K1) (= I1 L1))
       (or (not F) (= T2 V2))
       (or F (= T2 K))
       (or B (= T2 R2))
       (or (not B) (= R2 U2))
       (= (<= 1 L2) I5)))
      )
      (state V6
       V7
       C8
       Z7
       F8
       H8
       C7
       Y6
       H7
       K7
       E4
       H4
       Q4
       T4
       U6
       M6
       J8
       I8
       U7
       S7
       P5
       R7
       Y4
       S6
       Q7
       Q6
       P7
       O6
       O7
       G8
       D7
       I6
       E8
       C6
       Z6
       B8
       G6
       D8
       S5
       L7
       R6
       B6
       P6
       B7
       V5
       A8
       R5
       Y7
       G7
       B5
       H6
       X4
       N6
       Q5
       O5
       Z4
       X7
       L5
       S4
       W7
       J5
       J7
       H5
       N7
       T7
       N4
       M4
       L4
       K4
       J4
       O4
       M7
       I7
       D4
       L6
       A7
       P4
       F6
       X6
       G4
       W5
       W4
       U5
       F7
       F5
       E7
       K6
       D5
       J6
       X5
       W6
       E6
       Z5
       T6
       G5
       A6
       Y5
       D6
       C5
       U4
       V4
       R4
       I4
       F4
       A5
       T5
       E5
       I5
       K5
       M5
       N5)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Bool) (S Int) (T Bool) (U Int) (V Bool) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Bool) (H1 Bool) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Bool) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Bool) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Bool) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Int) (F3 Bool) (G3 Int) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Bool) (M3 Int) (N3 Int) (O3 Bool) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Bool) (X3 Int) (Y3 Int) (Z3 Int) (A4 Bool) (B4 Int) (C4 Bool) (D4 Int) (E4 Int) (F4 Bool) (G4 Int) ) 
    (=>
      (and
        (state H1
       Q2
       O3
       C3
       W3
       A4
       P1
       K1
       V1
       Y1
       F4
       B
       F
       I
       G1
       C1
       N
       C4
       P2
       N2
       M
       L2
       L
       F1
       J2
       E1
       H2
       D1
       F2
       Z3
       R1
       B4
       V3
       S
       M1
       N3
       Y3
       Q3
       X3
       A2
       U3
       T3
       S3
       O1
       R3
       X2
       Q
       A3
       U1
       P3
       O
       Y2
       I3
       G3
       W2
       E3
       T2
       V2
       K
       R2
       U2
       K3
       S2
       D2
       O2
       M2
       K2
       I2
       G2
       E2
       C
       C2
       M3
       E4
       A1
       N1
       E
       X
       J1
       A
       B2
       H
       Z
       T1
       Z1
       S1
       X1
       W1
       Q1
       U
       I1
       W
       L1
       B1
       Y
       V
       T
       R
       P
       J
       G
       D
       G4
       D4
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
