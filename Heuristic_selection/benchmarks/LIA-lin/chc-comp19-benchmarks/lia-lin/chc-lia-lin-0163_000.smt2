(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool Bool Bool Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) ) 
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
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)))
              L))
      (a!2 (= A (and L (not (<= L2 0))))))
  (and (= S K2)
       (= S T)
       (= R P2)
       (= Q 0)
       (= Q R)
       (= P O2)
       (= O 0)
       (= O P)
       (= N N2)
       (= M 0)
       (= M N)
       a!1
       (= (or (not M2) (<= 0 O2)) R2)
       (= B M2)
       a!2
       (= A B)
       (or (not (<= L2 0)) (= (+ K2 L2) 1))
       (or (<= L2 0) (= K2 L2))
       (or (not T2) (= L1 0))
       (or (not S2) (= H1 1))
       (or (not S2) (= E1 0))
       (or (not S2) (= B1 0))
       (or (not K) (= D1 X2))
       (or (not K) (= W W2))
       (or (not J) (= A1 U2))
       (or J (= U W))
       (or (not J) (= U V))
       (or (not I) (= G1 V2))
       (or (not I) (= X Y))
       (or I (= U X))
       (or (not H) (= I1 J1))
       (or (not H) (= F1 H1))
       (or H (= F1 G1))
       (or (not H) (= C1 E1))
       (or H (= C1 D1))
       (or (not H) (= Z B1))
       (or H (= Z A1))
       (or H (= X I1))
       (or (not G) (= O1 P1))
       (or (not G) (= M1 N1))
       (or (not G) (= K1 L1))
       (or G (= I1 O1))
       (or G (= F1 M1))
       (or G (= Z K1))
       (or (not F) (= S1 T1))
       (or (not F) (= Q1 R1))
       (or F (= M1 S1))
       (or F (= C1 Q1))
       (or (not E) (= Y1 Z1))
       (or (not E) (= W1 X1))
       (or (not E) (= U1 V1))
       (or E (= Q1 W1))
       (or E (= O1 Y1))
       (or E (= K1 U1))
       (or (not D) (= I2 J2))
       (or (not D) (= G2 H2))
       (or D (= E2 I2))
       (or D (= W1 G2))
       (or (not C) (= E2 F2))
       (or (not C) (= C2 D2))
       (or (not C) (= A2 B2))
       (or C (= Y1 E2))
       (or C (= U1 A2))
       (or C (= S1 C2))
       (= T Q2)))
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
       E3)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Bool) (N3 Bool) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Bool) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Bool) (X5 Bool) (Y5 Bool) (Z5 Bool) (A6 Bool) (B6 Bool) (C6 Bool) (D6 Bool) (E6 Bool) (F6 Bool) (G6 Int) (H6 Int) (I6 Int) (J6 Int) ) 
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
       E3)
        (let ((a!1 (= (or (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)))
              L))
      (a!2 (= (or (and (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3))
                  (and (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       P3)
                  (and (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       O3
                       (not P3))
                  (and (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       N3
                       (not O3)
                       (not P3))
                  (and (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       M3
                       (not N3)
                       (not O3)
                       (not P3))
                  (and (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       L3
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3))
                  (and (not H3)
                       (not I3)
                       (not J3)
                       K3
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3))
                  (and (not H3)
                       (not I3)
                       J3
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3))
                  (and (not H3)
                       I3
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3))
                  (and H3
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)))
              Q3))
      (a!3 (= D6 (and (<= 1 T) (<= 1 (+ N P)))))
      (a!4 (= G3 (and Q3 B (not (<= P5 0)))))
      (a!5 (or (not C6) (= (+ R (* (- 1) X4)) (- 1))))
      (a!6 (or (not C6) (= (+ P (* (- 1) W4)) 1)))
      (a!7 (or (not B6) (= (+ N T (* (- 1) T4)) 1)))
      (a!8 (or (not B6) (= (+ R (* (- 1) S4)) (- 1))))
      (a!9 (or (not A6) (= (+ N P R T (* (- 1) N4)) 1)))
      (a!10 (or (not Z5) (= (+ T (* (- 1) C4)) (- 1))))
      (a!11 (or (not Z5) (= (+ R (* (- 1) I6)) 1)))
      (a!12 (or (not F6) (= (+ T (* (- 1) N5)) 1)))
      (a!13 (or (not F6) (= (+ P (* (- 1) M5)) (- 1))))
      (a!14 (or (not E6) (= (+ T (* (- 1) J5)) 1)))
      (a!15 (or (not E6) (= (+ R (* (- 1) I5)) 1)))
      (a!16 (or (not E6) (= (+ N (* (- 1) G5)) (- 2))))
      (a!17 (or (not D6) (= (+ N P (* (- 1) A5)) (- 1))))
      (a!18 (or (not D6) (= (+ T (* (- 1) D5)) 1)))
      (a!19 (or (not Y5) (= (+ T (* (- 1) Z3)) (- 1))))
      (a!20 (or (not Y5) (= (+ N (* (- 1) G6)) 1)))
      (a!21 (or (not X5) (= (+ T (* (- 1) J6)) (- 1))))
      (a!22 (or (not X5) (= (+ P (* (- 1) H6)) 1))))
  (and (= S T)
       (= R P2)
       (= Q R)
       (= P O2)
       (= O P)
       (= N N2)
       (= M N)
       (= Y3 O5)
       (= X3 V5)
       (= X3 Y3)
       (= W3 H5)
       (= V3 U5)
       (= V3 W3)
       (= U3 L5)
       (= T3 T5)
       (= T3 U3)
       (= S3 F5)
       (= R3 S5)
       (= R3 S3)
       (= (<= 1 T) A6)
       (= (<= 1 R) Z5)
       (= (<= 1 P) C6)
       (= (<= 1 P) X5)
       (= (<= 1 N) B6)
       (= (<= 1 N) Y5)
       a!1
       a!2
       (= (or (not M2) (<= 0 O2)) R2)
       (= (or (not R5) (<= 0 T5)) W5)
       (= (and (<= 1 T) (= N 0) (= P 0) (= R 0)) F6)
       (= (and (<= 1 R) (<= 1 T)) E6)
       (= B M2)
       (= A B)
       a!3
       a!4
       (= F3 R5)
       (= F3 G3)
       (or (not (<= L2 0)) (= (+ K2 L2) 1))
       (or (<= L2 0) (= K2 L2))
       (or (not (<= P5 0)) (= (+ P5 Q5) 1))
       (or (<= P5 0) (= P5 Q5))
       a!5
       a!6
       (or C6 (= R X4))
       (or C6 (= P W4))
       a!7
       a!8
       (or B6 (= T T4))
       (or B6 (= R S4))
       (or B6 (= N Q4))
       (or (not B6) (= Q4 0))
       a!9
       (or A6 (= T N4))
       (or A6 (= R M4))
       (or A6 (= P J4))
       (or A6 (= N G4))
       (or (not A6) (= M4 1))
       (or (not A6) (= J4 0))
       (or (not A6) (= G4 0))
       a!10
       a!11
       (or Z5 (= T C4))
       (or Z5 (= R I6))
       (or J (= U W))
       (or (not J) (= U V))
       (or (not I) (= X Y))
       (or I (= U X))
       (or (not H) (= I1 J1))
       (or (not H) (= F1 H1))
       (or H (= F1 G1))
       (or (not H) (= C1 E1))
       (or H (= C1 D1))
       (or (not H) (= Z B1))
       (or H (= Z A1))
       (or H (= X I1))
       (or (not G) (= O1 P1))
       (or (not G) (= M1 N1))
       (or (not G) (= K1 L1))
       (or G (= I1 O1))
       (or G (= F1 M1))
       (or G (= Z K1))
       (or (not F) (= S1 T1))
       (or (not F) (= Q1 R1))
       (or F (= M1 S1))
       (or F (= C1 Q1))
       (or (not E) (= Y1 Z1))
       (or (not E) (= W1 X1))
       (or (not E) (= U1 V1))
       (or E (= Q1 W1))
       (or E (= O1 Y1))
       (or E (= K1 U1))
       (or (not D) (= I2 J2))
       (or (not D) (= G2 H2))
       (or D (= E2 I2))
       (or D (= W1 G2))
       (or (not C) (= E2 F2))
       (or (not C) (= C2 D2))
       (or (not C) (= A2 B2))
       (or C (= Y1 E2))
       (or C (= U1 A2))
       (or C (= S1 C2))
       a!12
       a!13
       (or F6 (= T N5))
       (or F6 (= P M5))
       a!14
       a!15
       a!16
       (or E6 (= T J5))
       (or E6 (= R I5))
       (or E6 (= N G5))
       a!17
       a!18
       (or D6 (= T D5))
       (or D6 (= P C5))
       (or D6 (= N A5))
       (or (not D6) (= C5 0))
       a!19
       a!20
       (or Y5 (= T Z3))
       (or Y5 (= N G6))
       a!21
       a!22
       (or X5 (= T J6))
       (or X5 (= P H6))
       (or P3 (= T B4))
       (or P3 (= P H4))
       (or (not P3) (= H4 H6))
       (or (not P3) (= B4 J6))
       (or O3 (= N E4))
       (or (not O3) (= E4 G6))
       (or O3 (= A4 B4))
       (or (not O3) (= Z3 A4))
       (or N3 (= R K4))
       (or (not N3) (= K4 I6))
       (or (not N3) (= C4 D4))
       (or N3 (= A4 D4))
       (or (not M3) (= N4 O4))
       (or (not M3) (= L4 M4))
       (or M3 (= K4 L4))
       (or (not M3) (= I4 J4))
       (or M3 (= H4 I4))
       (or (not M3) (= F4 G4))
       (or M3 (= E4 F4))
       (or M3 (= D4 O4))
       (or (not L3) (= T4 U4))
       (or (not L3) (= R4 S4))
       (or (not L3) (= P4 Q4))
       (or L3 (= O4 U4))
       (or L3 (= L4 R4))
       (or L3 (= F4 P4))
       (or (not K3) (= X4 Y4))
       (or (not K3) (= V4 W4))
       (or K3 (= R4 Y4))
       (or K3 (= I4 V4))
       (or (not J3) (= D5 E5))
       (or (not J3) (= B5 C5))
       (or (not J3) (= Z4 A5))
       (or J3 (= V4 B5))
       (or J3 (= U4 E5))
       (or J3 (= P4 Z4))
       (or (not I3) (= N5 O5))
       (or (not I3) (= L5 M5))
       (or I3 (= K5 O5))
       (or I3 (= B5 L5))
       (or (not H3) (= J5 K5))
       (or (not H3) (= H5 I5))
       (or (not H3) (= F5 G5))
       (or H3 (= E5 K5))
       (or H3 (= Z4 F5))
       (or H3 (= Y4 H5))
       (= T Q2)))
      )
      (state G3
       F3
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
       S3
       R3
       U3
       T3
       W3
       V3
       Y3
       X3
       A4
       Z3
       B4
       D4
       C4
       F4
       E4
       G4
       I4
       H4
       J4
       L4
       K4
       M4
       O4
       N4
       P4
       Q4
       R4
       S4
       U4
       T4
       V4
       W4
       Y4
       X4
       Z4
       A5
       B5
       C5
       E5
       D5
       F5
       G5
       H5
       I5
       K5
       J5
       L5
       M5
       O5
       N5
       Q5
       P5
       R5
       S5
       T5
       U5
       V5
       W5
       A6
       B6
       G6
       I6
       J6
       H6
       F6
       E6
       D6
       C6
       Z5
       Y5
       X5)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) ) 
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
       E3)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
