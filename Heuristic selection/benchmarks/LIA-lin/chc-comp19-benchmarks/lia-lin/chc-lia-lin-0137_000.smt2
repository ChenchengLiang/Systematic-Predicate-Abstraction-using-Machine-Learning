(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Int Int Bool Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Bool Bool Int Int Bool Bool Int Int Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Int) (L1 Int) (M1 Bool) (N1 Int) (O1 Int) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Bool) (C2 Bool) (D2 Int) (E2 Int) (F2 Bool) (G2 Bool) (H2 Int) (I2 Int) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) ) 
    (=>
      (and
        (and (= I1 M1)
     (= H1 J1)
     (= G1 S1)
     (= F1 Q1)
     (= E1 R1)
     (= D1 P1)
     (= X H1)
     (= W I1)
     (= V T1)
     (= U (and W X))
     (= U V)
     (= S G1)
     (= S T)
     (= Q F1)
     (= Q R)
     (= O E1)
     (= O P)
     (= M D1)
     (= M N)
     (= C D)
     (= (+ E (* (- 1) G) (* (- 1) C1)) 0)
     (= (+ A (* (- 1) G) (* (- 1) B1)) 0)
     (= N1 0)
     (= N1 O1)
     (= K1 0)
     (= K1 L1)
     (= A1 0)
     (= Z 0)
     (= Y 0)
     (= K C1)
     (= K L)
     (= I B1)
     (= I J)
     (= G A1)
     (= G H)
     (= E Z)
     (= E F)
     (= A Y)
     (= A B)
     (not S1)
     (not R1)
     (not Q1)
     (not P1)
     (= M1 true)
     (= J1 true)
     (= C true)
     (= T1 U1))
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
       M2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Int) (L1 Int) (M1 Bool) (N1 Int) (O1 Int) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Bool) (C2 Bool) (D2 Int) (E2 Int) (F2 Bool) (G2 Bool) (H2 Int) (I2 Int) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Int) (O2 Int) (P2 Bool) (Q2 Bool) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Bool) (K3 Bool) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Bool) (R3 Bool) (S3 Bool) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Int) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Int) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Bool) (G4 Bool) (H4 Bool) (I4 Bool) (J4 Bool) (K4 Bool) (L4 Bool) (M4 Bool) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Bool) (W4 Int) (X4 Bool) (Y4 Int) (Z4 Bool) ) 
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
       M2)
        (let ((a!1 (= Q2 (<= (+ B (* (- 1) F)) 31)))
      (a!2 (or (not V4) (= (+ G (* (- 1) U4)) (- 1))))
      (a!3 (or (not G1) (= (not (<= 0 P3)) I4)))
      (a!4 (or (not F1) (= (not (<= 0 O3)) K4)))
      (a!5 (or (not E1) (= J4 (not (<= P3 0)))))
      (a!6 (or (not D1) (= L4 (not (<= O3 0)))))
      (a!7 (or (not Z4) (= (+ O1 (* (- 1) Q4)) (- 1))))
      (a!8 (or (not Z4) (= (+ E (* (- 1) Y4)) (- 1))))
      (a!9 (or (not X4) (= (+ L1 (* (- 1) S4)) (- 1))))
      (a!10 (or (not X4) (= (+ A (* (- 1) W4)) (- 1)))))
  (and (= I1 M1)
       (= H1 J1)
       (= G1 S1)
       (= F1 Q1)
       (= E1 R1)
       (= D1 P1)
       (= X H1)
       (= W I1)
       (= U (and W X))
       (= U V)
       (= S G1)
       (= S T)
       (= Q F1)
       (= Q R)
       (= O E1)
       (= O P)
       (= M D1)
       (= M N)
       (= C D)
       (= H4 (and H3 U1))
       (= G4 H4)
       (= F4 I4)
       (= E4 J4)
       (= D4 K4)
       (= C4 L4)
       (= Z3 (and O4 M4))
       (= W3 (and P4 N4))
       (= V3 Z3)
       (= U3 W3)
       (= T3 F4)
       (= S3 D4)
       (= R3 E4)
       (= Q3 C4)
       (= K3 V3)
       (= J3 U3)
       (= I3 (and J3 K3))
       (= H3 I3)
       (= G3 T3)
       (= F3 G3)
       (= E3 S3)
       (= D3 E3)
       (= C3 R3)
       (= B3 C3)
       (= A3 Q3)
       (= Z2 A3)
       a!1
       (= P2 Q2)
       (= (+ E (* (- 1) G) (* (- 1) C1)) 0)
       (= (+ A (* (- 1) G) (* (- 1) B1)) 0)
       (= (+ S2 (* (- 1) U2) (* (- 1) P3)) 0)
       (= (+ O2 (* (- 1) U2) (* (- 1) O3)) 0)
       (= N1 O1)
       (= K1 L1)
       (= K C1)
       (= K L)
       (= I B1)
       (= I J)
       (= G A1)
       (= G H)
       (= E Z)
       (= E F)
       (= A Y)
       (= A B)
       (= B4 R4)
       (= A4 B4)
       (= Y3 T4)
       (= X3 Y3)
       (= N3 U4)
       (= M3 Y4)
       (= L3 W4)
       (= Y2 P3)
       (= X2 Y2)
       (= W2 O3)
       (= V2 W2)
       (= U2 N3)
       (= T2 U2)
       (= S2 M3)
       (= R2 S2)
       (= O2 L3)
       (= N2 O2)
       (or (not C3) (not O) (= Q4 R4))
       (or (not A3) (not M) (= S4 T4))
       (or (not (<= 9 O1)) (= M4 (not Z4)))
       (or (not (<= 9 L1)) (= N4 (not X4)))
       (or (and C3 O) (= R4 0))
       (or (and A3 M) (= T4 0))
       a!2
       (or V4 (= G U4))
       (or N4 (<= 9 L1))
       (or M4 (<= 9 O1))
       a!3
       (or G1 (= I4 (<= P3 (- 10))))
       a!4
       (or F1 (= K4 (<= O3 (- 10))))
       (or E1 (= (<= 10 P3) J4))
       a!5
       (or D1 (= (<= 10 O3) L4))
       a!6
       (or (not S) (= O4 (not V4)))
       (or (not Q) (= P4 (not V4)))
       a!7
       a!8
       (or Z4 (= O1 Q4))
       (or Z4 (= E Y4))
       a!9
       a!10
       (or X4 (= L1 S4))
       (or X4 (= A W4))
       (or P4 Q)
       (or O4 S)
       (= T1 U1)))
      )
      (state O2
       N2
       Q2
       P2
       S2
       R2
       U2
       T2
       W2
       V2
       Y2
       X2
       A3
       Z2
       C3
       B3
       E3
       D3
       G3
       F3
       I3
       H3
       K3
       J3
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
       Y3
       X3
       Z3
       B4
       A4
       C4
       D4
       E4
       F4
       H4
       G4
       X4
       Z4
       V4
       W4
       Y4
       U4
       P4
       N4
       S4
       T4
       O4
       M4
       Q4
       R4
       L4
       K4
       J4
       I4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Int) (L1 Int) (M1 Bool) (N1 Int) (O1 Int) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Bool) (C2 Bool) (D2 Int) (E2 Int) (F2 Bool) (G2 Bool) (H2 Int) (I2 Int) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) ) 
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
       M2)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
