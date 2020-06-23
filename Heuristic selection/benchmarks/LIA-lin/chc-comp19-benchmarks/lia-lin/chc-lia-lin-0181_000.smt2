(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Bool) (Z3 Bool) (A4 Bool) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) ) 
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
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       N)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       M
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       L
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)))
              O))
      (a!2 (= A (and O (not (<= N3 0))))))
  (and (= B1 0)
       (= B1 C1)
       (= A1 T2)
       (= Z 0)
       (= Z A1)
       (= Y S2)
       (= X 0)
       (= X Y)
       (= W 0)
       (= V R2)
       (= V W)
       (= T Q2)
       (= T U)
       (= Q U)
       (= P N3)
       (= P Q)
       a!1
       (= (or (not B) (not N2)) V2)
       (= S N2)
       (= R S)
       a!2
       (= A B)
       (= R (<= 2 C1))
       (or (not S3) (= C2 0))
       (or (not S3) (= Y1 0))
       (or (not R3) (= M1 0))
       (or (not Q3) (= H1 0))
       (or (not P3) (= J3 1))
       (or (not O3) (= G3 0))
       (or (not O3) (= B3 1))
       (or (not O3) (= Y2 0))
       (or (not N) (= F3 U3))
       (or (not N) (= K2 T3))
       (or (not M) (= A3 V3))
       (or M (= I2 K2))
       (or (not M) (= I2 J2))
       (or (not L) (= D3 W3))
       (or (not L) (= L2 M2))
       (or L (= I2 L2))
       (or (not K) (= X2 X3))
       (or (not K) (= O2 P2))
       (or K (= L2 O2))
       (or (not J) (= H3 I3))
       (or (not J) (= C3 E3))
       (or J (= C3 D3))
       (or (not J) (= Z2 B3))
       (or J (= Z2 A3))
       (or (not J) (= W2 Y2))
       (or J (= W2 X2))
       (or J (= O2 H3))
       (or (not J) (= S1 G3))
       (or J (= S1 F3))
       (or (not I) (= A2 M3))
       (or I (= A2 H3))
       (or (not I) (= E1 L3))
       (or I (= E1 W2))
       (or (not H) (= N1 J3))
       (or H (= N1 Z2))
       (or (not H) (= I1 K3))
       (or H (= I1 C3))
       (or G (= G1 I1))
       (or (not G) (= G1 H1))
       (or (not G) (= D1 F1))
       (or G (= D1 E1))
       (or F (= L1 N1))
       (or (not F) (= L1 M1))
       (or (not F) (= J1 K1))
       (or F (= D1 J1))
       (or E (= Q1 S1))
       (or (not E) (= Q1 R1))
       (or (not E) (= O1 P1))
       (or E (= J1 O1))
       (or (not D) (= G2 H2))
       (or (not D) (= E2 F2))
       (or D (= Z1 G2))
       (or D (= X1 E2))
       (or (not C) (= C2 D2))
       (or (not C) (= Z1 B2))
       (or C (= Z1 A2))
       (or (not C) (= X1 Y1))
       (or (not C) (= V1 W1))
       (or (not C) (= T1 U1))
       (or C (= Q1 X1))
       (or C (= O1 D2))
       (or C (= L1 T1))
       (or C (= G1 V1))
       (= C1 U2)))
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
       L3
       M3
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
       X3
       Y3
       Z3
       A4
       B4
       C4
       D4
       E4)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Bool) (Z3 Bool) (A4 Bool) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) (I4 Bool) (J4 Bool) (K4 Bool) (L4 Bool) (M4 Bool) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Int) (V4 Int) (W4 Bool) (X4 Bool) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Int) (R6 Int) (S6 Bool) (T6 Int) (U6 Int) (V6 Int) (W6 Int) (X6 Int) (Y6 Int) (Z6 Int) (A7 Bool) (B7 Int) (C7 Int) (D7 Int) (E7 Int) (F7 Int) (G7 Int) (H7 Int) (I7 Int) (J7 Int) (K7 Int) (L7 Int) (M7 Int) (N7 Int) (O7 Int) (P7 Int) (Q7 Int) (R7 Int) (S7 Int) (T7 Bool) (U7 Bool) (V7 Bool) (W7 Bool) (X7 Bool) (Y7 Bool) (Z7 Bool) (A8 Bool) (B8 Bool) (C8 Bool) (D8 Bool) (E8 Bool) (F8 Int) (G8 Int) (H8 Int) (I8 Int) (J8 Int) ) 
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
       L3
       M3
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
       X3
       Y3
       Z3
       A4
       B4
       C4
       D4
       E4)
        (let ((a!1 (= (or (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       N)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       M
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       L
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)))
              O))
      (a!2 (= (or (and (not H4)
                       (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4))
                  (and (not H4)
                       (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       S4)
                  (and (not H4)
                       (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       R4
                       (not S4))
                  (and (not H4)
                       (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       Q4
                       (not R4)
                       (not S4))
                  (and (not H4)
                       (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       P4
                       (not Q4)
                       (not R4)
                       (not S4))
                  (and (not H4)
                       (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       O4
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4))
                  (and (not H4)
                       (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       N4
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4))
                  (and (not H4)
                       (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       M4
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4))
                  (and (not H4)
                       (not I4)
                       (not J4)
                       (not K4)
                       L4
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4))
                  (and (not H4)
                       (not I4)
                       (not J4)
                       K4
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4))
                  (and (not H4)
                       (not I4)
                       J4
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4))
                  (and (not H4)
                       I4
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4))
                  (and H4
                       (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)))
              T4))
      (a!3 (and (<= 1 T) (= V 0) (= Y 0) (= A1 0) (= C1 0)))
      (a!4 (and (<= 1 T) (<= 1 (+ V Y A1 C1))))
      (a!5 (= G4 (and T4 B (not (<= S7 0)))))
      (a!6 (or (not C8) (= (+ C1 (* (- 1) V5)) 1)))
      (a!7 (or (not C8) (= (+ V (* (- 1) U5)) (- 1))))
      (a!8 (or (not B8) (= (+ V (* (- 1) P5)) (- 1))))
      (a!9 (or (not A8) (= (+ V (* (- 1) K5)) (- 1))))
      (a!10 (or (not Z7) (= (+ Y A1 (* (- 1) P7)) 1)))
      (a!11 (or (not Y7) (= (+ V (* (- 1) Q7)) (- 1))))
      (a!12 (or (not Y7) (= (+ T (* (- 1) R7)) 1)))
      (a!13 (or (not E8) (= (+ C1 (* (- 1) K6)) (- 1))))
      (a!14 (or (not E8) (= (+ T (* (- 1) L6)) 1)))
      (a!15 (or (not D8) (= (+ A1 C1 (* (- 1) B6)) (- 1))))
      (a!16 (or (not D8) (= (+ V Y (* (- 1) Z5)) 0)))
      (a!17 (or (not D8) (= (+ T (* (- 1) G6)) 1)))
      (a!18 (or (not X7) (= (+ V Y A1 C1 (* (- 1) J7)) 0)))
      (a!19 (or (not X7) (= (+ T (* (- 1) M7)) 1)))
      (a!20 (or (not W7) (= (+ V (* (- 1) F8)) 1)))
      (a!21 (or (not W7) (= (+ T (* (- 1) T6)) (- 1))))
      (a!22 (or (not V7) (= (+ A1 (* (- 1) H8)) 1)))
      (a!23 (or (not V7) (= (+ T (* (- 1) Q6)) (- 1))))
      (a!24 (or (not U7) (= (+ Y (* (- 1) G8)) 1)))
      (a!25 (or (not U7) (= (+ T (* (- 1) N6)) (- 1))))
      (a!26 (or (not T7) (= (+ C1 (* (- 1) I8)) 1)))
      (a!27 (or (not T7) (= (+ T (* (- 1) J8)) (- 1)))))
  (and (= B1 C1)
       (= A1 T2)
       (= Z A1)
       (= Y S2)
       (= X Y)
       (= V R2)
       (= V W)
       (= T Q2)
       (= T U)
       (= Q V4)
       (= P Q)
       (= H5 J6)
       (= G5 Z6)
       (= G5 H5)
       (= F5 A6)
       (= E5 Y6)
       (= E5 F5)
       (= D5 Y5)
       (= C5 X6)
       (= C5 D5)
       (= B5 W6)
       (= A5 H6)
       (= A5 B5)
       (= Z4 V6)
       (= Y4 M6)
       (= Y4 Z4)
       (= U4 V4)
       (= (<= 1 C1) C8)
       (= (<= 1 C1) T7)
       (= (<= 1 A1) V7)
       (= (<= 1 Y) U7)
       (= (<= 1 V) W7)
       a!1
       a!2
       (= (or (not B) (not N2)) V2)
       (= (or (not F4) (not S6)) A7)
       (= a!3 Y7)
       (= a!3 E8)
       (= a!4 D8)
       (= a!4 X7)
       (= B8 (and (= Y 1) (= A1 0)))
       (= A8 (and (= Y 0) (= A1 1)))
       (= Z7 (<= 2 (+ Y A1)))
       (= S N2)
       (= R S)
       (= A B)
       (= W4 S6)
       (= W4 X4)
       a!5
       (= F4 G4)
       (= R (<= 2 C1))
       (= X4 (<= 2 G5))
       a!6
       a!7
       (or C8 (= C1 V5))
       (or C8 (= V U5))
       a!8
       (or B8 (= Y Q5))
       (or B8 (= V P5))
       (or (not B8) (= Q5 0))
       a!9
       (or A8 (= A1 L5))
       (or A8 (= V K5))
       (or (not A8) (= L5 0))
       a!10
       (or Z7 (= A1 P7))
       (or Z7 (= Y O7))
       (or (not Z7) (= O7 1))
       a!11
       a!12
       (or Y7 (= V Q7))
       (or Y7 (= T R7))
       (or M (= I2 K2))
       (or (not M) (= I2 J2))
       (or (not L) (= L2 M2))
       (or L (= I2 L2))
       (or (not K) (= O2 P2))
       (or K (= L2 O2))
       (or (not J) (= H3 I3))
       (or (not J) (= C3 E3))
       (or J (= C3 D3))
       (or (not J) (= Z2 B3))
       (or J (= Z2 A3))
       (or (not J) (= W2 Y2))
       (or J (= W2 X2))
       (or J (= O2 H3))
       (or (not J) (= S1 G3))
       (or J (= S1 F3))
       (or (not I) (= A2 M3))
       (or I (= A2 H3))
       (or (not I) (= E1 L3))
       (or I (= E1 W2))
       (or (not H) (= N1 J3))
       (or H (= N1 Z2))
       (or (not H) (= I1 K3))
       (or H (= I1 C3))
       (or G (= G1 I1))
       (or (not G) (= G1 H1))
       (or (not G) (= D1 F1))
       (or G (= D1 E1))
       (or F (= L1 N1))
       (or (not F) (= L1 M1))
       (or (not F) (= J1 K1))
       (or F (= D1 J1))
       (or E (= Q1 S1))
       (or (not E) (= Q1 R1))
       (or (not E) (= O1 P1))
       (or E (= J1 O1))
       (or (not D) (= G2 H2))
       (or (not D) (= E2 F2))
       (or D (= Z1 G2))
       (or D (= X1 E2))
       (or (not C) (= C2 D2))
       (or (not C) (= Z1 B2))
       (or C (= Z1 A2))
       (or (not C) (= X1 Y1))
       (or (not C) (= V1 W1))
       (or (not C) (= T1 U1))
       (or C (= Q1 X1))
       (or C (= O1 D2))
       (or C (= L1 T1))
       (or C (= G1 V1))
       a!13
       a!14
       (or E8 (= C1 K6))
       (or E8 (= T L6))
       a!15
       a!16
       a!17
       (or D8 (= C1 D6))
       (or D8 (= A1 B6))
       (or D8 (= Y Z5))
       (or D8 (= V I6))
       (or D8 (= T G6))
       (or (not D8) (= I6 0))
       (or (not D8) (= D6 0))
       a!18
       a!19
       (or X7 (= C1 L7))
       (or X7 (= A1 J7))
       (or X7 (= Y G7))
       (or X7 (= V D7))
       (or X7 (= T M7))
       (or (not X7) (= L7 0))
       (or (not X7) (= G7 1))
       (or (not X7) (= D7 0))
       a!20
       a!21
       (or W7 (= V F8))
       (or W7 (= T T6))
       a!22
       a!23
       (or V7 (= A1 H8))
       (or V7 (= T Q6))
       a!24
       a!25
       (or U7 (= Y G8))
       (or U7 (= T N6))
       a!26
       a!27
       (or T7 (= C1 I8))
       (or T7 (= T J8))
       (or S4 (= C1 K7))
       (or S4 (= T P6))
       (or (not S4) (= K7 I8))
       (or (not S4) (= P6 J8))
       (or R4 (= Y E7))
       (or (not R4) (= E7 G8))
       (or R4 (= O6 P6))
       (or (not R4) (= N6 O6))
       (or Q4 (= A1 H7))
       (or (not Q4) (= H7 H8))
       (or (not Q4) (= Q6 R6))
       (or Q4 (= O6 R6))
       (or P4 (= V B7))
       (or (not P4) (= B7 F8))
       (or (not P4) (= T6 U6))
       (or P4 (= R6 U6))
       (or (not O4) (= M7 N7))
       (or (not O4) (= I7 J7))
       (or O4 (= H7 I7))
       (or (not O4) (= F7 G7))
       (or O4 (= E7 F7))
       (or (not O4) (= C7 D7))
       (or O4 (= B7 C7))
       (or O4 (= U6 N7))
       (or (not O4) (= X5 L7))
       (or O4 (= X5 K7))
       (or (not N4) (= E6 R7))
       (or N4 (= E6 N7))
       (or (not N4) (= I5 Q7))
       (or N4 (= I5 C7))
       (or (not M4) (= S5 O7))
       (or M4 (= S5 F7))
       (or (not M4) (= N5 P7))
       (or M4 (= N5 I7))
       (or L4 (= M5 N5))
       (or (not L4) (= L5 M5))
       (or (not L4) (= J5 K5))
       (or L4 (= I5 J5))
       (or K4 (= R5 S5))
       (or (not K4) (= Q5 R5))
       (or (not K4) (= O5 P5))
       (or K4 (= J5 O5))
       (or J4 (= W5 X5))
       (or (not J4) (= V5 W5))
       (or (not J4) (= T5 U5))
       (or J4 (= O5 T5))
       (or (not I4) (= L6 M6))
       (or (not I4) (= J6 K6))
       (or I4 (= F6 M6))
       (or I4 (= C6 J6))
       (or (not H4) (= H6 I6))
       (or (not H4) (= F6 G6))
       (or H4 (= E6 F6))
       (or (not H4) (= C6 D6))
       (or (not H4) (= A6 B6))
       (or (not H4) (= Y5 Z5))
       (or H4 (= W5 C6))
       (or H4 (= T5 H6))
       (or H4 (= R5 Y5))
       (or H4 (= M5 A6))
       (= C1 U2)))
      )
      (state G4
       F4
       H4
       I4
       J4
       K4
       L4
       M4
       N4
       O4
       P4
       Q4
       R4
       S4
       T4
       V4
       U4
       X4
       W4
       Z4
       Y4
       B5
       A5
       D5
       C5
       F5
       E5
       H5
       G5
       J5
       I5
       K5
       M5
       L5
       N5
       O5
       P5
       R5
       Q5
       S5
       T5
       U5
       W5
       V5
       X5
       Y5
       Z5
       A6
       B6
       C6
       D6
       F6
       E6
       G6
       I6
       H6
       J6
       K6
       M6
       L6
       O6
       N6
       P6
       R6
       Q6
       S6
       U6
       T6
       V6
       W6
       X6
       Y6
       Z6
       A7
       C7
       B7
       D7
       F7
       E7
       G7
       I7
       H7
       J7
       K7
       L7
       N7
       M7
       O7
       P7
       Q7
       R7
       S7
       X7
       Z7
       A8
       B8
       D8
       J8
       I8
       G8
       H8
       F8
       E8
       C8
       Y7
       W7
       V7
       U7
       T7)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Bool) (Z3 Bool) (A4 Bool) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) ) 
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
       L3
       M3
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
       X3
       Y3
       Z3
       A4
       B4
       C4
       D4
       E4)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
