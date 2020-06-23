(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool Bool Bool Bool Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Bool) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Int) (I2 Bool) (J2 Int) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Int) (O2 Bool) (P2 Int) (Q2 Bool) (R2 Int) (S2 Int) (T2 Bool) (U2 Int) (V2 Int) (W2 Bool) (X2 Bool) (Y2 Int) (Z2 Int) (A3 Bool) (B3 Bool) (C3 Int) (D3 Int) (E3 Bool) (F3 Int) (G3 Int) (H3 Int) ) 
    (=>
      (and
        (let ((a!1 (and B3
                (<= 0 T)
                (not (<= 2 T))
                (= (+ V (* (- 1) U) (* (- 1) T) (* (- 1) S) (* (- 1) R)) 0)))
      (a!2 (= N (and M (not (<= L 0)))))
      (a!3 (= (or (and (not A2)
                       (not W2)
                       (not A3)
                       (not E3)
                       (not F1)
                       (not L1)
                       (not U1)
                       (not L2)
                       (not T2))
                  (and (not A2)
                       (not W2)
                       (not A3)
                       (not E3)
                       (not F1)
                       (not L1)
                       (not U1)
                       (not L2)
                       T2)
                  (and (not A2)
                       (not W2)
                       (not A3)
                       (not E3)
                       (not F1)
                       (not L1)
                       (not U1)
                       L2
                       (not T2))
                  (and (not A2)
                       (not W2)
                       (not A3)
                       (not E3)
                       (not F1)
                       (not L1)
                       U1
                       (not L2)
                       (not T2))
                  (and (not A2)
                       (not W2)
                       (not A3)
                       (not E3)
                       (not F1)
                       L1
                       (not U1)
                       (not L2)
                       (not T2))
                  (and (not A2)
                       (not W2)
                       (not A3)
                       (not E3)
                       F1
                       (not L1)
                       (not U1)
                       (not L2)
                       (not T2))
                  (and (not A2)
                       (not W2)
                       (not A3)
                       E3
                       (not F1)
                       (not L1)
                       (not U1)
                       (not L2)
                       (not T2))
                  (and (not A2)
                       (not W2)
                       A3
                       (not E3)
                       (not F1)
                       (not L1)
                       (not U1)
                       (not L2)
                       (not T2))
                  (and (not A2)
                       W2
                       (not A3)
                       (not E3)
                       (not F1)
                       (not L1)
                       (not U1)
                       (not L2)
                       (not T2))
                  (and A2
                       (not W2)
                       (not A3)
                       (not E3)
                       (not F1)
                       (not L1)
                       (not U1)
                       (not L2)
                       (not T2)))
              M)))
  (and (= (or (not Q) a!1) P)
       (= C1 Q)
       a!2
       (= N C1)
       (= J 0)
       (= J A1)
       (= H G)
       (= H Y)
       (= I 0)
       (= I Z)
       (= K 0)
       (= K B1)
       (= O V)
       (= O L)
       (= Y R)
       (= Z S)
       (= A1 T)
       (= B1 U)
       (or (not (<= L 0)) (= (+ G L) 1))
       (or (<= L 0) (= G L))
       (or T2 (= D2 A))
       (or (not T2) (= D2 F))
       (or T2 (= C2 Z2))
       (or (not T2) (= C2 E))
       (or (not T2) (= H2 C))
       (or T2 (= H2 D3))
       (or (not T2) (= J2 U2))
       (or T2 (= S2 J2))
       (or L2 (= D2 R2))
       (or (not L2) (= R2 B))
       (or (not L2) (= T1 N2))
       (or (not L2) (= Z1 P2))
       (or L2 (= C2 Z1))
       (or L2 (= J2 T1))
       (or (not U1) (= S1 Y1))
       (or U1 (= R2 S1))
       (or U1 (= T1 K1))
       (or (not U1) (= J1 W1))
       (or (not U1) (= K1 V1))
       (or U1 (= X1 J1))
       (or L1 (= S1 R1))
       (or L1 (= P1 O1))
       (or (not L1) (= E1 M1))
       (or L1 (= K1 E1))
       (or (not L1) (= O1 N1))
       (or (not L1) (= R1 Q1))
       (or (not D) (= C 0))
       (or (not D) (= F 0))
       (or (not D) (= E 1))
       (or (not F1) (= D1 G1))
       (or F1 (= E1 D1))
       (or (not F1) (= I1 H1))
       (or F1 (= J1 I1))
       (or (not E3) (= G3 F3))
       (or (not E3) (= D3 C3))
       (or (not A3) (= A H3))
       (or A3 (= W G3))
       (or (not A3) (= W X))
       (or (not X2) (= B 0))
       (or (not W2) (= Z2 Y2))
       (or (not W2) (= S2 V2))
       (or W2 (= S2 W))
       (or (not A2) (= P1 B2))
       (or (not A2) (= X1 F2))
       (or A2 (= Z1 P1))
       (or A2 (= H2 X1))
       (= B3 true)
       a!3))
      )
      (state O
       V
       N
       C1
       L1
       F1
       U1
       A2
       L2
       T2
       W2
       A3
       E3
       M
       K
       B1
       J
       A1
       I
       Z
       H
       Y
       S2
       V2
       W
       D2
       A
       F
       H2
       D3
       C
       C2
       Z2
       E
       J2
       U2
       R2
       B
       Z1
       P2
       T1
       N2
       X1
       F2
       P1
       B2
       S1
       Y1
       J1
       W1
       K1
       V1
       R1
       Q1
       O1
       N1
       E1
       M1
       I1
       H1
       D1
       G1
       G
       L
       Q
       U
       T
       S
       R
       X
       G3
       B3
       P
       D
       X2
       Y2
       H3
       F3
       C3
       E2
       G2
       I2
       K2
       M2
       O2
       Q2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Bool) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Int) (I2 Bool) (J2 Int) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Int) (O2 Bool) (P2 Int) (Q2 Bool) (R2 Int) (S2 Int) (T2 Bool) (U2 Int) (V2 Int) (W2 Int) (X2 Bool) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Bool) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Bool) (J3 Int) (K3 Bool) (L3 Int) (M3 Int) (N3 Bool) (O3 Int) (P3 Bool) (Q3 Int) (R3 Bool) (S3 Int) (T3 Bool) (U3 Int) (V3 Bool) (W3 Int) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Bool) (B4 Int) (C4 Int) (D4 Bool) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Bool) (Y4 Bool) (Z4 Int) (A5 Bool) (B5 Bool) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Bool) (J5 Int) (K5 Int) (L5 Bool) (M5 Int) (N5 Int) (O5 Bool) (P5 Int) (Q5 Int) (R5 Int) (S5 Bool) (T5 Int) (U5 Int) (V5 Int) (W5 Bool) (X5 Int) (Y5 Int) (Z5 Bool) (A6 Int) (B6 Int) (C6 Int) (D6 Bool) (E6 Bool) (F6 Bool) (G6 Int) (H6 Int) (I6 Bool) (J6 Bool) (K6 Int) (L6 Int) (M6 Bool) (N6 Int) (O6 Int) (P6 Int) ) 
    (=>
      (and
        (state O
       V
       N
       C1
       L1
       F1
       U1
       A2
       L2
       T2
       E6
       I6
       M6
       M
       K
       B1
       J
       A1
       I
       Z
       H
       Y
       S2
       V2
       W
       D2
       A
       F
       H2
       L6
       C
       C2
       H6
       E
       J2
       U2
       R2
       B
       Z1
       P2
       T1
       N2
       X1
       F2
       P1
       B2
       S1
       Y1
       J1
       W1
       K1
       V1
       R1
       Q1
       O1
       N1
       E1
       M1
       I1
       H1
       D1
       G1
       G
       L
       Q
       U
       T
       S
       R
       X
       O6
       J6
       P
       D
       F6
       G6
       P6
       N6
       K6
       E2
       G2
       I2
       K2
       M2
       O2
       Q2)
        (let ((a!1 (= (or (and (not D6)
                       (not Z5)
                       (not W5)
                       (not S5)
                       (not O5)
                       (not L5)
                       (not K3)
                       (not C3)
                       (not X2))
                  (and (not D6)
                       (not Z5)
                       (not W5)
                       (not S5)
                       (not O5)
                       (not L5)
                       (not K3)
                       (not C3)
                       X2)
                  (and (not D6)
                       (not Z5)
                       (not W5)
                       (not S5)
                       (not O5)
                       (not L5)
                       (not K3)
                       C3
                       (not X2))
                  (and (not D6)
                       (not Z5)
                       (not W5)
                       (not S5)
                       (not O5)
                       (not L5)
                       K3
                       (not C3)
                       (not X2))
                  (and (not D6)
                       (not Z5)
                       (not W5)
                       (not S5)
                       (not O5)
                       L5
                       (not K3)
                       (not C3)
                       (not X2))
                  (and (not D6)
                       (not Z5)
                       (not W5)
                       (not S5)
                       O5
                       (not L5)
                       (not K3)
                       (not C3)
                       (not X2))
                  (and (not D6)
                       (not Z5)
                       (not W5)
                       S5
                       (not O5)
                       (not L5)
                       (not K3)
                       (not C3)
                       (not X2))
                  (and (not D6)
                       (not Z5)
                       W5
                       (not S5)
                       (not O5)
                       (not L5)
                       (not K3)
                       (not C3)
                       (not X2))
                  (and (not D6)
                       Z5
                       (not W5)
                       (not S5)
                       (not O5)
                       (not L5)
                       (not K3)
                       (not C3)
                       (not X2))
                  (and D6
                       (not Z5)
                       (not W5)
                       (not S5)
                       (not O5)
                       (not L5)
                       (not K3)
                       (not C3)
                       (not X2)))
              X4))
      (a!2 (= (or (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       (not L2)
                       (not T2)
                       (not E6)
                       (not I6)
                       (not M6))
                  (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       (not L2)
                       (not T2)
                       (not E6)
                       (not I6)
                       M6)
                  (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       (not L2)
                       (not T2)
                       (not E6)
                       I6
                       (not M6))
                  (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       (not L2)
                       (not T2)
                       E6
                       (not I6)
                       (not M6))
                  (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       (not L2)
                       T2
                       (not E6)
                       (not I6)
                       (not M6))
                  (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       L2
                       (not T2)
                       (not E6)
                       (not I6)
                       (not M6))
                  (and (not F1)
                       (not L1)
                       (not U1)
                       A2
                       (not L2)
                       (not T2)
                       (not E6)
                       (not I6)
                       (not M6))
                  (and (not F1)
                       (not L1)
                       U1
                       (not A2)
                       (not L2)
                       (not T2)
                       (not E6)
                       (not I6)
                       (not M6))
                  (and (not F1)
                       L1
                       (not U1)
                       (not A2)
                       (not L2)
                       (not T2)
                       (not E6)
                       (not I6)
                       (not M6))
                  (and F1
                       (not L1)
                       (not U1)
                       (not A2)
                       (not L2)
                       (not T2)
                       (not E6)
                       (not I6)
                       (not M6)))
              M))
      (a!3 (and I3
                (<= 0 G3)
                (not (<= 2 G3))
                (= (+ C5 (* (- 1) H3) (* (- 1) G3) (* (- 1) F3) (* (- 1) E3)) 0)))
      (a!4 (and J6
                (<= 0 T)
                (not (<= 2 T))
                (= (+ V (* (- 1) U) (* (- 1) T) (* (- 1) S) (* (- 1) R)) 0)))
      (a!5 (= I3
              (= (+ U T S R (* (- 1) H3) (* (- 1) G3) (* (- 1) F3) (* (- 1) E3))
                 0)))
      (a!6 (= R3 (and (<= 1 Y) (<= 1 (+ B1 A1)))))
      (a!7 (= Y4 (and C1 X4 (not (<= W4 0)))))
      (a!8 (or (not N3) (= (+ A1 (* (- 1) G4)) (- 1))))
      (a!9 (or (not N3) (= (+ Y (* (- 1) M3)) 1)))
      (a!10 (or (not P3) (= (+ B1 (* (- 1) L4)) (- 2))))
      (a!11 (or (not P3) (= (+ Z (* (- 1) B4)) 1)))
      (a!12 (or (not P3) (= (+ Y (* (- 1) O3)) 1)))
      (a!13 (or (not R3) (= (+ B1 A1 (* (- 1) K4)) (- 1))))
      (a!14 (or (not R3) (= (+ Y (* (- 1) Q3)) 1)))
      (a!15 (or (not T3) (= (+ B1 Y (* (- 1) S3)) 1)))
      (a!16 (or (not T3) (= (+ Z (* (- 1) E4)) (- 1))))
      (a!17 (or (not V3) (= (+ B1 A1 Z Y (* (- 1) U3)) 1)))
      (a!18 (or (not X3) (= (+ Z (* (- 1) L3)) 1)))
      (a!19 (or (not X3) (= (+ Y (* (- 1) W3)) (- 1))))
      (a!20 (or (not Z3) (= (+ B1 (* (- 1) D3)) 1)))
      (a!21 (or (not Z3) (= (+ Y (* (- 1) Y3)) (- 1))))
      (a!22 (or (not A4) (= (+ A1 (* (- 1) Z2)) 1)))
      (a!23 (or (not A4) (= (+ Y (* (- 1) Y2)) (- 1))))
      (a!24 (or (not D4) (= (+ A1 (* (- 1) I4)) 1)))
      (a!25 (or (not D4) (= (+ Z (* (- 1) C4)) (- 1)))))
  (and (= (<= 1 B1) Z3)
       (= (<= 1 A1) A4)
       (= (<= 1 A1) D4)
       (= (<= 1 Z) X3)
       (= (<= 1 Y) V3)
       a!1
       a!2
       (= (or (not B5) a!3) A5)
       (= (or (not Q) a!4) P)
       (= (and (<= 1 Y) (= Z 0) (= A1 0) (= B1 0)) N3)
       (= (and (<= 1 Y) (<= 1 Z)) P3)
       a!5
       a!6
       a!7
       (= I5 Y4)
       (= I5 B5)
       (= C1 Q)
       (= N C1)
       (= P4 O4)
       (= R4 Q4)
       (= T4 S4)
       (= V4 U4)
       (= C5 Z4)
       (= E5 E3)
       (= E5 P4)
       (= F5 F3)
       (= F5 R4)
       (= G5 G3)
       (= G5 T4)
       (= H5 H3)
       (= H5 V4)
       (= B1 U)
       (= A1 T)
       (= Z S)
       (= Y R)
       (= V Z4)
       (= O V)
       (= K B1)
       (= J A1)
       (= I Z)
       (= H Y)
       (or (not (<= W4 0)) (= (+ W4 J5) 1))
       (or (<= W4 0) (= W4 J5))
       (or (not (<= L 0)) (= (+ G L) 1))
       (or (<= L 0) (= G L))
       (or I6 (= W O6))
       (or (not I6) (= W X))
       (or (not E6) (= S2 V2))
       (or E6 (= S2 W))
       (or (not X2) (= W2 Y2))
       (or (not X2) (= A3 Z2))
       (or X2 (= A1 A3))
       (or X2 (= Y W2))
       (or (not C3) (= B3 D3))
       (or C3 (= D5 W2))
       (or (not C3) (= D5 Y3))
       (or C3 (= B1 B3))
       (or (not K3) (= J3 L3))
       (or (not K3) (= W3 C6))
       (or K3 (= C6 D5))
       (or K3 (= Z J3))
       a!8
       a!9
       (or N3 (= A1 G4))
       (or N3 (= Y M3))
       a!10
       a!11
       a!12
       (or P3 (= B1 L4))
       (or P3 (= Z B4))
       (or P3 (= Y O3))
       a!13
       a!14
       (or (not R3) (= H4 0))
       (or R3 (= B1 K4))
       (or R3 (= A1 H4))
       (or R3 (= Y Q3))
       a!15
       a!16
       (or (not T3) (= M4 0))
       (or T3 (= B1 M4))
       (or T3 (= Z E4))
       (or T3 (= Y S3))
       a!17
       (or (not V3) (= F4 1))
       (or (not V3) (= J4 0))
       (or (not V3) (= N4 0))
       (or V3 (= B1 N4))
       (or V3 (= A1 J4))
       (or V3 (= Z F4))
       (or V3 (= Y U3))
       a!18
       a!19
       (or X3 (= Z L3))
       (or X3 (= Y W3))
       a!20
       a!21
       (or Z3 (= B1 D3))
       (or Z3 (= Y Y3))
       a!22
       a!23
       (or A4 (= A1 Z2))
       (or A4 (= Y Y2))
       a!24
       a!25
       (or D4 (= A1 I4))
       (or D4 (= Z C4))
       (or (not L5) (= M3 O4))
       (or (not L5) (= S4 G4))
       (or L5 (= K5 O4))
       (or L5 (= M5 S4))
       (or (not O5) (= O3 K5))
       (or (not O5) (= Q4 B4))
       (or (not O5) (= U4 L4))
       (or O5 (= N5 K5))
       (or O5 (= P5 Q4))
       (or O5 (= Q5 U4))
       (or (not S5) (= Q3 N5))
       (or (not S5) (= M5 H4))
       (or (not S5) (= Q5 K4))
       (or S5 (= R5 N5))
       (or S5 (= T5 M5))
       (or S5 (= U5 Q5))
       (or (not W5) (= C4 P5))
       (or (not W5) (= T5 I4))
       (or W5 (= V5 P5))
       (or W5 (= X5 T5))
       (or (not Z5) (= S3 R5))
       (or (not Z5) (= U5 M4))
       (or (not Z5) (= V5 E4))
       (or Z5 (= Y5 R5))
       (or Z5 (= A6 V5))
       (or Z5 (= B6 U5))
       (or D6 (= A3 X5))
       (or D6 (= B3 B6))
       (or D6 (= J3 A6))
       (or (not D6) (= U3 Y5))
       (or (not D6) (= X5 J4))
       (or (not D6) (= A6 F4))
       (or (not D6) (= B6 N4))
       (or D6 (= C6 Y5))
       (or T2 (= S2 J2))
       (or (not T2) (= J2 U2))
       (or T2 (= H2 L6))
       (or (not T2) (= H2 C))
       (or (not T2) (= D2 F))
       (or T2 (= D2 A))
       (or T2 (= C2 H6))
       (or (not T2) (= C2 E))
       (or (not L2) (= R2 B))
       (or L2 (= J2 T1))
       (or L2 (= D2 R2))
       (or L2 (= C2 Z1))
       (or (not L2) (= Z1 P2))
       (or (not L2) (= T1 N2))
       (or A2 (= H2 X1))
       (or A2 (= Z1 P1))
       (or (not A2) (= X1 F2))
       (or (not A2) (= P1 B2))
       (or U1 (= R2 S1))
       (or U1 (= X1 J1))
       (or U1 (= T1 K1))
       (or (not U1) (= S1 Y1))
       (or (not U1) (= K1 V1))
       (or (not U1) (= J1 W1))
       (or L1 (= S1 R1))
       (or (not L1) (= R1 Q1))
       (or L1 (= P1 O1))
       (or (not L1) (= O1 N1))
       (or L1 (= K1 E1))
       (or (not L1) (= E1 M1))
       (or F1 (= J1 I1))
       (or (not F1) (= I1 H1))
       (or F1 (= E1 D1))
       (or (not F1) (= D1 G1))
       (= (<= 1 B1) T3)))
      )
      (state Z4
       C5
       Y4
       I5
       O5
       L5
       S5
       W5
       Z5
       D6
       K3
       C3
       X2
       X4
       V4
       H5
       T4
       G5
       R4
       F5
       P4
       E5
       C6
       W3
       D5
       B6
       B3
       N4
       X5
       A3
       J4
       A6
       J3
       F4
       Y5
       U3
       U5
       M4
       V5
       E4
       R5
       S3
       T5
       I4
       P5
       C4
       Q5
       K4
       M5
       H4
       N5
       Q3
       U4
       L4
       Q4
       B4
       K5
       O3
       S4
       G4
       O4
       M3
       J5
       W4
       B5
       H3
       G3
       F3
       E3
       Y3
       W2
       I3
       A5
       V3
       T3
       L3
       D3
       Y2
       Z2
       N3
       P3
       R3
       D4
       X3
       Z3
       A4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Bool) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Int) (I2 Bool) (J2 Int) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Int) (O2 Bool) (P2 Int) (Q2 Bool) (R2 Int) (S2 Int) (T2 Bool) (U2 Int) (V2 Int) (W2 Bool) (X2 Bool) (Y2 Int) (Z2 Int) (A3 Bool) (B3 Bool) (C3 Int) (D3 Int) (E3 Bool) (F3 Int) (G3 Int) (H3 Int) ) 
    (=>
      (and
        (state O
       V
       N
       C1
       L1
       F1
       U1
       A2
       L2
       T2
       W2
       A3
       E3
       M
       K
       B1
       J
       A1
       I
       Z
       H
       Y
       S2
       V2
       W
       D2
       A
       F
       H2
       D3
       C
       C2
       Z2
       E
       J2
       U2
       R2
       B
       Z1
       P2
       T1
       N2
       X1
       F2
       P1
       B2
       S1
       Y1
       J1
       W1
       K1
       V1
       R1
       Q1
       O1
       N1
       E1
       M1
       I1
       H1
       D1
       G1
       G
       L
       Q
       U
       T
       S
       R
       X
       G3
       B3
       P
       D
       X2
       Y2
       H3
       F3
       C3
       E2
       G2
       I2
       K2
       M2
       O2
       Q2)
        (not P)
      )
      false
    )
  )
)

(check-sat)
(exit)
