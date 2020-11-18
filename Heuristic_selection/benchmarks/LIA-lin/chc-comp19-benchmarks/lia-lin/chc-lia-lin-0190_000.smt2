(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Bool) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) (I4 Bool) ) 
    (=>
      (and
        (let ((a!1 (and (not O2)
                U2
                (<= 0 T2)
                (= (+ B
                      (* (- 1) P2)
                      (* (- 1) Q2)
                      (* (- 1) R2)
                      (* (- 1) S2)
                      (* (- 1) T2))
                   0)))
      (a!2 (= C (and Q (not (<= R3 0)))))
      (a!3 (= (or (and (not E)
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
              Q)))
  (and (= (or (not N2) a!1) V2)
       (= U O2)
       (= T U)
       (= D N2)
       a!2
       (= C D)
       (= E1 T2)
       (= D1 0)
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
       (= R R3)
       (= R S)
       (= A R3)
       (= A B)
       (= T (<= 2 E1))
       (or (not W3) (= A2 0))
       (or (not W3) (= W1 0))
       (or (not V3) (= H1 0))
       (or (not U3) (= N3 0))
       (or (not T3) (= P3 1))
       (or (not S3) (= G3 0))
       (or (not S3) (= B3 1))
       (or (not S3) (= Y2 0))
       (or (not P) (= F3 Y3))
       (or (not P) (= I2 X3))
       (or (not O) (= A3 Z3))
       (or O (= G2 I2))
       (or (not O) (= G2 H2))
       (or (not N) (= D3 A4))
       (or (not N) (= J2 K2))
       (or N (= G2 J2))
       (or (not M) (= X2 B4))
       (or (not M) (= L2 M2))
       (or M (= J2 L2))
       (or (not L) (= H3 I3))
       (or (not L) (= C3 E3))
       (or L (= C3 D3))
       (or (not L) (= Z2 B3))
       (or L (= Z2 A3))
       (or (not L) (= W2 Y2))
       (or L (= W2 X2))
       (or L (= L2 H3))
       (or (not L) (= M1 G3))
       (or L (= M1 F3))
       (or (not K) (= K3 L3))
       (or K (= W2 L3))
       (or (not K) (= Y1 J3))
       (or K (= Y1 H3))
       (or (not J) (= M3 Q3))
       (or J (= C3 M3))
       (or (not J) (= G1 P3))
       (or J (= G1 Z2))
       (or (not I) (= T1 N3))
       (or I (= T1 M3))
       (or (not I) (= K1 O3))
       (or I (= K1 L3))
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
       (= U2 true)
       a!3))
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
       H4
       I4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Bool) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) (I4 Bool) (J4 Int) (K4 Int) (L4 Bool) (M4 Bool) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Bool) (V4 Bool) (W4 Bool) (X4 Bool) (Y4 Bool) (Z4 Bool) (A5 Int) (B5 Int) (C5 Bool) (D5 Bool) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Int) (R6 Int) (S6 Int) (T6 Int) (U6 Int) (V6 Int) (W6 Bool) (X6 Bool) (Y6 Int) (Z6 Int) (A7 Int) (B7 Int) (C7 Int) (D7 Bool) (E7 Bool) (F7 Int) (G7 Int) (H7 Int) (I7 Int) (J7 Int) (K7 Int) (L7 Int) (M7 Int) (N7 Int) (O7 Int) (P7 Int) (Q7 Int) (R7 Int) (S7 Int) (T7 Int) (U7 Int) (V7 Int) (W7 Int) (X7 Int) (Y7 Int) (Z7 Int) (A8 Int) (B8 Bool) (C8 Bool) (D8 Bool) (E8 Bool) (F8 Bool) (G8 Bool) (H8 Bool) (I8 Bool) (J8 Bool) (K8 Bool) (L8 Bool) (M8 Bool) (N8 Int) (O8 Int) (P8 Int) (Q8 Int) (R8 Int) ) 
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
       H4
       I4)
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
      (a!2 (= (or (and (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4)
                       (not Y4))
                  (and (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4)
                       Y4)
                  (and (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       X4
                       (not Y4))
                  (and (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       W4
                       (not X4)
                       (not Y4))
                  (and (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       V4
                       (not W4)
                       (not X4)
                       (not Y4))
                  (and (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       U4
                       (not V4)
                       (not W4)
                       (not X4)
                       (not Y4))
                  (and (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       T4
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4)
                       (not Y4))
                  (and (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       S4
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4)
                       (not Y4))
                  (and (not N4)
                       (not O4)
                       (not P4)
                       (not Q4)
                       R4
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4)
                       (not Y4))
                  (and (not N4)
                       (not O4)
                       (not P4)
                       Q4
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4)
                       (not Y4))
                  (and (not N4)
                       (not O4)
                       P4
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4)
                       (not Y4))
                  (and (not N4)
                       O4
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4)
                       (not Y4))
                  (and N4
                       (not O4)
                       (not P4)
                       (not Q4)
                       (not R4)
                       (not S4)
                       (not T4)
                       (not U4)
                       (not V4)
                       (not W4)
                       (not X4)
                       (not Y4)))
              Z4))
      (a!3 (and (not O2)
                U2
                (<= 0 T2)
                (= (+ B
                      (* (- 1) P2)
                      (* (- 1) Q2)
                      (* (- 1) R2)
                      (* (- 1) S2)
                      (* (- 1) T2))
                   0)))
      (a!4 (and (not X6)
                D7
                (<= 0 C7)
                (= (+ J4
                      (* (- 1) Y6)
                      (* (- 1) Z6)
                      (* (- 1) A7)
                      (* (- 1) B7)
                      (* (- 1) C7))
                   0)))
      (a!5 (and (<= 1 V) (= X 0) (= A1 0) (= C1 0) (= E1 0)))
      (a!6 (= (and (<= 1 V) (<= (- 1) (+ X A1 C1 E1))) L8))
      (a!7 (= (and (<= 1 V) (<= 1 (+ X A1 C1 E1))) F8))
      (a!8 (= D7
              (= (+ P2
                    Q2
                    R2
                    S2
                    T2
                    (* (- 1) Y6)
                    (* (- 1) Z6)
                    (* (- 1) A7)
                    (* (- 1) B7)
                    (* (- 1) C7))
                 0)))
      (a!9 (= M4 (and Z4 D (not (<= A8 0)))))
      (a!10 (or (not K8) (= (+ E1 (* (- 1) W5)) 1)))
      (a!11 (or (not K8) (= (+ X (* (- 1) Y5)) (- 1))))
      (a!12 (or (not J8) (= (+ X (* (- 1) S5)) (- 1))))
      (a!13 (or (not I8) (= (+ X (* (- 1) X7)) (- 1))))
      (a!14 (or (not H8) (= (+ A1 C1 (* (- 1) Z7)) 1)))
      (a!15 (or (not G8) (= (+ X (* (- 1) U7)) (- 1))))
      (a!16 (or (not G8) (= (+ V (* (- 1) S7)) 1)))
      (a!17 (or (not M8) (= (+ E1 (* (- 1) M6)) (- 1))))
      (a!18 (or (not M8) (= (+ V (* (- 1) N6)) 1)))
      (a!19 (or (not L8) (= (+ C1 E1 (* (- 1) D6)) (- 1))))
      (a!20 (or (not L8) (= (+ X A1 (* (- 1) A6)) 0)))
      (a!21 (or (not L8) (= (+ V (* (- 1) I6)) 1)))
      (a!22 (or (not F8) (= (+ X A1 C1 E1 (* (- 1) N7)) 0)))
      (a!23 (or (not F8) (= (+ V (* (- 1) Q7)) 1)))
      (a!24 (or (not E8) (= (+ X (* (- 1) N8)) 1)))
      (a!25 (or (not E8) (= (+ V (* (- 1) U6)) (- 1))))
      (a!26 (or (not D8) (= (+ C1 (* (- 1) P8)) 1)))
      (a!27 (or (not D8) (= (+ V (* (- 1) S6)) (- 1))))
      (a!28 (or (not C8) (= (+ A1 (* (- 1) O8)) 1)))
      (a!29 (or (not C8) (= (+ V (* (- 1) P6)) (- 1))))
      (a!30 (or (not B8) (= (+ E1 (* (- 1) Q8)) 1)))
      (a!31 (or (not B8) (= (+ V (* (- 1) R8)) (- 1)))))
  (and (= (<= 1 E1) B8)
       (= (<= 1 C1) D8)
       (= (<= 1 A1) C8)
       (= (<= 1 X) E8)
       a!1
       a!2
       (= (or (not N2) a!3) V2)
       (= (or (not W6) a!4) E7)
       (= a!5 G8)
       (= a!5 M8)
       a!6
       a!7
       (= J8 (and (= A1 1) (= C1 0)))
       (= I8 (and (= A1 0) (= C1 1)))
       (= H8 (<= 2 (+ A1 C1)))
       (= U O2)
       (= T U)
       (= D N2)
       (= C D)
       a!8
       (= C5 X6)
       (= C5 D5)
       a!9
       (= L4 W6)
       (= L4 M4)
       (= E1 T2)
       (= D1 E1)
       (= C1 S2)
       (= B1 C1)
       (= A1 R2)
       (= Z A1)
       (= X Q2)
       (= X Y)
       (= V P2)
       (= V W)
       (= S B5)
       (= R S)
       (= B K4)
       (= A B)
       (= N5 L6)
       (= M5 C7)
       (= M5 N5)
       (= L5 C6)
       (= K5 B7)
       (= K5 L5)
       (= J5 Z5)
       (= I5 A7)
       (= I5 J5)
       (= H5 Z6)
       (= G5 J6)
       (= G5 H5)
       (= F5 Y6)
       (= E5 O6)
       (= E5 F5)
       (= A5 B5)
       (= J4 K4)
       (= T (<= 2 E1))
       (= D5 (<= 2 M5))
       a!10
       a!11
       (or K8 (= E1 W5))
       (or K8 (= X Y5))
       a!12
       (or J8 (= A1 Q5))
       (or J8 (= X S5))
       (or (not J8) (= Q5 0))
       a!13
       (or I8 (= C1 W7))
       (or I8 (= X X7))
       (or (not I8) (= W7 0))
       a!14
       (or H8 (= C1 Z7))
       (or H8 (= A1 Y7))
       (or (not H8) (= Y7 1))
       a!15
       a!16
       (or G8 (= X U7))
       (or G8 (= V S7))
       (or O (= G2 I2))
       (or (not O) (= G2 H2))
       (or (not N) (= J2 K2))
       (or N (= G2 J2))
       (or (not M) (= L2 M2))
       (or M (= J2 L2))
       (or (not L) (= H3 I3))
       (or (not L) (= C3 E3))
       (or L (= C3 D3))
       (or (not L) (= Z2 B3))
       (or L (= Z2 A3))
       (or (not L) (= W2 Y2))
       (or L (= W2 X2))
       (or L (= L2 H3))
       (or (not L) (= M1 G3))
       (or L (= M1 F3))
       (or (not K) (= K3 L3))
       (or K (= W2 L3))
       (or (not K) (= Y1 J3))
       (or K (= Y1 H3))
       (or (not J) (= M3 Q3))
       (or J (= C3 M3))
       (or (not J) (= G1 P3))
       (or J (= G1 Z2))
       (or (not I) (= T1 N3))
       (or I (= T1 M3))
       (or (not I) (= K1 O3))
       (or I (= K1 L3))
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
       a!17
       a!18
       (or M8 (= E1 M6))
       (or M8 (= V N6))
       a!19
       a!20
       a!21
       (or L8 (= E1 F6))
       (or L8 (= C1 D6))
       (or L8 (= A1 A6))
       (or L8 (= X K6))
       (or L8 (= V I6))
       (or (not L8) (= K6 0))
       (or (not L8) (= F6 0))
       a!22
       a!23
       (or F8 (= E1 P7))
       (or F8 (= C1 N7))
       (or F8 (= A1 K7))
       (or F8 (= X H7))
       (or F8 (= V Q7))
       (or (not F8) (= P7 0))
       (or (not F8) (= K7 1))
       (or (not F8) (= H7 0))
       a!24
       a!25
       (or E8 (= X N8))
       (or E8 (= V U6))
       a!26
       a!27
       (or D8 (= C1 P8))
       (or D8 (= V S6))
       a!28
       a!29
       (or C8 (= A1 O8))
       (or C8 (= V P6))
       a!30
       a!31
       (or B8 (= E1 Q8))
       (or B8 (= V R8))
       (or Y4 (= E1 O7))
       (or Y4 (= V R6))
       (or (not Y4) (= O7 Q8))
       (or (not Y4) (= R6 R8))
       (or X4 (= A1 I7))
       (or (not X4) (= I7 O8))
       (or X4 (= Q6 R6))
       (or (not X4) (= P6 Q6))
       (or W4 (= C1 L7))
       (or (not W4) (= L7 P8))
       (or (not W4) (= S6 T6))
       (or W4 (= Q6 T6))
       (or V4 (= X F7))
       (or (not V4) (= F7 N8))
       (or (not V4) (= U6 V6))
       (or V4 (= T6 V6))
       (or (not U4) (= Q7 R7))
       (or (not U4) (= M7 N7))
       (or U4 (= L7 M7))
       (or (not U4) (= J7 K7))
       (or U4 (= I7 J7))
       (or (not U4) (= G7 H7))
       (or U4 (= F7 G7))
       (or U4 (= V6 R7))
       (or (not U4) (= U5 P7))
       (or U4 (= U5 O7))
       (or (not T4) (= T7 U7))
       (or T4 (= G7 T7))
       (or (not T4) (= G6 S7))
       (or T4 (= G6 R7))
       (or (not S4) (= V7 Z7))
       (or S4 (= M7 V7))
       (or (not S4) (= O5 Y7))
       (or S4 (= O5 J7))
       (or (not R4) (= B6 W7))
       (or R4 (= B6 V7))
       (or (not R4) (= T5 X7))
       (or R4 (= T5 T7))
       (or Q4 (= R5 T5))
       (or (not Q4) (= R5 S5))
       (or (not Q4) (= P5 Q5))
       (or Q4 (= O5 P5))
       (or (not P4) (= X5 Y5))
       (or (not P4) (= V5 W5))
       (or P4 (= U5 V5))
       (or P4 (= R5 X5))
       (or (not O4) (= N6 O6))
       (or (not O4) (= L6 M6))
       (or O4 (= H6 O6))
       (or O4 (= E6 L6))
       (or (not N4) (= J6 K6))
       (or (not N4) (= H6 I6))
       (or N4 (= G6 H6))
       (or (not N4) (= E6 F6))
       (or (not N4) (= C6 D6))
       (or N4 (= B6 C6))
       (or (not N4) (= Z5 A6))
       (or N4 (= X5 J6))
       (or N4 (= V5 E6))
       (or N4 (= P5 Z5))
       (= (<= 1 E1) K8)))
      )
      (state K4
       J4
       M4
       L4
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
       Z4
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
       L5
       K5
       N5
       M5
       P5
       O5
       Q5
       S5
       R5
       T5
       V5
       U5
       W5
       Y5
       X5
       Z5
       A6
       C6
       B6
       D6
       E6
       F6
       H6
       G6
       I6
       K6
       J6
       L6
       M6
       O6
       N6
       Q6
       P6
       R6
       T6
       S6
       V6
       U6
       W6
       X6
       Y6
       Z6
       A7
       B7
       C7
       D7
       E7
       G7
       F7
       H7
       J7
       I7
       K7
       M7
       L7
       N7
       O7
       P7
       R7
       Q7
       S7
       U7
       T7
       V7
       W7
       X7
       Y7
       Z7
       A8
       F8
       H8
       I8
       J8
       L8
       R8
       Q8
       O8
       P8
       N8
       M8
       K8
       G8
       E8
       D8
       C8
       B8)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Bool) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) (I4 Bool) ) 
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
       H4
       I4)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
