(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Bool) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Bool) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Int) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Int) (M2 Bool) (N2 Int) (O2 Bool) (P2 Int) (Q2 Bool) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Bool) (Y2 Int) (Z2 Int) (A3 Bool) (B3 Int) (C3 Int) (D3 Bool) (E3 Int) (F3 Int) (G3 Int) ) 
    (=>
      (and
        (let ((a!1 (or (not P)
               (= (+ U (* (- 1) T) (* (- 1) S) (* (- 1) R) (* (- 1) Q)) 0)))
      (a!2 (= M (and L (not (<= K 0)))))
      (a!3 (= (or (and (not J2)
                       (not Z1)
                       (not K1)
                       (not A3)
                       (not D3)
                       (not T1)
                       (not B)
                       (not E1)
                       (not S2))
                  (and (not J2)
                       (not Z1)
                       (not K1)
                       (not A3)
                       (not D3)
                       (not T1)
                       (not B)
                       (not E1)
                       S2)
                  (and (not J2)
                       (not Z1)
                       (not K1)
                       (not A3)
                       (not D3)
                       (not T1)
                       (not B)
                       E1
                       (not S2))
                  (and (not J2)
                       (not Z1)
                       (not K1)
                       (not A3)
                       (not D3)
                       (not T1)
                       B
                       (not E1)
                       (not S2))
                  (and (not J2)
                       (not Z1)
                       (not K1)
                       (not A3)
                       (not D3)
                       T1
                       (not B)
                       (not E1)
                       (not S2))
                  (and (not J2)
                       (not Z1)
                       (not K1)
                       (not A3)
                       D3
                       (not T1)
                       (not B)
                       (not E1)
                       (not S2))
                  (and (not J2)
                       (not Z1)
                       (not K1)
                       A3
                       (not D3)
                       (not T1)
                       (not B)
                       (not E1)
                       (not S2))
                  (and (not J2)
                       (not Z1)
                       K1
                       (not A3)
                       (not D3)
                       (not T1)
                       (not B)
                       (not E1)
                       (not S2))
                  (and (not J2)
                       Z1
                       (not K1)
                       (not A3)
                       (not D3)
                       (not T1)
                       (not B)
                       (not E1)
                       (not S2))
                  (and J2
                       (not Z1)
                       (not K1)
                       (not A3)
                       (not D3)
                       (not T1)
                       (not B)
                       (not E1)
                       (not S2)))
              L)))
  (and (= a!1 O)
       (= B1 P)
       a!2
       (= M B1)
       (= N K)
       (= N U)
       (= I 0)
       (= I Z)
       (= G F)
       (= G X)
       (= H 0)
       (= H Y)
       (= J 0)
       (= J A1)
       (= X Q)
       (= Y R)
       (= Z S)
       (= A1 T)
       (or (not (<= K 0)) (= (+ F K) 1))
       (or (<= K 0) (= F K))
       (or S2 (= C2 A))
       (or (not S2) (= C2 E))
       (or S2 (= F2 C3))
       (or (not S2) (= F2 V2))
       (or S2 (= D2 H2))
       (or (not S2) (= H2 T2))
       (or S2 (= P2 Z2))
       (or (not S2) (= P2 D))
       (or (not E1) (= C1 F1))
       (or E1 (= D1 C1))
       (or (not E1) (= H1 G1))
       (or E1 (= I1 H1))
       (or (not B) (= A G3))
       (or B (= V F3))
       (or (not B) (= V W))
       (or (not T1) (= I1 V1))
       (or (not T1) (= J1 U1))
       (or (not T1) (= R1 X1))
       (or T1 (= S1 J1))
       (or T1 (= W1 I1))
       (or T1 (= Y1 R1))
       (or (not D3) (= F3 E3))
       (or (not D3) (= C3 B3))
       (or (not A3) (= Z2 C))
       (or (not A3) (= D2 U2))
       (or A3 (= D2 V))
       (or (not X2) (= Y2 0))
       (or (not W2) (= E 0))
       (or (not W2) (= V2 0))
       (or (not W2) (= D 1))
       (or K1 (= O1 N1))
       (or (not K1) (= N1 M1))
       (or (not K1) (= D1 L1))
       (or K1 (= J1 D1))
       (or (not K1) (= Q1 P1))
       (or K1 (= R1 Q1))
       (or (not Z1) (= O1 A2))
       (or Z1 (= F2 W1))
       (or (not Z1) (= W1 B2))
       (or Z1 (= R2 O1))
       (or J2 (= C2 Y1))
       (or (not J2) (= S1 L2))
       (or (not J2) (= Y1 Y2))
       (or J2 (= H2 S1))
       (or J2 (= P2 R2))
       (or (not J2) (= R2 N2))
       a!3))
      )
      (state N
       U
       M
       B1
       K1
       E1
       T1
       Z1
       J2
       S2
       A3
       B
       D3
       L
       J
       A1
       I
       Z
       H
       Y
       G
       X
       D2
       U2
       V
       C2
       A
       E
       F2
       C3
       V2
       P2
       Z2
       D
       H2
       T2
       Y1
       Y2
       R2
       N2
       S1
       L2
       W1
       B2
       O1
       A2
       R1
       X1
       I1
       V1
       J1
       U1
       Q1
       P1
       N1
       M1
       D1
       L1
       H1
       G1
       C1
       F1
       F
       K
       P
       T
       S
       R
       Q
       W
       F3
       O
       W2
       X2
       C
       G3
       E3
       B3
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Bool) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Bool) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Int) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Int) (M2 Bool) (N2 Int) (O2 Bool) (P2 Int) (Q2 Bool) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Bool) (C3 Int) (D3 Int) (E3 Bool) (F3 Int) (G3 Int) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Bool) (M3 Int) (N3 Bool) (O3 Int) (P3 Bool) (Q3 Int) (R3 Bool) (S3 Int) (T3 Bool) (U3 Bool) (V3 Int) (W3 Int) (X3 Bool) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Bool) (S4 Bool) (T4 Int) (U4 Bool) (V4 Bool) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Bool) (H5 Int) (I5 Int) (J5 Bool) (K5 Int) (L5 Int) (M5 Bool) (N5 Int) (O5 Int) (P5 Int) (Q5 Bool) (R5 Int) (S5 Int) (T5 Int) (U5 Bool) (V5 Int) (W5 Int) (X5 Bool) (Y5 Int) (Z5 Int) (A6 Int) (B6 Bool) (C6 Int) (D6 Bool) (E6 Bool) (F6 Int) (G6 Int) (H6 Bool) (I6 Int) (J6 Int) (K6 Bool) (L6 Int) (M6 Int) (N6 Int) ) 
    (=>
      (and
        (state N
       U
       M
       B1
       K1
       E1
       T1
       Z1
       J2
       S2
       H6
       B
       K6
       L
       J
       A1
       I
       Z
       H
       Y
       G
       X
       D2
       U2
       V
       C2
       A
       E
       F2
       J6
       C6
       P2
       G6
       D
       H2
       T2
       Y1
       F6
       R2
       N2
       S1
       L2
       W1
       B2
       O1
       A2
       R1
       X1
       I1
       V1
       J1
       U1
       Q1
       P1
       N1
       M1
       D1
       L1
       H1
       G1
       C1
       F1
       F
       K
       P
       T
       S
       R
       Q
       W
       M6
       O
       D6
       E6
       C
       N6
       L6
       I6
       E2
       G2
       I2
       K2
       M2
       O2
       Q2)
        (let ((a!1 (= (or (and (not B6)
                       (not X5)
                       (not U5)
                       (not Q5)
                       (not M5)
                       (not J5)
                       (not E3)
                       (not B3)
                       (not W2))
                  (and (not B6)
                       (not X5)
                       (not U5)
                       (not Q5)
                       (not M5)
                       (not J5)
                       (not E3)
                       (not B3)
                       W2)
                  (and (not B6)
                       (not X5)
                       (not U5)
                       (not Q5)
                       (not M5)
                       (not J5)
                       (not E3)
                       B3
                       (not W2))
                  (and (not B6)
                       (not X5)
                       (not U5)
                       (not Q5)
                       (not M5)
                       (not J5)
                       E3
                       (not B3)
                       (not W2))
                  (and (not B6)
                       (not X5)
                       (not U5)
                       (not Q5)
                       (not M5)
                       J5
                       (not E3)
                       (not B3)
                       (not W2))
                  (and (not B6)
                       (not X5)
                       (not U5)
                       (not Q5)
                       M5
                       (not J5)
                       (not E3)
                       (not B3)
                       (not W2))
                  (and (not B6)
                       (not X5)
                       (not U5)
                       Q5
                       (not M5)
                       (not J5)
                       (not E3)
                       (not B3)
                       (not W2))
                  (and (not B6)
                       (not X5)
                       U5
                       (not Q5)
                       (not M5)
                       (not J5)
                       (not E3)
                       (not B3)
                       (not W2))
                  (and (not B6)
                       X5
                       (not U5)
                       (not Q5)
                       (not M5)
                       (not J5)
                       (not E3)
                       (not B3)
                       (not W2))
                  (and B6
                       (not X5)
                       (not U5)
                       (not Q5)
                       (not M5)
                       (not J5)
                       (not E3)
                       (not B3)
                       (not W2)))
              R4))
      (a!2 (= (or (and (not B)
                       (not E1)
                       (not K1)
                       (not T1)
                       (not Z1)
                       (not J2)
                       (not S2)
                       (not H6)
                       (not K6))
                  (and (not B)
                       (not E1)
                       (not K1)
                       (not T1)
                       (not Z1)
                       (not J2)
                       (not S2)
                       (not H6)
                       K6)
                  (and (not B)
                       (not E1)
                       (not K1)
                       (not T1)
                       (not Z1)
                       (not J2)
                       (not S2)
                       H6
                       (not K6))
                  (and (not B)
                       (not E1)
                       (not K1)
                       (not T1)
                       (not Z1)
                       (not J2)
                       S2
                       (not H6)
                       (not K6))
                  (and (not B)
                       (not E1)
                       (not K1)
                       (not T1)
                       (not Z1)
                       J2
                       (not S2)
                       (not H6)
                       (not K6))
                  (and (not B)
                       (not E1)
                       (not K1)
                       (not T1)
                       Z1
                       (not J2)
                       (not S2)
                       (not H6)
                       (not K6))
                  (and (not B)
                       (not E1)
                       (not K1)
                       T1
                       (not Z1)
                       (not J2)
                       (not S2)
                       (not H6)
                       (not K6))
                  (and (not B)
                       (not E1)
                       K1
                       (not T1)
                       (not Z1)
                       (not J2)
                       (not S2)
                       (not H6)
                       (not K6))
                  (and (not B)
                       E1
                       (not K1)
                       (not T1)
                       (not Z1)
                       (not J2)
                       (not S2)
                       (not H6)
                       (not K6))
                  (and B
                       (not E1)
                       (not K1)
                       (not T1)
                       (not Z1)
                       (not J2)
                       (not S2)
                       (not H6)
                       (not K6)))
              L))
      (a!3 (or (not V4)
               (= (+ A5 (* (- 1) Z4) (* (- 1) Y4) (* (- 1) X4) (* (- 1) W4)) 0)))
      (a!4 (or (not P)
               (= (+ U (* (- 1) T) (* (- 1) S) (* (- 1) R) (* (- 1) Q)) 0)))
      (a!5 (= L3 (and (<= 1 X) (<= 1 (+ A1 Z)))))
      (a!6 (= S4 (and B1 R4 (not (<= Q4 0)))))
      (a!7 (or (not H3) (= (+ Z (* (- 1) A4)) (- 1))))
      (a!8 (or (not H3) (= (+ X (* (- 1) G3)) 1)))
      (a!9 (or (not J3) (= (+ A1 (* (- 1) F4)) (- 2))))
      (a!10 (or (not J3) (= (+ Y (* (- 1) V3)) 1)))
      (a!11 (or (not J3) (= (+ X (* (- 1) I3)) 1)))
      (a!12 (or (not L3) (= (+ A1 Z (* (- 1) E4)) (- 1))))
      (a!13 (or (not L3) (= (+ X (* (- 1) K3)) 1)))
      (a!14 (or (not N3) (= (+ A1 X (* (- 1) M3)) 1)))
      (a!15 (or (not N3) (= (+ Y (* (- 1) Y3)) (- 1))))
      (a!16 (or (not P3) (= (+ A1 Z Y X (* (- 1) O3)) 1)))
      (a!17 (or (not R3) (= (+ Y (* (- 1) F3)) 1)))
      (a!18 (or (not R3) (= (+ X (* (- 1) Q3)) (- 1))))
      (a!19 (or (not T3) (= (+ A1 (* (- 1) C3)) 1)))
      (a!20 (or (not T3) (= (+ X (* (- 1) S3)) (- 1))))
      (a!21 (or (not U3) (= (+ Z (* (- 1) Y2)) 1)))
      (a!22 (or (not U3) (= (+ X (* (- 1) X2)) (- 1))))
      (a!23 (or (not X3) (= (+ Z (* (- 1) C4)) 1)))
      (a!24 (or (not X3) (= (+ Y (* (- 1) W3)) (- 1)))))
  (and (= (<= 1 A1) T3)
       (= (<= 1 Z) U3)
       (= (<= 1 Z) X3)
       (= (<= 1 Y) R3)
       (= (<= 1 X) P3)
       a!1
       a!2
       (= a!3 U4)
       (= a!4 O)
       (= (and (<= 1 X) (= Y 0) (= Z 0) (= A1 0)) H3)
       (= (and (<= 1 X) (<= 1 Y)) J3)
       a!5
       a!6
       (= G5 S4)
       (= G5 V4)
       (= B1 P)
       (= M B1)
       (= J4 I4)
       (= L4 K4)
       (= N4 M4)
       (= P4 O4)
       (= A5 T4)
       (= C5 J4)
       (= C5 W4)
       (= D5 L4)
       (= D5 X4)
       (= E5 N4)
       (= E5 Y4)
       (= F5 P4)
       (= F5 Z4)
       (= A1 T)
       (= Z S)
       (= Y R)
       (= X Q)
       (= U T4)
       (= N U)
       (= J A1)
       (= I Z)
       (= H Y)
       (= G X)
       (or (not (<= Q4 0)) (= (+ Q4 H5) 1))
       (or (<= Q4 0) (= Q4 H5))
       (or (not (<= K 0)) (= (+ F K) 1))
       (or (<= K 0) (= F K))
       (or (not H6) (= D2 U2))
       (or H6 (= D2 V))
       (or (not W2) (= V2 X2))
       (or (not W2) (= Z2 Y2))
       (or W2 (= Z Z2))
       (or W2 (= X V2))
       (or (not B3) (= A3 C3))
       (or B3 (= B5 V2))
       (or (not B3) (= B5 S3))
       (or B3 (= A1 A3))
       (or (not E3) (= D3 F3))
       (or (not E3) (= Q3 A6))
       (or E3 (= A6 B5))
       (or E3 (= Y D3))
       a!7
       a!8
       (or H3 (= Z A4))
       (or H3 (= X G3))
       a!9
       a!10
       a!11
       (or J3 (= A1 F4))
       (or J3 (= Y V3))
       (or J3 (= X I3))
       a!12
       a!13
       (or (not L3) (= B4 0))
       (or L3 (= A1 E4))
       (or L3 (= Z B4))
       (or L3 (= X K3))
       a!14
       a!15
       (or (not N3) (= G4 0))
       (or N3 (= A1 G4))
       (or N3 (= Y Y3))
       (or N3 (= X M3))
       a!16
       (or (not P3) (= Z3 1))
       (or (not P3) (= D4 0))
       (or (not P3) (= H4 0))
       (or P3 (= A1 H4))
       (or P3 (= Z D4))
       (or P3 (= Y Z3))
       (or P3 (= X O3))
       a!17
       a!18
       (or R3 (= Y F3))
       (or R3 (= X Q3))
       a!19
       a!20
       (or T3 (= A1 C3))
       (or T3 (= X S3))
       a!21
       a!22
       (or U3 (= Z Y2))
       (or U3 (= X X2))
       a!23
       a!24
       (or X3 (= Z C4))
       (or X3 (= Y W3))
       (or (not J5) (= G3 I4))
       (or (not J5) (= M4 A4))
       (or J5 (= I5 I4))
       (or J5 (= K5 M4))
       (or (not M5) (= I3 I5))
       (or (not M5) (= K4 V3))
       (or (not M5) (= O4 F4))
       (or M5 (= L5 I5))
       (or M5 (= N5 K4))
       (or M5 (= O5 O4))
       (or (not Q5) (= K3 L5))
       (or (not Q5) (= K5 B4))
       (or (not Q5) (= O5 E4))
       (or Q5 (= P5 L5))
       (or Q5 (= R5 K5))
       (or Q5 (= S5 O5))
       (or (not U5) (= W3 N5))
       (or (not U5) (= R5 C4))
       (or U5 (= T5 N5))
       (or U5 (= V5 R5))
       (or (not X5) (= M3 P5))
       (or (not X5) (= S5 G4))
       (or (not X5) (= T5 Y3))
       (or X5 (= W5 P5))
       (or X5 (= Y5 T5))
       (or X5 (= Z5 S5))
       (or B6 (= Z2 V5))
       (or B6 (= A3 Z5))
       (or B6 (= D3 Y5))
       (or (not B6) (= O3 W5))
       (or (not B6) (= V5 D4))
       (or (not B6) (= Y5 Z3))
       (or (not B6) (= Z5 H4))
       (or B6 (= A6 W5))
       (or S2 (= P2 G6))
       (or (not S2) (= P2 D))
       (or (not S2) (= H2 T2))
       (or S2 (= F2 J6))
       (or (not S2) (= F2 C6))
       (or S2 (= D2 H2))
       (or (not S2) (= C2 E))
       (or S2 (= C2 A))
       (or (not J2) (= R2 N2))
       (or J2 (= P2 R2))
       (or J2 (= H2 S1))
       (or J2 (= C2 Y1))
       (or (not J2) (= Y1 F6))
       (or (not J2) (= S1 L2))
       (or Z1 (= R2 O1))
       (or Z1 (= F2 W1))
       (or (not Z1) (= W1 B2))
       (or (not Z1) (= O1 A2))
       (or T1 (= Y1 R1))
       (or T1 (= W1 I1))
       (or T1 (= S1 J1))
       (or (not T1) (= R1 X1))
       (or (not T1) (= J1 U1))
       (or (not T1) (= I1 V1))
       (or K1 (= R1 Q1))
       (or (not K1) (= Q1 P1))
       (or K1 (= O1 N1))
       (or (not K1) (= N1 M1))
       (or K1 (= J1 D1))
       (or (not K1) (= D1 L1))
       (or E1 (= I1 H1))
       (or (not E1) (= H1 G1))
       (or E1 (= D1 C1))
       (or (not E1) (= C1 F1))
       (or B (= V M6))
       (or (not B) (= V W))
       (= (<= 1 A1) N3)))
      )
      (state T4
       A5
       S4
       G5
       M5
       J5
       Q5
       U5
       X5
       B6
       E3
       B3
       W2
       R4
       P4
       F5
       N4
       E5
       L4
       D5
       J4
       C5
       A6
       Q3
       B5
       Z5
       A3
       H4
       V5
       Z2
       D4
       Y5
       D3
       Z3
       W5
       O3
       S5
       G4
       T5
       Y3
       P5
       M3
       R5
       C4
       N5
       W3
       O5
       E4
       K5
       B4
       L5
       K3
       O4
       F4
       K4
       V3
       I5
       I3
       M4
       A4
       I4
       G3
       H5
       Q4
       V4
       Z4
       Y4
       X4
       W4
       S3
       V2
       U4
       P3
       N3
       F3
       C3
       X2
       Y2
       H3
       J3
       L3
       X3
       R3
       T3
       U3)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Bool) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Bool) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Bool) (F2 Int) (G2 Bool) (H2 Int) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Int) (M2 Bool) (N2 Int) (O2 Bool) (P2 Int) (Q2 Bool) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Bool) (Y2 Int) (Z2 Int) (A3 Bool) (B3 Int) (C3 Int) (D3 Bool) (E3 Int) (F3 Int) (G3 Int) ) 
    (=>
      (and
        (state N
       U
       M
       B1
       K1
       E1
       T1
       Z1
       J2
       S2
       A3
       B
       D3
       L
       J
       A1
       I
       Z
       H
       Y
       G
       X
       D2
       U2
       V
       C2
       A
       E
       F2
       C3
       V2
       P2
       Z2
       D
       H2
       T2
       Y1
       Y2
       R2
       N2
       S1
       L2
       W1
       B2
       O1
       A2
       R1
       X1
       I1
       V1
       J1
       U1
       Q1
       P1
       N1
       M1
       D1
       L1
       H1
       G1
       C1
       F1
       F
       K
       P
       T
       S
       R
       Q
       W
       F3
       O
       W2
       X2
       C
       G3
       E3
       B3
       E2
       G2
       I2
       K2
       M2
       O2
       Q2)
        (not O)
      )
      false
    )
  )
)

(check-sat)
(exit)
