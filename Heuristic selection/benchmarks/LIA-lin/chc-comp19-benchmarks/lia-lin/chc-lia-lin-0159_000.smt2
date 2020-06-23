(set-logic HORN)

(declare-fun |state| ( Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) ) 
    (=>
      (and
        (let ((a!1 (and E1
                (<= A1 B1)
                (<= (+ Z A1 (* (- 1) B1) C1 D1) 0)
                (<= 0 A1)
                (= (+ B (* (- 1) Z) (* (- 1) A1) (* (- 1) C1) (* (- 1) D1)) 0)))
      (a!2 (= E (and O (<= 0 R2) (not (<= 5 R2)))))
      (a!3 (= (or (and (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       N)
                  (and (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       M
                       (not N))
                  (and (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       L
                       (not M)
                       (not N))
                  (and (not G)
                       (not H)
                       (not I)
                       (not J)
                       K
                       (not L)
                       (not M)
                       (not N))
                  (and (not G)
                       (not H)
                       (not I)
                       J
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not G)
                       (not H)
                       I
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not G)
                       H
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and G
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)))
              O)))
  (and (= (or (not F1) a!1) G1)
       (= F F1)
       a!2
       (= E F)
       (= Y A1)
       (= X Y)
       (= W Z)
       (= V 0)
       (= V W)
       (= U D1)
       (= T 0)
       (= T U)
       (= S C1)
       (= R 0)
       (= R S)
       (= Q X)
       (= P R2)
       (= P Q)
       (= D B1)
       (= C R2)
       (= C D)
       (= A R2)
       (= A B)
       (or (not V2) (= E2 0))
       (or (not U2) (= P1 1))
       (or (not T2) (= S2 0))
       (or (not N) (= W1 S2))
       (or (not N) (= M1 X2))
       (or (not N) (= I1 W2))
       (or (not M) (= O1 Y2))
       (or M (= K1 M1))
       (or (not M) (= K1 L1))
       (or (not M) (= H1 J1))
       (or M (= H1 I1))
       (or (not L) (= Q1 R1))
       (or (not L) (= N1 P1))
       (or L (= N1 O1))
       (or L (= K1 Q1))
       (or K (= U1 W1))
       (or (not K) (= U1 V1))
       (or (not K) (= S1 T1))
       (or K (= H1 S1))
       (or (not J) (= Z1 A2))
       (or (not J) (= X1 Y1))
       (or J (= U1 X1))
       (or J (= N1 Z1))
       (or (not I) (= F2 G2))
       (or (not I) (= D2 E2))
       (or (not I) (= B2 C2))
       (or I (= X1 D2))
       (or I (= S1 B2))
       (or I (= Q1 F2))
       (or (not H) (= P2 Q2))
       (or (not H) (= N2 O2))
       (or H (= L2 P2))
       (or H (= D2 N2))
       (or (not G) (= L2 M2))
       (or (not G) (= J2 K2))
       (or (not G) (= H2 I2))
       (or G (= F2 L2))
       (or G (= B2 H2))
       (or G (= Z1 J2))
       (= E1 true)
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
       D3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Bool) (M3 Bool) (N3 Bool) (O3 Bool) (P3 Bool) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Bool) (J4 Bool) (K4 Bool) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Bool) (Y5 Bool) (Z5 Bool) (A6 Bool) (B6 Bool) (C6 Bool) (D6 Bool) (E6 Bool) (F6 Int) (G6 Int) (H6 Int) ) 
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
       D3)
        (let ((a!1 (= (or (and (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       N)
                  (and (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       M
                       (not N))
                  (and (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       L
                       (not M)
                       (not N))
                  (and (not G)
                       (not H)
                       (not I)
                       (not J)
                       K
                       (not L)
                       (not M)
                       (not N))
                  (and (not G)
                       (not H)
                       (not I)
                       J
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not G)
                       (not H)
                       I
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and (not G)
                       H
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N))
                  (and G
                       (not H)
                       (not I)
                       (not J)
                       (not K)
                       (not L)
                       (not M)
                       (not N)))
              O))
      (a!2 (= (or (and (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3))
                  (and (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       R3)
                  (and (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       Q3
                       (not R3))
                  (and (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       P3
                       (not Q3)
                       (not R3))
                  (and (not K3)
                       (not L3)
                       (not M3)
                       (not N3)
                       O3
                       (not P3)
                       (not Q3)
                       (not R3))
                  (and (not K3)
                       (not L3)
                       (not M3)
                       N3
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3))
                  (and (not K3)
                       (not L3)
                       M3
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3))
                  (and (not K3)
                       L3
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3))
                  (and K3
                       (not L3)
                       (not M3)
                       (not N3)
                       (not O3)
                       (not P3)
                       (not Q3)
                       (not R3)))
              S3))
      (a!3 (and E1
                (<= A1 B1)
                (<= (+ Z A1 (* (- 1) B1) C1 D1) 0)
                (<= 0 A1)
                (= (+ B (* (- 1) Z) (* (- 1) A1) (* (- 1) C1) (* (- 1) D1)) 0)))
      (a!4 (and I4
                (<= E4 F4)
                (<= (+ D4 E4 (* (- 1) F4) G4 H4) 0)
                (<= 0 E4)
                (= (+ E3 (* (- 1) D4) (* (- 1) E4) (* (- 1) G4) (* (- 1) H4)) 0)))
      (a!5 (and (<= 1 Y) (= S 0) (= U 0) (= W 0)))
      (a!6 (= (and (<= 1 Y) (<= 1 (+ S U))) C6))
      (a!7 (= X5 (and (<= 1 Y) (<= 1 (+ S U)))))
      (a!8 (= I4
              (= (+ Z
                    A1
                    C1
                    D1
                    (* (- 1) D4)
                    (* (- 1) E4)
                    (* (- 1) G4)
                    (* (- 1) H4))
                 0)))
      (a!9 (or F (and S3 (<= 0 V5) (not (<= 5 V5)))))
      (a!10 (or (not C6) (= (+ S U (* (- 1) G5)) 0)))
      (a!11 (or (not C6) (= (+ Y (* (- 1) J5)) 1)))
      (a!12 (or (not B6) (= (+ W (* (- 1) D5)) (- 1))))
      (a!13 (or (not B6) (= (+ U (* (- 1) C5)) 1)))
      (a!14 (or (not A6) (= (+ U (* (- 1) Y4)) (- 1))))
      (a!15 (or (not E6) (= (+ Y (* (- 1) T5)) 1)))
      (a!16 (or (not E6) (= (+ U (* (- 1) S5)) (- 1))))
      (a!17 (or (not D6) (= (+ Y (* (- 1) P5)) 1)))
      (a!18 (or (not D6) (= (+ W (* (- 1) O5)) 1)))
      (a!19 (or (not D6) (= (+ S (* (- 1) M5)) (- 2))))
      (a!20 (or (not Z5) (= (+ Y (* (- 1) U4)) 1)))
      (a!21 (or (not Y5) (= (+ Y (* (- 1) O4)) 1)))
      (a!22 (or (not Y5) (= (+ W (* (- 1) G6)) 1)))
      (a!23 (or (not Y5) (= (+ S (* (- 1) N4)) (- 2))))
      (a!24 (or (not X5) (= (+ S U (* (- 1) F6)) (- 1))))
      (a!25 (or (not X5) (= (+ Y (* (- 1) H6)) 1))))
  (and a!1
       a!2
       (= (or (not F1) a!3) G1)
       (= (or (not J4) a!4) K4)
       (= a!5 E6)
       a!6
       (= (and (<= 1 W) (<= 1 Y)) D6)
       (= (and (<= 1 W) (<= 1 Y)) Y5)
       (= A6 (= S 1))
       (= F F1)
       (= E F)
       (= Z5 a!5)
       a!7
       a!8
       (= J3 a!9)
       (= I3 J4)
       (= I3 J3)
       (= Y A1)
       (= X Y)
       (= W Z)
       (= V W)
       (= U D1)
       (= T U)
       (= S C1)
       (= R S)
       (= Q U3)
       (= P Q)
       (= D B1)
       (= D H3)
       (= C D)
       (= B F3)
       (= A B)
       (= C4 U5)
       (= B4 E4)
       (= B4 C4)
       (= A4 N5)
       (= Z3 D4)
       (= Z3 A4)
       (= Y3 R5)
       (= X3 H4)
       (= X3 Y3)
       (= W3 L5)
       (= V3 G4)
       (= V3 W3)
       (= T3 U3)
       (= G3 F4)
       (= G3 H3)
       (= E3 F3)
       a!10
       a!11
       (or C6 (= Y J5))
       (or C6 (= U I5))
       (or C6 (= S G5))
       (or (not C6) (= I5 0))
       a!12
       a!13
       (or B6 (= W D5))
       (or B6 (= U C5))
       a!14
       (or A6 (= U Y4))
       (or A6 (= S X4))
       (or (not A6) (= X4 0))
       (or M (= K1 M1))
       (or (not M) (= K1 L1))
       (or (not M) (= H1 J1))
       (or M (= H1 I1))
       (or (not L) (= Q1 R1))
       (or (not L) (= N1 P1))
       (or L (= N1 O1))
       (or L (= K1 Q1))
       (or K (= U1 W1))
       (or (not K) (= U1 V1))
       (or (not K) (= S1 T1))
       (or K (= H1 S1))
       (or (not J) (= Z1 A2))
       (or (not J) (= X1 Y1))
       (or J (= U1 X1))
       (or J (= N1 Z1))
       (or (not I) (= F2 G2))
       (or (not I) (= D2 E2))
       (or (not I) (= B2 C2))
       (or I (= X1 D2))
       (or I (= S1 B2))
       (or I (= Q1 F2))
       (or (not H) (= P2 Q2))
       (or (not H) (= N2 O2))
       (or H (= L2 P2))
       (or H (= D2 N2))
       (or (not G) (= L2 M2))
       (or (not G) (= J2 K2))
       (or (not G) (= H2 I2))
       (or G (= F2 L2))
       (or G (= B2 H2))
       (or G (= Z1 J2))
       a!15
       a!16
       (or E6 (= Y T5))
       (or E6 (= U S5))
       a!17
       a!18
       a!19
       (or D6 (= Y P5))
       (or D6 (= W O5))
       (or D6 (= S M5))
       a!20
       (or Z5 (= Y U4))
       (or Z5 (= W T4))
       (or (not Z5) (= T4 1))
       a!21
       a!22
       a!23
       (or Y5 (= Y O4))
       (or Y5 (= W G6))
       (or Y5 (= S N4))
       a!24
       a!25
       (or X5 (= Y H6))
       (or X5 (= U W5))
       (or X5 (= S F6))
       (or (not X5) (= W5 0))
       (or R3 (= Y Q4))
       (or R3 (= U A5))
       (or R3 (= S L4))
       (or (not R3) (= A5 W5))
       (or (not R3) (= Q4 H6))
       (or (not R3) (= L4 F6))
       (or Q3 (= W R4))
       (or (not Q3) (= R4 G6))
       (or Q3 (= P4 Q4))
       (or (not Q3) (= O4 P4))
       (or (not Q3) (= M4 N4))
       (or Q3 (= L4 M4))
       (or (not P3) (= U4 V4))
       (or (not P3) (= S4 T4))
       (or P3 (= R4 S4))
       (or P3 (= P4 V4))
       (or O3 (= Z4 A5))
       (or (not O3) (= Y4 Z4))
       (or (not O3) (= W4 X4))
       (or O3 (= M4 W4))
       (or (not N3) (= D5 E5))
       (or (not N3) (= B5 C5))
       (or N3 (= Z4 B5))
       (or N3 (= S4 E5))
       (or (not M3) (= J5 K5))
       (or (not M3) (= H5 I5))
       (or (not M3) (= F5 G5))
       (or M3 (= B5 H5))
       (or M3 (= W4 F5))
       (or M3 (= V4 K5))
       (or (not L3) (= T5 U5))
       (or (not L3) (= R5 S5))
       (or L3 (= Q5 U5))
       (or L3 (= H5 R5))
       (or (not K3) (= P5 Q5))
       (or (not K3) (= N5 O5))
       (or (not K3) (= L5 M5))
       (or K3 (= K5 Q5))
       (or K3 (= F5 L5))
       (or K3 (= E5 N5))
       (= (<= 1 U) B6)))
      )
      (state F3
       E3
       H3
       G3
       J3
       I3
       K3
       L3
       M3
       N3
       O3
       P3
       Q3
       R3
       S3
       U3
       T3
       W3
       V3
       Y3
       X3
       A4
       Z3
       C4
       B4
       D4
       E4
       F4
       G4
       H4
       I4
       J4
       K4
       M4
       L4
       N4
       P4
       O4
       Q4
       S4
       R4
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
       E5
       D5
       F5
       G5
       H5
       I5
       K5
       J5
       L5
       M5
       N5
       O5
       Q5
       P5
       R5
       S5
       U5
       T5
       V5
       W5
       X5
       Z5
       C6
       F6
       H6
       G6
       E6
       D6
       B6
       A6
       Y5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) ) 
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
       D3)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
