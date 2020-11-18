(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool Bool Bool Bool Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) ) 
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
              L)))
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
       (= (or (not M2) R2) S2)
       (= B M2)
       (= A L)
       (= A B)
       (or (not (<= L2 0)) (= (+ K2 L2) 1))
       (or (<= L2 0) (= K2 L2))
       (or (not U2) (= L1 0))
       (or (not T2) (= H1 1))
       (or (not T2) (= E1 0))
       (or (not T2) (= B1 0))
       (or (not K) (= D1 Y2))
       (or (not K) (= W X2))
       (or (not J) (= A1 V2))
       (or J (= U W))
       (or (not J) (= U V))
       (or (not I) (= G1 W2))
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
       (= R2 true)
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
       E3
       F3)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Bool) (N3 Bool) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Bool) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Bool) (Y5 Bool) (Z5 Bool) (A6 Bool) (B6 Bool) (C6 Bool) (D6 Bool) (E6 Bool) (F6 Bool) (G6 Bool) (H6 Bool) (I6 Int) (J6 Int) (K6 Int) (L6 Int) ) 
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
       F3)
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
      (a!2 (= (or (and (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3))
                  (and (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       Q3)
                  (and (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       P3
                       (not Q3))
                  (and (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       O3
                       (not P3)
                       (not Q3))
                  (and (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       N3
                       (not O3)
                       (not P3)
                       (not Q3))
                  (and (not I3)
                       (not J3)
                       (not K3)
                       (not L3)
                       M3
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3))
                  (and (not I3)
                       (not J3)
                       (not K3)
                       L3
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3))
                  (and (not I3)
                       (not J3)
                       K3
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3))
                  (and (not I3)
                       J3
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3))
                  (and I3
                       (not J3)
                       (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)))
              R3))
      (a!3 (= F6 (and (<= 1 T) (<= 1 (+ N P)))))
      (a!4 (= X5
              (= (+ N2 O2 P2 Q2 (* (- 1) T5) U5 (* (- 1) V5) (* (- 1) W5)) 1)))
      (a!5 (or (not E6) (= (+ R (* (- 1) Y4)) (- 1))))
      (a!6 (or (not E6) (= (+ P (* (- 1) X4)) 1)))
      (a!7 (or (not D6) (= (+ N T (* (- 1) U4)) 1)))
      (a!8 (or (not D6) (= (+ R (* (- 1) T4)) (- 1))))
      (a!9 (or (not C6) (= (+ N P R T (* (- 1) O4)) 1)))
      (a!10 (or (not B6) (= (+ T (* (- 1) D4)) (- 1))))
      (a!11 (or (not B6) (= (+ R (* (- 1) K6)) 1)))
      (a!12 (or (not H6) (= (+ T (* (- 1) O5)) 1)))
      (a!13 (or (not H6) (= (+ P (* (- 1) N5)) (- 1))))
      (a!14 (or (not G6) (= (+ T (* (- 1) K5)) 1)))
      (a!15 (or (not G6) (= (+ R (* (- 1) J5)) 1)))
      (a!16 (or (not G6) (= (+ N (* (- 1) H5)) (- 2))))
      (a!17 (or (not F6) (= (+ N P (* (- 1) B5)) (- 1))))
      (a!18 (or (not F6) (= (+ T (* (- 1) E5)) 1)))
      (a!19 (or (not A6) (= (+ T (* (- 1) A4)) (- 1))))
      (a!20 (or (not A6) (= (+ N (* (- 1) I6)) 1)))
      (a!21 (or (not Z5) (= (+ T (* (- 1) L6)) (- 1))))
      (a!22 (or (not Z5) (= (+ P (* (- 1) J6)) 1))))
  (and (= S T)
       (= R P2)
       (= Q R)
       (= P O2)
       (= O P)
       (= N N2)
       (= M N)
       (= Z3 P5)
       (= Y3 W5)
       (= Y3 Z3)
       (= X3 I5)
       (= W3 V5)
       (= W3 X3)
       (= V3 M5)
       (= U3 U5)
       (= U3 V3)
       (= T3 G5)
       (= S3 T5)
       (= S3 T3)
       (= (<= 1 T) C6)
       (= (<= 1 R) B6)
       (= (<= 1 P) E6)
       (= (<= 1 P) Z5)
       (= (<= 1 N) D6)
       (= (<= 1 N) A6)
       a!1
       a!2
       (= (or (not M2) R2) S2)
       (= (or (not S5) X5) Y5)
       (= (and (<= 1 T) (= N 0) (= P 0) (= R 0)) H6)
       (= (and (<= 1 R) (<= 1 T)) G6)
       (= B M2)
       (= A B)
       a!3
       a!4
       (= H3 (and R3 B))
       (= G3 S5)
       (= G3 H3)
       (or (not (<= L2 0)) (= (+ K2 L2) 1))
       (or (<= L2 0) (= K2 L2))
       (or (not (<= Q5 0)) (= (+ Q5 R5) 1))
       (or (<= Q5 0) (= Q5 R5))
       a!5
       a!6
       (or E6 (= R Y4))
       (or E6 (= P X4))
       a!7
       a!8
       (or D6 (= T U4))
       (or D6 (= R T4))
       (or D6 (= N R4))
       (or (not D6) (= R4 0))
       a!9
       (or C6 (= T O4))
       (or C6 (= R N4))
       (or C6 (= P K4))
       (or C6 (= N H4))
       (or (not C6) (= N4 1))
       (or (not C6) (= K4 0))
       (or (not C6) (= H4 0))
       a!10
       a!11
       (or B6 (= T D4))
       (or B6 (= R K6))
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
       (or H6 (= T O5))
       (or H6 (= P N5))
       a!14
       a!15
       a!16
       (or G6 (= T K5))
       (or G6 (= R J5))
       (or G6 (= N H5))
       a!17
       a!18
       (or F6 (= T E5))
       (or F6 (= P D5))
       (or F6 (= N B5))
       (or (not F6) (= D5 0))
       a!19
       a!20
       (or A6 (= T A4))
       (or A6 (= N I6))
       a!21
       a!22
       (or Z5 (= T L6))
       (or Z5 (= P J6))
       (or Q3 (= T C4))
       (or Q3 (= P I4))
       (or (not Q3) (= I4 J6))
       (or (not Q3) (= C4 L6))
       (or P3 (= N F4))
       (or (not P3) (= F4 I6))
       (or P3 (= B4 C4))
       (or (not P3) (= A4 B4))
       (or O3 (= R L4))
       (or (not O3) (= L4 K6))
       (or (not O3) (= D4 E4))
       (or O3 (= B4 E4))
       (or (not N3) (= O4 P4))
       (or (not N3) (= M4 N4))
       (or N3 (= L4 M4))
       (or (not N3) (= J4 K4))
       (or N3 (= I4 J4))
       (or (not N3) (= G4 H4))
       (or N3 (= F4 G4))
       (or N3 (= E4 P4))
       (or (not M3) (= U4 V4))
       (or (not M3) (= S4 T4))
       (or (not M3) (= Q4 R4))
       (or M3 (= P4 V4))
       (or M3 (= M4 S4))
       (or M3 (= G4 Q4))
       (or (not L3) (= Y4 Z4))
       (or (not L3) (= W4 X4))
       (or L3 (= S4 Z4))
       (or L3 (= J4 W4))
       (or (not K3) (= E5 F5))
       (or (not K3) (= C5 D5))
       (or (not K3) (= A5 B5))
       (or K3 (= W4 C5))
       (or K3 (= V4 F5))
       (or K3 (= Q4 A5))
       (or (not J3) (= O5 P5))
       (or (not J3) (= M5 N5))
       (or J3 (= L5 P5))
       (or J3 (= C5 M5))
       (or (not I3) (= K5 L5))
       (or (not I3) (= I5 J5))
       (or (not I3) (= G5 H5))
       (or I3 (= F5 L5))
       (or I3 (= A5 G5))
       (or I3 (= Z4 I5))
       (= T Q2)))
      )
      (state H3
       G3
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
       T3
       S3
       V3
       U3
       X3
       W3
       Z3
       Y3
       B4
       A4
       C4
       E4
       D4
       G4
       F4
       H4
       J4
       I4
       K4
       M4
       L4
       N4
       P4
       O4
       Q4
       R4
       S4
       T4
       V4
       U4
       W4
       X4
       Z4
       Y4
       A5
       B5
       C5
       D5
       F5
       E5
       G5
       H5
       I5
       J5
       L5
       K5
       M5
       N5
       P5
       O5
       R5
       Q5
       S5
       T5
       U5
       V5
       W5
       X5
       Y5
       C6
       D6
       I6
       K6
       L6
       J6
       H6
       G6
       F6
       E6
       B6
       A6
       Z5)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Bool) (S2 Bool) (T2 Bool) (U2 Bool) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) ) 
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
       F3)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
