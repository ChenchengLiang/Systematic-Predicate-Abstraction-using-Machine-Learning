(set-logic HORN)

(declare-fun |state| ( Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Bool) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Int) (K2 Bool) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Int) (Y2 Int) (Z2 Int) (A3 Bool) (B3 Bool) (C3 Int) (D3 Int) ) 
    (=>
      (and
        (let ((a!1 (and B3
                (<= N2 V)
                (<= (+ O2 N2 (* (- 1) V) R P) 0)
                (<= 0 N2)
                (= (+ P2 (* (- 1) O2) (* (- 1) N2) (* (- 1) R) (* (- 1) P)) 0)))
      (a!2 (= M (and L (<= 0 X2) (not (<= 5 X2)))))
      (a!3 (= (or (and (not H2)
                       (not A3)
                       (not F1)
                       (not O1)
                       (not U1)
                       (not A)
                       (not Z)
                       (not Y1))
                  (and (not H2)
                       (not A3)
                       (not F1)
                       (not O1)
                       (not U1)
                       (not A)
                       (not Z)
                       Y1)
                  (and (not H2)
                       (not A3)
                       (not F1)
                       (not O1)
                       (not U1)
                       (not A)
                       Z
                       (not Y1))
                  (and (not H2)
                       (not A3)
                       (not F1)
                       (not O1)
                       (not U1)
                       A
                       (not Z)
                       (not Y1))
                  (and (not H2)
                       (not A3)
                       (not F1)
                       (not O1)
                       U1
                       (not A)
                       (not Z)
                       (not Y1))
                  (and (not H2)
                       (not A3)
                       (not F1)
                       O1
                       (not U1)
                       (not A)
                       (not Z)
                       (not Y1))
                  (and (not H2)
                       (not A3)
                       F1
                       (not O1)
                       (not U1)
                       (not A)
                       (not Z)
                       (not Y1))
                  (and (not H2)
                       A3
                       (not F1)
                       (not O1)
                       (not U1)
                       (not A)
                       (not Z)
                       (not Y1))
                  (and H2
                       (not A3)
                       (not F1)
                       (not O1)
                       (not U1)
                       (not A)
                       (not Z)
                       (not Y1)))
              L)))
  (and (= (or (not T) a!1) M2)
       (= U T)
       a!2
       (= M U)
       (= W V)
       (= Q P)
       (= N W)
       (= N X2)
       (= K 0)
       (= K S)
       (= V2 Q2)
       (= U2 X2)
       (= U2 S2)
       (= T2 0)
       (= T2 R2)
       (= S2 V2)
       (= J 0)
       (= J Q)
       (= O X2)
       (= O P2)
       (= S R)
       (= Q2 N2)
       (= R2 O2)
       (or Y1 (= D2 S1))
       (or (not Y1) (= S1 Z1))
       (or Y1 (= X1 D3))
       (or (not Y1) (= X1 L2))
       (or (not Z) (= X A1))
       (or Z (= Y X))
       (or (not Z) (= C1 B1))
       (or Z (= D1 C1))
       (or (not H) (= I 1))
       (or (not F) (= G 0))
       (or (not A) (= E D))
       (or (not A) (= D3 C3))
       (or (not A) (= C B))
       (or (not U1) (= J1 V1))
       (or (not U1) (= Q1 W1))
       (or U1 (= T1 J1))
       (or U1 (= X1 Q1))
       (or O1 (= S1 M1))
       (or (not O1) (= M1 R1))
       (or (not O1) (= D1 G))
       (or (not O1) (= E1 P1))
       (or O1 (= N1 E1))
       (or O1 (= Q1 D1))
       (or F1 (= M1 L1))
       (or (not F1) (= L1 K1))
       (or (not F1) (= Y G1))
       (or F1 (= E1 Y))
       (or (not F1) (= I1 H1))
       (or F1 (= J1 I1))
       (or A3 (= D2 E))
       (or (not A3) (= D2 B2))
       (or (not A3) (= Z2 Y2))
       (or A3 (= F2 C))
       (or (not A3) (= F2 A2))
       (or (not W2) (= C3 0))
       (or (not H2) (= N1 J2))
       (or (not H2) (= T1 I))
       (or H2 (= T1 Z2))
       (or H2 (= F2 N1))
       (= B3 true)
       a!3))
      )
      (state O
       P2
       N
       W
       M
       U
       F1
       Z
       O1
       U1
       Y1
       H2
       A3
       A
       L
       U2
       S2
       K
       S
       J
       Q
       T2
       R2
       V2
       Q2
       O2
       N2
       V
       R
       P
       B3
       T
       M2
       D2
       E
       B2
       F2
       A2
       C
       T1
       Z2
       I
       N1
       J2
       S1
       Z1
       X1
       L2
       D3
       Q1
       W1
       J1
       V1
       M1
       R1
       D1
       G
       E1
       P1
       L1
       K1
       I1
       H1
       Y
       G1
       C1
       B1
       X
       A1
       X2
       C3
       W2
       H
       F
       D
       B
       Y2
       C2
       E2
       G2
       I2
       K2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Bool) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Int) (K2 Bool) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Int) (Y2 Bool) (Z2 Int) (A3 Int) (B3 Bool) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Bool) (J3 Int) (K3 Bool) (L3 Int) (M3 Bool) (N3 Int) (O3 Bool) (P3 Int) (Q3 Bool) (R3 Bool) (S3 Int) (T3 Int) (U3 Bool) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Bool) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Bool) (Q4 Bool) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Bool) (W4 Bool) (X4 Int) (Y4 Int) (Z4 Int) (A5 Bool) (B5 Int) (C5 Int) (D5 Bool) (E5 Int) (F5 Int) (G5 Int) (H5 Bool) (I5 Int) (J5 Int) (K5 Int) (L5 Bool) (M5 Int) (N5 Bool) (O5 Int) (P5 Int) (Q5 Bool) (R5 Bool) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Bool) (B6 Int) (C6 Int) (D6 Int) (E6 Bool) (F6 Bool) (G6 Int) (H6 Int) ) 
    (=>
      (and
        (state O
       P2
       N
       W
       M
       U
       F1
       Z
       O1
       U1
       Y1
       H2
       E6
       A
       L
       Y5
       W5
       K
       S
       J
       Q
       X5
       R2
       Z5
       Q2
       O2
       N2
       V
       R
       P
       F6
       T
       M2
       D2
       E
       B2
       F2
       A2
       C
       T1
       D6
       I
       N1
       J2
       S1
       Z1
       X1
       L2
       H6
       Q1
       W1
       J1
       V1
       M1
       R1
       D1
       G
       E1
       P1
       L1
       K1
       I1
       H1
       Y
       G1
       C1
       B1
       X
       A1
       B6
       G6
       A6
       H
       F
       D
       B
       C6
       C2
       E2
       G2
       I2
       K2)
        (let ((a!1 (= (or (and (not Q5)
                       (not N5)
                       (not L5)
                       (not H5)
                       (not D5)
                       (not A5)
                       (not B3)
                       (not Y2))
                  (and (not Q5)
                       (not N5)
                       (not L5)
                       (not H5)
                       (not D5)
                       (not A5)
                       (not B3)
                       Y2)
                  (and (not Q5)
                       (not N5)
                       (not L5)
                       (not H5)
                       (not D5)
                       (not A5)
                       B3
                       (not Y2))
                  (and (not Q5)
                       (not N5)
                       (not L5)
                       (not H5)
                       (not D5)
                       A5
                       (not B3)
                       (not Y2))
                  (and (not Q5)
                       (not N5)
                       (not L5)
                       (not H5)
                       D5
                       (not A5)
                       (not B3)
                       (not Y2))
                  (and (not Q5)
                       (not N5)
                       (not L5)
                       H5
                       (not D5)
                       (not A5)
                       (not B3)
                       (not Y2))
                  (and (not Q5)
                       (not N5)
                       L5
                       (not H5)
                       (not D5)
                       (not A5)
                       (not B3)
                       (not Y2))
                  (and (not Q5)
                       N5
                       (not L5)
                       (not H5)
                       (not D5)
                       (not A5)
                       (not B3)
                       (not Y2))
                  (and Q5
                       (not N5)
                       (not L5)
                       (not H5)
                       (not D5)
                       (not A5)
                       (not B3)
                       (not Y2)))
              P4))
      (a!2 (= (or (and (not A)
                       (not Z)
                       (not F1)
                       (not O1)
                       (not U1)
                       (not Y1)
                       (not H2)
                       (not E6))
                  (and (not A)
                       (not Z)
                       (not F1)
                       (not O1)
                       (not U1)
                       (not Y1)
                       (not H2)
                       E6)
                  (and (not A)
                       (not Z)
                       (not F1)
                       (not O1)
                       (not U1)
                       (not Y1)
                       H2
                       (not E6))
                  (and (not A)
                       (not Z)
                       (not F1)
                       (not O1)
                       (not U1)
                       Y1
                       (not H2)
                       (not E6))
                  (and (not A)
                       (not Z)
                       (not F1)
                       (not O1)
                       U1
                       (not Y1)
                       (not H2)
                       (not E6))
                  (and (not A)
                       (not Z)
                       (not F1)
                       O1
                       (not U1)
                       (not Y1)
                       (not H2)
                       (not E6))
                  (and (not A)
                       (not Z)
                       F1
                       (not O1)
                       (not U1)
                       (not Y1)
                       (not H2)
                       (not E6))
                  (and (not A)
                       Z
                       (not F1)
                       (not O1)
                       (not U1)
                       (not Y1)
                       (not H2)
                       (not E6))
                  (and A
                       (not Z)
                       (not F1)
                       (not O1)
                       (not U1)
                       (not Y1)
                       (not H2)
                       (not E6)))
              L))
      (a!3 (and W2
                (<= U2 X4)
                (<= (+ V2 U2 (* (- 1) X4) T2 S2) 0)
                (<= 0 U2)
                (= (+ S5 (* (- 1) V2) (* (- 1) U2) (* (- 1) T2) (* (- 1) S2)) 0)))
      (a!4 (and F6
                (<= N2 V)
                (<= (+ O2 N2 (* (- 1) V) R P) 0)
                (<= 0 N2)
                (= (+ P2 (* (- 1) O2) (* (- 1) N2) (* (- 1) R) (* (- 1) P)) 0)))
      (a!5 (and (<= 1 Q2) (= Q 0) (= S 0) (= R2 0)))
      (a!6 (= (and (<= 1 Q2) (<= 1 (+ S Q))) M3))
      (a!7 (= W2
              (= (+ O2
                    N2
                    R
                    P
                    (* (- 1) V2)
                    (* (- 1) U2)
                    (* (- 1) T2)
                    (* (- 1) S2))
                 0)))
      (a!8 (= R3 (and (<= 1 Q2) (<= 1 (+ S Q)))))
      (a!9 (= Q4 (and U P4 (<= 0 O4) (not (<= 5 O4)))))
      (a!10 (or (not I3) (= (+ Q2 (* (- 1) H3)) 1)))
      (a!11 (or (not I3) (= (+ Q (* (- 1) W3)) (- 1))))
      (a!12 (or (not K3) (= (+ R2 (* (- 1) S3)) 1)))
      (a!13 (or (not K3) (= (+ Q2 (* (- 1) J3)) 1)))
      (a!14 (or (not K3) (= (+ S (* (- 1) C4)) (- 2))))
      (a!15 (or (not M3) (= (+ S Q (* (- 1) B4)) (- 1))))
      (a!16 (or (not M3) (= (+ Q2 (* (- 1) L3)) 1)))
      (a!17 (or (not O3) (= (+ Q2 (* (- 1) N3)) 1)))
      (a!18 (or (not Q3) (= (+ R2 (* (- 1) Z2)) 1)))
      (a!19 (or (not Q3) (= (+ Q2 (* (- 1) P3)) 1)))
      (a!20 (or (not Q3) (= (+ S (* (- 1) E4)) (- 2))))
      (a!21 (or (not R3) (= (+ S Q (* (- 1) F3)) (- 1))))
      (a!22 (or (not R3) (= (+ Q2 (* (- 1) C3)) 1)))
      (a!23 (or (not U3) (= (+ R2 (* (- 1) T3)) (- 1))))
      (a!24 (or (not U3) (= (+ Q (* (- 1) Y3)) 1)))
      (a!25 (or (not A4) (= (+ Q (* (- 1) Z3)) (- 1)))))
  (and a!1
       a!2
       (= (or (not V4) a!3) R5)
       (= (or (not T) a!4) M2)
       (= a!5 I3)
       a!6
       (= (and (<= 1 Q2) (<= 1 R2)) K3)
       (= (and (<= 1 Q2) (<= 1 R2)) Q3)
       a!7
       (= O3 a!5)
       a!8
       (= A4 (= S 1))
       a!9
       (= W4 Q4)
       (= W4 V4)
       (= U T)
       (= M U)
       (= Z5 Q2)
       (= Y5 W5)
       (= X5 R2)
       (= W5 F4)
       (= H4 G4)
       (= J4 I4)
       (= L4 K4)
       (= N4 M4)
       (= T4 S2)
       (= T4 L4)
       (= U4 T2)
       (= U4 N4)
       (= Y4 R4)
       (= Y4 X4)
       (= S5 S4)
       (= T5 U2)
       (= T5 H4)
       (= U5 V2)
       (= U5 J4)
       (= V5 F4)
       (= R2 O2)
       (= Q2 N2)
       (= P2 S4)
       (= W R4)
       (= W V)
       (= S R)
       (= Q P)
       (= O P2)
       (= N W)
       (= K S)
       (= J Q)
       (or (not E6) (= F2 A2))
       (or E6 (= F2 C))
       (or (not E6) (= D2 B2))
       (or E6 (= D2 E))
       (or (not Y2) (= X2 Z2))
       (or Y2 (= G3 O5))
       (or (not Y2) (= P3 P5))
       (or (not Y2) (= O5 E4))
       (or Y2 (= P5 A3))
       (or Y2 (= R2 X2))
       (or (not B3) (= A3 C3))
       (or (not B3) (= E3 D3))
       (or (not B3) (= G3 F3))
       (or B3 (= Q2 A3))
       (or B3 (= S G3))
       (or B3 (= Q E3))
       a!10
       a!11
       (or I3 (= Q2 H3))
       (or I3 (= Q W3))
       a!12
       a!13
       a!14
       (or K3 (= R2 S3))
       (or K3 (= Q2 J3))
       (or K3 (= S C4))
       a!15
       a!16
       (or (not M3) (= X3 0))
       (or M3 (= Q2 L3))
       (or M3 (= S B4))
       (or M3 (= Q X3))
       a!17
       (or (not O3) (= V3 1))
       (or O3 (= R2 V3))
       (or O3 (= Q2 N3))
       a!18
       a!19
       a!20
       (or Q3 (= R2 Z2))
       (or Q3 (= Q2 P3))
       (or Q3 (= S E4))
       a!21
       a!22
       (or (not R3) (= D3 0))
       (or R3 (= Q2 C3))
       (or R3 (= S F3))
       (or R3 (= Q D3))
       a!23
       a!24
       (or U3 (= R2 T3))
       (or U3 (= Q Y3))
       a!25
       (or (not A4) (= D4 0))
       (or A4 (= S D4))
       (or A4 (= Q Z3))
       (or (not A5) (= H3 G4))
       (or (not A5) (= K4 W3))
       (or A5 (= Z4 G4))
       (or A5 (= B5 K4))
       (or (not D5) (= J3 Z4))
       (or (not D5) (= I4 S3))
       (or (not D5) (= M4 C4))
       (or D5 (= C5 Z4))
       (or D5 (= E5 I4))
       (or D5 (= F5 M4))
       (or (not H5) (= L3 C5))
       (or (not H5) (= B5 X3))
       (or (not H5) (= F5 B4))
       (or H5 (= G5 C5))
       (or H5 (= I5 B5))
       (or H5 (= J5 F5))
       (or (not L5) (= T3 E5))
       (or (not L5) (= I5 Y3))
       (or L5 (= K5 E5))
       (or L5 (= M5 I5))
       (or (not N5) (= Z3 M5))
       (or (not N5) (= J5 D4))
       (or N5 (= M5 E3))
       (or N5 (= O5 J5))
       (or Q5 (= X2 K5))
       (or (not Q5) (= N3 G5))
       (or (not Q5) (= K5 V3))
       (or Q5 (= P5 G5))
       (or H2 (= F2 N1))
       (or H2 (= T1 D6))
       (or (not H2) (= T1 I))
       (or (not H2) (= N1 J2))
       (or Y1 (= D2 S1))
       (or Y1 (= X1 H6))
       (or (not Y1) (= X1 L2))
       (or (not Y1) (= S1 Z1))
       (or U1 (= X1 Q1))
       (or U1 (= T1 J1))
       (or (not U1) (= Q1 W1))
       (or (not U1) (= J1 V1))
       (or O1 (= S1 M1))
       (or O1 (= Q1 D1))
       (or O1 (= N1 E1))
       (or (not O1) (= M1 R1))
       (or (not O1) (= E1 P1))
       (or (not O1) (= D1 G))
       (or F1 (= M1 L1))
       (or (not F1) (= L1 K1))
       (or F1 (= J1 I1))
       (or (not F1) (= I1 H1))
       (or F1 (= E1 Y))
       (or (not F1) (= Y G1))
       (or Z (= D1 C1))
       (or (not Z) (= C1 B1))
       (or Z (= Y X))
       (or (not Z) (= X A1))
       (= (<= 1 Q) U3)))
      )
      (state S4
       S5
       R4
       Y4
       Q4
       W4
       D5
       A5
       H5
       L5
       N5
       Q5
       Y2
       B3
       P4
       F4
       V5
       N4
       U4
       L4
       T4
       J4
       U5
       H4
       T5
       V2
       U2
       X4
       T2
       S2
       W2
       V4
       R5
       O5
       G3
       E4
       P5
       P3
       A3
       K5
       X2
       V3
       G5
       N3
       J5
       D4
       M5
       Z3
       E3
       I5
       Y3
       E5
       T3
       F5
       B4
       B5
       X3
       C5
       L3
       M4
       C4
       I4
       S3
       Z4
       J3
       K4
       W3
       G4
       H3
       O4
       D3
       R3
       O3
       M3
       F3
       C3
       Z2
       I3
       K3
       U3
       A4
       Q3)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Bool) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Int) (K2 Bool) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Int) (Y2 Int) (Z2 Int) (A3 Bool) (B3 Bool) (C3 Int) (D3 Int) ) 
    (=>
      (and
        (state O
       P2
       N
       W
       M
       U
       F1
       Z
       O1
       U1
       Y1
       H2
       A3
       A
       L
       U2
       S2
       K
       S
       J
       Q
       T2
       R2
       V2
       Q2
       O2
       N2
       V
       R
       P
       B3
       T
       M2
       D2
       E
       B2
       F2
       A2
       C
       T1
       Z2
       I
       N1
       J2
       S1
       Z1
       X1
       L2
       D3
       Q1
       W1
       J1
       V1
       M1
       R1
       D1
       G
       E1
       P1
       L1
       K1
       I1
       H1
       Y
       G1
       C1
       B1
       X
       A1
       X2
       C3
       W2
       H
       F
       D
       B
       Y2
       C2
       E2
       G2
       I2
       K2)
        (not M2)
      )
      false
    )
  )
)

(check-sat)
(exit)
