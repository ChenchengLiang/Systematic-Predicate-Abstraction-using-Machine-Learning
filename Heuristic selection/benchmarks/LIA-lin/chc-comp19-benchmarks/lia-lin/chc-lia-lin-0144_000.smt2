(set-logic HORN)

(declare-fun |state| ( Bool Bool Int Int Int Int Int Bool Int Int Int Bool Int Int Int Bool Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (or (not X1) (<= (+ Y A1 C1 E1) 3)) C2))
      (a!2 (= B
              (and (or (not T) (not G1))
                   (or (not T) (not H1))
                   (or (not T) (not I1))
                   (or (not G1) (not H1))
                   (or (not G1) (not I1))
                   (or (not H1) (not I1))))))
  (and (= L1 A2)
       (= K1 Z1)
       (= J1 Y1)
       (= D1 E1)
       (= B1 C1)
       (= Z A1)
       (= X Y)
       (= F 0)
       (= F M1)
       (= E 0)
       (= E L1)
       (= D 0)
       (= D K1)
       (= C 3)
       (= C J1)
       a!1
       (= F1 X1)
       a!2
       (= A F1)
       (= A B)
       (or (<= 0 B2) (= (+ D1 B2) 0))
       (or (not (<= 0 B2)) (= D1 B2))
       (or (<= 0 A2) (= (+ B1 A2) 0))
       (or (not (<= 0 A2)) (= B1 A2))
       (or (<= 0 Z1) (= (+ Z Z1) 0))
       (or (not (<= 0 Z1)) (= Z Z1))
       (or (<= 0 Y1) (= (+ X Y1) 0))
       (or (not (<= 0 Y1)) (= X Y1))
       (or I1 (= V1 W1))
       (or I1 (= T1 U1))
       (or (not I1) (= Q1 S1))
       (or I1 (= Q1 R1))
       (or (not I1) (= N1 P1))
       (or I1 (= N1 O1))
       (or (not I1) (= Q T1))
       (or (not I1) (= O V1))
       (or H1 (= W1 K2))
       (or (not H1) (= W1 J2))
       (or (not H1) (= U1 I2))
       (or H1 (= U1 H2))
       (or (not H1) (= R1 G2))
       (or H1 (= R1 F2))
       (or (not H1) (= O1 E2))
       (or H1 (= O1 D2))
       (or (not G1) (= D2 L2))
       (or G1 (= W H2))
       (or G1 (= V K2))
       (or G1 (= U F2))
       (or G1 (= R D2))
       (or (not G1) (= N H2))
       (or (not G1) (= M K2))
       (or (not G1) (= K F2))
       (or (not T) (= R S))
       (or (not T) (= J W))
       (or (not T) (= I V))
       (or (not T) (= G U))
       (or (not P) (= Q 0))
       (or (not P) (= O 0))
       (or (not L) (= N 1))
       (or (not L) (= M 0))
       (or (not L) (= K 0))
       (or (not H) (= J 1))
       (or (not H) (= I 0))
       (or (not H) (= G 0))
       (= M1 B2)))
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Bool) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Bool) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Bool) (T4 Int) (U4 Int) (V4 Int) (W4 Bool) (X4 Bool) (Y4 Bool) (Z4 Int) ) 
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
        (let ((a!1 (= (or (not W3) (<= (+ N2 P2 R2 T2) 3)) B4))
      (a!2 (= (or (not X1) (<= (+ Y A1 C1 E1) 3)) C2))
      (a!3 (= (and (or (not Y2) (not X2))
                   (or (not Y2) (not Z2))
                   (or (not Y2) (not A3))
                   (or (not X2) (not Z2))
                   (or (not X2) (not A3))
                   (or (not Z2) (not A3)))
              B3))
      (a!4 (= B
              (and (or (not T) (not G1))
                   (or (not T) (not H1))
                   (or (not T) (not I1))
                   (or (not G1) (not H1))
                   (or (not G1) (not I1))
                   (or (not H1) (not I1)))))
      (a!5 (or (not Y4) (= (+ K1 L1 M1 (* (- 1) P3)) 2)))
      (a!6 (or (not Y4) (= (+ J1 (* (- 1) M3)) 1)))
      (a!7 (or (not X4) (= (+ M1 (* (- 1) I4)) 1)))
      (a!8 (or (not X4) (= (+ L1 (* (- 1) H4)) 1)))
      (a!9 (or (not W4) (= (+ J1 K1 L1 M1 (* (- 1) L4)) 1)))
      (a!10 (or (not S4) (= (+ J1 K1 L1 M1 (* (- 1) Z4)) 1))))
  (and (= G3 H3)
       (= C3 X3)
       (= C3 D3)
       (= N2 O2)
       (= M1 B2)
       (= L1 A2)
       (= K1 Z1)
       (= J1 Y1)
       (= D1 E1)
       (= B1 C1)
       (= Z A1)
       (= X Y)
       (= F M1)
       (= E L1)
       (= D K1)
       (= C J1)
       (= J3 U3)
       (= I3 A4)
       (= I3 J3)
       (= H3 R3)
       (= F3 O3)
       (= E3 Y3)
       (= E3 F3)
       (= D3 L3)
       (= T2 U2)
       (= R2 S2)
       (= P2 Q2)
       (= (<= 1 L1) X4)
       (= (<= 1 K1) W4)
       (= (<= 1 J1) Y4)
       (= (<= 1 J1) S4)
       a!1
       a!2
       a!3
       (= W2 (and F1 B3))
       (= V2 W3)
       (= V2 W2)
       (= F1 X1)
       a!4
       (= A F1)
       (or (<= 0 B2) (= (+ D1 B2) 0))
       (or (not (<= 0 B2)) (= D1 B2))
       (or (<= 0 A2) (= (+ B1 A2) 0))
       (or (not (<= 0 A2)) (= B1 A2))
       (or (<= 0 Z1) (= (+ Z Z1) 0))
       (or (not (<= 0 Z1)) (= Z Z1))
       (or (<= 0 Y1) (= (+ X Y1) 0))
       (or (not (<= 0 Y1)) (= X Y1))
       (or (<= 0 A4) (= (+ U2 A4) 0))
       (or (not (<= 0 A4)) (= U2 A4))
       (or (<= 0 Z3) (= (+ S2 Z3) 0))
       (or (not (<= 0 Z3)) (= S2 Z3))
       (or (<= 0 Y3) (= (+ Q2 Y3) 0))
       (or (not (<= 0 Y3)) (= Q2 Y3))
       (or (<= 0 X3) (= (+ O2 X3) 0))
       (or (not (<= 0 X3)) (= O2 X3))
       a!5
       a!6
       (or (not Y4) (= T3 0))
       (or (not Y4) (= S3 0))
       (or Y4 (= M1 T3))
       (or Y4 (= L1 S3))
       (or Y4 (= K1 P3))
       (or Y4 (= J1 M3))
       a!7
       a!8
       (or X4 (= M1 I4))
       (or X4 (= L1 H4))
       (or X4 (= K1 F4))
       (or (not X4) (= K1 F4))
       (or X4 (= J1 D4))
       (or (not X4) (= J1 D4))
       a!9
       (or (not W4) (= P4 1))
       (or W4 (= M1 Q4))
       (or W4 (= L1 P4))
       (or W4 (= K1 N4))
       (or W4 (= J1 L4))
       (or (not W4) (= Q4 0))
       (or (not W4) (= N4 0))
       a!10
       (or S4 (= M1 U4))
       (or S4 (= L1 V4))
       (or S4 (= K1 T4))
       (or S4 (= J1 Z4))
       (or (not S4) (= V4 1))
       (or (not S4) (= U4 0))
       (or (not S4) (= T4 0))
       (or A3 (= U3 V3))
       (or (not A3) (= T3 U3))
       (or (not A3) (= R3 S3))
       (or A3 (= Q3 R3))
       (or (not A3) (= O3 P3))
       (or A3 (= N3 O3))
       (or (not A3) (= L3 M3))
       (or A3 (= K3 L3))
       (or Z2 (= V3 J4))
       (or (not Z2) (= V3 I4))
       (or (not Z2) (= Q3 H4))
       (or Z2 (= Q3 G4))
       (or (not Z2) (= N3 F4))
       (or Z2 (= N3 E4))
       (or (not Z2) (= K3 D4))
       (or Z2 (= K3 C4))
       (or X2 (= J4 R4))
       (or (not X2) (= J4 Q4))
       (or (not X2) (= G4 P4))
       (or X2 (= G4 O4))
       (or (not X2) (= E4 N4))
       (or X2 (= E4 M4))
       (or X2 (= C4 K4))
       (or (not X2) (= C4 L4))
       (or I1 (= V1 W1))
       (or I1 (= T1 U1))
       (or (not I1) (= Q1 S1))
       (or I1 (= Q1 R1))
       (or (not I1) (= N1 P1))
       (or I1 (= N1 O1))
       (or (not I1) (= Q T1))
       (or (not I1) (= O V1))
       (or H1 (= W1 K2))
       (or (not H1) (= W1 J2))
       (or (not H1) (= U1 I2))
       (or H1 (= U1 H2))
       (or (not H1) (= R1 G2))
       (or H1 (= R1 F2))
       (or (not H1) (= O1 E2))
       (or H1 (= O1 D2))
       (or (not G1) (= D2 L2))
       (or G1 (= W H2))
       (or G1 (= V K2))
       (or G1 (= U F2))
       (or G1 (= R D2))
       (or (not G1) (= N H2))
       (or (not G1) (= M K2))
       (or (not G1) (= K F2))
       (or (not Y2) (= K4 Z4))
       (or Y2 (= M1 R4))
       (or Y2 (= L1 O4))
       (or Y2 (= K1 M4))
       (or Y2 (= J1 K4))
       (or (not Y2) (= R4 U4))
       (or (not Y2) (= O4 V4))
       (or (not Y2) (= M4 T4))
       (= G3 Z3)))
      )
      (state W2
       B3
       D3
       F3
       H3
       J3
       T4
       S4
       U4
       V4
       N4
       W4
       Q4
       P4
       T3
       Y4
       S3
       K4
       Z4
       Y2
       M4
       R4
       O4
       O2
       N2
       Q2
       P2
       S2
       R2
       U2
       T2
       V2
       X2
       Z2
       A3
       C3
       E3
       G3
       I3
       L3
       K3
       M3
       O3
       N3
       P3
       R3
       Q3
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
       I4
       J4
       L4
       X4)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Bool) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) ) 
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
