(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Bool) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Int) (D2 Int) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Bool) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Bool) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Bool) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Int) ) 
    (=>
      (and
        (let ((a!1 (= (or (and (not T3)
                       (not L1)
                       (not X)
                       (not N2)
                       (not A)
                       (not D)
                       (not G)
                       (not M)
                       (not P)
                       (not U)
                       (not M3)
                       (not J))
                  (and (not T3)
                       (not L1)
                       (not X)
                       (not N2)
                       (not A)
                       (not D)
                       (not G)
                       (not M)
                       (not P)
                       (not U)
                       (not M3)
                       J)
                  (and (not T3)
                       (not L1)
                       (not X)
                       (not N2)
                       (not A)
                       (not D)
                       (not G)
                       (not M)
                       (not P)
                       (not U)
                       M3
                       (not J))
                  (and (not T3)
                       (not L1)
                       (not X)
                       (not N2)
                       (not A)
                       (not D)
                       (not G)
                       (not M)
                       (not P)
                       U
                       (not M3)
                       (not J))
                  (and (not T3)
                       (not L1)
                       (not X)
                       (not N2)
                       (not A)
                       (not D)
                       (not G)
                       (not M)
                       P
                       (not U)
                       (not M3)
                       (not J))
                  (and (not T3)
                       (not L1)
                       (not X)
                       (not N2)
                       (not A)
                       (not D)
                       (not G)
                       M
                       (not P)
                       (not U)
                       (not M3)
                       (not J))
                  (and (not T3)
                       (not L1)
                       (not X)
                       (not N2)
                       (not A)
                       (not D)
                       G
                       (not M)
                       (not P)
                       (not U)
                       (not M3)
                       (not J))
                  (and (not T3)
                       (not L1)
                       (not X)
                       (not N2)
                       (not A)
                       D
                       (not G)
                       (not M)
                       (not P)
                       (not U)
                       (not M3)
                       (not J))
                  (and (not T3)
                       (not L1)
                       (not X)
                       (not N2)
                       A
                       (not D)
                       (not G)
                       (not M)
                       (not P)
                       (not U)
                       (not M3)
                       (not J))
                  (and (not T3)
                       (not L1)
                       (not X)
                       N2
                       (not A)
                       (not D)
                       (not G)
                       (not M)
                       (not P)
                       (not U)
                       (not M3)
                       (not J))
                  (and (not T3)
                       (not L1)
                       X
                       (not N2)
                       (not A)
                       (not D)
                       (not G)
                       (not M)
                       (not P)
                       (not U)
                       (not M3)
                       (not J))
                  (and (not T3)
                       L1
                       (not X)
                       (not N2)
                       (not A)
                       (not D)
                       (not G)
                       (not M)
                       (not P)
                       (not U)
                       (not M3)
                       (not J))
                  (and T3
                       (not L1)
                       (not X)
                       (not N2)
                       (not A)
                       (not D)
                       (not G)
                       (not M)
                       (not P)
                       (not U)
                       (not M3)
                       (not J)))
              H1)))
  (and (= (or (not G2) (not F2)) E2)
       (= D3 G2)
       (= I1 F2)
       (= I1 H1)
       (= Z3 D3)
       (= Y2 X2)
       (= D1 0)
       (= D1 S2)
       (= B1 0)
       (= B1 K2)
       (= U2 T2)
       (= F1 0)
       (= F1 W2)
       (= Y 0)
       (= Z 0)
       (= A1 1)
       (= A1 I2)
       (= C1 0)
       (= C1 M2)
       (= E1 0)
       (= E1 U2)
       (= G1 0)
       (= G1 Y2)
       (= I2 H2)
       (= K2 J2)
       (= M2 L2)
       (= S2 R2)
       (= W2 V2)
       (= A3 Z2)
       (= A3 Y)
       (= C3 Z)
       (= C3 B3)
       (= Z3 (<= 2 I2))
       (or J (= G3 R))
       (or (not J) (= G3 I3))
       (or (not J) (= I H))
       (or M3 (= K3 O))
       (or (not M3) (= K3 N3))
       (or M3 (= P3 T))
       (or (not M3) (= P3 O3))
       (or (not U) (= T S))
       (or (not U) (= Q3 S3))
       (or U (= R3 Q3))
       (or (not P) (= O N))
       (or (not P) (= R Q))
       (or (not M) (= L K))
       (or (not M) (= J3 L3))
       (or M (= K3 J3))
       (or G (= G3 J1))
       (or (not G) (= F E))
       (or (not G) (= J1 H3))
       (or (not D) (= C B))
       (or D (= C2 O1))
       (or (not D) (= C2 D2))
       (or (not A) (= B4 A4))
       (or A (= E3 I))
       (or (not A) (= E3 F3))
       (or N2 (= Q2 F))
       (or (not N2) (= Q2 P2))
       (or N2 (= P1 B4))
       (or (not N2) (= P1 O2))
       (or (not X) (= W V))
       (or (not X) (= X3 Y3))
       (or X (= X3 K1))
       (or (not L1) (= O1 N1))
       (or L1 (= K1 J1))
       (or (not L1) (= K1 M1))
       (or L1 (= P1 O1))
       (or T3 (= W3 C))
       (or (not T3) (= W3 V3))
       (or T3 (= R3 W))
       (or (not T3) (= R3 U3))
       a!1))
      )
      (state I1
       F2
       M3
       M
       U
       T3
       X
       D
       L1
       N2
       A
       G
       J
       P
       H1
       Z3
       D3
       C3
       Z
       A3
       Y
       G1
       Y2
       F1
       W2
       E1
       U2
       D1
       S2
       C1
       M2
       B1
       K2
       A1
       I2
       X3
       Y3
       K1
       W3
       C
       V3
       R3
       U3
       W
       Q3
       S3
       P3
       T
       O3
       K3
       N3
       O
       J3
       L3
       G3
       I3
       R
       J1
       H3
       E3
       F3
       I
       G2
       B3
       Z2
       X2
       V2
       T2
       R2
       Q2
       F
       P2
       P1
       O2
       B4
       L2
       J2
       H2
       E2
       C2
       D2
       O1
       N1
       M1
       V
       S
       Q
       N
       L
       K
       H
       E
       B
       A4
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
       B2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Bool) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Int) (D2 Int) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Bool) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Bool) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Bool) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Bool) (C4 Int) (D4 Int) (E4 Bool) (F4 Int) (G4 Int) (H4 Bool) (I4 Int) (J4 Int) (K4 Bool) (L4 Int) (M4 Int) (N4 Bool) (O4 Int) (P4 Int) (Q4 Bool) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Bool) (W4 Int) (X4 Int) (Y4 Bool) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Bool) (E5 Int) (F5 Bool) (G5 Int) (H5 Bool) (I5 Int) (J5 Bool) (K5 Bool) (L5 Int) (M5 Int) (N5 Bool) (O5 Int) (P5 Int) (Q5 Bool) (R5 Int) (S5 Bool) (T5 Int) (U5 Int) (V5 Bool) (W5 Int) (X5 Bool) (Y5 Int) (Z5 Int) (A6 Int) (B6 Bool) (C6 Bool) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Int) (R6 Int) (S6 Bool) (T6 Bool) (U6 Int) (V6 Int) (W6 Bool) (X6 Int) (Y6 Int) (Z6 Bool) (A7 Bool) (B7 Bool) (C7 Int) (D7 Int) (E7 Int) (F7 Int) (G7 Int) (H7 Int) (I7 Bool) (J7 Int) (K7 Int) (L7 Int) (M7 Int) (N7 Int) (O7 Int) (P7 Int) (Q7 Int) (R7 Int) (S7 Int) (T7 Int) (U7 Int) (V7 Bool) (W7 Int) (X7 Int) (Y7 Bool) (Z7 Int) (A8 Bool) (B8 Bool) (C8 Int) (D8 Int) ) 
    (=>
      (and
        (state I1
       F2
       M3
       M
       U
       T3
       X
       D
       L1
       N2
       A
       G
       J
       P
       H1
       Z3
       D3
       C3
       Z
       A3
       Y
       G1
       Y2
       F1
       W2
       E1
       U2
       D1
       S2
       C1
       M2
       B1
       K2
       A1
       I2
       X3
       Y3
       K1
       W3
       C
       V3
       R3
       U3
       W
       Q3
       S3
       P3
       T
       O3
       K3
       N3
       O
       J3
       L3
       G3
       I3
       R
       J1
       H3
       E3
       F3
       I
       G2
       B3
       Z2
       X2
       V2
       T2
       R2
       Q2
       F
       P2
       P1
       O2
       D8
       L2
       J2
       H2
       E2
       C2
       D2
       O1
       N1
       M1
       V
       S
       Q
       N
       L
       K
       H
       E
       B
       C8
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
       B2)
        (let ((a!1 (= (or (and (not A8)
                       (not Y7)
                       (not I7)
                       (not W6)
                       (not Y4)
                       (not V4)
                       (not Q4)
                       (not N4)
                       (not K4)
                       (not H4)
                       (not E4)
                       (not B4))
                  (and (not A8)
                       (not Y7)
                       (not I7)
                       (not W6)
                       (not Y4)
                       (not V4)
                       (not Q4)
                       (not N4)
                       (not K4)
                       (not H4)
                       (not E4)
                       B4)
                  (and (not A8)
                       (not Y7)
                       (not I7)
                       (not W6)
                       (not Y4)
                       (not V4)
                       (not Q4)
                       (not N4)
                       (not K4)
                       (not H4)
                       E4
                       (not B4))
                  (and (not A8)
                       (not Y7)
                       (not I7)
                       (not W6)
                       (not Y4)
                       (not V4)
                       (not Q4)
                       (not N4)
                       (not K4)
                       H4
                       (not E4)
                       (not B4))
                  (and (not A8)
                       (not Y7)
                       (not I7)
                       (not W6)
                       (not Y4)
                       (not V4)
                       (not Q4)
                       (not N4)
                       K4
                       (not H4)
                       (not E4)
                       (not B4))
                  (and (not A8)
                       (not Y7)
                       (not I7)
                       (not W6)
                       (not Y4)
                       (not V4)
                       (not Q4)
                       N4
                       (not K4)
                       (not H4)
                       (not E4)
                       (not B4))
                  (and (not A8)
                       (not Y7)
                       (not I7)
                       (not W6)
                       (not Y4)
                       (not V4)
                       Q4
                       (not N4)
                       (not K4)
                       (not H4)
                       (not E4)
                       (not B4))
                  (and (not A8)
                       (not Y7)
                       (not I7)
                       (not W6)
                       (not Y4)
                       V4
                       (not Q4)
                       (not N4)
                       (not K4)
                       (not H4)
                       (not E4)
                       (not B4))
                  (and (not A8)
                       (not Y7)
                       (not I7)
                       (not W6)
                       Y4
                       (not V4)
                       (not Q4)
                       (not N4)
                       (not K4)
                       (not H4)
                       (not E4)
                       (not B4))
                  (and (not A8)
                       (not Y7)
                       (not I7)
                       W6
                       (not Y4)
                       (not V4)
                       (not Q4)
                       (not N4)
                       (not K4)
                       (not H4)
                       (not E4)
                       (not B4))
                  (and (not A8)
                       (not Y7)
                       I7
                       (not W6)
                       (not Y4)
                       (not V4)
                       (not Q4)
                       (not N4)
                       (not K4)
                       (not H4)
                       (not E4)
                       (not B4))
                  (and (not A8)
                       Y7
                       (not I7)
                       (not W6)
                       (not Y4)
                       (not V4)
                       (not Q4)
                       (not N4)
                       (not K4)
                       (not H4)
                       (not E4)
                       (not B4))
                  (and A8
                       (not Y7)
                       (not I7)
                       (not W6)
                       (not Y4)
                       (not V4)
                       (not Q4)
                       (not N4)
                       (not K4)
                       (not H4)
                       (not E4)
                       (not B4)))
              S6))
      (a!2 (= (or (and (not A)
                       (not D)
                       (not G)
                       (not J)
                       (not M)
                       (not P)
                       (not U)
                       (not X)
                       (not L1)
                       (not N2)
                       (not M3)
                       (not T3))
                  (and (not A)
                       (not D)
                       (not G)
                       (not J)
                       (not M)
                       (not P)
                       (not U)
                       (not X)
                       (not L1)
                       (not N2)
                       (not M3)
                       T3)
                  (and (not A)
                       (not D)
                       (not G)
                       (not J)
                       (not M)
                       (not P)
                       (not U)
                       (not X)
                       (not L1)
                       (not N2)
                       M3
                       (not T3))
                  (and (not A)
                       (not D)
                       (not G)
                       (not J)
                       (not M)
                       (not P)
                       (not U)
                       (not X)
                       (not L1)
                       N2
                       (not M3)
                       (not T3))
                  (and (not A)
                       (not D)
                       (not G)
                       (not J)
                       (not M)
                       (not P)
                       (not U)
                       (not X)
                       L1
                       (not N2)
                       (not M3)
                       (not T3))
                  (and (not A)
                       (not D)
                       (not G)
                       (not J)
                       (not M)
                       (not P)
                       (not U)
                       X
                       (not L1)
                       (not N2)
                       (not M3)
                       (not T3))
                  (and (not A)
                       (not D)
                       (not G)
                       (not J)
                       (not M)
                       (not P)
                       U
                       (not X)
                       (not L1)
                       (not N2)
                       (not M3)
                       (not T3))
                  (and (not A)
                       (not D)
                       (not G)
                       (not J)
                       (not M)
                       P
                       (not U)
                       (not X)
                       (not L1)
                       (not N2)
                       (not M3)
                       (not T3))
                  (and (not A)
                       (not D)
                       (not G)
                       (not J)
                       M
                       (not P)
                       (not U)
                       (not X)
                       (not L1)
                       (not N2)
                       (not M3)
                       (not T3))
                  (and (not A)
                       (not D)
                       (not G)
                       J
                       (not M)
                       (not P)
                       (not U)
                       (not X)
                       (not L1)
                       (not N2)
                       (not M3)
                       (not T3))
                  (and (not A)
                       (not D)
                       G
                       (not J)
                       (not M)
                       (not P)
                       (not U)
                       (not X)
                       (not L1)
                       (not N2)
                       (not M3)
                       (not T3))
                  (and (not A)
                       D
                       (not G)
                       (not J)
                       (not M)
                       (not P)
                       (not U)
                       (not X)
                       (not L1)
                       (not N2)
                       (not M3)
                       (not T3))
                  (and A
                       (not D)
                       (not G)
                       (not J)
                       (not M)
                       (not P)
                       (not U)
                       (not X)
                       (not L1)
                       (not N2)
                       (not M3)
                       (not T3)))
              H1))
      (a!3 (or (not D5) (= (+ C3 (* (- 1) C5)) (- 1))))
      (a!4 (or (not D5) (= (+ S2 (* (- 1) Z4)) 1)))
      (a!5 (or (not F5) (= (+ C3 (* (- 1) E5)) (- 1))))
      (a!6 (or (not F5) (= (+ W2 (* (- 1) Z5)) 1)))
      (a!7 (or (not H5) (= (+ C3 (* (- 1) G5)) (- 1))))
      (a!8 (or (not H5) (= (+ Y2 (* (- 1) I4)) 1)))
      (a!9 (or (not J5) (= (+ C3 (* (- 1) I5)) (- 1))))
      (a!10 (or (not J5) (= (+ A3 (* (- 1) L4)) 1)))
      (a!11 (or (not K5) (= (+ C3 (* (- 1) R4)) 1)))
      (a!12 (or (not K5) (= (+ K2 (* (- 1) S4)) (- 1))))
      (a!13 (or (not N5) (= (+ K2 (* (- 1) O5)) (- 1))))
      (a!14 (or (not N5) (= (+ I2 (* (- 1) O4)) 1)))
      (a!15 (or (not Q5) (= (+ M2 (* (- 1) R5)) (- 1))))
      (a!16 (or (not Q5) (= (+ K2 (* (- 1) P5)) 1)))
      (a!17 (or (not S5) (= (+ S2 (* (- 1) T5)) (- 1))))
      (a!18 (or (not S5) (= (+ M2 (* (- 1) W4)) 1)))
      (a!19 (or (not V5) (= (+ U2 (* (- 1) W5)) (- 1))))
      (a!20 (or (not V5) (= (+ S2 (* (- 1) U5)) 1)))
      (a!21 (or (not X5) (= (+ W2 (* (- 1) Y5)) (- 1))))
      (a!22 (or (not X5) (= (+ U2 (* (- 1) F4)) 1)))
      (a!23 (or (not B6) (= (+ Y2 (* (- 1) D6)) (- 1))))
      (a!24 (or (not B6) (= (+ W2 (* (- 1) A6)) 1)))
      (a!25 (or (not C6) (= (+ A3 (* (- 1) E6)) (- 1))))
      (a!26 (or (not C6) (= (+ W2 (* (- 1) C4)) 1))))
  (and (= (<= 1 A3) J5)
       (= (<= 1 Y2) H5)
       (= (<= 1 W2) F5)
       (= (<= 1 W2) B6)
       (= (<= 1 W2) C6)
       (= (<= 1 U2) X5)
       (= (<= 1 S2) D5)
       (= (<= 1 S2) V5)
       (= (<= 1 M2) S5)
       (= (<= 1 K2) Q5)
       (= (<= 1 I2) N5)
       a!1
       a!2
       (= (or (not B7) (not A7)) Z6)
       (= (or (not F2) (not G2)) E2)
       (= T6 (and F2 S6))
       (= A7 T6)
       (= V7 B7)
       (= V7 B8)
       (= Z3 D3)
       (= D3 G2)
       (= I1 F2)
       (= B5 A5)
       (= B5 S7)
       (= M5 L5)
       (= M5 U7)
       (= F6 M4)
       (= H6 G6)
       (= J6 I6)
       (= L6 K6)
       (= N6 M6)
       (= P6 O6)
       (= R6 Q6)
       (= D7 F6)
       (= D7 C7)
       (= F7 H6)
       (= F7 E7)
       (= H7 J6)
       (= H7 G7)
       (= K7 L6)
       (= K7 J7)
       (= M7 N6)
       (= M7 L7)
       (= O7 P6)
       (= O7 N7)
       (= Q7 R6)
       (= Q7 P7)
       (= S7 R7)
       (= U7 T7)
       (= C3 B3)
       (= C3 Z)
       (= A3 Z2)
       (= A3 Y)
       (= Y2 X2)
       (= W2 V2)
       (= U2 T2)
       (= S2 R2)
       (= M2 L2)
       (= K2 J2)
       (= I2 H2)
       (= G1 Y2)
       (= F1 W2)
       (= E1 U2)
       (= D1 S2)
       (= C1 M2)
       (= B1 K2)
       (= A1 I2)
       (= B8 (<= 2 D7))
       (= Z3 (<= 2 I2))
       (or (not B4) (= A4 C4))
       (or B4 (= A5 J4))
       (or (not B4) (= E6 A5))
       (or B4 (= W2 A4))
       (or (not E4) (= D4 F4))
       (or (not E4) (= Y5 O6))
       (or E4 (= O6 X6))
       (or E4 (= U2 D4))
       (or (not H4) (= G4 I4))
       (or (not H4) (= G5 U6))
       (or H4 (= W7 U6))
       (or H4 (= Y2 G4))
       (or (not K4) (= J4 L4))
       (or (not K4) (= I5 W7))
       (or K4 (= W7 P4))
       (or K4 (= A3 J4))
       (or (not N4) (= M4 O4))
       (or (not N4) (= O5 G6))
       (or N4 (= X7 G6))
       (or N4 (= I2 M4))
       (or (not Q4) (= P4 R4))
       (or (not Q4) (= T4 S4))
       (or Q4 (= C3 P4))
       (or Q4 (= K2 T4))
       (or (not V4) (= U4 W4))
       (or (not V4) (= T5 K6))
       (or V4 (= Z7 K6))
       (or V4 (= M2 U4))
       (or (not Y4) (= X4 Z4))
       (or (not Y4) (= C5 L5))
       (or Y4 (= L5 V6))
       (or Y4 (= S2 X4))
       a!3
       a!4
       (or D5 (= C3 C5))
       (or D5 (= S2 Z4))
       a!5
       a!6
       (or F5 (= C3 E5))
       (or F5 (= W2 Z5))
       a!7
       a!8
       (or H5 (= C3 G5))
       (or H5 (= Y2 I4))
       a!9
       a!10
       (or J5 (= C3 I5))
       (or J5 (= A3 L4))
       a!11
       a!12
       (or K5 (= C3 R4))
       (or K5 (= K2 S4))
       a!13
       a!14
       (or N5 (= K2 O5))
       (or N5 (= I2 O4))
       a!15
       a!16
       (or Q5 (= M2 R5))
       (or Q5 (= K2 P5))
       a!17
       a!18
       (or S5 (= S2 T5))
       (or S5 (= M2 W4))
       a!19
       a!20
       (or V5 (= U2 W5))
       (or V5 (= S2 U5))
       a!21
       a!22
       (or X5 (= W2 Y5))
       (or X5 (= U2 F4))
       a!23
       a!24
       (or B6 (= Y2 D6))
       (or B6 (= W2 A6))
       a!25
       a!26
       (or C6 (= A3 E6))
       (or C6 (= W2 C4))
       (or (not W6) (= V6 E5))
       (or W6 (= V6 U6))
       (or (not W6) (= X6 Z5))
       (or W6 (= Y6 X6))
       (or I7 (= G4 Q6))
       (or (not I7) (= A6 Y6))
       (or (not I7) (= Q6 D6))
       (or I7 (= Y6 A4))
       (or Y7 (= U4 I6))
       (or (not Y7) (= P5 X7))
       (or (not Y7) (= I6 R5))
       (or Y7 (= X7 T4))
       (or A8 (= D4 M6))
       (or (not A8) (= U5 Z7))
       (or (not A8) (= M6 W5))
       (or A8 (= Z7 X4))
       (or (not T3) (= W3 V3))
       (or T3 (= W3 C))
       (or (not T3) (= R3 U3))
       (or T3 (= R3 W))
       (or (not M3) (= P3 O3))
       (or M3 (= P3 T))
       (or (not M3) (= K3 N3))
       (or M3 (= K3 O))
       (or (not N2) (= Q2 P2))
       (or N2 (= Q2 F))
       (or N2 (= P1 D8))
       (or (not N2) (= P1 O2))
       (or L1 (= P1 O1))
       (or (not L1) (= O1 N1))
       (or (not L1) (= K1 M1))
       (or L1 (= K1 J1))
       (or (not X) (= X3 Y3))
       (or X (= X3 K1))
       (or U (= R3 Q3))
       (or (not U) (= Q3 S3))
       (or M (= K3 J3))
       (or (not M) (= J3 L3))
       (or (not J) (= G3 I3))
       (or J (= G3 R))
       (or G (= G3 J1))
       (or (not G) (= J1 H3))
       (or (not D) (= C2 D2))
       (or D (= C2 O1))
       (or (not A) (= E3 F3))
       (or A (= E3 I))
       (= (<= 1 C3) K5)))
      )
      (state T6
       A7
       Y7
       N4
       V4
       A8
       Y4
       E4
       W6
       I7
       B4
       H4
       K4
       Q4
       S6
       B8
       V7
       U7
       M5
       S7
       B5
       R6
       Q7
       P6
       O7
       N6
       M7
       L6
       K7
       J6
       H7
       H6
       F7
       F6
       D7
       L5
       C5
       V6
       M6
       D4
       W5
       Z7
       U5
       X4
       K6
       T5
       I6
       U4
       R5
       X7
       P5
       T4
       G6
       O5
       W7
       I5
       P4
       U6
       G5
       A5
       E6
       J4
       B7
       T7
       R7
       P7
       N7
       L7
       J7
       Q6
       G4
       D6
       Y6
       A6
       A4
       G7
       E7
       C7
       Z6
       O6
       Y5
       X6
       Z5
       E5
       Z4
       W4
       R4
       S4
       M4
       O4
       L4
       I4
       F4
       C4
       N5
       Q5
       S5
       V5
       D5
       X5
       F5
       B6
       C6
       H5
       J5
       K5)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Bool) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Int) (D2 Int) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Bool) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Bool) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Bool) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Int) ) 
    (=>
      (and
        (state I1
       F2
       M3
       M
       U
       T3
       X
       D
       L1
       N2
       A
       G
       J
       P
       H1
       Z3
       D3
       C3
       Z
       A3
       Y
       G1
       Y2
       F1
       W2
       E1
       U2
       D1
       S2
       C1
       M2
       B1
       K2
       A1
       I2
       X3
       Y3
       K1
       W3
       C
       V3
       R3
       U3
       W
       Q3
       S3
       P3
       T
       O3
       K3
       N3
       O
       J3
       L3
       G3
       I3
       R
       J1
       H3
       E3
       F3
       I
       G2
       B3
       Z2
       X2
       V2
       T2
       R2
       Q2
       F
       P2
       P1
       O2
       B4
       L2
       J2
       H2
       E2
       C2
       D2
       O1
       N1
       M1
       V
       S
       Q
       N
       L
       K
       H
       E
       B
       A4
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
       B2)
        (not E2)
      )
      false
    )
  )
)

(check-sat)
(exit)
