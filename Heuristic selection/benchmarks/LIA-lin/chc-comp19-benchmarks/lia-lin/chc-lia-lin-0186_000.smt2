(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Bool Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Bool) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Bool) (A4 Bool) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (or (not N)
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
                       (not M))
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
      (a!2 (= A (and O (not (<= O3 0))))))
  (and (= B1 0)
       (= B1 C1)
       (= A1 Q2)
       (= Z 0)
       (= Z A1)
       (= Y P2)
       (= X 0)
       (= X Y)
       (= W 0)
       (= V O2)
       (= V W)
       (= T N2)
       (= T U)
       (= Q U)
       (= P O3)
       (= P Q)
       a!1
       (= (or (not J2) (<= O2 1)) S2)
       (= S M2)
       (= R S)
       (= B J2)
       a!2
       (= A B)
       (= R (<= 2 C1))
       (or (not T3) (= Y1 0))
       (or (not T3) (= U1 0))
       (or (not S3) (= H1 0))
       (or (not R3) (= K3 0))
       (or (not Q3) (= M3 1))
       (or (not P3) (= D3 0))
       (or (not P3) (= Y2 1))
       (or (not P3) (= V2 0))
       (or (not N) (= C2 D2))
       (or (not N) (= A2 B2))
       (or N (= V1 C2))
       (or N (= T1 A2))
       (or (not M) (= C3 V3))
       (or (not M) (= G2 U3))
       (or (not L) (= X2 W3))
       (or L (= E2 G2))
       (or (not L) (= E2 F2))
       (or (not K) (= A3 X3))
       (or (not K) (= H2 I2))
       (or K (= E2 H2))
       (or (not J) (= U2 Y3))
       (or (not J) (= K2 L2))
       (or J (= H2 K2))
       (or (not I) (= E3 F3))
       (or (not I) (= Z2 B3))
       (or I (= Z2 A3))
       (or (not I) (= W2 Y2))
       (or I (= W2 X2))
       (or (not I) (= T2 V2))
       (or I (= T2 U2))
       (or I (= K2 E3))
       (or (not I) (= N1 D3))
       (or I (= N1 C3))
       (or (not H) (= G3 H3))
       (or H (= T2 G3))
       (or (not H) (= W1 I3))
       (or H (= W1 E3))
       (or (not G) (= L3 N3))
       (or G (= Z2 L3))
       (or (not G) (= I1 M3))
       (or G (= I1 W2))
       (or F (= R1 L3))
       (or (not F) (= R1 K3))
       (or (not F) (= E1 J3))
       (or F (= E1 G3))
       (or E (= G1 I1))
       (or (not E) (= G1 H1))
       (or (not E) (= D1 F1))
       (or E (= D1 E1))
       (or (not D) (= Y1 Z1))
       (or (not D) (= V1 X1))
       (or D (= V1 W1))
       (or (not D) (= T1 U1))
       (or (not D) (= Q1 S1))
       (or D (= Q1 R1))
       (or (not D) (= O1 P1))
       (or D (= L1 T1))
       (or D (= J1 Z1))
       (or D (= G1 O1))
       (or C (= L1 N1))
       (or (not C) (= L1 M1))
       (or (not C) (= J1 K1))
       (or C (= D1 J1))
       (= C1 R2)))
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
       E4
       F4)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Bool) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Bool) (A4 Bool) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) (I4 Bool) (J4 Bool) (K4 Bool) (L4 Bool) (M4 Bool) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Bool) (V4 Int) (W4 Int) (X4 Bool) (Y4 Bool) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Bool) (Q6 Int) (R6 Int) (S6 Bool) (T6 Int) (U6 Int) (V6 Int) (W6 Int) (X6 Int) (Y6 Bool) (Z6 Int) (A7 Int) (B7 Int) (C7 Int) (D7 Int) (E7 Int) (F7 Int) (G7 Int) (H7 Int) (I7 Int) (J7 Int) (K7 Int) (L7 Int) (M7 Int) (N7 Int) (O7 Int) (P7 Int) (Q7 Int) (R7 Int) (S7 Int) (T7 Int) (U7 Int) (V7 Bool) (W7 Bool) (X7 Bool) (Y7 Bool) (Z7 Bool) (A8 Bool) (B8 Bool) (C8 Bool) (D8 Bool) (E8 Bool) (F8 Bool) (G8 Bool) (H8 Int) (I8 Int) (J8 Int) (K8 Int) (L8 Int) ) 
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
       E4
       F4)
        (let ((a!1 (= (or (not N)
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
                       (not M))
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
      (a!2 (= (or (not T4)
                  (and (not I4)
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
                  (and (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       T4)
                  (and (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       S4
                       (not T4))
                  (and (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       R4
                       (not S4)
                       (not T4))
                  (and (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       Q4
                       (not R4)
                       (not S4)
                       (not T4))
                  (and (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       P4
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4))
                  (and (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       O4
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4))
                  (and (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       N4
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4))
                  (and (not I4)
                       (not J4)
                       (not K4)
                       (not L4)
                       M4
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4))
                  (and (not I4)
                       (not J4)
                       (not K4)
                       L4
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4))
                  (and (not I4)
                       (not J4)
                       K4
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4))
                  (and (not I4)
                       J4
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4))
                  (and I4
                       (not J4)
                       (not K4)
                       (not L4)
                       (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)))
              U4))
      (a!3 (and (<= 1 T) (= V 0) (= Y 0) (= A1 0) (= C1 0)))
      (a!4 (and (<= 1 T) (<= 1 (+ V Y A1 C1))))
      (a!5 (or B (and U4 (not (<= U7 0)))))
      (a!6 (or (not E8) (= (+ C1 (* (- 1) R5)) 1)))
      (a!7 (or (not E8) (= (+ V (* (- 1) Q5)) (- 1))))
      (a!8 (or (not D8) (= (+ V (* (- 1) L5)) (- 1))))
      (a!9 (or (not C8) (= (+ V (* (- 1) P7)) (- 1))))
      (a!10 (or (not B8) (= (+ Y A1 (* (- 1) T7)) 1)))
      (a!11 (or (not A8) (= (+ V (* (- 1) N7)) (- 1))))
      (a!12 (or (not A8) (= (+ T (* (- 1) O7)) 1)))
      (a!13 (or (not G8) (= (+ C1 (* (- 1) H6)) (- 1))))
      (a!14 (or (not G8) (= (+ T (* (- 1) I6)) 1)))
      (a!15 (or (not F8) (= (+ A1 C1 (* (- 1) Y5)) (- 1))))
      (a!16 (or (not F8) (= (+ V Y (* (- 1) V5)) 0)))
      (a!17 (or (not F8) (= (+ T (* (- 1) D6)) 1)))
      (a!18 (or (not Z7) (= (+ V Y A1 C1 (* (- 1) H7)) 0)))
      (a!19 (or (not Z7) (= (+ T (* (- 1) K7)) 1)))
      (a!20 (or (not Y7) (= (+ V (* (- 1) H8)) 1)))
      (a!21 (or (not Y7) (= (+ T (* (- 1) Q6)) (- 1))))
      (a!22 (or (not X7) (= (+ A1 (* (- 1) J8)) 1)))
      (a!23 (or (not X7) (= (+ T (* (- 1) N6)) (- 1))))
      (a!24 (or (not W7) (= (+ Y (* (- 1) I8)) 1)))
      (a!25 (or (not W7) (= (+ T (* (- 1) K6)) (- 1))))
      (a!26 (or (not V7) (= (+ C1 (* (- 1) K8)) 1)))
      (a!27 (or (not V7) (= (+ T (* (- 1) L8)) (- 1)))))
  (and (= B1 C1)
       (= A1 Q2)
       (= Z A1)
       (= Y P2)
       (= X Y)
       (= V O2)
       (= V W)
       (= T N2)
       (= T U)
       (= Q W4)
       (= P Q)
       (= I5 G6)
       (= H5 X6)
       (= H5 I5)
       (= G5 X5)
       (= F5 W6)
       (= F5 G5)
       (= E5 U5)
       (= D5 V6)
       (= D5 E5)
       (= C5 U6)
       (= B5 E6)
       (= B5 C5)
       (= A5 T6)
       (= Z4 J6)
       (= Z4 A5)
       (= V4 W4)
       (= (<= 1 C1) E8)
       (= (<= 1 C1) V7)
       (= (<= 1 A1) X7)
       (= (<= 1 Y) W7)
       (= (<= 1 V) Y7)
       a!1
       a!2
       (= (or (not J2) (<= O2 1)) S2)
       (= (or (not P6) (<= U6 1)) Y6)
       (= a!3 A8)
       (= a!3 G8)
       (= a!4 F8)
       (= a!4 Z7)
       (= D8 (and (= Y 1) (= A1 0)))
       (= C8 (and (= Y 0) (= A1 1)))
       (= B8 (<= 2 (+ Y A1)))
       (= S M2)
       (= R S)
       (= B J2)
       (= A B)
       (= X4 S6)
       (= X4 Y4)
       (= H4 a!5)
       (= G4 P6)
       (= G4 H4)
       (= R (<= 2 C1))
       (= Y4 (<= 2 H5))
       a!6
       a!7
       (or E8 (= C1 R5))
       (or E8 (= V Q5))
       a!8
       (or D8 (= Y M5))
       (or D8 (= V L5))
       (or (not D8) (= M5 0))
       a!9
       (or C8 (= A1 Q7))
       (or C8 (= V P7))
       (or (not C8) (= Q7 0))
       a!10
       (or B8 (= A1 T7))
       (or B8 (= Y S7))
       (or (not B8) (= S7 1))
       a!11
       a!12
       (or A8 (= V N7))
       (or A8 (= T O7))
       (or (not N) (= C2 D2))
       (or (not N) (= A2 B2))
       (or N (= V1 C2))
       (or N (= T1 A2))
       (or L (= E2 G2))
       (or (not L) (= E2 F2))
       (or (not K) (= H2 I2))
       (or K (= E2 H2))
       (or (not J) (= K2 L2))
       (or J (= H2 K2))
       (or (not I) (= E3 F3))
       (or (not I) (= Z2 B3))
       (or I (= Z2 A3))
       (or (not I) (= W2 Y2))
       (or I (= W2 X2))
       (or (not I) (= T2 V2))
       (or I (= T2 U2))
       (or I (= K2 E3))
       (or (not I) (= N1 D3))
       (or I (= N1 C3))
       (or (not H) (= G3 H3))
       (or H (= T2 G3))
       (or (not H) (= W1 I3))
       (or H (= W1 E3))
       (or (not G) (= L3 N3))
       (or G (= Z2 L3))
       (or (not G) (= I1 M3))
       (or G (= I1 W2))
       (or F (= R1 L3))
       (or (not F) (= R1 K3))
       (or (not F) (= E1 J3))
       (or F (= E1 G3))
       (or E (= G1 I1))
       (or (not E) (= G1 H1))
       (or (not E) (= D1 F1))
       (or E (= D1 E1))
       (or (not D) (= Y1 Z1))
       (or (not D) (= V1 X1))
       (or D (= V1 W1))
       (or (not D) (= T1 U1))
       (or (not D) (= Q1 S1))
       (or D (= Q1 R1))
       (or (not D) (= O1 P1))
       (or D (= L1 T1))
       (or D (= J1 Z1))
       (or D (= G1 O1))
       (or C (= L1 N1))
       (or (not C) (= L1 M1))
       (or (not C) (= J1 K1))
       (or C (= D1 J1))
       a!13
       a!14
       (or G8 (= C1 H6))
       (or G8 (= T I6))
       a!15
       a!16
       a!17
       (or F8 (= C1 A6))
       (or F8 (= A1 Y5))
       (or F8 (= Y V5))
       (or F8 (= V F6))
       (or F8 (= T D6))
       (or (not F8) (= F6 0))
       (or (not F8) (= A6 0))
       a!18
       a!19
       (or Z7 (= C1 J7))
       (or Z7 (= A1 H7))
       (or Z7 (= Y E7))
       (or Z7 (= V B7))
       (or Z7 (= T K7))
       (or (not Z7) (= J7 0))
       (or (not Z7) (= E7 1))
       (or (not Z7) (= B7 0))
       a!20
       a!21
       (or Y7 (= V H8))
       (or Y7 (= T Q6))
       a!22
       a!23
       (or X7 (= A1 J8))
       (or X7 (= T N6))
       a!24
       a!25
       (or W7 (= Y I8))
       (or W7 (= T K6))
       a!26
       a!27
       (or V7 (= C1 K8))
       (or V7 (= T L8))
       (or (not T4) (= I6 J6))
       (or (not T4) (= G6 H6))
       (or T4 (= C6 J6))
       (or T4 (= Z5 G6))
       (or S4 (= C1 I7))
       (or S4 (= T M6))
       (or (not S4) (= I7 K8))
       (or (not S4) (= M6 L8))
       (or R4 (= Y C7))
       (or (not R4) (= C7 I8))
       (or R4 (= L6 M6))
       (or (not R4) (= K6 L6))
       (or Q4 (= A1 F7))
       (or (not Q4) (= F7 J8))
       (or (not Q4) (= N6 O6))
       (or Q4 (= L6 O6))
       (or P4 (= V Z6))
       (or (not P4) (= Z6 H8))
       (or (not P4) (= Q6 R6))
       (or P4 (= O6 R6))
       (or (not O4) (= K7 L7))
       (or (not O4) (= G7 H7))
       (or O4 (= F7 G7))
       (or (not O4) (= D7 E7))
       (or O4 (= C7 D7))
       (or (not O4) (= A7 B7))
       (or O4 (= Z6 A7))
       (or O4 (= R6 L7))
       (or (not O4) (= T5 J7))
       (or O4 (= T5 I7))
       (or (not N4) (= M7 N7))
       (or N4 (= A7 M7))
       (or (not N4) (= B6 O7))
       (or N4 (= B6 L7))
       (or (not M4) (= R7 T7))
       (or M4 (= G7 R7))
       (or (not M4) (= O5 S7))
       (or M4 (= O5 D7))
       (or L4 (= W5 R7))
       (or (not L4) (= W5 Q7))
       (or (not L4) (= J5 P7))
       (or L4 (= J5 M7))
       (or K4 (= N5 O5))
       (or (not K4) (= M5 N5))
       (or (not K4) (= K5 L5))
       (or K4 (= J5 K5))
       (or (not J4) (= E6 F6))
       (or (not J4) (= C6 D6))
       (or J4 (= B6 C6))
       (or (not J4) (= Z5 A6))
       (or (not J4) (= X5 Y5))
       (or J4 (= W5 X5))
       (or (not J4) (= U5 V5))
       (or J4 (= S5 Z5))
       (or J4 (= P5 E6))
       (or J4 (= N5 U5))
       (or I4 (= S5 T5))
       (or (not I4) (= R5 S5))
       (or (not I4) (= P5 Q5))
       (or I4 (= K5 P5))
       (= C1 R2)))
      )
      (state H4
       G4
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
       U4
       W4
       V4
       Y4
       X4
       A5
       Z4
       C5
       B5
       E5
       D5
       G5
       F5
       I5
       H5
       K5
       J5
       L5
       N5
       M5
       O5
       P5
       Q5
       S5
       R5
       T5
       U5
       V5
       X5
       W5
       Y5
       Z5
       A6
       C6
       B6
       D6
       F6
       E6
       G6
       H6
       J6
       I6
       L6
       K6
       M6
       O6
       N6
       P6
       R6
       Q6
       S6
       T6
       U6
       V6
       W6
       X6
       Y6
       A7
       Z6
       B7
       D7
       C7
       E7
       G7
       F7
       H7
       I7
       J7
       L7
       K7
       M7
       N7
       O7
       P7
       Q7
       R7
       S7
       T7
       U7
       Z7
       B8
       C8
       D8
       F8
       L8
       K8
       I8
       J8
       H8
       G8
       E8
       A8
       Y7
       X7
       W7
       V7)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Bool) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Bool) (A4 Bool) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) ) 
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
       E4
       F4)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
