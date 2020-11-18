(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Bool Int Bool Bool Int Int Bool Bool Bool Bool Int Int Int Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Bool) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Bool) (E2 Int) (F2 Bool) (G2 Int) (H2 Bool) (I2 Int) (J2 Bool) (K2 Int) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Int) (P2 Bool) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Bool) (H3 Int) (I3 Int) ) 
    (=>
      (and
        (let ((a!1 (= (or (not Z) (not (<= 2 T))) Q))
      (a!2 (= (or (and (not A2)
                       (not L1)
                       (not Z2)
                       (not A3)
                       (not G3)
                       (not T2)
                       (not F1)
                       (not U1)
                       (not M2))
                  (and (not A2)
                       (not L1)
                       (not Z2)
                       (not A3)
                       (not G3)
                       (not T2)
                       (not F1)
                       (not U1)
                       M2)
                  (and (not A2)
                       (not L1)
                       (not Z2)
                       (not A3)
                       (not G3)
                       (not T2)
                       (not F1)
                       U1
                       (not M2))
                  (and (not A2)
                       (not L1)
                       (not Z2)
                       (not A3)
                       (not G3)
                       (not T2)
                       F1
                       (not U1)
                       (not M2))
                  (and (not A2)
                       (not L1)
                       (not Z2)
                       (not A3)
                       (not G3)
                       T2
                       (not F1)
                       (not U1)
                       (not M2))
                  (and (not A2)
                       (not L1)
                       (not Z2)
                       (not A3)
                       G3
                       (not T2)
                       (not F1)
                       (not U1)
                       (not M2))
                  (and (not A2)
                       (not L1)
                       (not Z2)
                       A3
                       (not G3)
                       (not T2)
                       (not F1)
                       (not U1)
                       (not M2))
                  (and (not A2)
                       (not L1)
                       Z2
                       (not A3)
                       (not G3)
                       (not T2)
                       (not F1)
                       (not U1)
                       (not M2))
                  (and (not A2)
                       L1
                       (not Z2)
                       (not A3)
                       (not G3)
                       (not T2)
                       (not F1)
                       (not U1)
                       (not M2))
                  (and A2
                       (not L1)
                       (not Z2)
                       (not A3)
                       (not G3)
                       (not T2)
                       (not F1)
                       (not U1)
                       (not M2)))
              L)))
  (and a!1
       (= (or (not Z) (<= 0 T)) A1)
       (= (or (not Z) (<= 0 V)) P)
       (= (and O P Q) N)
       (= B1 Z)
       (= M B1)
       (= M L)
       (= J 0)
       (= J W)
       (= H G)
       (= H S)
       (= I 0)
       (= I U)
       (= K 0)
       (= K Y)
       (= S R)
       (= U T)
       (= W V)
       (= Y X)
       (or (not (<= C1 0)) (= (+ G C1) 1))
       (or (<= C1 0) (= G C1))
       (or (not M2) (= Y1 B))
       (or (not M2) (= Z1 B2))
       (or (not M2) (= T1 O2))
       (or M2 (= C2 Z1))
       (or M2 (= K2 T1))
       (or M2 (= R2 Y1))
       (or U1 (= Y1 S1))
       (or (not U1) (= K1 V1))
       (or (not U1) (= J1 W1))
       (or (not U1) (= S1 Q2))
       (or U1 (= T1 K1))
       (or U1 (= X1 J1))
       (or (not F1) (= D1 G1))
       (or F1 (= E1 D1))
       (or (not F1) (= I1 H1))
       (or F1 (= J1 I1))
       (or (not A) (= B 0))
       (or T2 (= S2 K2))
       (or T2 (= C2 D3))
       (or (not T2) (= C2 E))
       (or T2 (= I2 F3))
       (or (not T2) (= I2 C))
       (or (not T2) (= K2 U2))
       (or (not T2) (= R2 F))
       (or T2 (= R2 Y2))
       (or (not G3) (= I3 H3))
       (or (not G3) (= F3 E3))
       (or (not A3) (= S2 W2))
       (or (not A3) (= D3 C3))
       (or A3 (= V2 S2))
       (or (not Z2) (= Y2 B3))
       (or Z2 (= V2 I3))
       (or (not Z2) (= V2 X2))
       (or (not D) (= F 0))
       (or (not D) (= C 0))
       (or (not D) (= E 1))
       (or L1 (= P1 O1))
       (or (not L1) (= O1 N1))
       (or L1 (= K1 E1))
       (or (not L1) (= E1 M1))
       (or (not L1) (= R1 Q1))
       (or L1 (= S1 R1))
       (or (not A2) (= P1 E2))
       (or A2 (= Z1 P1))
       (or (not A2) (= X1 G2))
       (or A2 (= I2 X1))
       (= O true)
       a!2))
      )
      (state M
       B1
       L1
       F1
       U1
       A2
       M2
       T2
       A3
       Z2
       G3
       L
       K
       Y
       J
       W
       I
       U
       H
       S
       V2
       X2
       I3
       S2
       W2
       R2
       Y2
       F
       I2
       F3
       C
       C2
       D3
       E
       K2
       U2
       Y1
       B
       Z1
       B2
       T1
       O2
       X1
       G2
       P1
       E2
       S1
       Q2
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
       C1
       Z
       V
       P
       T
       A1
       Q
       X
       R
       O
       N
       D
       A
       B3
       C3
       H3
       E3
       D2
       F2
       H2
       J2
       L2
       N2
       P2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Bool) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Bool) (E2 Int) (F2 Bool) (G2 Int) (H2 Bool) (I2 Int) (J2 Bool) (K2 Int) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Int) (P2 Bool) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Bool) (F3 Int) (G3 Int) (H3 Bool) (I3 Int) (J3 Int) (K3 Bool) (L3 Int) (M3 Bool) (N3 Int) (O3 Bool) (P3 Int) (Q3 Bool) (R3 Int) (S3 Bool) (T3 Int) (U3 Bool) (V3 Int) (W3 Bool) (X3 Bool) (Y3 Int) (Z3 Int) (A4 Bool) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Bool) (U4 Bool) (V4 Bool) (W4 Bool) (X4 Bool) (Y4 Bool) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Bool) (I5 Bool) (J5 Bool) (K5 Int) (L5 Int) (M5 Int) (N5 Bool) (O5 Int) (P5 Int) (Q5 Bool) (R5 Int) (S5 Int) (T5 Int) (U5 Bool) (V5 Int) (W5 Int) (X5 Int) (Y5 Bool) (Z5 Int) (A6 Int) (B6 Bool) (C6 Int) (D6 Int) (E6 Int) (F6 Bool) (G6 Int) (H6 Int) (I6 Bool) (J6 Bool) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Bool) (Q6 Int) (R6 Int) ) 
    (=>
      (and
        (state M
       B1
       L1
       F1
       U1
       A2
       M2
       T2
       J6
       I6
       P6
       L
       K
       Y
       J
       W
       I
       U
       H
       S
       V2
       X2
       R6
       S2
       W2
       R2
       H6
       F
       I2
       O6
       C
       C2
       M6
       E
       K2
       U2
       Y1
       B
       Z1
       B2
       T1
       O2
       X1
       G2
       P1
       E2
       S1
       Q2
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
       C1
       Z
       V
       P
       T
       A1
       Q
       X
       R
       O
       N
       D
       A
       K6
       L6
       Q6
       N6
       D2
       F2
       H2
       J2
       L2
       N2
       P2)
        (let ((a!1 (= (or (and (not F6)
                       (not B6)
                       (not Y5)
                       (not U5)
                       (not Q5)
                       (not N5)
                       (not H3)
                       (not E3)
                       (not Z2))
                  (and (not F6)
                       (not B6)
                       (not Y5)
                       (not U5)
                       (not Q5)
                       (not N5)
                       (not H3)
                       (not E3)
                       Z2)
                  (and (not F6)
                       (not B6)
                       (not Y5)
                       (not U5)
                       (not Q5)
                       (not N5)
                       (not H3)
                       E3
                       (not Z2))
                  (and (not F6)
                       (not B6)
                       (not Y5)
                       (not U5)
                       (not Q5)
                       (not N5)
                       H3
                       (not E3)
                       (not Z2))
                  (and (not F6)
                       (not B6)
                       (not Y5)
                       (not U5)
                       (not Q5)
                       N5
                       (not H3)
                       (not E3)
                       (not Z2))
                  (and (not F6)
                       (not B6)
                       (not Y5)
                       (not U5)
                       Q5
                       (not N5)
                       (not H3)
                       (not E3)
                       (not Z2))
                  (and (not F6)
                       (not B6)
                       (not Y5)
                       U5
                       (not Q5)
                       (not N5)
                       (not H3)
                       (not E3)
                       (not Z2))
                  (and (not F6)
                       (not B6)
                       Y5
                       (not U5)
                       (not Q5)
                       (not N5)
                       (not H3)
                       (not E3)
                       (not Z2))
                  (and (not F6)
                       B6
                       (not Y5)
                       (not U5)
                       (not Q5)
                       (not N5)
                       (not H3)
                       (not E3)
                       (not Z2))
                  (and F6
                       (not B6)
                       (not Y5)
                       (not U5)
                       (not Q5)
                       (not N5)
                       (not H3)
                       (not E3)
                       (not Z2)))
              T4))
      (a!2 (= (or (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       (not M2)
                       (not T2)
                       (not I6)
                       (not J6)
                       (not P6))
                  (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       (not M2)
                       (not T2)
                       (not I6)
                       (not J6)
                       P6)
                  (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       (not M2)
                       (not T2)
                       (not I6)
                       J6
                       (not P6))
                  (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       (not M2)
                       (not T2)
                       I6
                       (not J6)
                       (not P6))
                  (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       (not M2)
                       T2
                       (not I6)
                       (not J6)
                       (not P6))
                  (and (not F1)
                       (not L1)
                       (not U1)
                       (not A2)
                       M2
                       (not T2)
                       (not I6)
                       (not J6)
                       (not P6))
                  (and (not F1)
                       (not L1)
                       (not U1)
                       A2
                       (not M2)
                       (not T2)
                       (not I6)
                       (not J6)
                       (not P6))
                  (and (not F1)
                       (not L1)
                       U1
                       (not A2)
                       (not M2)
                       (not T2)
                       (not I6)
                       (not J6)
                       (not P6))
                  (and (not F1)
                       L1
                       (not U1)
                       (not A2)
                       (not M2)
                       (not T2)
                       (not I6)
                       (not J6)
                       (not P6))
                  (and F1
                       (not L1)
                       (not U1)
                       (not A2)
                       (not M2)
                       (not T2)
                       (not I6)
                       (not J6)
                       (not P6)))
              L))
      (a!3 (= (or (not H5) (not (<= 2 B5))) Y4))
      (a!4 (= (or (not Z) (not (<= 2 T))) Q))
      (a!5 (= O3 (and (<= 1 S) (<= 1 (+ Y W)))))
      (a!6 (or (not K3) (= (+ W (* (- 1) D4)) (- 1))))
      (a!7 (or (not K3) (= (+ S (* (- 1) J3)) 1)))
      (a!8 (or (not M3) (= (+ Y (* (- 1) I4)) (- 2))))
      (a!9 (or (not M3) (= (+ U (* (- 1) Y3)) 1)))
      (a!10 (or (not M3) (= (+ S (* (- 1) L3)) 1)))
      (a!11 (or (not O3) (= (+ Y W (* (- 1) H4)) (- 1))))
      (a!12 (or (not O3) (= (+ S (* (- 1) N3)) 1)))
      (a!13 (or (not Q3) (= (+ Y S (* (- 1) P3)) 1)))
      (a!14 (or (not Q3) (= (+ U (* (- 1) B4)) (- 1))))
      (a!15 (or (not S3) (= (+ Y W U S (* (- 1) R3)) 1)))
      (a!16 (or (not U3) (= (+ U (* (- 1) F3)) 1)))
      (a!17 (or (not U3) (= (+ S (* (- 1) T3)) (- 1))))
      (a!18 (or (not W3) (= (+ Y (* (- 1) I3)) 1)))
      (a!19 (or (not W3) (= (+ S (* (- 1) V3)) (- 1))))
      (a!20 (or (not X3) (= (+ W (* (- 1) B3)) 1)))
      (a!21 (or (not X3) (= (+ S (* (- 1) A3)) (- 1))))
      (a!22 (or (not A4) (= (+ W (* (- 1) F4)) 1)))
      (a!23 (or (not A4) (= (+ U (* (- 1) Z3)) (- 1)))))
  (and (= (<= 1 Y) W3)
       (= (<= 1 W) X3)
       (= (<= 1 W) A4)
       (= (<= 1 U) U3)
       (= (<= 1 S) S3)
       a!1
       a!2
       a!3
       (= (or (not H5) (<= 0 B5)) I5)
       (= (or (not H5) (<= 0 D5)) X4)
       a!4
       (= (or (not Z) (<= 0 V)) P)
       (= (or (not Z) (<= 0 T)) A1)
       (= (and (<= 1 S) (= U 0) (= W 0) (= Y 0)) K3)
       (= (and Y4 X4 W4) V4)
       (= (and O P Q) N)
       (= (and (<= 1 S) (<= 1 U)) M3)
       a!5
       (= U4 (and B1 T4))
       (= J5 U4)
       (= J5 H5)
       (= B1 Z)
       (= M B1)
       (= M4 L4)
       (= O4 N4)
       (= Q4 P4)
       (= S4 R4)
       (= A5 M4)
       (= A5 Z4)
       (= C5 O4)
       (= C5 B5)
       (= E5 Q4)
       (= E5 D5)
       (= G5 S4)
       (= G5 F5)
       (= Y X)
       (= W V)
       (= U T)
       (= S R)
       (= K Y)
       (= J W)
       (= I U)
       (= H S)
       (or (not (<= K5 0)) (= (+ K5 L5) 1))
       (or (<= K5 0) (= K5 L5))
       (or (not (<= C1 0)) (= (+ G C1) 1))
       (or (<= C1 0) (= G C1))
       (or J6 (= V2 S2))
       (or (not J6) (= S2 W2))
       (or I6 (= V2 R6))
       (or (not I6) (= V2 X2))
       (or (not Z2) (= Y2 A3))
       (or (not Z2) (= C3 B3))
       (or Z2 (= W C3))
       (or Z2 (= S Y2))
       (or (not E3) (= D3 F3))
       (or (not E3) (= T3 E6))
       (or E3 (= G6 E6))
       (or E3 (= U D3))
       (or (not H3) (= G3 I3))
       (or (not H3) (= V3 G6))
       (or H3 (= G6 Y2))
       (or H3 (= Y G3))
       a!6
       a!7
       (or K3 (= W D4))
       (or K3 (= S J3))
       a!8
       a!9
       a!10
       (or M3 (= Y I4))
       (or M3 (= U Y3))
       (or M3 (= S L3))
       a!11
       a!12
       (or (not O3) (= E4 0))
       (or O3 (= Y H4))
       (or O3 (= W E4))
       (or O3 (= S N3))
       a!13
       a!14
       (or (not Q3) (= J4 0))
       (or Q3 (= Y J4))
       (or Q3 (= U B4))
       (or Q3 (= S P3))
       a!15
       (or (not S3) (= C4 1))
       (or (not S3) (= G4 0))
       (or (not S3) (= K4 0))
       (or S3 (= Y K4))
       (or S3 (= W G4))
       (or S3 (= U C4))
       (or S3 (= S R3))
       a!16
       a!17
       (or U3 (= U F3))
       (or U3 (= S T3))
       a!18
       a!19
       (or W3 (= Y I3))
       (or W3 (= S V3))
       a!20
       a!21
       (or X3 (= W B3))
       (or X3 (= S A3))
       a!22
       a!23
       (or A4 (= W F4))
       (or A4 (= U Z3))
       (or (not N5) (= J3 L4))
       (or (not N5) (= P4 D4))
       (or N5 (= M5 L4))
       (or N5 (= O5 P4))
       (or (not Q5) (= L3 M5))
       (or (not Q5) (= N4 Y3))
       (or (not Q5) (= R4 I4))
       (or Q5 (= P5 M5))
       (or Q5 (= R5 N4))
       (or Q5 (= S5 R4))
       (or (not U5) (= N3 P5))
       (or (not U5) (= O5 E4))
       (or (not U5) (= S5 H4))
       (or U5 (= T5 P5))
       (or U5 (= V5 O5))
       (or U5 (= W5 S5))
       (or (not Y5) (= Z3 R5))
       (or (not Y5) (= V5 F4))
       (or Y5 (= X5 R5))
       (or Y5 (= Z5 V5))
       (or (not B6) (= P3 T5))
       (or (not B6) (= W5 J4))
       (or (not B6) (= X5 B4))
       (or B6 (= A6 T5))
       (or B6 (= C6 X5))
       (or B6 (= D6 W5))
       (or F6 (= C3 Z5))
       (or F6 (= D3 C6))
       (or F6 (= G3 D6))
       (or (not F6) (= R3 A6))
       (or (not F6) (= Z5 G4))
       (or (not F6) (= C6 C4))
       (or (not F6) (= D6 K4))
       (or F6 (= E6 A6))
       (or T2 (= S2 K2))
       (or T2 (= R2 H6))
       (or (not T2) (= R2 F))
       (or (not T2) (= K2 U2))
       (or T2 (= I2 O6))
       (or (not T2) (= I2 C))
       (or T2 (= C2 M6))
       (or (not T2) (= C2 E))
       (or M2 (= R2 Y1))
       (or M2 (= K2 T1))
       (or M2 (= C2 Z1))
       (or (not M2) (= Z1 B2))
       (or (not M2) (= Y1 B))
       (or (not M2) (= T1 O2))
       (or A2 (= I2 X1))
       (or A2 (= Z1 P1))
       (or (not A2) (= X1 G2))
       (or (not A2) (= P1 E2))
       (or U1 (= Y1 S1))
       (or U1 (= X1 J1))
       (or U1 (= T1 K1))
       (or (not U1) (= S1 Q2))
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
       (= W4 true)
       (= O true)
       (= (<= 1 Y) Q3)))
      )
      (state U4
       J5
       Q5
       N5
       U5
       Y5
       B6
       F6
       E3
       H3
       Z2
       T4
       S4
       G5
       Q4
       E5
       O4
       C5
       M4
       A5
       G6
       V3
       Y2
       E6
       T3
       D6
       G3
       K4
       Z5
       C3
       G4
       C6
       D3
       C4
       A6
       R3
       W5
       J4
       X5
       B4
       T5
       P3
       V5
       F4
       R5
       Z3
       S5
       H4
       O5
       E4
       P5
       N3
       R4
       I4
       N4
       Y3
       M5
       L3
       P4
       D4
       L4
       J3
       L5
       K5
       H5
       D5
       X4
       B5
       I5
       Y4
       F5
       Z4
       W4
       V4
       S3
       Q3
       I3
       F3
       A3
       B3
       K3
       M3
       O3
       A4
       U3
       W3
       X3)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Bool) (A1 Bool) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Bool) (E2 Int) (F2 Bool) (G2 Int) (H2 Bool) (I2 Int) (J2 Bool) (K2 Int) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Int) (P2 Bool) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Bool) (H3 Int) (I3 Int) ) 
    (=>
      (and
        (state M
       B1
       L1
       F1
       U1
       A2
       M2
       T2
       A3
       Z2
       G3
       L
       K
       Y
       J
       W
       I
       U
       H
       S
       V2
       X2
       I3
       S2
       W2
       R2
       Y2
       F
       I2
       F3
       C
       C2
       D3
       E
       K2
       U2
       Y1
       B
       Z1
       B2
       T1
       O2
       X1
       G2
       P1
       E2
       S1
       Q2
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
       C1
       Z
       V
       P
       T
       A1
       Q
       X
       R
       O
       N
       D
       A
       B3
       C3
       H3
       E3
       D2
       F2
       H2
       J2
       L2
       N2
       P2)
        (not N)
      )
      false
    )
  )
)

(check-sat)
(exit)
