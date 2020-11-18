(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool Bool Bool Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Bool) (C2 Int) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Int) (H2 Bool) (I2 Int) (J2 Bool) (K2 Int) (L2 Bool) (M2 Int) (N2 Bool) (O2 Int) (P2 Bool) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Int) (C3 Bool) (D3 Int) (E3 Int) ) 
    (=>
      (and
        (let ((a!1 (= (or (not O) (not (<= 2 P))) N))
      (a!2 (= (or (and (not F)
                       (not C3)
                       (not C)
                       (not B2)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not E2))
                  (and (not F)
                       (not C3)
                       (not C)
                       (not B2)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       E2)
                  (and (not F)
                       (not C3)
                       (not C)
                       (not B2)
                       (not B1)
                       (not H1)
                       (not Q1)
                       X1
                       (not E2))
                  (and (not F)
                       (not C3)
                       (not C)
                       (not B2)
                       (not B1)
                       (not H1)
                       Q1
                       (not X1)
                       (not E2))
                  (and (not F)
                       (not C3)
                       (not C)
                       (not B2)
                       (not B1)
                       H1
                       (not Q1)
                       (not X1)
                       (not E2))
                  (and (not F)
                       (not C3)
                       (not C)
                       (not B2)
                       B1
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not E2))
                  (and (not F)
                       (not C3)
                       (not C)
                       B2
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not E2))
                  (and (not F)
                       (not C3)
                       C
                       (not B2)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not E2))
                  (and (not F)
                       C3
                       (not C)
                       (not B2)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not E2))
                  (and F
                       (not C3)
                       (not C)
                       (not B2)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not E2)))
              L)))
  (and a!1
       (= X O)
       (= M X)
       (= M L)
       (= R Q)
       (= J 0)
       (= J U)
       (= V2 R)
       (= V2 U2)
       (= I 0)
       (= I T)
       (= K 0)
       (= K W)
       (= T S)
       (= U P)
       (= W V)
       (or (not (<= Y 0)) (= (+ U2 Y) 1))
       (or (<= Y 0) (= U2 Y))
       (or E2 (= A2 P1))
       (or (not E2) (= W1 I2))
       (or (not E2) (= P1 G2))
       (or (not E2) (= V1 H))
       (or E2 (= K2 W1))
       (or E2 (= M2 V1))
       (or (not X1) (= L1 Y1))
       (or X1 (= W1 L1))
       (or (not X1) (= T1 Z1))
       (or X1 (= Q2 T1))
       (or (not Q1) (= F1 S1))
       (or (not Q1) (= G1 R1))
       (or (not Q1) (= O1 U1))
       (or Q1 (= P1 G1))
       (or Q1 (= T1 F1))
       (or Q1 (= V1 O1))
       (or (not H1) (= N1 M1))
       (or H1 (= L1 K1))
       (or (not H1) (= K1 J1))
       (or (not H1) (= A1 I1))
       (or H1 (= G1 A1))
       (or H1 (= O1 N1))
       (or (not B1) (= Z C1))
       (or B1 (= A1 Z))
       (or (not B1) (= E1 D1))
       (or B1 (= F1 E1))
       (or (not B2) (= A2 C2))
       (or B2 (= O2 A2))
       (or B2 (= K2 B))
       (or (not B2) (= K2 W2))
       (or (not B2) (= M2 X2))
       (or B2 (= M2 E))
       (or B2 (= Q2 B3))
       (or (not B2) (= Q2 Y2))
       (or (not G) (= H 0))
       (or (not C) (= B A))
       (or (not C) (= O2 S2))
       (or C (= R2 O2))
       (or (not C3) (= E3 D3))
       (or (not C3) (= B3 A3))
       (or (not Z2) (= Y2 0))
       (or (not Z2) (= X2 0))
       (or (not Z2) (= W2 1))
       (or (not F) (= E D))
       (or F (= R2 E3))
       (or (not F) (= R2 T2))
       a!2))
      )
      (state M
       X
       H1
       B1
       Q1
       X1
       E2
       B2
       C
       F
       C3
       L
       K
       W
       J
       U
       I
       T
       V2
       R
       R2
       T2
       E3
       O2
       S2
       M2
       E
       X2
       Q2
       B3
       Y2
       K2
       B
       W2
       A2
       C2
       V1
       H
       W1
       I2
       P1
       G2
       T1
       Z1
       L1
       Y1
       O1
       U1
       F1
       S1
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
       U2
       Y
       O
       V
       P
       S
       Q
       N
       Z2
       G
       D
       A
       D3
       A3
       D2
       F2
       H2
       J2
       L2
       N2
       P2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Bool) (C2 Int) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Int) (H2 Bool) (I2 Int) (J2 Bool) (K2 Int) (L2 Bool) (M2 Int) (N2 Bool) (O2 Int) (P2 Bool) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Bool) (B3 Int) (C3 Int) (D3 Bool) (E3 Int) (F3 Int) (G3 Bool) (H3 Int) (I3 Bool) (J3 Int) (K3 Bool) (L3 Int) (M3 Bool) (N3 Int) (O3 Bool) (P3 Int) (Q3 Bool) (R3 Int) (S3 Bool) (T3 Bool) (U3 Int) (V3 Int) (W3 Bool) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Bool) (C5 Int) (D5 Int) (E5 Int) (F5 Bool) (G5 Int) (H5 Int) (I5 Bool) (J5 Int) (K5 Int) (L5 Int) (M5 Bool) (N5 Int) (O5 Int) (P5 Int) (Q5 Bool) (R5 Int) (S5 Int) (T5 Bool) (U5 Int) (V5 Int) (W5 Int) (X5 Bool) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Bool) (F6 Int) (G6 Int) (H6 Bool) (I6 Int) (J6 Int) ) 
    (=>
      (and
        (state M
       X
       H1
       B1
       Q1
       X1
       E2
       B2
       C
       F
       H6
       L
       K
       W
       J
       U
       I
       T
       A6
       R
       R2
       T2
       J6
       O2
       S2
       M2
       E
       C6
       Q2
       G6
       D6
       K2
       B
       B6
       A2
       C2
       V1
       H
       W1
       I2
       P1
       G2
       T1
       Z1
       L1
       Y1
       O1
       U1
       F1
       S1
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
       Z5
       Y
       O
       V
       P
       S
       Q
       N
       E6
       G
       D
       A
       I6
       F6
       D2
       F2
       H2
       J2
       L2
       N2
       P2)
        (let ((a!1 (= (or (and (not X5)
                       (not T5)
                       (not Q5)
                       (not M5)
                       (not I5)
                       (not F5)
                       (not D3)
                       (not A3)
                       (not V2))
                  (and (not X5)
                       (not T5)
                       (not Q5)
                       (not M5)
                       (not I5)
                       (not F5)
                       (not D3)
                       (not A3)
                       V2)
                  (and (not X5)
                       (not T5)
                       (not Q5)
                       (not M5)
                       (not I5)
                       (not F5)
                       (not D3)
                       A3
                       (not V2))
                  (and (not X5)
                       (not T5)
                       (not Q5)
                       (not M5)
                       (not I5)
                       (not F5)
                       D3
                       (not A3)
                       (not V2))
                  (and (not X5)
                       (not T5)
                       (not Q5)
                       (not M5)
                       (not I5)
                       F5
                       (not D3)
                       (not A3)
                       (not V2))
                  (and (not X5)
                       (not T5)
                       (not Q5)
                       (not M5)
                       I5
                       (not F5)
                       (not D3)
                       (not A3)
                       (not V2))
                  (and (not X5)
                       (not T5)
                       (not Q5)
                       M5
                       (not I5)
                       (not F5)
                       (not D3)
                       (not A3)
                       (not V2))
                  (and (not X5)
                       (not T5)
                       Q5
                       (not M5)
                       (not I5)
                       (not F5)
                       (not D3)
                       (not A3)
                       (not V2))
                  (and (not X5)
                       T5
                       (not Q5)
                       (not M5)
                       (not I5)
                       (not F5)
                       (not D3)
                       (not A3)
                       (not V2))
                  (and X5
                       (not T5)
                       (not Q5)
                       (not M5)
                       (not I5)
                       (not F5)
                       (not D3)
                       (not A3)
                       (not V2)))
              P4))
      (a!2 (= (or (and (not C)
                       (not F)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not B2)
                       (not E2)
                       (not H6))
                  (and (not C)
                       (not F)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not B2)
                       (not E2)
                       H6)
                  (and (not C)
                       (not F)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not B2)
                       E2
                       (not H6))
                  (and (not C)
                       (not F)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       B2
                       (not E2)
                       (not H6))
                  (and (not C)
                       (not F)
                       (not B1)
                       (not H1)
                       (not Q1)
                       X1
                       (not B2)
                       (not E2)
                       (not H6))
                  (and (not C)
                       (not F)
                       (not B1)
                       (not H1)
                       Q1
                       (not X1)
                       (not B2)
                       (not E2)
                       (not H6))
                  (and (not C)
                       (not F)
                       (not B1)
                       H1
                       (not Q1)
                       (not X1)
                       (not B2)
                       (not E2)
                       (not H6))
                  (and (not C)
                       (not F)
                       B1
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not B2)
                       (not E2)
                       (not H6))
                  (and (not C)
                       F
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not B2)
                       (not E2)
                       (not H6))
                  (and C
                       (not F)
                       (not B1)
                       (not H1)
                       (not Q1)
                       (not X1)
                       (not B2)
                       (not E2)
                       (not H6)))
              L))
      (a!3 (= (or (not S4) (not (<= 2 T4))) R4))
      (a!4 (= (or (not O) (not (<= 2 P))) N))
      (a!5 (= K3 (and (<= 1 R) (<= 1 (+ W U)))))
      (a!6 (or (not G3) (= (+ U (* (- 1) Z3)) (- 1))))
      (a!7 (or (not G3) (= (+ R (* (- 1) F3)) 1)))
      (a!8 (or (not I3) (= (+ W (* (- 1) E4)) (- 2))))
      (a!9 (or (not I3) (= (+ T (* (- 1) U3)) 1)))
      (a!10 (or (not I3) (= (+ R (* (- 1) H3)) 1)))
      (a!11 (or (not K3) (= (+ W U (* (- 1) D4)) (- 1))))
      (a!12 (or (not K3) (= (+ R (* (- 1) J3)) 1)))
      (a!13 (or (not M3) (= (+ W R (* (- 1) L3)) 1)))
      (a!14 (or (not M3) (= (+ T (* (- 1) X3)) (- 1))))
      (a!15 (or (not O3) (= (+ W U T R (* (- 1) N3)) 1)))
      (a!16 (or (not Q3) (= (+ T (* (- 1) B3)) 1)))
      (a!17 (or (not Q3) (= (+ R (* (- 1) P3)) (- 1))))
      (a!18 (or (not S3) (= (+ W (* (- 1) E3)) 1)))
      (a!19 (or (not S3) (= (+ R (* (- 1) R3)) (- 1))))
      (a!20 (or (not T3) (= (+ U (* (- 1) X2)) 1)))
      (a!21 (or (not T3) (= (+ R (* (- 1) W2)) (- 1))))
      (a!22 (or (not W3) (= (+ U (* (- 1) B4)) 1)))
      (a!23 (or (not W3) (= (+ T (* (- 1) V3)) (- 1)))))
  (and (= (<= 1 W) S3)
       (= (<= 1 U) T3)
       (= (<= 1 U) W3)
       (= (<= 1 T) Q3)
       (= (<= 1 R) O3)
       a!1
       a!2
       a!3
       a!4
       (= (and (<= 1 R) (= T 0) (= U 0) (= W 0)) G3)
       (= (and (<= 1 R) (<= 1 T)) I3)
       a!5
       (= Q4 (and X P4))
       (= B5 Q4)
       (= B5 S4)
       (= X O)
       (= M X)
       (= A6 R)
       (= I4 H4)
       (= K4 J4)
       (= M4 L4)
       (= O4 N4)
       (= V4 I4)
       (= V4 U4)
       (= X4 K4)
       (= X4 W4)
       (= Y4 M4)
       (= Y4 T4)
       (= A5 O4)
       (= A5 Z4)
       (= W V)
       (= U P)
       (= T S)
       (= R Q)
       (= K W)
       (= J U)
       (= I T)
       (or (not (<= C5 0)) (= (+ C5 D5) 1))
       (or (<= C5 0) (= C5 D5))
       (or (not (<= Y 0)) (= (+ Z5 Y) 1))
       (or (<= Y 0) (= Z5 Y))
       (or (not V2) (= U2 W2))
       (or (not V2) (= Y2 X2))
       (or V2 (= U Y2))
       (or V2 (= R U2))
       (or (not A3) (= Z2 B3))
       (or (not A3) (= P3 W5))
       (or A3 (= Y5 W5))
       (or A3 (= T Z2))
       (or (not D3) (= C3 E3))
       (or (not D3) (= R3 Y5))
       (or D3 (= Y5 U2))
       (or D3 (= W C3))
       a!6
       a!7
       (or G3 (= U Z3))
       (or G3 (= R F3))
       a!8
       a!9
       a!10
       (or I3 (= W E4))
       (or I3 (= T U3))
       (or I3 (= R H3))
       a!11
       a!12
       (or (not K3) (= A4 0))
       (or K3 (= W D4))
       (or K3 (= U A4))
       (or K3 (= R J3))
       a!13
       a!14
       (or (not M3) (= F4 0))
       (or M3 (= W F4))
       (or M3 (= T X3))
       (or M3 (= R L3))
       a!15
       (or (not O3) (= Y3 1))
       (or (not O3) (= C4 0))
       (or (not O3) (= G4 0))
       (or O3 (= W G4))
       (or O3 (= U C4))
       (or O3 (= T Y3))
       (or O3 (= R N3))
       a!16
       a!17
       (or Q3 (= T B3))
       (or Q3 (= R P3))
       a!18
       a!19
       (or S3 (= W E3))
       (or S3 (= R R3))
       a!20
       a!21
       (or T3 (= U X2))
       (or T3 (= R W2))
       a!22
       a!23
       (or W3 (= U B4))
       (or W3 (= T V3))
       (or (not F5) (= F3 H4))
       (or (not F5) (= L4 Z3))
       (or F5 (= E5 H4))
       (or F5 (= G5 L4))
       (or (not I5) (= H3 E5))
       (or (not I5) (= J4 U3))
       (or (not I5) (= N4 E4))
       (or I5 (= H5 E5))
       (or I5 (= J5 J4))
       (or I5 (= K5 N4))
       (or (not M5) (= J3 H5))
       (or (not M5) (= G5 A4))
       (or (not M5) (= K5 D4))
       (or M5 (= L5 H5))
       (or M5 (= N5 G5))
       (or M5 (= O5 K5))
       (or (not Q5) (= V3 J5))
       (or (not Q5) (= N5 B4))
       (or Q5 (= P5 J5))
       (or Q5 (= R5 N5))
       (or (not T5) (= L3 L5))
       (or (not T5) (= O5 F4))
       (or (not T5) (= P5 X3))
       (or T5 (= S5 L5))
       (or T5 (= U5 P5))
       (or T5 (= V5 O5))
       (or X5 (= Y2 R5))
       (or X5 (= Z2 U5))
       (or X5 (= C3 V5))
       (or (not X5) (= N3 S5))
       (or (not X5) (= R5 C4))
       (or (not X5) (= U5 Y3))
       (or (not X5) (= V5 G4))
       (or X5 (= W5 S5))
       (or E2 (= M2 V1))
       (or E2 (= K2 W1))
       (or E2 (= A2 P1))
       (or (not E2) (= W1 I2))
       (or (not E2) (= V1 H))
       (or (not E2) (= P1 G2))
       (or B2 (= Q2 G6))
       (or (not B2) (= Q2 D6))
       (or B2 (= O2 A2))
       (or (not B2) (= M2 C6))
       (or B2 (= M2 E))
       (or (not B2) (= K2 B6))
       (or B2 (= K2 B))
       (or (not B2) (= A2 C2))
       (or X1 (= Q2 T1))
       (or X1 (= W1 L1))
       (or (not X1) (= T1 Z1))
       (or (not X1) (= L1 Y1))
       (or Q1 (= V1 O1))
       (or Q1 (= T1 F1))
       (or Q1 (= P1 G1))
       (or (not Q1) (= O1 U1))
       (or (not Q1) (= G1 R1))
       (or (not Q1) (= F1 S1))
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
       (or F (= R2 J6))
       (or (not F) (= R2 T2))
       (or C (= R2 O2))
       (or (not C) (= O2 S2))
       (= (<= 1 W) M3)))
      )
      (state Q4
       B5
       I5
       F5
       M5
       Q5
       T5
       X5
       A3
       D3
       V2
       P4
       O4
       A5
       M4
       Y4
       K4
       X4
       I4
       V4
       Y5
       R3
       U2
       W5
       P3
       V5
       C3
       G4
       R5
       Y2
       C4
       U5
       Z2
       Y3
       S5
       N3
       O5
       F4
       P5
       X3
       L5
       L3
       N5
       B4
       J5
       V3
       K5
       D4
       G5
       A4
       H5
       J3
       N4
       E4
       J4
       U3
       E5
       H3
       L4
       Z3
       H4
       F3
       D5
       C5
       S4
       Z4
       T4
       W4
       U4
       R4
       O3
       M3
       E3
       B3
       W2
       X2
       G3
       I3
       K3
       W3
       Q3
       S3
       T3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Bool) (C2 Int) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Int) (H2 Bool) (I2 Int) (J2 Bool) (K2 Int) (L2 Bool) (M2 Int) (N2 Bool) (O2 Int) (P2 Bool) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Int) (C3 Bool) (D3 Int) (E3 Int) ) 
    (=>
      (and
        (state M
       X
       H1
       B1
       Q1
       X1
       E2
       B2
       C
       F
       C3
       L
       K
       W
       J
       U
       I
       T
       V2
       R
       R2
       T2
       E3
       O2
       S2
       M2
       E
       X2
       Q2
       B3
       Y2
       K2
       B
       W2
       A2
       C2
       V1
       H
       W1
       I2
       P1
       G2
       T1
       Z1
       L1
       Y1
       O1
       U1
       F1
       S1
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
       U2
       Y
       O
       V
       P
       S
       Q
       N
       Z2
       G
       D
       A
       D3
       A3
       D2
       F2
       H2
       J2
       L2
       N2
       P2)
        (not N)
      )
      false
    )
  )
)

(check-sat)
(exit)
