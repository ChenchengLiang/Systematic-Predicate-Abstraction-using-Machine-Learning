(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Bool) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (or (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       P)
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       O
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       N
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       M
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       L
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P)))
              Q))
      (a!2 (= C (and Q (not (<= Q3 0))))))
  (and (= D1 0)
       (= D1 E1)
       (= C1 S2)
       (= B1 0)
       (= B1 C1)
       (= A1 R2)
       (= Z 0)
       (= Z A1)
       (= Y 0)
       (= X Q2)
       (= X Y)
       (= V P2)
       (= V W)
       (= S W)
       (= R Q3)
       (= R S)
       (= A Q3)
       (= A B)
       a!1
       (= (or (not N2) (<= R2 B)) U2)
       (= U O2)
       (= T U)
       (= D N2)
       a!2
       (= C D)
       (= T (<= 2 E1))
       (or (not V3) (= A2 0))
       (or (not V3) (= W1 0))
       (or (not U3) (= H1 0))
       (or (not T3) (= M3 0))
       (or (not S3) (= O3 1))
       (or (not R3) (= F3 0))
       (or (not R3) (= A3 1))
       (or (not R3) (= X2 0))
       (or (not P) (= E3 X3))
       (or (not P) (= I2 W3))
       (or (not O) (= Z2 Y3))
       (or O (= G2 I2))
       (or (not O) (= G2 H2))
       (or (not N) (= C3 Z3))
       (or (not N) (= J2 K2))
       (or N (= G2 J2))
       (or (not M) (= W2 A4))
       (or (not M) (= L2 M2))
       (or M (= J2 L2))
       (or (not L) (= G3 H3))
       (or (not L) (= B3 D3))
       (or L (= B3 C3))
       (or (not L) (= Y2 A3))
       (or L (= Y2 Z2))
       (or (not L) (= V2 X2))
       (or L (= V2 W2))
       (or L (= L2 G3))
       (or (not L) (= M1 F3))
       (or L (= M1 E3))
       (or (not K) (= J3 K3))
       (or K (= V2 K3))
       (or (not K) (= Y1 I3))
       (or K (= Y1 G3))
       (or (not J) (= L3 P3))
       (or J (= B3 L3))
       (or (not J) (= G1 O3))
       (or J (= G1 Y2))
       (or (not I) (= T1 M3))
       (or I (= T1 L3))
       (or (not I) (= K1 N3))
       (or I (= K1 K3))
       (or H (= J1 K1))
       (or (not H) (= I1 J1))
       (or (not H) (= F1 H1))
       (or H (= F1 G1))
       (or (not G) (= O1 P1))
       (or (not G) (= L1 N1))
       (or G (= L1 M1))
       (or G (= J1 P1))
       (or (not F) (= E2 F2))
       (or (not F) (= C2 D2))
       (or F (= X1 E2))
       (or F (= V1 C2))
       (or (not E) (= A2 B2))
       (or (not E) (= X1 Z1))
       (or E (= X1 Y1))
       (or (not E) (= V1 W1))
       (or (not E) (= S1 U1))
       (or E (= S1 T1))
       (or (not E) (= Q1 R1))
       (or E (= P1 B2))
       (or E (= L1 V1))
       (or E (= F1 Q1))
       (= E1 T2)))
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
       F4
       G4
       H4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Bool) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) (I4 Int) (J4 Int) (K4 Bool) (L4 Bool) (M4 Bool) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Bool) (V4 Bool) (W4 Bool) (X4 Bool) (Y4 Bool) (Z4 Int) (A5 Int) (B5 Bool) (C5 Bool) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Int) (R6 Int) (S6 Int) (T6 Int) (U6 Int) (V6 Bool) (W6 Bool) (X6 Int) (Y6 Int) (Z6 Int) (A7 Int) (B7 Int) (C7 Bool) (D7 Int) (E7 Int) (F7 Int) (G7 Int) (H7 Int) (I7 Int) (J7 Int) (K7 Int) (L7 Int) (M7 Int) (N7 Int) (O7 Int) (P7 Int) (Q7 Int) (R7 Int) (S7 Int) (T7 Int) (U7 Int) (V7 Int) (W7 Int) (X7 Int) (Y7 Int) (Z7 Bool) (A8 Bool) (B8 Bool) (C8 Bool) (D8 Bool) (E8 Bool) (F8 Bool) (G8 Bool) (H8 Bool) (I8 Bool) (J8 Bool) (K8 Bool) (L8 Int) (M8 Int) (N8 Int) (O8 Int) (P8 Int) ) 
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
       F4
       G4
       H4)
        (let ((a!1 (= (or (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       P)
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       O
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       N
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       M
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       L
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P))
                  (and E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)
                       (not O)
                       (not P)))
              Q))
      (a!2 (= (or (and (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4))
                  (and (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       X4)
                  (and (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       W4
                       (not X4))
                  (and (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       V4
                       (not W4)
                       (not X4))
                  (and (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       U4
                       (not V4)
                       (not W4)
                       (not X4))
                  (and (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       T4
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4))
                  (and (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       S4
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4))
                  (and (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       R4
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4))
                  (and (not M4)
                       (not N4)
                       (not O4)
                       (not P4)
                       Q4
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4))
                  (and (not M4)
                       (not N4)
                       (not O4)
                       P4
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4))
                  (and (not M4)
                       (not N4)
                       O4
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4))
                  (and (not M4)
                       N4
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4))
                  (and M4
                       (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4)))
              Y4))
      (a!3 (and (<= 1 V) (= X 0) (= A1 0) (= C1 0) (= E1 0)))
      (a!4 (= (and (<= 1 V) (<= 1 (+ X A1 C1 E1))) D8))
      (a!5 (= (and (<= 2 (+ X A1 C1 E1)) (<= 1 V)) J8))
      (a!6 (= L4 (and Y4 D (not (<= Y7 0)))))
      (a!7 (or (not I8) (= (+ E1 (* (- 1) V5)) 1)))
      (a!8 (or (not I8) (= (+ X (* (- 1) X5)) (- 1))))
      (a!9 (or (not H8) (= (+ X (* (- 1) R5)) (- 1))))
      (a!10 (or (not G8) (= (+ X (* (- 1) V7)) (- 1))))
      (a!11 (or (not F8) (= (+ A1 C1 (* (- 1) X7)) 1)))
      (a!12 (or (not E8) (= (+ X (* (- 1) S7)) (- 1))))
      (a!13 (or (not E8) (= (+ V (* (- 1) Q7)) 1)))
      (a!14 (or (not K8) (= (+ E1 (* (- 1) L6)) (- 1))))
      (a!15 (or (not K8) (= (+ V (* (- 1) M6)) 1)))
      (a!16 (or (not J8) (= (+ C1 E1 (* (- 1) C6)) (- 1))))
      (a!17 (or (not J8) (= (+ X A1 (* (- 1) Z5)) 0)))
      (a!18 (or (not J8) (= (+ V (* (- 1) H6)) 1)))
      (a!19 (or (not D8) (= (+ X A1 C1 E1 (* (- 1) L7)) 0)))
      (a!20 (or (not D8) (= (+ V (* (- 1) O7)) 1)))
      (a!21 (or (not C8) (= (+ X (* (- 1) L8)) 1)))
      (a!22 (or (not C8) (= (+ V (* (- 1) T6)) (- 1))))
      (a!23 (or (not B8) (= (+ C1 (* (- 1) N8)) 1)))
      (a!24 (or (not B8) (= (+ V (* (- 1) R6)) (- 1))))
      (a!25 (or (not A8) (= (+ A1 (* (- 1) M8)) 1)))
      (a!26 (or (not A8) (= (+ V (* (- 1) O6)) (- 1))))
      (a!27 (or (not Z7) (= (+ E1 (* (- 1) O8)) 1)))
      (a!28 (or (not Z7) (= (+ V (* (- 1) P8)) (- 1)))))
  (and (= D1 E1)
       (= C1 S2)
       (= B1 C1)
       (= A1 R2)
       (= Z A1)
       (= X Q2)
       (= X Y)
       (= V P2)
       (= V W)
       (= S A5)
       (= R S)
       (= B J4)
       (= A B)
       (= M5 K6)
       (= L5 B7)
       (= L5 M5)
       (= K5 B6)
       (= J5 A7)
       (= J5 K5)
       (= I5 Y5)
       (= H5 Z6)
       (= H5 I5)
       (= G5 Y6)
       (= F5 I6)
       (= F5 G5)
       (= E5 X6)
       (= D5 N6)
       (= D5 E5)
       (= Z4 A5)
       (= I4 J4)
       (= (<= 1 E1) I8)
       (= (<= 1 E1) Z7)
       (= (<= 1 C1) B8)
       (= (<= 1 A1) A8)
       (= (<= 1 X) C8)
       a!1
       a!2
       (= (or (not N2) (<= R2 B)) U2)
       (= (or (not V6) (<= Z6 I4)) C7)
       (= a!3 E8)
       (= a!3 K8)
       a!4
       a!5
       (= H8 (and (= A1 1) (= C1 0)))
       (= G8 (and (= A1 0) (= C1 1)))
       (= F8 (<= 2 (+ A1 C1)))
       (= U O2)
       (= T U)
       (= D N2)
       (= C D)
       (= B5 W6)
       (= B5 C5)
       a!6
       (= K4 V6)
       (= K4 L4)
       (= T (<= 2 E1))
       (= C5 (<= 2 L5))
       a!7
       a!8
       (or I8 (= E1 V5))
       (or I8 (= X X5))
       a!9
       (or H8 (= A1 P5))
       (or H8 (= X R5))
       (or (not H8) (= P5 0))
       a!10
       (or G8 (= C1 U7))
       (or G8 (= X V7))
       (or (not G8) (= U7 0))
       a!11
       (or F8 (= C1 X7))
       (or F8 (= A1 W7))
       (or (not F8) (= W7 1))
       a!12
       a!13
       (or E8 (= X S7))
       (or E8 (= V Q7))
       (or O (= G2 I2))
       (or (not O) (= G2 H2))
       (or (not N) (= J2 K2))
       (or N (= G2 J2))
       (or (not M) (= L2 M2))
       (or M (= J2 L2))
       (or (not L) (= G3 H3))
       (or (not L) (= B3 D3))
       (or L (= B3 C3))
       (or (not L) (= Y2 A3))
       (or L (= Y2 Z2))
       (or (not L) (= V2 X2))
       (or L (= V2 W2))
       (or L (= L2 G3))
       (or (not L) (= M1 F3))
       (or L (= M1 E3))
       (or (not K) (= J3 K3))
       (or K (= V2 K3))
       (or (not K) (= Y1 I3))
       (or K (= Y1 G3))
       (or (not J) (= L3 P3))
       (or J (= B3 L3))
       (or (not J) (= G1 O3))
       (or J (= G1 Y2))
       (or (not I) (= T1 M3))
       (or I (= T1 L3))
       (or (not I) (= K1 N3))
       (or I (= K1 K3))
       (or H (= J1 K1))
       (or (not H) (= I1 J1))
       (or (not H) (= F1 H1))
       (or H (= F1 G1))
       (or (not G) (= O1 P1))
       (or (not G) (= L1 N1))
       (or G (= L1 M1))
       (or G (= J1 P1))
       (or (not F) (= E2 F2))
       (or (not F) (= C2 D2))
       (or F (= X1 E2))
       (or F (= V1 C2))
       (or (not E) (= A2 B2))
       (or (not E) (= X1 Z1))
       (or E (= X1 Y1))
       (or (not E) (= V1 W1))
       (or (not E) (= S1 U1))
       (or E (= S1 T1))
       (or (not E) (= Q1 R1))
       (or E (= P1 B2))
       (or E (= L1 V1))
       (or E (= F1 Q1))
       a!14
       a!15
       (or K8 (= E1 L6))
       (or K8 (= V M6))
       a!16
       a!17
       a!18
       (or J8 (= E1 E6))
       (or J8 (= C1 C6))
       (or J8 (= A1 Z5))
       (or J8 (= X J6))
       (or J8 (= V H6))
       (or (not J8) (= J6 0))
       (or (not J8) (= E6 0))
       a!19
       a!20
       (or D8 (= E1 N7))
       (or D8 (= C1 L7))
       (or D8 (= A1 I7))
       (or D8 (= X F7))
       (or D8 (= V O7))
       (or (not D8) (= N7 0))
       (or (not D8) (= I7 1))
       (or (not D8) (= F7 0))
       a!21
       a!22
       (or C8 (= X L8))
       (or C8 (= V T6))
       a!23
       a!24
       (or B8 (= C1 N8))
       (or B8 (= V R6))
       a!25
       a!26
       (or A8 (= A1 M8))
       (or A8 (= V O6))
       a!27
       a!28
       (or Z7 (= E1 O8))
       (or Z7 (= V P8))
       (or X4 (= E1 M7))
       (or X4 (= V Q6))
       (or (not X4) (= M7 O8))
       (or (not X4) (= Q6 P8))
       (or W4 (= A1 G7))
       (or (not W4) (= G7 M8))
       (or W4 (= P6 Q6))
       (or (not W4) (= O6 P6))
       (or V4 (= C1 J7))
       (or (not V4) (= J7 N8))
       (or (not V4) (= R6 S6))
       (or V4 (= P6 S6))
       (or U4 (= X D7))
       (or (not U4) (= D7 L8))
       (or (not U4) (= T6 U6))
       (or U4 (= S6 U6))
       (or (not T4) (= O7 P7))
       (or (not T4) (= K7 L7))
       (or T4 (= J7 K7))
       (or (not T4) (= H7 I7))
       (or T4 (= G7 H7))
       (or (not T4) (= E7 F7))
       (or T4 (= D7 E7))
       (or T4 (= U6 P7))
       (or (not T4) (= T5 N7))
       (or T4 (= T5 M7))
       (or (not S4) (= R7 S7))
       (or S4 (= E7 R7))
       (or (not S4) (= F6 Q7))
       (or S4 (= F6 P7))
       (or (not R4) (= T7 X7))
       (or R4 (= K7 T7))
       (or (not R4) (= N5 W7))
       (or R4 (= N5 H7))
       (or (not Q4) (= A6 U7))
       (or Q4 (= A6 T7))
       (or (not Q4) (= S5 V7))
       (or Q4 (= S5 R7))
       (or P4 (= Q5 S5))
       (or (not P4) (= Q5 R5))
       (or (not P4) (= O5 P5))
       (or P4 (= N5 O5))
       (or (not O4) (= W5 X5))
       (or (not O4) (= U5 V5))
       (or O4 (= T5 U5))
       (or O4 (= Q5 W5))
       (or (not N4) (= M6 N6))
       (or (not N4) (= K6 L6))
       (or N4 (= G6 N6))
       (or N4 (= D6 K6))
       (or (not M4) (= I6 J6))
       (or (not M4) (= G6 H6))
       (or M4 (= F6 G6))
       (or (not M4) (= D6 E6))
       (or (not M4) (= B6 C6))
       (or M4 (= A6 B6))
       (or (not M4) (= Y5 Z5))
       (or M4 (= W5 I6))
       (or M4 (= U5 D6))
       (or M4 (= O5 Y5))
       (= E1 T2)))
      )
      (state J4
       I4
       L4
       K4
       M4
       N4
       O4
       P4
       Q4
       R4
       S4
       T4
       U4
       V4
       W4
       X4
       Y4
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
       M5
       L5
       O5
       N5
       P5
       R5
       Q5
       S5
       U5
       T5
       V5
       X5
       W5
       Y5
       Z5
       B6
       A6
       C6
       D6
       E6
       G6
       F6
       H6
       J6
       I6
       K6
       L6
       N6
       M6
       P6
       O6
       Q6
       S6
       R6
       U6
       T6
       V6
       W6
       X6
       Y6
       Z6
       A7
       B7
       C7
       E7
       D7
       F7
       H7
       G7
       I7
       K7
       J7
       L7
       M7
       N7
       P7
       O7
       Q7
       S7
       R7
       T7
       U7
       V7
       W7
       X7
       Y7
       D8
       F8
       G8
       H8
       J8
       P8
       O8
       M8
       N8
       L8
       K8
       I8
       E8
       C8
       B8
       A8
       Z7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Bool) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Bool) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) ) 
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
       F4
       G4
       H4)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
