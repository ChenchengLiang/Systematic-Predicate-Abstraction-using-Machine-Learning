(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (or (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)))
              K))
      (a!2 (= A (and K (not (<= 5 L2)) (<= 0 L2)))))
  (and (= T U)
       (= S Y)
       (= R 0)
       (= R S)
       (= Q X)
       (= P 0)
       (= P Q)
       (= O W)
       (= N 0)
       (= N O)
       (= M T)
       (= L L2)
       (= L M)
       a!1
       (= (or (not V) (<= 0 Z)) A1)
       (= B V)
       a!2
       (= A B)
       (or (not P2) (= Y1 0))
       (or (not O2) (= J1 1))
       (or (not N2) (= M2 0))
       (or (not J) (= Q1 M2))
       (or (not J) (= G1 S2))
       (or (not J) (= C1 R2))
       (or (not I) (= I1 Q2))
       (or I (= E1 G1))
       (or (not I) (= E1 F1))
       (or (not I) (= B1 D1))
       (or I (= B1 C1))
       (or (not H) (= K1 L1))
       (or (not H) (= H1 J1))
       (or H (= H1 I1))
       (or H (= E1 K1))
       (or G (= O1 Q1))
       (or (not G) (= O1 P1))
       (or (not G) (= M1 N1))
       (or G (= B1 M1))
       (or (not F) (= T1 U1))
       (or (not F) (= R1 S1))
       (or F (= O1 R1))
       (or F (= H1 T1))
       (or (not E) (= Z1 A2))
       (or (not E) (= X1 Y1))
       (or (not E) (= V1 W1))
       (or E (= R1 X1))
       (or E (= M1 V1))
       (or E (= K1 Z1))
       (or (not D) (= I2 J2))
       (or (not D) (= G2 H2))
       (or (not D) (= F2 K2))
       (or D (= Z1 F2))
       (or D (= V1 G2))
       (or D (= T1 I2))
       (or C (= D2 F2))
       (or (not C) (= D2 E2))
       (or (not C) (= B2 C2))
       (or C (= X1 B2))
       (= U Z)))
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
       X2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Bool) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Bool) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Bool) (M5 Bool) (N5 Bool) (O5 Bool) (P5 Bool) (Q5 Bool) (R5 Bool) (S5 Bool) (T5 Int) (U5 Int) (V5 Int) ) 
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
       X2)
        (let ((a!1 (= (or (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)))
              K))
      (a!2 (= (or (and (not A3)
                       (not B3)
                       (not C3)
                       (not D3)
                       (not E3)
                       (not F3)
                       (not G3)
                       (not H3))
                  (and (not A3)
                       (not B3)
                       (not C3)
                       (not D3)
                       (not E3)
                       (not F3)
                       (not G3)
                       H3)
                  (and (not A3)
                       (not B3)
                       (not C3)
                       (not D3)
                       (not E3)
                       (not F3)
                       G3
                       (not H3))
                  (and (not A3)
                       (not B3)
                       (not C3)
                       (not D3)
                       (not E3)
                       F3
                       (not G3)
                       (not H3))
                  (and (not A3)
                       (not B3)
                       (not C3)
                       (not D3)
                       E3
                       (not F3)
                       (not G3)
                       (not H3))
                  (and (not A3)
                       (not B3)
                       (not C3)
                       D3
                       (not E3)
                       (not F3)
                       (not G3)
                       (not H3))
                  (and (not A3)
                       (not B3)
                       C3
                       (not D3)
                       (not E3)
                       (not F3)
                       (not G3)
                       (not H3))
                  (and (not A3)
                       B3
                       (not C3)
                       (not D3)
                       (not E3)
                       (not F3)
                       (not G3)
                       (not H3))
                  (and A3
                       (not B3)
                       (not C3)
                       (not D3)
                       (not E3)
                       (not F3)
                       (not G3)
                       (not H3)))
              I3))
      (a!3 (and (<= 1 U) (= O 0) (= Q 0) (= S 0)))
      (a!4 (= (and (<= 1 U) (<= 1 (+ O Q))) Q5))
      (a!5 (= L5 (and (<= 1 U) (<= 1 (+ O Q)))))
      (a!6 (or B (and I3 (not (<= 5 J5)) (<= 0 J5))))
      (a!7 (or (not Q5) (= (+ O Q (* (- 1) U4)) 0)))
      (a!8 (or (not Q5) (= (+ U (* (- 1) X4)) 1)))
      (a!9 (or (not P5) (= (+ S (* (- 1) R4)) (- 1))))
      (a!10 (or (not P5) (= (+ Q (* (- 1) Q4)) 1)))
      (a!11 (or (not O5) (= (+ Q (* (- 1) M4)) (- 1))))
      (a!12 (or (not S5) (= (+ U (* (- 1) B5)) 1)))
      (a!13 (or (not S5) (= (+ Q (* (- 1) A5)) (- 1))))
      (a!14 (or (not R5) (= (+ U (* (- 1) I5)) 1)))
      (a!15 (or (not R5) (= (+ S (* (- 1) H5)) 1)))
      (a!16 (or (not R5) (= (+ O (* (- 1) F5)) (- 2))))
      (a!17 (or (not N5) (= (+ U (* (- 1) I4)) 1)))
      (a!18 (or (not M5) (= (+ U (* (- 1) C4)) 1)))
      (a!19 (or (not M5) (= (+ S (* (- 1) U5)) 1)))
      (a!20 (or (not M5) (= (+ O (* (- 1) B4)) (- 2))))
      (a!21 (or (not L5) (= (+ O Q (* (- 1) T5)) (- 1))))
      (a!22 (or (not L5) (= (+ U (* (- 1) V5)) 1))))
  (and (= T U)
       (= S Y)
       (= R S)
       (= Q X)
       (= P Q)
       (= O W)
       (= N O)
       (= M K3)
       (= L M)
       (= S3 C5)
       (= R3 X3)
       (= R3 S3)
       (= Q3 G5)
       (= P3 W3)
       (= P3 Q3)
       (= O3 Z4)
       (= N3 V3)
       (= N3 O3)
       (= M3 E5)
       (= L3 U3)
       (= L3 M3)
       (= J3 K3)
       (= (<= 1 Q) P5)
       a!1
       a!2
       (= (or (not V) (<= 0 Z)) A1)
       (= (or (not T3) (<= 0 X3)) Y3)
       (= a!3 S5)
       a!4
       (= (and (<= 1 S) (<= 1 U)) R5)
       (= (and (<= 1 S) (<= 1 U)) M5)
       (= O5 (= O 1))
       (= B V)
       (= A B)
       (= N5 a!3)
       a!5
       (= Z2 a!6)
       (= Y2 T3)
       (= Y2 Z2)
       a!7
       a!8
       (or Q5 (= U X4))
       (or Q5 (= Q W4))
       (or Q5 (= O U4))
       (or (not Q5) (= W4 0))
       a!9
       a!10
       (or P5 (= S R4))
       (or P5 (= Q Q4))
       a!11
       (or O5 (= Q M4))
       (or O5 (= O L4))
       (or (not O5) (= L4 0))
       (or I (= E1 G1))
       (or (not I) (= E1 F1))
       (or (not I) (= B1 D1))
       (or I (= B1 C1))
       (or (not H) (= K1 L1))
       (or (not H) (= H1 J1))
       (or H (= H1 I1))
       (or H (= E1 K1))
       (or G (= O1 Q1))
       (or (not G) (= O1 P1))
       (or (not G) (= M1 N1))
       (or G (= B1 M1))
       (or (not F) (= T1 U1))
       (or (not F) (= R1 S1))
       (or F (= O1 R1))
       (or F (= H1 T1))
       (or (not E) (= Z1 A2))
       (or (not E) (= X1 Y1))
       (or (not E) (= V1 W1))
       (or E (= R1 X1))
       (or E (= M1 V1))
       (or E (= K1 Z1))
       (or (not D) (= I2 J2))
       (or (not D) (= G2 H2))
       (or (not D) (= F2 K2))
       (or D (= Z1 F2))
       (or D (= V1 G2))
       (or D (= T1 I2))
       (or C (= D2 F2))
       (or (not C) (= D2 E2))
       (or (not C) (= B2 C2))
       (or C (= X1 B2))
       a!12
       a!13
       (or S5 (= U B5))
       (or S5 (= Q A5))
       a!14
       a!15
       a!16
       (or R5 (= U I5))
       (or R5 (= S H5))
       (or R5 (= O F5))
       a!17
       (or N5 (= U I4))
       (or N5 (= S H4))
       (or (not N5) (= H4 1))
       a!18
       a!19
       a!20
       (or M5 (= U C4))
       (or M5 (= S U5))
       (or M5 (= O B4))
       a!21
       a!22
       (or L5 (= U V5))
       (or L5 (= Q K5))
       (or L5 (= O T5))
       (or (not L5) (= K5 0))
       (or H3 (= U E4))
       (or H3 (= Q O4))
       (or H3 (= O Z3))
       (or (not H3) (= O4 K5))
       (or (not H3) (= E4 V5))
       (or (not H3) (= Z3 T5))
       (or G3 (= S F4))
       (or (not G3) (= F4 U5))
       (or G3 (= D4 E4))
       (or (not G3) (= C4 D4))
       (or (not G3) (= A4 B4))
       (or G3 (= Z3 A4))
       (or (not F3) (= I4 J4))
       (or (not F3) (= G4 H4))
       (or F3 (= F4 G4))
       (or F3 (= D4 J4))
       (or E3 (= N4 O4))
       (or (not E3) (= M4 N4))
       (or (not E3) (= K4 L4))
       (or E3 (= A4 K4))
       (or (not D3) (= R4 S4))
       (or (not D3) (= P4 Q4))
       (or D3 (= N4 P4))
       (or D3 (= G4 S4))
       (or (not C3) (= X4 Y4))
       (or (not C3) (= V4 W4))
       (or (not C3) (= T4 U4))
       (or C3 (= P4 V4))
       (or C3 (= K4 T4))
       (or C3 (= J4 Y4))
       (or (not B3) (= G5 H5))
       (or (not B3) (= E5 F5))
       (or (not B3) (= D5 I5))
       (or B3 (= Y4 D5))
       (or B3 (= T4 E5))
       (or B3 (= S4 G5))
       (or A3 (= C5 D5))
       (or (not A3) (= B5 C5))
       (or (not A3) (= Z4 A5))
       (or A3 (= V4 Z4))
       (= U Z)))
      )
      (state Z2
       Y2
       A3
       B3
       C3
       D3
       E3
       F3
       G3
       H3
       I3
       K3
       J3
       M3
       L3
       O3
       N3
       Q3
       P3
       S3
       R3
       T3
       U3
       V3
       W3
       X3
       Y3
       A4
       Z3
       B4
       D4
       C4
       E4
       G4
       F4
       H4
       J4
       I4
       K4
       L4
       N4
       M4
       O4
       P4
       Q4
       S4
       R4
       T4
       U4
       V4
       W4
       Y4
       X4
       Z4
       A5
       C5
       B5
       D5
       E5
       F5
       G5
       H5
       I5
       J5
       K5
       L5
       N5
       Q5
       U5
       T5
       V5
       S5
       R5
       P5
       O5
       M5)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Bool) ) 
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
       X2)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
