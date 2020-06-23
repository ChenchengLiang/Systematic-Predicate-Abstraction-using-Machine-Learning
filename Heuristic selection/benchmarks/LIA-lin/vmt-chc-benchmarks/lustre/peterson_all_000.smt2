(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Bool) (C3 Bool) (D3 Int) (E3 Int) (F3 Int) (G3 Bool) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Bool) (W3 Int) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Bool) (C4 Int) (D4 Bool) (E4 Int) (F4 Bool) (G4 Int) (H4 Bool) (I4 Int) (J4 Bool) (K4 Int) (L4 Bool) (M4 Int) (N4 Bool) (O4 Int) (P4 Bool) (Q4 Int) (R4 Bool) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Bool) (D5 Int) (E5 Int) (F5 Bool) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Bool) (M5 Int) ) 
    (=>
      (and
        (let ((a!1 (= (or (not C3) (and (<= 0 X1) (<= 0 W1) (<= 0 V1) (<= 0 T1))) B3))
      (a!2 (= Y1
              (and U1
                   (not (<= 32767 X1))
                   (not (<= 32767 W1))
                   (not (<= 32767 V1))
                   (not (<= 32767 T1)))))
      (a!3 (= (or (and (not M2)
                       (not L5)
                       (not N)
                       (not H)
                       (not G3)
                       (not F5)
                       (not K)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not W2))
                  (and (not M2)
                       (not L5)
                       (not N)
                       (not H)
                       (not G3)
                       (not F5)
                       (not K)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       W2)
                  (and (not M2)
                       (not L5)
                       (not N)
                       (not H)
                       (not G3)
                       (not F5)
                       (not K)
                       (not Q)
                       (not Z)
                       (not E1)
                       A2
                       (not W2))
                  (and (not M2)
                       (not L5)
                       (not N)
                       (not H)
                       (not G3)
                       (not F5)
                       (not K)
                       (not Q)
                       (not Z)
                       E1
                       (not A2)
                       (not W2))
                  (and (not M2)
                       (not L5)
                       (not N)
                       (not H)
                       (not G3)
                       (not F5)
                       (not K)
                       (not Q)
                       Z
                       (not E1)
                       (not A2)
                       (not W2))
                  (and (not M2)
                       (not L5)
                       (not N)
                       (not H)
                       (not G3)
                       (not F5)
                       (not K)
                       Q
                       (not Z)
                       (not E1)
                       (not A2)
                       (not W2))
                  (and (not M2)
                       (not L5)
                       (not N)
                       (not H)
                       (not G3)
                       (not F5)
                       K
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not W2))
                  (and (not M2)
                       (not L5)
                       (not N)
                       (not H)
                       (not G3)
                       F5
                       (not K)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not W2))
                  (and (not M2)
                       (not L5)
                       (not N)
                       (not H)
                       G3
                       (not F5)
                       (not K)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not W2))
                  (and (not M2)
                       (not L5)
                       (not N)
                       H
                       (not G3)
                       (not F5)
                       (not K)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not W2))
                  (and (not M2)
                       (not L5)
                       N
                       (not H)
                       (not G3)
                       (not F5)
                       (not K)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not W2))
                  (and (not M2)
                       L5
                       (not N)
                       (not H)
                       (not G3)
                       (not F5)
                       (not K)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not W2))
                  (and M2
                       (not L5)
                       (not N)
                       (not H)
                       (not G3)
                       (not F5)
                       (not K)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not W2)))
              U1)))
  (and a!1
       (= C5 C3)
       a!2
       (= Y1 C5)
       (= Y3 W3)
       (= Q3 X1)
       (= O1 0)
       (= O1 E3)
       (= N1 1)
       (= N1 D3)
       (= J1 1)
       (= I1 1)
       (= F1 0)
       (= G1 1)
       (= H1 0)
       (= K1 0)
       (= L1 0)
       (= M1 0)
       (= P1 0)
       (= P1 P3)
       (= Q1 0)
       (= Q1 Q3)
       (= R1 1)
       (= R1 S3)
       (= S1 0)
       (= S1 Y3)
       (= D3 T1)
       (= E3 V1)
       (= P3 W1)
       (= S3 R3)
       (= T3 J1)
       (= T3 Q4)
       (= C4 F1)
       (= C4 A4)
       (= G4 E4)
       (= G4 G1)
       (= K4 H1)
       (= K4 I4)
       (= O4 I1)
       (= O4 M4)
       (= T4 U3)
       (= T4 K1)
       (= Z4 L1)
       (= Z4 Y4)
       (= B5 M1)
       (= B5 A5)
       (or W2 (= U2 M))
       (or (not W2) (= U2 X2))
       (or (not W2) (= Z2 Y2))
       (or W2 (= A3 Z2))
       (or A2 (= I2 W))
       (or (not A2) (= I2 H2))
       (or (not A2) (= G2 F2))
       (or A2 (= G2 U))
       (or A2 (= Z1 S))
       (or (not A2) (= Z1 B2))
       (or (not A2) (= D2 C2))
       (or A2 (= E2 D2))
       (or (not E1) (= D1 C1))
       (or (not E1) (= X4 E5))
       (or E1 (= D5 X4))
       (or (not Z) (= Y X))
       (or (not Z) (= B1 A1))
       (or Z (= O3 D1))
       (or (not Z) (= O3 U4))
       (or (not Z) (= W4 V4))
       (or Z (= X4 W4))
       (or (not Q) (= P O))
       (or (not Q) (= S R))
       (or (not Q) (= U T))
       (or (not Q) (= W V))
       (or (not K) (= R2 V2))
       (or (not K) (= J I))
       (or K (= U2 R2))
       (or F5 (= I5 J2))
       (or (not F5) (= I5 H5))
       (or F5 (= D5 G))
       (or (not F5) (= D5 G5))
       (or G3 (= F3 A))
       (or (not G3) (= F3 H3))
       (or G3 (= J3 K5))
       (or (not G3) (= J3 I3))
       (or G3 (= L3 C))
       (or (not G3) (= L3 K3))
       (or (not G3) (= N3 M3))
       (or G3 (= O3 N3))
       (or H (= J2 E))
       (or (not H) (= J2 K2))
       (or (not H) (= G F))
       (or (not N) (= M L))
       (or N (= A3 P))
       (or (not N) (= A3 S4))
       (or (not L5) (= K5 J5))
       (or (not L5) (= A M5))
       (or (not L5) (= C B))
       (or (not L5) (= E D))
       (or M2 (= R2 Q2))
       (or (not M2) (= Q2 P2))
       (or M2 (= E2 J))
       (or (not M2) (= E2 O2))
       (or M2 (= L2 B1))
       (or (not M2) (= L2 N2))
       (or M2 (= T2 Y))
       (or (not M2) (= T2 S2))
       a!3))
      )
      (state Y1
       C5
       M2
       A2
       K
       W2
       N
       Q
       G3
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
       P3
       O1
       E3
       N1
       D3
       I5
       J2
       H5
       D5
       G5
       G
       X4
       E5
       C3
       A5
       Y4
       W4
       V4
       O3
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
       X1
       W1
       N3
       M3
       L3
       C
       K3
       J3
       K5
       I3
       F3
       H3
       A
       V1
       T1
       B3
       A3
       S4
       P
       Z2
       Y2
       U2
       X2
       M
       R2
       V2
       T2
       Y
       S2
       Q2
       P2
       E2
       J
       O2
       L2
       N2
       B1
       K2
       E
       I2
       W
       H2
       G2
       U
       F2
       D2
       C2
       Z1
       B2
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Bool) (C3 Bool) (D3 Int) (E3 Int) (F3 Int) (G3 Bool) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Bool) (W3 Int) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Bool) (C4 Int) (D4 Bool) (E4 Int) (F4 Bool) (G4 Int) (H4 Bool) (I4 Int) (J4 Bool) (K4 Int) (L4 Bool) (M4 Int) (N4 Bool) (O4 Int) (P4 Bool) (Q4 Int) (R4 Bool) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Bool) (D5 Int) (E5 Int) (F5 Bool) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Bool) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Bool) (U5 Int) (V5 Int) (W5 Bool) (X5 Int) (Y5 Int) (Z5 Bool) (A6 Int) (B6 Int) (C6 Bool) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Bool) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Bool) (R6 Int) (S6 Int) (T6 Int) (U6 Int) (V6 Bool) (W6 Bool) (X6 Int) (Y6 Int) (Z6 Int) (A7 Bool) (B7 Bool) (C7 Int) (D7 Int) (E7 Int) (F7 Int) (G7 Int) (H7 Int) (I7 Int) (J7 Int) (K7 Int) (L7 Int) (M7 Bool) (N7 Int) (O7 Int) (P7 Int) (Q7 Int) (R7 Int) (S7 Bool) (T7 Bool) (U7 Int) (V7 Bool) (W7 Bool) (X7 Int) (Y7 Int) (Z7 Bool) (A8 Int) (B8 Int) (C8 Int) (D8 Bool) (E8 Bool) (F8 Int) (G8 Int) (H8 Int) (I8 Int) (J8 Int) (K8 Int) (L8 Int) (M8 Int) (N8 Int) (O8 Int) (P8 Int) (Q8 Int) (R8 Int) (S8 Int) (T8 Int) (U8 Int) (V8 Int) (W8 Int) (X8 Int) (Y8 Int) (Z8 Int) (A9 Int) (B9 Int) (C9 Int) (D9 Bool) (E9 Int) (F9 Int) (G9 Int) (H9 Bool) (I9 Bool) (J9 Int) (K9 Int) (L9 Bool) (M9 Int) (N9 Int) (O9 Bool) (P9 Int) (Q9 Bool) (R9 Bool) (S9 Int) (T9 Int) (U9 Bool) (V9 Int) (W9 Int) (X9 Int) (Y9 Int) (Z9 Int) (A10 Int) (B10 Int) (C10 Int) (D10 Int) (E10 Int) (F10 Int) (G10 Int) (H10 Int) (I10 Int) (J10 Int) (K10 Int) (L10 Int) (M10 Int) (N10 Int) (O10 Int) (P10 Int) (Q10 Int) (R10 Int) (S10 Int) (T10 Bool) (U10 Int) (V10 Bool) (W10 Int) (X10 Int) (Y10 Bool) (Z10 Int) ) 
    (=>
      (and
        (state Y1
       C5
       M2
       A2
       K
       W2
       N
       Q
       G3
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
       P3
       O1
       E3
       N1
       D3
       I5
       J2
       H5
       D5
       G5
       G
       X4
       E5
       C3
       A5
       Y4
       W4
       V4
       O3
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
       X1
       W1
       N3
       M3
       L3
       C
       K3
       J3
       X10
       I3
       F3
       H3
       A
       V1
       T1
       B3
       A3
       S4
       P
       Z2
       Y2
       U2
       X2
       M
       R2
       V2
       T2
       Y
       S2
       Q2
       P2
       E2
       J
       O2
       L2
       N2
       B1
       K2
       E
       I2
       W
       H2
       G2
       U
       F2
       D2
       C2
       Z1
       B2
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
                       (not A2)
                       (not M2)
                       (not W2)
                       (not G3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not M2)
                       (not W2)
                       (not G3)
                       (not F5)
                       Y10)
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not M2)
                       (not W2)
                       (not G3)
                       F5
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not M2)
                       (not W2)
                       G3
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not M2)
                       W2
                       (not G3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       M2
                       (not W2)
                       (not G3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       A2
                       (not M2)
                       (not W2)
                       (not G3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       E1
                       (not A2)
                       (not M2)
                       (not W2)
                       (not G3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       (not Q)
                       Z
                       (not E1)
                       (not A2)
                       (not M2)
                       (not W2)
                       (not G3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       (not N)
                       Q
                       (not Z)
                       (not E1)
                       (not A2)
                       (not M2)
                       (not W2)
                       (not G3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       (not K)
                       N
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not M2)
                       (not W2)
                       (not G3)
                       (not F5)
                       (not Y10))
                  (and (not H)
                       K
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not M2)
                       (not W2)
                       (not G3)
                       (not F5)
                       (not Y10))
                  (and H
                       (not K)
                       (not N)
                       (not Q)
                       (not Z)
                       (not E1)
                       (not A2)
                       (not M2)
                       (not W2)
                       (not G3)
                       (not F5)
                       (not Y10)))
              U1))
      (a!2 (= (or (not R9) (and (<= 0 G9) (<= 0 F9) (<= 0 E9) (<= 0 C9))) Q9))
      (a!3 (= (or (not C3) (and (<= 0 T1) (<= 0 V1) (<= 0 W1) (<= 0 X1))) B3))
      (a!4 (= H9
              (and C5
                   D9
                   (not (<= 32767 G9))
                   (not (<= 32767 F9))
                   (not (<= 32767 E9))
                   (not (<= 32767 C9)))))
      (a!5 (or (not V6) (= (+ G4 (* (- 1) U6)) (- 1))))
      (a!6 (or (not V6) (= (+ C4 (* (- 1) N8)) 1)))
      (a!7 (or (not V6) (= (+ P3 (* (- 1) A8)) (- 1))))
      (a!8 (or (not V6) (= (+ E3 (* (- 1) Y7)) 1)))
      (a!9 (or (not W6) (= (+ Z4 (* (- 1) P7)) (- 1))))
      (a!10 (or (not W6) (= (+ T4 (* (- 1) L7)) 1)))
      (a!11 (or (not W6) (= (+ G4 (* (- 1) M6)) 1)))
      (a!12 (or (not W6) (= (+ C4 (* (- 1) N6)) (- 1))))
      (a!13 (or (not A7) (= (+ T4 (* (- 1) K7)) (- 1))))
      (a!14 (or (not A7) (= (+ O4 (* (- 1) E7)) 1)))
      (a!15 (or (not A7) (= (+ K4 (* (- 1) Z6)) (- 1))))
      (a!16 (or (not A7) (= (+ T3 (* (- 1) H7)) 1)))
      (a!17 (or (not B7) (= (+ B5 (* (- 1) Q5)) 1)))
      (a!18 (or (not B7) (= (+ O4 (* (- 1) M5)) (- 1))))
      (a!19 (or (not B7) (= (+ K4 (* (- 1) L5)) 1)))
      (a!20 (or (not B7) (= (+ T3 (* (- 1) O5)) (- 1))))
      (a!21 (or (not M7) (= (+ Z4 (* (- 1) Q7)) (- 1))))
      (a!22 (or (not M7) (= (+ T4 (* (- 1) R6)) 1)))
      (a!23 (or (not S7) (= (+ B5 (* (- 1) K8)) (- 1))))
      (a!24 (or (not S7) (= (+ Z4 (* (- 1) R7)) 1)))
      (a!25 (or (not T7) (= (+ B5 (* (- 1) M8)) (- 1))))
      (a!26 (or (not T7) (= (+ Z4 (* (- 1) U5)) 1)))
      (a!27 (or (not V7) (= (+ Y3 (* (- 1) L8)) (- 1))))
      (a!28 (or (not V7) (= (+ S3 (* (- 1) J8)) 1)))
      (a!29 (or (not V7) (= (+ E3 (* (- 1) X7)) (- 1))))
      (a!30 (or (not V7) (= (+ D3 (* (- 1) U7)) 1)))
      (a!31 (or (not W7) (= (+ Y3 (* (- 1) I6)) 1)))
      (a!32 (or (not W7) (= (+ S3 (* (- 1) G6)) (- 1))))
      (a!33 (or (not W7) (= (+ Q3 (* (- 1) E6)) 1)))
      (a!34 (or (not W7) (= (+ D3 (* (- 1) D6)) (- 1))))
      (a!35 (or (not Z7) (= (+ P3 (* (- 1) B8)) (- 1))))
      (a!36 (or (not Z7) (= (+ E3 (* (- 1) X5)) 1)))
      (a!37 (or (not D8) (= (+ Q3 (* (- 1) F8)) (- 1))))
      (a!38 (or (not D8) (= (+ P3 (* (- 1) C8)) 1)))
      (a!39 (or (not E8) (= (+ Q3 (* (- 1) G8)) (- 1))))
      (a!40 (or (not E8) (= (+ P3 (* (- 1) A6)) 1)))
      (a!41 (= (or (and (not V10)
                        (not U9)
                        (not O9)
                        (not L9)
                        (not I9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not U9)
                        (not O9)
                        (not L9)
                        (not I9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        K5)
                   (and (not V10)
                        (not U9)
                        (not O9)
                        (not L9)
                        (not I9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        T5
                        (not K5))
                   (and (not V10)
                        (not U9)
                        (not O9)
                        (not L9)
                        (not I9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        W5
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not U9)
                        (not O9)
                        (not L9)
                        (not I9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        Z5
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not U9)
                        (not O9)
                        (not L9)
                        (not I9)
                        (not Q6)
                        (not L6)
                        C6
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not U9)
                        (not O9)
                        (not L9)
                        (not I9)
                        (not Q6)
                        L6
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not U9)
                        (not O9)
                        (not L9)
                        (not I9)
                        Q6
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not U9)
                        (not O9)
                        (not L9)
                        I9
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not U9)
                        (not O9)
                        L9
                        (not I9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        (not U9)
                        O9
                        (not L9)
                        (not I9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and (not V10)
                        U9
                        (not O9)
                        (not L9)
                        (not I9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5))
                   (and V10
                        (not U9)
                        (not O9)
                        (not L9)
                        (not I9)
                        (not Q6)
                        (not L6)
                        (not C6)
                        (not Z5)
                        (not W5)
                        (not T5)
                        (not K5)))
               D9)))
  (and a!1
       a!2
       a!3
       (= (and (<= 1 K4) (<= 1 B5)) B7)
       (= (and (<= 1 G4) (<= 1 Z4)) T7)
       (= (and (<= 1 G4) (<= 1 T4)) W6)
       (= (and (<= 1 C4) (<= 1 T4)) M7)
       (= (and (<= 1 T3) (<= 1 O4)) A7)
       (= (and (<= 1 S3) (<= 1 Z4)) S7)
       (= (and (<= 1 Q3) (<= 1 Y3)) W7)
       (= (and (<= 1 P3) (<= 1 O4)) D8)
       (= (and (<= 1 P3) (<= 1 C4)) E8)
       (= (and (<= 1 E3) (<= 1 G4)) Z7)
       (= (and (<= 1 E3) (<= 1 C4)) V6)
       (= (and (<= 1 D3) (<= 1 S3)) V7)
       a!4
       (= T10 H9)
       (= T10 R9)
       (= C5 C3)
       (= Y1 C5)
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
       (= S9 R8)
       (= S9 C9)
       (= T9 T8)
       (= T9 E9)
       (= W9 V8)
       (= W9 F9)
       (= X9 X8)
       (= X9 G9)
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
       (= Q3 X1)
       (= P3 W1)
       (= E3 V1)
       (= D3 T1)
       (= S1 Y3)
       (= R1 S3)
       (= Q1 Q3)
       (= P1 P3)
       (= O1 E3)
       (= N1 D3)
       (or (not K5) (= J5 L5))
       (or (not K5) (= N5 M5))
       (or (not K5) (= P5 O5))
       (or (not K5) (= R5 Q5))
       (or K5 (= B5 R5))
       (or K5 (= O4 N5))
       (or K5 (= K4 J5))
       (or K5 (= T3 P5))
       (or (not T5) (= S5 U5))
       (or T5 (= K9 R5))
       (or (not T5) (= K9 M8))
       (or T5 (= Z4 S5))
       (or (not W5) (= V5 X5))
       (or (not W5) (= B8 M9))
       (or W5 (= N9 M9))
       (or W5 (= E3 V5))
       (or (not Z5) (= Y5 A6))
       (or (not Z5) (= G8 P9))
       (or Z5 (= P9 F6))
       (or Z5 (= P3 Y5))
       (or (not C6) (= B6 D6))
       (or (not C6) (= F6 E6))
       (or (not C6) (= H6 G6))
       (or (not C6) (= J6 I6))
       (or C6 (= Y3 J6))
       (or C6 (= S3 H6))
       (or C6 (= Q3 F6))
       (or C6 (= D3 B6))
       (or (not L6) (= K6 M6))
       (or (not L6) (= O6 N6))
       (or (not L6) (= L7 V9))
       (or (not L6) (= H8 P7))
       (or L6 (= V9 P6))
       (or L6 (= O10 H8))
       (or L6 (= G4 K6))
       (or L6 (= C4 O6))
       (or (not Q6) (= P6 R6))
       (or (not Q6) (= Q7 O10))
       (or Q6 (= U10 O10))
       (or Q6 (= T4 P6))
       a!5
       a!6
       a!7
       a!8
       (or V6 (= G4 U6))
       (or V6 (= C4 N8))
       (or V6 (= P3 A8))
       (or V6 (= E3 Y7))
       a!9
       a!10
       a!11
       a!12
       (or W6 (= Z4 P7))
       (or W6 (= T4 L7))
       (or W6 (= G4 M6))
       (or W6 (= C4 N6))
       a!13
       a!14
       a!15
       a!16
       (or A7 (= T4 K7))
       (or A7 (= O4 E7))
       (or A7 (= K4 Z6))
       (or A7 (= T3 H7))
       a!17
       a!18
       a!19
       a!20
       (or B7 (= B5 Q5))
       (or B7 (= O4 M5))
       (or B7 (= K4 L5))
       (or B7 (= T3 O5))
       a!21
       a!22
       (or M7 (= Z4 Q7))
       (or M7 (= T4 R6))
       a!23
       a!24
       (or S7 (= B5 K8))
       (or S7 (= Z4 R7))
       a!25
       a!26
       (or T7 (= B5 M8))
       (or T7 (= Z4 U5))
       a!27
       a!28
       a!29
       a!30
       (or V7 (= Y3 L8))
       (or V7 (= S3 J8))
       (or V7 (= E3 X7))
       (or V7 (= D3 U7))
       a!31
       a!32
       a!33
       a!34
       (or W7 (= Y3 I6))
       (or W7 (= S3 G6))
       (or W7 (= Q3 E6))
       (or W7 (= D3 D6))
       a!35
       a!36
       (or Z7 (= P3 B8))
       (or Z7 (= E3 X5))
       a!37
       a!38
       (or D8 (= Q3 F8))
       (or D8 (= P3 C8))
       a!39
       a!40
       (or E8 (= Q3 G8))
       (or E8 (= P3 A6))
       (or I9 (= H6 Y8))
       (or I9 (= J6 A9))
       (or (not I9) (= U7 Q8))
       (or I9 (= Q8 B6))
       (or (not I9) (= S8 X7))
       (or (not I9) (= Y8 J8))
       (or (not I9) (= A9 L8))
       (or I9 (= J9 S8))
       (or L9 (= V5 J9))
       (or L9 (= O6 S6))
       (or (not L9) (= S6 N8))
       (or (not L9) (= U6 X6))
       (or L9 (= X6 K6))
       (or (not L9) (= U8 A8))
       (or (not L9) (= J9 Y7))
       (or L9 (= M9 U8))
       (or (not O9) (= C8 N9))
       (or (not O9) (= W8 F8))
       (or O9 (= N9 Y5))
       (or O9 (= P9 W8))
       (or U9 (= N5 F7))
       (or U9 (= P5 I7))
       (or (not U9) (= Z6 C7))
       (or U9 (= C7 J5))
       (or (not U9) (= F7 E7))
       (or (not U9) (= I7 H7))
       (or (not U9) (= N7 K7))
       (or U9 (= V9 N7))
       (or (not V10) (= R7 U10))
       (or (not V10) (= O8 K8))
       (or V10 (= K9 O8))
       (or V10 (= U10 S5))
       (or (not F5) (= I5 H5))
       (or F5 (= I5 J2))
       (or (not F5) (= D5 G5))
       (or F5 (= D5 G))
       (or G3 (= O3 N3))
       (or (not G3) (= N3 M3))
       (or (not G3) (= L3 K3))
       (or G3 (= L3 C))
       (or G3 (= J3 X10))
       (or (not G3) (= J3 I3))
       (or (not G3) (= F3 H3))
       (or G3 (= F3 A))
       (or W2 (= A3 Z2))
       (or (not W2) (= Z2 Y2))
       (or (not W2) (= U2 X2))
       (or W2 (= U2 M))
       (or (not M2) (= T2 S2))
       (or M2 (= T2 Y))
       (or M2 (= R2 Q2))
       (or (not M2) (= Q2 P2))
       (or (not M2) (= L2 N2))
       (or M2 (= L2 B1))
       (or (not M2) (= E2 O2))
       (or M2 (= E2 J))
       (or (not A2) (= I2 H2))
       (or A2 (= I2 W))
       (or (not A2) (= G2 F2))
       (or A2 (= G2 U))
       (or A2 (= E2 D2))
       (or (not A2) (= D2 C2))
       (or (not A2) (= Z1 B2))
       (or A2 (= Z1 S))
       (or E1 (= D5 X4))
       (or (not E1) (= X4 E5))
       (or Z (= X4 W4))
       (or (not Z) (= W4 V4))
       (or (not Z) (= O3 U4))
       (or Z (= O3 D1))
       (or (not N) (= A3 S4))
       (or N (= A3 P))
       (or K (= U2 R2))
       (or (not K) (= R2 V2))
       (or (not H) (= J2 K2))
       (or H (= J2 E))
       a!41))
      )
      (state H9
       T10
       L9
       I9
       W5
       O9
       Z5
       C6
       U9
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
       W9
       T8
       T9
       R8
       S9
       O8
       K9
       K8
       U10
       R7
       S5
       O10
       Q7
       R9
       R10
       P10
       H8
       P7
       V9
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
       G9
       F9
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
       E9
       C9
       Q9
       P9
       G8
       F6
       W8
       F8
       N9
       C8
       Y5
       M9
       B8
       S6
       O6
       N8
       U8
       A8
       J9
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Bool) (C3 Bool) (D3 Int) (E3 Int) (F3 Int) (G3 Bool) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Bool) (W3 Int) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Bool) (C4 Int) (D4 Bool) (E4 Int) (F4 Bool) (G4 Int) (H4 Bool) (I4 Int) (J4 Bool) (K4 Int) (L4 Bool) (M4 Int) (N4 Bool) (O4 Int) (P4 Bool) (Q4 Int) (R4 Bool) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Bool) (D5 Int) (E5 Int) (F5 Bool) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Bool) (M5 Int) ) 
    (=>
      (and
        (state Y1
       C5
       M2
       A2
       K
       W2
       N
       Q
       G3
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
       P3
       O1
       E3
       N1
       D3
       I5
       J2
       H5
       D5
       G5
       G
       X4
       E5
       C3
       A5
       Y4
       W4
       V4
       O3
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
       X1
       W1
       N3
       M3
       L3
       C
       K3
       J3
       K5
       I3
       F3
       H3
       A
       V1
       T1
       B3
       A3
       S4
       P
       Z2
       Y2
       U2
       X2
       M
       R2
       V2
       T2
       Y
       S2
       Q2
       P2
       E2
       J
       O2
       L2
       N2
       B1
       K2
       E
       I2
       W
       H2
       G2
       U
       F2
       D2
       C2
       Z1
       B2
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
        (not B3)
      )
      false
    )
  )
)

(check-sat)
(exit)
