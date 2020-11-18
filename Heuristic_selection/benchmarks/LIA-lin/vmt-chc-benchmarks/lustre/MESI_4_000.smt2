(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Bool Int Int Bool Bool Int Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Bool) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Bool) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Bool) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) ) 
    (=>
      (and
        (let ((a!1 (= (and (or (not U) (not Z1))
                   (or (not U) (not G1))
                   (or (not U) (not S1))
                   (or (not Z1) (not G1))
                   (or (not Z1) (not S1))
                   (or (not G1) (not S1)))
              O)))
  (and a!1
       (= D1 R)
       (= P (and O (<= 0 N)))
       (= P D1)
       (= A1 S)
       (= X N)
       (= J 0)
       (= J X)
       (= K 0)
       (= K Z)
       (= L 0)
       (= L A1)
       (= M 3)
       (= M C1)
       (= Z Y)
       (= C1 B1)
       (or S1 (= F1 T))
       (or (not S1) (= F1 T1))
       (or S1 (= I1 M1))
       (or (not S1) (= I1 U1))
       (or S1 (= O1 L1))
       (or (not S1) (= O1 V1))
       (or S1 (= R1 W))
       (or (not S1) (= R1 W1))
       (or (not G1) (= Q1 P1))
       (or (not G1) (= E1 D))
       (or G1 (= F1 E1))
       (or (not G1) (= H1 B))
       (or G1 (= I1 H1))
       (or (not G1) (= N1 J1))
       (or G1 (= O1 N1))
       (or G1 (= R1 Q1))
       (or (not F) (= E 1))
       (or (not F) (= G 0))
       (or (not F) (= H 0))
       (or (not C) (= B 0))
       (or (not C) (= D 0))
       (or (not I) (= C2 0))
       (or (not I) (= A2 0))
       (or (not I) (= X1 1))
       (or (not Z1) (= D2 C2))
       (or (not Z1) (= B2 A2))
       (or (not Z1) (= Y1 X1))
       (or (not Z1) (= A E2))
       (or U (= M1 Y1))
       (or (not U) (= M1 E))
       (or (not U) (= W V))
       (or U (= W A))
       (or U (= T B2))
       (or (not U) (= T G))
       (or U (= L1 D2))
       (or (not U) (= L1 H))
       (= (or (not R) (<= S 1) (<= N 1)) Q)))
      )
      (state P
       D1
       Z1
       U
       S1
       G1
       O
       M
       C1
       L
       A1
       K
       Z
       J
       X
       R1
       W
       W1
       O1
       L1
       V1
       I1
       M1
       U1
       F1
       T1
       T
       Q1
       P1
       N1
       J1
       H1
       B
       E1
       D
       R
       B1
       S
       Y
       N
       A
       V
       D2
       H
       Y1
       E
       G
       B2
       Q
       C2
       I
       A2
       X1
       F
       C
       E2
       K1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Bool) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Bool) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Bool) (B2 Int) (C2 Bool) (D2 Int) (E2 Bool) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Int) (E3 Int) (F3 Bool) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Bool) (Q3 Int) (R3 Bool) (S3 Int) (T3 Int) (U3 Int) (V3 Bool) (W3 Int) (X3 Int) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Bool) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) ) 
    (=>
      (and
        (state P
       D1
       E4
       U
       S1
       G1
       O
       M
       C1
       L
       A1
       K
       Z
       J
       X
       R1
       W
       W1
       O1
       L1
       V1
       I1
       M1
       U1
       F1
       T1
       T
       Q1
       P1
       N1
       J1
       H1
       B
       E1
       D
       R
       B1
       S
       Y
       N
       A
       V
       I4
       H
       D4
       E
       G
       G4
       Q
       H4
       I
       F4
       C4
       F
       C
       J4
       K1)
        (let ((a!1 (= (and (or (not Z3) (not V3))
                   (or (not Z3) (not R3))
                   (or (not Z3) (not F3))
                   (or (not V3) (not R3))
                   (or (not V3) (not F3))
                   (or (not R3) (not F3)))
              Z2))
      (a!2 (= (and (or (not U) (not G1))
                   (or (not U) (not S1))
                   (or (not U) (not E4))
                   (or (not G1) (not S1))
                   (or (not G1) (not E4))
                   (or (not S1) (not E4)))
              O))
      (a!3 (or (not Y1) (= (+ Z (* (- 1) J2)) 1)))
      (a!4 (or (not Y1) (= (+ X (* (- 1) X1)) 1)))
      (a!5 (or (not A2) (= (+ A1 Z X (* (- 1) F2)) 1)))
      (a!6 (or (not A2) (= (+ C1 (* (- 1) O2)) 1)))
      (a!7 (or (not C2) (= (+ C1 A1 Z X (* (- 1) A4)) 1)))
      (a!8 (or (not E2) (= (+ C1 A1 Z X (* (- 1) B4)) 1))))
  (and (= (<= 1 C1) E2)
       (= (<= 1 A1) C2)
       (= (<= 1 Z) Y1)
       (= (or (not C3) (<= D3 1) (<= Y2 1)) B3)
       (= (or (not R) (<= N 1) (<= S 1)) Q)
       a!1
       a!2
       (= A3 (and D1 Z2 (<= 0 Y2)))
       (= P3 A3)
       (= P3 C3)
       (= D1 R)
       (= P D1)
       (= R2 Q2)
       (= T2 S2)
       (= V2 U2)
       (= X2 W2)
       (= J3 R2)
       (= J3 Y2)
       (= L3 T2)
       (= L3 K3)
       (= M3 V2)
       (= M3 D3)
       (= O3 X2)
       (= O3 N3)
       (= C1 B1)
       (= A1 S)
       (= Z Y)
       (= X N)
       (= M C1)
       (= L A1)
       (= K Z)
       (= J X)
       a!3
       a!4
       (or Y1 (= C1 P2))
       (or (not Y1) (= C1 P2))
       (or Y1 (= A1 M2))
       (or (not Y1) (= A1 M2))
       (or Y1 (= Z J2))
       (or Y1 (= X X1))
       a!5
       a!6
       (or (not A2) (= Z1 0))
       (or (not A2) (= K2 0))
       (or A2 (= C1 O2))
       (or A2 (= A1 F2))
       (or A2 (= Z K2))
       (or A2 (= X Z1))
       a!7
       (or (not C2) (= B2 0))
       (or (not C2) (= L2 1))
       (or (not C2) (= N2 0))
       (or C2 (= C1 A4))
       (or C2 (= A1 N2))
       (or C2 (= Z L2))
       (or C2 (= X B2))
       a!8
       (or (not E2) (= D2 0))
       (or (not E2) (= G2 0))
       (or (not E2) (= W3 1))
       (or E2 (= C1 B4))
       (or E2 (= A1 G2))
       (or E2 (= Z W3))
       (or E2 (= X D2))
       (or (not F3) (= E3 B2))
       (or F3 (= E3 Y3))
       (or (not F3) (= G3 L2))
       (or F3 (= G3 X3))
       (or F3 (= H3 H2))
       (or (not F3) (= H3 N2))
       (or F3 (= I3 I2))
       (or (not F3) (= I3 A4))
       (or (not R3) (= Z1 Q2))
       (or (not R3) (= S2 K2))
       (or (not R3) (= U2 F2))
       (or (not R3) (= W2 O2))
       (or R3 (= Q3 Q2))
       (or R3 (= S3 S2))
       (or R3 (= T3 U2))
       (or R3 (= U3 W2))
       (or (not V3) (= X1 Q3))
       (or V3 (= G3 S3))
       (or V3 (= H3 T3))
       (or V3 (= I3 U3))
       (or V3 (= Q3 E3))
       (or (not V3) (= S3 J2))
       (or (not V3) (= T3 M2))
       (or (not V3) (= U3 P2))
       (or (not Z3) (= H2 G2))
       (or (not Z3) (= I2 B4))
       (or (not Z3) (= X3 W3))
       (or (not Z3) (= Y3 D2))
       (or Z3 (= C1 I2))
       (or Z3 (= A1 H2))
       (or Z3 (= Z X3))
       (or Z3 (= X Y3))
       (or (not S1) (= R1 W1))
       (or S1 (= R1 W))
       (or (not S1) (= O1 V1))
       (or S1 (= O1 L1))
       (or (not S1) (= I1 U1))
       (or S1 (= I1 M1))
       (or (not S1) (= F1 T1))
       (or S1 (= F1 T))
       (or G1 (= R1 Q1))
       (or (not G1) (= Q1 P1))
       (or G1 (= O1 N1))
       (or (not G1) (= N1 J1))
       (or G1 (= I1 H1))
       (or (not G1) (= H1 B))
       (or G1 (= F1 E1))
       (or (not G1) (= E1 D))
       (or U (= M1 D4))
       (or (not U) (= M1 E))
       (or U (= L1 I4))
       (or (not U) (= L1 H))
       (or (not U) (= W V))
       (or U (= W A))
       (or U (= T G4))
       (or (not U) (= T G))
       (= (<= 1 C1) A2)))
      )
      (state A3
       P3
       Z3
       F3
       V3
       R3
       Z2
       X2
       O3
       V2
       M3
       T2
       L3
       R2
       J3
       U3
       I3
       P2
       T3
       H3
       M2
       S3
       G3
       J2
       Q3
       X1
       E3
       W2
       O2
       U2
       F2
       S2
       K2
       Q2
       Z1
       C3
       N3
       D3
       K3
       Y2
       I2
       A4
       H2
       N2
       X3
       L2
       B2
       Y3
       B3
       G2
       E2
       D2
       W3
       C2
       A2
       B4
       Y1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Bool) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Bool) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Bool) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) ) 
    (=>
      (and
        (state P
       D1
       Z1
       U
       S1
       G1
       O
       M
       C1
       L
       A1
       K
       Z
       J
       X
       R1
       W
       W1
       O1
       L1
       V1
       I1
       M1
       U1
       F1
       T1
       T
       Q1
       P1
       N1
       J1
       H1
       B
       E1
       D
       R
       B1
       S
       Y
       N
       A
       V
       D2
       H
       Y1
       E
       G
       B2
       Q
       C2
       I
       A2
       X1
       F
       C
       E2
       K1)
        (not Q)
      )
      false
    )
  )
)

(check-sat)
(exit)
