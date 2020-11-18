(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Bool) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Bool) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Int) (C3 Int) (D3 Int) (E3 Bool) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Bool) (W3 Int) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Bool) (C4 Int) (D4 Bool) (E4 Int) (F4 Bool) (G4 Int) (H4 Bool) (I4 Int) (J4 Bool) (K4 Int) (L4 Bool) (M4 Int) (N4 Bool) (O4 Int) (P4 Bool) (Q4 Int) (R4 Bool) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Bool) (D5 Int) (E5 Int) (F5 Bool) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Bool) (M5 Int) ) 
    (=>
      (and
        (let ((a!1 (= V1 (and U1 (not (<= 32767 T1)))))
      (a!2 (= (or (and (not J2)
                       (not L5)
                       (not Q)
                       (not K)
                       (not X1)
                       (not T2)
                       (not F5)
                       (not H)
                       (not N)
                       (not Z)
                       (not E1)
                       (not E3))
                  (and (not J2)
                       (not L5)
                       (not Q)
                       (not K)
                       (not X1)
                       (not T2)
                       (not F5)
                       (not H)
                       (not N)
                       (not Z)
                       (not E1)
                       E3)
                  (and (not J2)
                       (not L5)
                       (not Q)
                       (not K)
                       (not X1)
                       (not T2)
                       (not F5)
                       (not H)
                       (not N)
                       (not Z)
                       E1
                       (not E3))
                  (and (not J2)
                       (not L5)
                       (not Q)
                       (not K)
                       (not X1)
                       (not T2)
                       (not F5)
                       (not H)
                       (not N)
                       Z
                       (not E1)
                       (not E3))
                  (and (not J2)
                       (not L5)
                       (not Q)
                       (not K)
                       (not X1)
                       (not T2)
                       (not F5)
                       (not H)
                       N
                       (not Z)
                       (not E1)
                       (not E3))
                  (and (not J2)
                       (not L5)
                       (not Q)
                       (not K)
                       (not X1)
                       (not T2)
                       (not F5)
                       H
                       (not N)
                       (not Z)
                       (not E1)
                       (not E3))
                  (and (not J2)
                       (not L5)
                       (not Q)
                       (not K)
                       (not X1)
                       (not T2)
                       F5
                       (not H)
                       (not N)
                       (not Z)
                       (not E1)
                       (not E3))
                  (and (not J2)
                       (not L5)
                       (not Q)
                       (not K)
                       (not X1)
                       T2
                       (not F5)
                       (not H)
                       (not N)
                       (not Z)
                       (not E1)
                       (not E3))
                  (and (not J2)
                       (not L5)
                       (not Q)
                       (not K)
                       X1
                       (not T2)
                       (not F5)
                       (not H)
                       (not N)
                       (not Z)
                       (not E1)
                       (not E3))
                  (and (not J2)
                       (not L5)
                       (not Q)
                       K
                       (not X1)
                       (not T2)
                       (not F5)
                       (not H)
                       (not N)
                       (not Z)
                       (not E1)
                       (not E3))
                  (and (not J2)
                       (not L5)
                       Q
                       (not K)
                       (not X1)
                       (not T2)
                       (not F5)
                       (not H)
                       (not N)
                       (not Z)
                       (not E1)
                       (not E3))
                  (and (not J2)
                       L5
                       (not Q)
                       (not K)
                       (not X1)
                       (not T2)
                       (not F5)
                       (not H)
                       (not N)
                       (not Z)
                       (not E1)
                       (not E3))
                  (and J2
                       (not L5)
                       (not Q)
                       (not K)
                       (not X1)
                       (not T2)
                       (not F5)
                       (not H)
                       (not N)
                       (not Z)
                       (not E1)
                       (not E3)))
              U1)))
  (and (= (or (not A3) (<= 0 T1)) Z2)
       (= C5 A3)
       a!1
       (= V1 C5)
       (= S3 R3)
       (= J1 1)
       (= I1 1)
       (= Y3 W3)
       (= Q3 P3)
       (= O1 0)
       (= O1 C3)
       (= N1 1)
       (= N1 S4)
       (= F1 0)
       (= G1 1)
       (= H1 0)
       (= K1 0)
       (= L1 0)
       (= M1 0)
       (= P1 0)
       (= P1 O3)
       (= Q1 0)
       (= Q1 Q3)
       (= R1 1)
       (= R1 S3)
       (= S1 0)
       (= S1 Y3)
       (= C3 B3)
       (= O3 N3)
       (= T3 J1)
       (= T3 Q4)
       (= C4 A4)
       (= C4 F1)
       (= G4 G1)
       (= G4 E4)
       (= K4 H1)
       (= K4 I4)
       (= O4 I1)
       (= O4 M4)
       (= S4 T1)
       (= T4 K1)
       (= T4 U3)
       (= Z4 L1)
       (= Z4 Y4)
       (= B5 M1)
       (= B5 A5)
       (or E3 (= D3 A))
       (or (not E3) (= D3 F3))
       (or E3 (= H3 K5))
       (or (not E3) (= H3 G3))
       (or E3 (= J3 C))
       (or (not E3) (= J3 I3))
       (or (not E3) (= L3 K3))
       (or E3 (= M3 L3))
       (or (not E1) (= D1 C1))
       (or (not E1) (= X4 E5))
       (or E1 (= D5 X4))
       (or (not Z) (= Y X))
       (or (not Z) (= B1 A1))
       (or Z (= M3 D1))
       (or (not Z) (= M3 U4))
       (or (not Z) (= W4 V4))
       (or Z (= X4 W4))
       (or (not N) (= M L))
       (or N (= X2 P))
       (or (not N) (= X2 Y2))
       (or H (= G2 E))
       (or (not H) (= G2 H2))
       (or (not H) (= G F))
       (or F5 (= I5 G2))
       (or (not F5) (= I5 H5))
       (or (not F5) (= D5 G5))
       (or F5 (= D5 G))
       (or T2 (= R2 M))
       (or (not T2) (= R2 U2))
       (or (not T2) (= W2 V2))
       (or T2 (= X2 W2))
       (or X1 (= F2 W))
       (or (not X1) (= F2 E2))
       (or X1 (= W1 S))
       (or (not X1) (= W1 Y1))
       (or (not X1) (= A2 Z1))
       (or X1 (= B2 A2))
       (or X1 (= D2 U))
       (or (not X1) (= D2 C2))
       (or K (= R2 O2))
       (or (not K) (= J I))
       (or (not K) (= O2 S2))
       (or (not Q) (= P O))
       (or (not Q) (= S R))
       (or (not Q) (= U T))
       (or (not Q) (= W V))
       (or (not L5) (= K5 J5))
       (or (not L5) (= A M5))
       (or (not L5) (= C B))
       (or (not L5) (= E D))
       (or J2 (= Q2 Y))
       (or (not J2) (= Q2 P2))
       (or J2 (= I2 B1))
       (or (not J2) (= I2 K2))
       (or J2 (= B2 J))
       (or (not J2) (= B2 L2))
       (or (not J2) (= N2 M2))
       (or J2 (= O2 N2))
       a!2))
      )
      (state V1
       C5
       J2
       X1
       K
       T2
       N
       Q
       E3
       Z
       E1
       F5
       H
       L5
       U1
       B5
       M1
       Z4
       L1
       T4
       K1
       T3
       J1
       O4
       I1
       K4
       H1
       G4
       G1
       C4
       F1
       S1
       Y3
       R1
       S3
       Q1
       Q3
       P1
       O3
       O1
       C3
       N1
       S4
       I5
       G2
       H5
       D5
       G5
       G
       X4
       E5
       A3
       A5
       Y4
       W4
       V4
       M3
       U4
       D1
       U3
       Q4
       M4
       I4
       E4
       A4
       W3
       R3
       P3
       N3
       L3
       K3
       J3
       C
       I3
       H3
       K5
       G3
       D3
       F3
       A
       B3
       T1
       Z2
       X2
       Y2
       P
       W2
       V2
       R2
       U2
       M
       O2
       S2
       Q2
       Y
       P2
       N2
       M2
       B2
       J
       L2
       I2
       K2
       B1
       H2
       E
       F2
       W
       E2
       D2
       U
       C2
       A2
       Z1
       W1
       Y1
       S
       C1
       A1
       X
       V
       T
       R
       O
       L
       I
       F
       D
       B
       M5
       J5
       V3
       X3
       Z3
       B4
       D4
       F4
       H4
       J4
       L4
       N4
       P4
       R4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Bool) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Bool) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Int) (C3 Int) (D3 Int) (E3 Bool) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Bool) (W3 Int) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Bool) (C4 Int) (D4 Bool) (E4 Int) (F4 Bool) (G4 Int) (H4 Bool) (I4 Int) (J4 Bool) (K4 Int) (L4 Bool) (M4 Int) (N4 Bool) (O4 Int) (P4 Bool) (Q4 Int) (R4 Bool) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Bool) (D5 Int) (E5 Int) (F5 Bool) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Bool) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Bool) (U5 Int) (V5 Int) (W5 Bool) (X5 Int) (Y5 Int) (Z5 Bool) (A6 Int) (B6 Int) (C6 Bool) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Bool) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Bool) (R6 Int) (S6 Int) (T6 Int) (U6 Int) (V6 Bool) (W6 Bool) (X6 Int) (Y6 Int) (Z6 Int) (A7 Bool) (B7 Bool) (C7 Int) (D7 Int) (E7 Int) (F7 Int) (G7 Int) (H7 Int) (I7 Int) (J7 Int) (K7 Int) (L7 Int) (M7 Bool) (N7 Int) (O7 Int) (P7 Int) (Q7 Int) (R7 Int) (S7 Bool) (T7 Bool) (U7 Int) (V7 Bool) (W7 Bool) (X7 Int) (Y7 Int) (Z7 Bool) (A8 Int) (B8 Int) (C8 Int) (D8 Bool) (E8 Bool) (F8 Int) (G8 Int) (H8 Int) (I8 Int) (J8 Int) (K8 Int) (L8 Int) (M8 Int) (N8 Int) (O8 Int) (P8 Int) (Q8 Int) (R8 Int) (S8 Int) (T8 Int) (U8 Int) (V8 Int) (W8 Int) (X8 Int) (Y8 Int) (Z8 Int) (A9 Int) (B9 Int) (C9 Int) (D9 Bool) (E9 Bool) (F9 Bool) (G9 Int) (H9 Int) (I9 Bool) (J9 Int) (K9 Int) (L9 Bool) (M9 Int) (N9 Bool) (O9 Bool) (P9 Int) (Q9 Int) (R9 Int) (S9 Bool) (T9 Int) (U9 Int) (V9 Int) (W9 Int) (X9 Int) (Y9 Int) (Z9 Int) (A10 Int) (B10 Int) (C10 Int) (D10 Int) (E10 Int) (F10 Int) (G10 Int) (H10 Int) (I10 Int) (J10 Int) (K10 Int) (L10 Int) (M10 Int) (N10 Int) (O10 Int) (P10 Int) (Q10 Int) (R10 Int) (S10 Int) (T10 Bool) (U10 Int) (V10 Bool) (W10 Int) (X10 Int) (Y10 Bool) (Z10 Int) ) 
    (=>
      (and
        (state V1
       C5
       J2
       X1
       K
       T2
       N
       Q
       E3
       Z
       E1
       F5
       H
       Y10
       U1
       B5
       M1
       Z4
       L1
       T4
       K1
       T3
       J1
       O4
       I1
       K4
       H1
       G4
       G1
       C4
       F1
       S1
       Y3
       R1
       S3
       Q1
       Q3
       P1
       O3
       O1
       C3
       N1
       S4
       I5
       G2
       H5
       D5
       G5
       G
       X4
       E5
       A3
       A5
       Y4
       W4
       V4
       M3
       U4
       D1
       U3
       Q4
       M4
       I4
       E4
       A4
       W3
       R3
       P3
       N3
       L3
       K3
       J3
       C
       I3
       H3
       X10
       G3
       D3
       F3
       A
       B3
       T1
       Z2
       X2
       Y2
       P
       W2
       V2
       R2
       U2
       M
       O2
       S2
       Q2
       Y
       P2
       N2
       M2
       B2
       J
       L2
       I2
       K2
       B1
       H2
       E
       F2
       W
       E2
       D2
       U
       C2
       A2
       Z1
       W1
       Y1
       S
       C1
       A1
       X
       V
       T
       R
       O
       L
       I
       F
       D
       B
       Z10
       W10
       V3
       X3
       Z3
       B4
       D4
       F4
       H4
       J4
       L4
       N4
       P4
       R4)
        (let ((a!1 (= (or (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not X1)
                       (not J2)
                       (not T2)
                       (not E3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not X1)
                       (not J2)
                       (not T2)
                       (not E3)
                       (not F5)
                       Y10)
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not X1)
                       (not J2)
                       (not T2)
                       (not E3)
                       F5
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not X1)
                       (not J2)
                       (not T2)
                       E3
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not X1)
                       (not J2)
                       T2
                       (not E3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not X1)
                       J2
                       (not T2)
                       (not E3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       X1
                       (not J2)
                       (not T2)
                       (not E3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       E1
                       (not X1)
                       (not J2)
                       (not T2)
                       (not E3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       Z
                       (not E1)
                       (not X1)
                       (not J2)
                       (not T2)
                       (not E3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       Q
                       (not Z)
                       (not E1)
                       (not X1)
                       (not J2)
                       (not T2)
                       (not E3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       N
                       (not Q)
                       (not Z)
                       (not E1)
                       (not X1)
                       (not J2)
                       (not T2)
                       (not E3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       K
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not X1)
                       (not J2)
                       (not T2)
                       (not E3)
                       (not F5)
                       (not Y10))
                  (and H
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not X1)
                       (not J2)
                       (not T2)
                       (not E3)
                       (not F5)
                       (not Y10)))
              U1))
      (a!2 (or C5 (and D9 (not (<= 32767 C9)))))
      (a!3 (or (not V6) (= (+ G4 (* (- 1) U6)) (- 1))))
      (a!4 (or (not V6) (= (+ C4 (* (- 1) N8)) 1)))
      (a!5 (or (not V6) (= (+ O3 (* (- 1) A8)) (- 1))))
      (a!6 (or (not V6) (= (+ C3 (* (- 1) Y7)) 1)))
      (a!7 (or (not W6) (= (+ Z4 (* (- 1) P7)) (- 1))))
      (a!8 (or (not W6) (= (+ T4 (* (- 1) L7)) 1)))
      (a!9 (or (not W6) (= (+ G4 (* (- 1) M6)) 1)))
      (a!10 (or (not W6) (= (+ C4 (* (- 1) N6)) (- 1))))
      (a!11 (or (not A7) (= (+ T4 (* (- 1) K7)) (- 1))))
      (a!12 (or (not A7) (= (+ O4 (* (- 1) E7)) 1)))
      (a!13 (or (not A7) (= (+ K4 (* (- 1) Z6)) (- 1))))
      (a!14 (or (not A7) (= (+ T3 (* (- 1) H7)) 1)))
      (a!15 (or (not B7) (= (+ B5 (* (- 1) Q5)) 1)))
      (a!16 (or (not B7) (= (+ O4 (* (- 1) M5)) (- 1))))
      (a!17 (or (not B7) (= (+ K4 (* (- 1) L5)) 1)))
      (a!18 (or (not B7) (= (+ T3 (* (- 1) O5)) (- 1))))
      (a!19 (or (not M7) (= (+ Z4 (* (- 1) Q7)) (- 1))))
      (a!20 (or (not M7) (= (+ T4 (* (- 1) R6)) 1)))
      (a!21 (or (not S7) (= (+ B5 (* (- 1) K8)) (- 1))))
      (a!22 (or (not S7) (= (+ Z4 (* (- 1) R7)) 1)))
      (a!23 (or (not T7) (= (+ B5 (* (- 1) M8)) (- 1))))
      (a!24 (or (not T7) (= (+ Z4 (* (- 1) U5)) 1)))
      (a!25 (or (not V7) (= (+ S4 (* (- 1) U7)) 1)))
      (a!26 (or (not V7) (= (+ Y3 (* (- 1) L8)) (- 1))))
      (a!27 (or (not V7) (= (+ S3 (* (- 1) J8)) 1)))
      (a!28 (or (not V7) (= (+ C3 (* (- 1) X7)) (- 1))))
      (a!29 (or (not W7) (= (+ S4 (* (- 1) D6)) (- 1))))
      (a!30 (or (not W7) (= (+ Y3 (* (- 1) I6)) 1)))
      (a!31 (or (not W7) (= (+ S3 (* (- 1) G6)) (- 1))))
      (a!32 (or (not W7) (= (+ Q3 (* (- 1) E6)) 1)))
      (a!33 (or (not Z7) (= (+ O3 (* (- 1) B8)) (- 1))))
      (a!34 (or (not Z7) (= (+ C3 (* (- 1) X5)) 1)))
      (a!35 (or (not D8) (= (+ Q3 (* (- 1) F8)) (- 1))))
      (a!36 (or (not D8) (= (+ O3 (* (- 1) C8)) 1)))
      (a!37 (or (not E8) (= (+ Q3 (* (- 1) G8)) (- 1))))
      (a!38 (or (not E8) (= (+ O3 (* (- 1) A6)) 1)))
      (a!39 (= (or (and (not V10)
                        (not S9)
                        (not L9)
                        (not I9)
                        (not F9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not S9)
                        (not L9)
                        (not I9)
                        (not F9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        K5)
                   (and (not V10)
                        (not S9)
                        (not L9)
                        (not I9)
                        (not F9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        T5
                        (not K5))
                   (and (not V10)
                        (not S9)
                        (not L9)
                        (not I9)
                        (not F9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        W5
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not S9)
                        (not L9)
                        (not I9)
                        (not F9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        Z5
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not S9)
                        (not L9)
                        (not I9)
                        (not F9)
                        (not Q6)
                        (not L6)
                        C6
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not S9)
                        (not L9)
                        (not I9)
                        (not F9)
                        (not Q6)
                        L6
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not S9)
                        (not L9)
                        (not I9)
                        (not F9)
                        Q6
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not S9)
                        (not L9)
                        (not I9)
                        F9
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not S9)
                        (not L9)
                        I9
                        (not F9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not S9)
                        L9
                        (not I9)
                        (not F9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        S9
                        (not L9)
                        (not I9)
                        (not F9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and V10
                        (not S9)
                        (not L9)
                        (not I9)
                        (not F9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5)))
               D9)))
  (and a!1
       (= (or (not O9) (<= 0 C9)) N9)
       (= (or (not A3) (<= 0 T1)) Z2)
       (= (and (<= 1 K4) (<= 1 B5)) B7)
       (= (and (<= 1 G4) (<= 1 Z4)) T7)
       (= (and (<= 1 G4) (<= 1 T4)) W6)
       (= (and (<= 1 C4) (<= 1 T4)) M7)
       (= (and (<= 1 T3) (<= 1 O4)) A7)
       (= (and (<= 1 S3) (<= 1 Z4)) S7)
       (= (and (<= 1 S3) (<= 1 S4)) V7)
       (= (and (<= 1 Q3) (<= 1 Y3)) W7)
       (= (and (<= 1 O3) (<= 1 O4)) D8)
       (= (and (<= 1 O3) (<= 1 C4)) E8)
       (= (and (<= 1 C3) (<= 1 G4)) Z7)
       (= (and (<= 1 C3) (<= 1 C4)) V6)
       (= E9 a!2)
       (= T10 E9)
       (= T10 O9)
       (= C5 A3)
       (= V1 C5)
       (= T6 S6)
       (= T6 D10)
       (= Y6 X6)
       (= Y6 F10)
       (= D7 C7)
       (= D7 H10)
       (= G7 F7)
       (= G7 J10)
       (= J7 I7)
       (= J7 L10)
       (= O7 N7)
       (= O7 N10)
       (= I8 H8)
       (= I8 Q10)
       (= P8 O8)
       (= P8 S10)
       (= R8 Q8)
       (= T8 S8)
       (= V8 U8)
       (= X8 W8)
       (= Z8 Y8)
       (= B9 A9)
       (= P9 R8)
       (= P9 C9)
       (= R9 T8)
       (= R9 Q9)
       (= V9 V8)
       (= V9 U9)
       (= X9 X8)
       (= X9 W9)
       (= Z9 Z8)
       (= Z9 Y9)
       (= B10 B9)
       (= B10 A10)
       (= D10 C10)
       (= F10 E10)
       (= H10 G10)
       (= J10 I10)
       (= L10 K10)
       (= N10 M10)
       (= Q10 P10)
       (= S10 R10)
       (= B5 A5)
       (= B5 M1)
       (= Z4 Y4)
       (= Z4 L1)
       (= T4 U3)
       (= T4 K1)
       (= S4 T1)
       (= O4 M4)
       (= O4 I1)
       (= K4 I4)
       (= K4 H1)
       (= G4 E4)
       (= G4 G1)
       (= C4 A4)
       (= C4 F1)
       (= Y3 W3)
       (= T3 Q4)
       (= T3 J1)
       (= S3 R3)
       (= Q3 P3)
       (= O3 N3)
       (= C3 B3)
       (= S1 Y3)
       (= R1 S3)
       (= Q1 Q3)
       (= P1 O3)
       (= O1 C3)
       (= N1 S4)
       (or (not K5) (= J5 L5))
       (or (not K5) (= N5 M5))
       (or (not K5) (= P5 O5))
       (or (not K5) (= R5 Q5))
       (or K5 (= B5 R5))
       (or K5 (= O4 N5))
       (or K5 (= K4 J5))
       (or K5 (= T3 P5))
       (or (not T5) (= S5 U5))
       (or T5 (= H9 R5))
       (or (not T5) (= H9 M8))
       (or T5 (= Z4 S5))
       (or (not W5) (= V5 X5))
       (or (not W5) (= B8 J9))
       (or W5 (= K9 J9))
       (or W5 (= C3 V5))
       (or (not Z5) (= Y5 A6))
       (or (not Z5) (= G8 M9))
       (or Z5 (= M9 F6))
       (or Z5 (= O3 Y5))
       (or (not C6) (= B6 D6))
       (or (not C6) (= F6 E6))
       (or (not C6) (= H6 G6))
       (or (not C6) (= J6 I6))
       (or C6 (= S4 B6))
       (or C6 (= Y3 J6))
       (or C6 (= S3 H6))
       (or C6 (= Q3 F6))
       (or (not L6) (= K6 M6))
       (or (not L6) (= O6 N6))
       (or (not L6) (= L7 T9))
       (or (not L6) (= H8 P7))
       (or L6 (= T9 P6))
       (or L6 (= O10 H8))
       (or L6 (= G4 K6))
       (or L6 (= C4 O6))
       (or (not Q6) (= P6 R6))
       (or (not Q6) (= Q7 O10))
       (or Q6 (= U10 O10))
       (or Q6 (= T4 P6))
       a!3
       a!4
       a!5
       a!6
       (or V6 (= G4 U6))
       (or V6 (= C4 N8))
       (or V6 (= O3 A8))
       (or V6 (= C3 Y7))
       a!7
       a!8
       a!9
       a!10
       (or W6 (= Z4 P7))
       (or W6 (= T4 L7))
       (or W6 (= G4 M6))
       (or W6 (= C4 N6))
       a!11
       a!12
       a!13
       a!14
       (or A7 (= T4 K7))
       (or A7 (= O4 E7))
       (or A7 (= K4 Z6))
       (or A7 (= T3 H7))
       a!15
       a!16
       a!17
       a!18
       (or B7 (= B5 Q5))
       (or B7 (= O4 M5))
       (or B7 (= K4 L5))
       (or B7 (= T3 O5))
       a!19
       a!20
       (or M7 (= Z4 Q7))
       (or M7 (= T4 R6))
       a!21
       a!22
       (or S7 (= B5 K8))
       (or S7 (= Z4 R7))
       a!23
       a!24
       (or T7 (= B5 M8))
       (or T7 (= Z4 U5))
       a!25
       a!26
       a!27
       a!28
       (or V7 (= S4 U7))
       (or V7 (= Y3 L8))
       (or V7 (= S3 J8))
       (or V7 (= C3 X7))
       a!29
       a!30
       a!31
       a!32
       (or W7 (= S4 D6))
       (or W7 (= Y3 I6))
       (or W7 (= S3 G6))
       (or W7 (= Q3 E6))
       a!33
       a!34
       (or Z7 (= O3 B8))
       (or Z7 (= C3 X5))
       a!35
       a!36
       (or D8 (= Q3 F8))
       (or D8 (= O3 C8))
       a!37
       a!38
       (or E8 (= Q3 G8))
       (or E8 (= O3 A6))
       (or F9 (= H6 Y8))
       (or F9 (= J6 A9))
       (or (not F9) (= U7 Q8))
       (or F9 (= Q8 B6))
       (or (not F9) (= S8 X7))
       (or (not F9) (= Y8 J8))
       (or (not F9) (= A9 L8))
       (or F9 (= G9 S8))
       (or I9 (= V5 G9))
       (or I9 (= O6 S6))
       (or (not I9) (= S6 N8))
       (or (not I9) (= U6 X6))
       (or I9 (= X6 K6))
       (or (not I9) (= U8 A8))
       (or (not I9) (= G9 Y7))
       (or I9 (= J9 U8))
       (or (not L9) (= C8 K9))
       (or (not L9) (= W8 F8))
       (or L9 (= K9 Y5))
       (or L9 (= M9 W8))
       (or S9 (= N5 F7))
       (or S9 (= P5 I7))
       (or (not S9) (= Z6 C7))
       (or S9 (= C7 J5))
       (or (not S9) (= F7 E7))
       (or (not S9) (= I7 H7))
       (or (not S9) (= N7 K7))
       (or S9 (= T9 N7))
       (or (not V10) (= R7 U10))
       (or (not V10) (= O8 K8))
       (or V10 (= H9 O8))
       (or V10 (= U10 S5))
       (or (not F5) (= I5 H5))
       (or F5 (= I5 G2))
       (or (not F5) (= D5 G5))
       (or F5 (= D5 G))
       (or E3 (= M3 L3))
       (or (not E3) (= L3 K3))
       (or (not E3) (= J3 I3))
       (or E3 (= J3 C))
       (or E3 (= H3 X10))
       (or (not E3) (= H3 G3))
       (or (not E3) (= D3 F3))
       (or E3 (= D3 A))
       (or T2 (= X2 W2))
       (or (not T2) (= W2 V2))
       (or (not T2) (= R2 U2))
       (or T2 (= R2 M))
       (or (not J2) (= Q2 P2))
       (or J2 (= Q2 Y))
       (or J2 (= O2 N2))
       (or (not J2) (= N2 M2))
       (or (not J2) (= I2 K2))
       (or J2 (= I2 B1))
       (or (not J2) (= B2 L2))
       (or J2 (= B2 J))
       (or (not X1) (= F2 E2))
       (or X1 (= F2 W))
       (or (not X1) (= D2 C2))
       (or X1 (= D2 U))
       (or X1 (= B2 A2))
       (or (not X1) (= A2 Z1))
       (or (not X1) (= W1 Y1))
       (or X1 (= W1 S))
       (or E1 (= D5 X4))
       (or (not E1) (= X4 E5))
       (or Z (= X4 W4))
       (or (not Z) (= W4 V4))
       (or (not Z) (= M3 U4))
       (or Z (= M3 D1))
       (or (not N) (= X2 Y2))
       (or N (= X2 P))
       (or K (= R2 O2))
       (or (not K) (= O2 S2))
       (or (not H) (= G2 H2))
       (or H (= G2 E))
       a!39))
      )
      (state E9
       T10
       I9
       F9
       W5
       L9
       Z5
       C6
       S9
       L6
       Q6
       V10
       T5
       K5
       D9
       S10
       P8
       Q10
       I8
       N10
       O7
       L10
       J7
       J10
       G7
       H10
       D7
       F10
       Y6
       D10
       T6
       B9
       B10
       Z8
       Z9
       X8
       X9
       V8
       V9
       T8
       R9
       R8
       P9
       O8
       H9
       K8
       U10
       R7
       S5
       O10
       Q7
       O9
       R10
       P10
       H8
       P7
       T9
       L7
       P6
       M10
       K10
       I10
       G10
       E10
       C10
       A10
       Y9
       W9
       U9
       N7
       K7
       I7
       P5
       H7
       F7
       N5
       E7
       C7
       Z6
       J5
       Q9
       C9
       N9
       M9
       G8
       F6
       W8
       F8
       K9
       C8
       Y5
       J9
       B8
       S6
       O6
       N8
       U8
       A8
       G9
       V5
       Y7
       X6
       U6
       K6
       M8
       R5
       A9
       J6
       L8
       Y8
       H6
       J8
       S8
       X7
       Q8
       U7
       B6
       R6
       M6
       N6
       I6
       G6
       D6
       E6
       A6
       X5
       U5
       Q5
       O5
       L5
       M5
       V7
       V6
       Z7
       D8
       E8
       W7
       A7
       W6
       M7
       S7
       T7
       B7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Bool) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Bool) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Int) (C3 Int) (D3 Int) (E3 Bool) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Bool) (W3 Int) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Bool) (C4 Int) (D4 Bool) (E4 Int) (F4 Bool) (G4 Int) (H4 Bool) (I4 Int) (J4 Bool) (K4 Int) (L4 Bool) (M4 Int) (N4 Bool) (O4 Int) (P4 Bool) (Q4 Int) (R4 Bool) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Bool) (D5 Int) (E5 Int) (F5 Bool) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Bool) (M5 Int) ) 
    (=>
      (and
        (state V1
       C5
       J2
       X1
       K
       T2
       N
       Q
       E3
       Z
       E1
       F5
       H
       L5
       U1
       B5
       M1
       Z4
       L1
       T4
       K1
       T3
       J1
       O4
       I1
       K4
       H1
       G4
       G1
       C4
       F1
       S1
       Y3
       R1
       S3
       Q1
       Q3
       P1
       O3
       O1
       C3
       N1
       S4
       I5
       G2
       H5
       D5
       G5
       G
       X4
       E5
       A3
       A5
       Y4
       W4
       V4
       M3
       U4
       D1
       U3
       Q4
       M4
       I4
       E4
       A4
       W3
       R3
       P3
       N3
       L3
       K3
       J3
       C
       I3
       H3
       K5
       G3
       D3
       F3
       A
       B3
       T1
       Z2
       X2
       Y2
       P
       W2
       V2
       R2
       U2
       M
       O2
       S2
       Q2
       Y
       P2
       N2
       M2
       B2
       J
       L2
       I2
       K2
       B1
       H2
       E
       F2
       W
       E2
       D2
       U
       C2
       A2
       Z1
       W1
       Y1
       S
       C1
       A1
       X
       V
       T
       R
       O
       L
       I
       F
       D
       B
       M5
       J5
       V3
       X3
       Z3
       B4
       D4
       F4
       H4
       J4
       L4
       N4
       P4
       R4)
        (not Z2)
      )
      false
    )
  )
)

(check-sat)
(exit)
