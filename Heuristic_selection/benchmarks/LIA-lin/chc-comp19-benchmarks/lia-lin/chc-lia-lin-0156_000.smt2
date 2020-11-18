(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Bool) (C1 Bool) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Int) (T2 Int) (U2 Int) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) ) 
    (=>
      (and
        (let ((a!1 (or (not B1)
               (= (+ B (* (- 1) X) (* (- 1) Y) (* (- 1) Z) (* (- 1) A1)) 0)))
      (a!2 (= (or (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       L)
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K
                       (not L))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K)
                       (not L))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K)
                       (not L))
                  (and (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K)
                       (not L))
                  (and (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L))
                  (and (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L))
                  (and E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)))
              M)))
  (and (= a!1 C1)
       (= D B1)
       (= C (and M (<= 0 N2)))
       (= C D)
       (= W Y)
       (= V W)
       (= U X)
       (= T 0)
       (= T U)
       (= S A1)
       (= R 0)
       (= R S)
       (= Q Z)
       (= P 0)
       (= P Q)
       (= O V)
       (= N N2)
       (= N O)
       (= A N2)
       (= A B)
       (or (not R2) (= A2 0))
       (or (not Q2) (= L1 1))
       (or (not P2) (= O2 0))
       (or (not L) (= S1 O2))
       (or (not L) (= I1 U2))
       (or (not L) (= E1 T2))
       (or (not K) (= K1 S2))
       (or K (= G1 I1))
       (or (not K) (= G1 H1))
       (or (not K) (= D1 F1))
       (or K (= D1 E1))
       (or (not J) (= M1 N1))
       (or (not J) (= J1 L1))
       (or J (= J1 K1))
       (or J (= G1 M1))
       (or I (= Q1 S1))
       (or (not I) (= Q1 R1))
       (or (not I) (= O1 P1))
       (or I (= D1 O1))
       (or (not H) (= V1 W1))
       (or (not H) (= T1 U1))
       (or H (= Q1 T1))
       (or H (= J1 V1))
       (or (not G) (= B2 C2))
       (or (not G) (= Z1 A2))
       (or (not G) (= X1 Y1))
       (or G (= T1 Z1))
       (or G (= O1 X1))
       (or G (= M1 B2))
       (or (not F) (= L2 M2))
       (or (not F) (= J2 K2))
       (or F (= H2 L2))
       (or F (= Z1 J2))
       (or (not E) (= H2 I2))
       (or (not E) (= F2 G2))
       (or (not E) (= D2 E2))
       (or E (= B2 H2))
       (or E (= X1 D2))
       (or E (= V1 F2))
       a!2))
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
       Z2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Bool) (C1 Bool) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Int) (T2 Int) (U2 Int) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Int) (B3 Int) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Bool) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Bool) (C4 Bool) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Bool) (Q5 Bool) (R5 Bool) (S5 Bool) (T5 Bool) (U5 Bool) (V5 Bool) (W5 Bool) (X5 Int) (Y5 Int) (Z5 Int) ) 
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
       Z2)
        (let ((a!1 (= (or (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       L)
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K
                       (not L))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K)
                       (not L))
                  (and (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K)
                       (not L))
                  (and (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K)
                       (not L))
                  (and (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L))
                  (and (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L))
                  (and E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)))
              M))
      (a!2 (= (or (and (not E3)
                       (not F3)
                       (not G3)
                       (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3))
                  (and (not E3)
                       (not F3)
                       (not G3)
                       (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       L3)
                  (and (not E3)
                       (not F3)
                       (not G3)
                       (not H3)
                       (not I3)
                       (not J3)
                       K3
                       (not L3))
                  (and (not E3)
                       (not F3)
                       (not G3)
                       (not H3)
                       (not I3)
                       J3
                       (not K3)
                       (not L3))
                  (and (not E3)
                       (not F3)
                       (not G3)
                       (not H3)
                       I3
                       (not J3)
                       (not K3)
                       (not L3))
                  (and (not E3)
                       (not F3)
                       (not G3)
                       H3
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3))
                  (and (not E3)
                       (not F3)
                       G3
                       (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3))
                  (and (not E3)
                       F3
                       (not G3)
                       (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3))
                  (and E3
                       (not F3)
                       (not G3)
                       (not H3)
                       (not I3)
                       (not J3)
                       (not K3)
                       (not L3)))
              M3))
      (a!3 (or (not B1)
               (= (+ B (* (- 1) X) (* (- 1) Y) (* (- 1) Z) (* (- 1) A1)) 0)))
      (a!4 (or (not B4)
               (= (+ A3 (* (- 1) X3) (* (- 1) Y3) (* (- 1) Z3) (* (- 1) A4)) 0)))
      (a!5 (and (<= 1 W) (= Q 0) (= S 0) (= U 0)))
      (a!6 (= (and (<= 1 W) (<= 1 (+ Q S))) U5))
      (a!7 (= P5 (and (<= 1 W) (<= 1 (+ Q S)))))
      (a!8 (= D3 (or D (and M3 (<= 0 N5)))))
      (a!9 (or (not U5) (= (+ Q S (* (- 1) Y4)) 0)))
      (a!10 (or (not U5) (= (+ W (* (- 1) B5)) 1)))
      (a!11 (or (not T5) (= (+ U (* (- 1) V4)) (- 1))))
      (a!12 (or (not T5) (= (+ S (* (- 1) U4)) 1)))
      (a!13 (or (not S5) (= (+ S (* (- 1) Q4)) (- 1))))
      (a!14 (or (not W5) (= (+ W (* (- 1) L5)) 1)))
      (a!15 (or (not W5) (= (+ S (* (- 1) K5)) (- 1))))
      (a!16 (or (not V5) (= (+ W (* (- 1) H5)) 1)))
      (a!17 (or (not V5) (= (+ U (* (- 1) G5)) 1)))
      (a!18 (or (not V5) (= (+ Q (* (- 1) E5)) (- 2))))
      (a!19 (or (not R5) (= (+ W (* (- 1) M4)) 1)))
      (a!20 (or (not Q5) (= (+ W (* (- 1) G4)) 1)))
      (a!21 (or (not Q5) (= (+ U (* (- 1) Y5)) 1)))
      (a!22 (or (not Q5) (= (+ Q (* (- 1) F4)) (- 2))))
      (a!23 (or (not P5) (= (+ Q S (* (- 1) X5)) (- 1))))
      (a!24 (or (not P5) (= (+ W (* (- 1) Z5)) 1))))
  (and a!1
       a!2
       (= a!3 C1)
       (= a!4 C4)
       (= a!5 W5)
       a!6
       (= (and (<= 1 U) (<= 1 W)) V5)
       (= (and (<= 1 U) (<= 1 W)) Q5)
       (= S5 (= Q 1))
       (= D B1)
       (= C D)
       (= R5 a!5)
       a!7
       a!8
       (= C3 B4)
       (= C3 D3)
       (= W Y)
       (= V W)
       (= U X)
       (= T U)
       (= S A1)
       (= R S)
       (= Q Z)
       (= P Q)
       (= O O3)
       (= N O)
       (= B B3)
       (= A B)
       (= W3 M5)
       (= V3 Y3)
       (= V3 W3)
       (= U3 F5)
       (= T3 X3)
       (= T3 U3)
       (= S3 J5)
       (= R3 A4)
       (= R3 S3)
       (= Q3 D5)
       (= P3 Z3)
       (= P3 Q3)
       (= N3 O3)
       (= A3 B3)
       a!9
       a!10
       (or U5 (= W B5))
       (or U5 (= S A5))
       (or U5 (= Q Y4))
       (or (not U5) (= A5 0))
       a!11
       a!12
       (or T5 (= U V4))
       (or T5 (= S U4))
       a!13
       (or S5 (= S Q4))
       (or S5 (= Q P4))
       (or (not S5) (= P4 0))
       (or K (= G1 I1))
       (or (not K) (= G1 H1))
       (or (not K) (= D1 F1))
       (or K (= D1 E1))
       (or (not J) (= M1 N1))
       (or (not J) (= J1 L1))
       (or J (= J1 K1))
       (or J (= G1 M1))
       (or I (= Q1 S1))
       (or (not I) (= Q1 R1))
       (or (not I) (= O1 P1))
       (or I (= D1 O1))
       (or (not H) (= V1 W1))
       (or (not H) (= T1 U1))
       (or H (= Q1 T1))
       (or H (= J1 V1))
       (or (not G) (= B2 C2))
       (or (not G) (= Z1 A2))
       (or (not G) (= X1 Y1))
       (or G (= T1 Z1))
       (or G (= O1 X1))
       (or G (= M1 B2))
       (or (not F) (= L2 M2))
       (or (not F) (= J2 K2))
       (or F (= H2 L2))
       (or F (= Z1 J2))
       (or (not E) (= H2 I2))
       (or (not E) (= F2 G2))
       (or (not E) (= D2 E2))
       (or E (= B2 H2))
       (or E (= X1 D2))
       (or E (= V1 F2))
       a!14
       a!15
       (or W5 (= W L5))
       (or W5 (= S K5))
       a!16
       a!17
       a!18
       (or V5 (= W H5))
       (or V5 (= U G5))
       (or V5 (= Q E5))
       a!19
       (or R5 (= W M4))
       (or R5 (= U L4))
       (or (not R5) (= L4 1))
       a!20
       a!21
       a!22
       (or Q5 (= W G4))
       (or Q5 (= U Y5))
       (or Q5 (= Q F4))
       a!23
       a!24
       (or P5 (= W Z5))
       (or P5 (= S O5))
       (or P5 (= Q X5))
       (or (not P5) (= O5 0))
       (or L3 (= W I4))
       (or L3 (= S S4))
       (or L3 (= Q D4))
       (or (not L3) (= S4 O5))
       (or (not L3) (= I4 Z5))
       (or (not L3) (= D4 X5))
       (or K3 (= U J4))
       (or (not K3) (= J4 Y5))
       (or K3 (= H4 I4))
       (or (not K3) (= G4 H4))
       (or (not K3) (= E4 F4))
       (or K3 (= D4 E4))
       (or (not J3) (= M4 N4))
       (or (not J3) (= K4 L4))
       (or J3 (= J4 K4))
       (or J3 (= H4 N4))
       (or I3 (= R4 S4))
       (or (not I3) (= Q4 R4))
       (or (not I3) (= O4 P4))
       (or I3 (= E4 O4))
       (or (not H3) (= V4 W4))
       (or (not H3) (= T4 U4))
       (or H3 (= R4 T4))
       (or H3 (= K4 W4))
       (or (not G3) (= B5 C5))
       (or (not G3) (= Z4 A5))
       (or (not G3) (= X4 Y4))
       (or G3 (= T4 Z4))
       (or G3 (= O4 X4))
       (or G3 (= N4 C5))
       (or (not F3) (= L5 M5))
       (or (not F3) (= J5 K5))
       (or F3 (= I5 M5))
       (or F3 (= Z4 J5))
       (or (not E3) (= H5 I5))
       (or (not E3) (= F5 G5))
       (or (not E3) (= D5 E5))
       (or E3 (= C5 I5))
       (or E3 (= X4 D5))
       (or E3 (= W4 F5))
       (= (<= 1 S) T5)))
      )
      (state B3
       A3
       D3
       C3
       E3
       F3
       G3
       H3
       I3
       J3
       K3
       L3
       M3
       O3
       N3
       Q3
       P3
       S3
       R3
       U3
       T3
       W3
       V3
       X3
       Y3
       Z3
       A4
       B4
       C4
       E4
       D4
       F4
       H4
       G4
       I4
       K4
       J4
       L4
       N4
       M4
       O4
       P4
       R4
       Q4
       S4
       T4
       U4
       W4
       V4
       X4
       Y4
       Z4
       A5
       C5
       B5
       D5
       E5
       F5
       G5
       I5
       H5
       J5
       K5
       M5
       L5
       N5
       O5
       P5
       R5
       U5
       Y5
       X5
       Z5
       W5
       V5
       T5
       S5
       Q5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Bool) (C1 Bool) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Int) (T2 Int) (U2 Int) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) ) 
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
       Z2)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
