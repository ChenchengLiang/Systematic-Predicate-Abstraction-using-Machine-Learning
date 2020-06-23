(set-logic HORN)

(declare-fun |state| ( Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Bool) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Bool) (I3 Int) (J3 Int) (K3 Bool) (L3 Int) (M3 Int) (N3 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (or (not U1) (not (<= 2 I1))) O2))
      (a!2 (= U1
              (and Q1 (<= 0 P1) (<= 0 R1) (not (<= 1000 T1)) (not (<= 1000 S1)))))
      (a!3 (= (or (and (not H) (not C) (not H3) (not K3) (not N3) (not W1))
                  (and (not H) (not C) (not H3) (not K3) (not N3) W1)
                  (and (not H) (not C) (not H3) (not K3) N3 (not W1))
                  (and (not H) (not C) (not H3) K3 (not N3) (not W1))
                  (and (not H) (not C) H3 (not K3) (not N3) (not W1))
                  (and (not H) C (not H3) (not K3) (not N3) (not W1))
                  (and H (not C) (not H3) (not K3) (not N3) (not W1)))
              D1)))
  (and a!1
       a!2
       (= E1 Q1)
       (= E1 D1)
       (= O X2)
       (= N W2)
       (= L U2)
       (= K T2)
       (= M V2)
       (= P Y2)
       (= A1 Z)
       (= A1 W)
       (= Y X)
       (= Y O1)
       (= X M1)
       (= W V)
       (= W N1)
       (= V K1)
       (= Q 0)
       (= Q Q2)
       (= Q2 P2)
       (= E3 Z)
       (= E3 S1)
       (= D3 R1)
       (= D3 B1)
       (= B3 B1)
       (= B3 T1)
       (= Z2 C3)
       (= R 0)
       (= R S2)
       (= S 0)
       (= S Z2)
       (= T 0)
       (= T G1)
       (= U 0)
       (= U H1)
       (= C1 Y)
       (= C1 B1)
       (= F1 Z)
       (= F1 P1)
       (= G1 A3)
       (= H1 I1)
       (= K1 J1)
       (= M1 L1)
       (= S2 R2)
       (or W1 (= V1 J3))
       (or (not W1) (= V1 X1))
       (or (not W1) (= Z1 Y1))
       (or W1 (= A2 Z1))
       (or (not N3) (= M3 L3))
       (or N3 (= I2 G))
       (or (not N3) (= I2 L2))
       (or N3 (= J2 E))
       (or (not N3) (= J2 K2))
       (or (not K3) (= J3 I3))
       (or K3 (= B2 G3))
       (or (not K3) (= B2 C2))
       (or K3 (= E2 B))
       (or (not K3) (= E2 D2))
       (or (not H3) (= G3 F3))
       (or (not H3) (= A2 H2))
       (or H3 (= F2 M3))
       (or (not H3) (= F2 G2))
       (or H3 (= I2 A2))
       (or C (= M2 J))
       (or (not C) (= M2 N2))
       (or (not C) (= B A))
       (or (not C) (= E D))
       (or (not H) (= G F))
       (or (not H) (= J I))
       (not O)
       (not N)
       (not L)
       (not K)
       (not M)
       (not P)
       a!3))
      )
      (state B3
       T1
       E3
       S1
       D3
       R1
       F1
       P1
       E1
       Q1
       W1
       K3
       H3
       N3
       C
       H
       D1
       P
       Y2
       O
       X2
       N
       W2
       M
       V2
       L
       U2
       K
       T2
       C1
       Y
       A1
       W
       X
       M1
       V
       K1
       U
       H1
       T
       G1
       S
       Z2
       R
       S2
       Q
       Q2
       R2
       P2
       I1
       U1
       O2
       M2
       N2
       J
       I2
       G
       L2
       J2
       K2
       E
       A2
       H2
       F2
       G2
       M3
       E2
       B
       D2
       B2
       C2
       G3
       Z1
       Y1
       V1
       X1
       J3
       O1
       N1
       L1
       J1
       A3
       C3
       B1
       Z
       I
       F
       D
       A
       L3
       I3
       F3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Bool) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Int) (C3 Bool) (D3 Int) (E3 Int) (F3 Bool) (G3 Int) (H3 Int) (I3 Bool) (J3 Int) (K3 Int) (L3 Bool) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Bool) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Bool) (W3 Bool) (X3 Int) (Y3 Bool) (Z3 Int) (A4 Bool) (B4 Int) (C4 Int) (D4 Bool) (E4 Bool) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Bool) (K4 Bool) (L4 Bool) (M4 Bool) (N4 Bool) (O4 Bool) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Bool) (G5 Bool) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Bool) (B6 Int) (C6 Int) (D6 Int) (E6 Bool) (F6 Bool) (G6 Int) (H6 Int) (I6 Bool) (J6 Int) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Int) (R6 Int) (S6 Int) (T6 Int) (U6 Int) (V6 Bool) (W6 Int) (X6 Int) (Y6 Bool) (Z6 Int) (A7 Int) (B7 Bool) ) 
    (=>
      (and
        (state P6
       V1
       S6
       U1
       R6
       T1
       F1
       R1
       E1
       S1
       Y1
       Y6
       V6
       B7
       C
       H
       D1
       P
       A3
       O
       Z2
       N
       Y2
       M
       X2
       L
       W2
       K
       V2
       C1
       Y
       A1
       W
       X
       O1
       V
       M1
       U
       H1
       T
       G1
       S
       N6
       R
       U2
       Q
       S2
       T2
       R2
       I1
       W1
       Q2
       O2
       P2
       J
       K2
       G
       N2
       L2
       M2
       E
       C2
       J2
       H2
       I2
       A7
       G2
       B
       F2
       D2
       E2
       U6
       B2
       A2
       X1
       Z1
       X6
       Q1
       P1
       N1
       J1
       O6
       Q6
       B1
       Z
       I
       F
       D
       A
       Z6
       W6
       T6)
        (let ((a!1 (= (or (and (not C) (not H) (not Y1) (not V6) (not Y6) (not B7))
                  (and (not C) (not H) (not Y1) (not V6) (not Y6) B7)
                  (and (not C) (not H) (not Y1) (not V6) Y6 (not B7))
                  (and (not C) (not H) (not Y1) V6 (not Y6) (not B7))
                  (and (not C) (not H) Y1 (not V6) (not Y6) (not B7))
                  (and (not C) H (not Y1) (not V6) (not Y6) (not B7))
                  (and C (not H) (not Y1) (not V6) (not Y6) (not B7)))
              D1))
      (a!2 (= (or (not E6) (not (<= 2 P5))) I6))
      (a!3 (= (or (not W1) (not (<= 2 I1))) Q2))
      (a!4 (= E6
              (and A6 (<= 0 B6) (<= 0 Z5) (not (<= 1000 D6)) (not (<= 1000 C6)))))
      (a!5 (= W1
              (and S1 (<= 0 R1) (<= 0 T1) (not (<= 1000 U1)) (not (<= 1000 V1)))))
      (a!6 (or (not V3) (= (+ S2 (* (- 1) U3)) (- 1))))
      (a!7 (or (not V3) (= (+ M1 (* (- 1) F4)) 1)))
      (a!8 (or (not W3) (= (+ U2 (* (- 1) X3)) (- 1))))
      (a!9 (or (not W3) (= (+ S2 (* (- 1) G3)) 1)))
      (a!10 (or (not W3) (= (+ O1 (* (- 1) I4)) 1)))
      (a!11 (or (not Y3) (= (+ N6 (* (- 1) Z3)) (- 1))))
      (a!12 (or (not Y3) (= (+ U2 (* (- 1) D3)) 1)))
      (a!13 (or (not Y3) (= (+ M1 (* (- 1) G4)) (- 1))))
      (a!14 (or (not A4) (= (+ N6 (* (- 1) J3)) 1)))
      (a!15 (or (not A4) (= (+ M1 (* (- 1) H4)) 1)))
      (a!16 (or (not A4) (= (+ G1 (* (- 1) M3)) 1)))
      (a!17 (or (not A4) (= (+ G1 (* (- 1) B4)) (- 1))))
      (a!18 (or (not D4) (= (+ O1 (* (- 1) N3)) (- 1))))
      (a!19 (or (not D4) (= (+ H1 (* (- 1) C4)) (- 1))))
      (a!20 (or (not E4) (= (+ M1 (* (- 1) S3)) (- 1))))
      (a!21 (or (not E4) (= (+ H1 (* (- 1) R3)) 1)))
      (a!22 (= (or (and (not F6) (not Q3) (not L3) (not I3) (not F3) (not C3))
                   (and (not F6) (not Q3) (not L3) (not I3) (not F3) C3)
                   (and (not F6) (not Q3) (not L3) (not I3) F3 (not C3))
                   (and (not F6) (not Q3) (not L3) I3 (not F3) (not C3))
                   (and (not F6) (not Q3) L3 (not I3) (not F3) (not C3))
                   (and (not F6) Q3 (not L3) (not I3) (not F3) (not C3))
                   (and F6 (not Q3) (not L3) (not I3) (not F3) (not C3)))
               F5)))
  (and a!1
       a!2
       a!3
       (= V3 J4)
       (= W3 K4)
       (= Y3 L4)
       (= A4 M4)
       (= D4 N4)
       (= E4 O4)
       (= J4 (<= 1 M1))
       (= K4 (and (<= 1 O1) (<= 1 S2)))
       (= L4 (<= 1 U2))
       (= M4 (and (<= 1 M1) (<= 1 N6)))
       (= N4 (<= 1 G1))
       (= O4 (<= 1 H1))
       (= G5 (and S1 F5))
       (= A6 G5)
       a!4
       a!5
       (= E1 S1)
       (= P A3)
       (= O Z2)
       (= N Y2)
       (= M X2)
       (= L W2)
       (= K V2)
       (= S6 U1)
       (= R6 T1)
       (= P6 V1)
       (= N6 Q6)
       (= Q4 P4)
       (= S4 R4)
       (= U4 T4)
       (= W4 V4)
       (= Y4 X4)
       (= A5 Z4)
       (= C5 B5)
       (= M5 U4)
       (= M5 L5)
       (= O5 W4)
       (= O5 N5)
       (= Q5 Y4)
       (= Q5 P5)
       (= S5 A5)
       (= S5 R5)
       (= U5 C5)
       (= U5 T5)
       (= W5 D5)
       (= W5 V5)
       (= Y5 E5)
       (= Y5 X5)
       (= Z5 H5)
       (= B6 I5)
       (= C6 J5)
       (= D6 K5)
       (= K6 Q4)
       (= K6 J6)
       (= U2 T2)
       (= S2 R2)
       (= V1 K5)
       (= U1 J5)
       (= T1 I5)
       (= R1 H5)
       (= O1 N1)
       (= M1 J1)
       (= M6 S4)
       (= M6 L6)
       (= H1 I1)
       (= G1 O6)
       (= F1 R1)
       (= C1 Y)
       (= A1 W)
       (= Y E5)
       (= Y Q1)
       (= X O1)
       (= W D5)
       (= W P1)
       (= V M1)
       (= U H1)
       (= T G1)
       (= S N6)
       (= R U2)
       (= Q S2)
       (or (not B7) (= L2 M2))
       (or B7 (= L2 E))
       (or (not B7) (= K2 N2))
       (or B7 (= K2 G))
       (or (not Y6) (= G2 F2))
       (or Y6 (= G2 B))
       (or Y6 (= D2 U6))
       (or (not Y6) (= D2 E2))
       (or V6 (= K2 C2))
       (or V6 (= H2 A7))
       (or (not V6) (= H2 I2))
       (or (not V6) (= C2 J2))
       (or (not C3) (= B3 D3))
       (or (not C3) (= Z3 T4))
       (or C3 (= T4 H3))
       (or (not C3) (= G6 G4))
       (or C3 (= H6 G6))
       (or C3 (= U2 B3))
       (or (not F3) (= E3 G3))
       (or F3 (= O3 B5))
       (or (not F3) (= X3 R4))
       (or F3 (= R4 B3))
       (or (not F3) (= B5 I4))
       (or F3 (= S2 E3))
       (or I3 (= N6 H3))
       (or (not I3) (= H3 J3))
       (or I3 (= T3 H6))
       (or (not I3) (= B4 V4))
       (or I3 (= V4 K3))
       (or (not I3) (= H6 H4))
       (or (not L3) (= K3 M3))
       (or (not L3) (= O3 N3))
       (or (not L3) (= C4 X4))
       (or L3 (= X4 P3))
       (or L3 (= O1 O3))
       (or L3 (= G1 K3))
       (or (not Q3) (= P3 R3))
       (or (not Q3) (= T3 S3))
       (or Q3 (= M1 T3))
       (or Q3 (= H1 P3))
       a!6
       a!7
       (or V3 (= S2 U3))
       (or V3 (= M1 F4))
       a!8
       a!9
       a!10
       (or W3 (= U2 X3))
       (or W3 (= S2 G3))
       (or W3 (= O1 I4))
       a!11
       a!12
       a!13
       (or Y3 (= N6 Z3))
       (or Y3 (= U2 D3))
       (or Y3 (= M1 G4))
       a!14
       a!15
       a!16
       a!17
       (or A4 (= N6 J3))
       (or A4 (= M1 H4))
       (or A4 (= G1 M3))
       (or A4 (= G1 B4))
       a!18
       a!19
       (or D4 (= O1 N3))
       (or D4 (= H1 C4))
       a!20
       a!21
       (or E4 (= M1 S3))
       (or E4 (= H1 R3))
       (or (not F6) (= U3 P4))
       (or F6 (= P4 E3))
       (or (not F6) (= Z4 F4))
       (or F6 (= G6 Z4))
       (or Y1 (= C2 B2))
       (or (not Y1) (= B2 A2))
       (or Y1 (= X1 X6))
       (or (not Y1) (= X1 Z1))
       (or (not C) (= O2 P2))
       (or C (= O2 J))
       a!22))
      )
      (state K5
       D6
       J5
       C6
       I5
       B6
       H5
       Z5
       G5
       A6
       F6
       F3
       C3
       I3
       L3
       Q3
       F5
       O4
       E4
       N4
       D4
       M4
       A4
       L4
       Y3
       K4
       W3
       J4
       V3
       E5
       Y5
       D5
       W5
       C5
       U5
       A5
       S5
       Y4
       Q5
       W4
       O5
       U4
       M5
       S4
       M6
       Q4
       K6
       L6
       J6
       P5
       E6
       I6
       X4
       C4
       P3
       H6
       T3
       H4
       V4
       B4
       K3
       G6
       G4
       T4
       Z3
       H3
       B5
       O3
       I4
       R4
       X3
       B3
       Z4
       F4
       P4
       U3
       E3
       X5
       V5
       T5
       R5
       N5
       L5
       L1
       K1
       R3
       S3
       M3
       N3
       J3
       G3
       D3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Bool) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Bool) (I3 Int) (J3 Int) (K3 Bool) (L3 Int) (M3 Int) (N3 Bool) ) 
    (=>
      (and
        (state B3
       T1
       E3
       S1
       D3
       R1
       F1
       P1
       E1
       Q1
       W1
       K3
       H3
       N3
       C
       H
       D1
       P
       Y2
       O
       X2
       N
       W2
       M
       V2
       L
       U2
       K
       T2
       C1
       Y
       A1
       W
       X
       M1
       V
       K1
       U
       H1
       T
       G1
       S
       Z2
       R
       S2
       Q
       Q2
       R2
       P2
       I1
       U1
       O2
       M2
       N2
       J
       I2
       G
       L2
       J2
       K2
       E
       A2
       H2
       F2
       G2
       M3
       E2
       B
       D2
       B2
       C2
       G3
       Z1
       Y1
       V1
       X1
       J3
       O1
       N1
       L1
       J1
       A3
       C3
       B1
       Z
       I
       F
       D
       A
       L3
       I3
       F3)
        (not O2)
      )
      false
    )
  )
)

(check-sat)
(exit)
