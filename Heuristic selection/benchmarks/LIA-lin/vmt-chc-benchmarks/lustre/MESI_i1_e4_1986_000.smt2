(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Int Bool Int Int Bool Bool Int Bool ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) ) 
    (=>
      (and
        (let ((a!1 (= (and (or (not A2) (not T))
                   (or (not A2) (not H1))
                   (or (not A2) (not T1))
                   (or (not T) (not H1))
                   (or (not T) (not T1))
                   (or (not H1) (not T1)))
              O)))
  (and a!1
       (= E1 R)
       (= P E1)
       (= P O)
       (= D1 C1)
       (= B1 A1)
       (= Z Y)
       (= K 0)
       (= K X)
       (= L 0)
       (= L Z)
       (= M 0)
       (= M B1)
       (= N 3)
       (= N D1)
       (= X W)
       (or T1 (= G1 S))
       (or (not T1) (= G1 U1))
       (or T1 (= J1 U))
       (or (not T1) (= J1 V1))
       (or (not T1) (= P1 W1))
       (or T1 (= P1 M1))
       (or T1 (= S1 V))
       (or (not T1) (= S1 X1))
       (or (not J) (= D2 0))
       (or (not J) (= B2 0))
       (or (not J) (= Y1 1))
       (or (not H1) (= R1 Q1))
       (or (not H1) (= F1 E))
       (or H1 (= G1 F1))
       (or (not H1) (= I1 C))
       (or H1 (= J1 I1))
       (or (not H1) (= O1 N1))
       (or H1 (= P1 O1))
       (or H1 (= S1 R1))
       (or T (= S C2))
       (or (not T) (= S H))
       (or (not T) (= U F))
       (or T (= U Z1))
       (or (not T) (= V L1))
       (or T (= V A))
       (or T (= M1 E2))
       (or (not T) (= M1 I))
       (or (not A2) (= E2 D2))
       (or (not A2) (= C2 B2))
       (or (not A2) (= Z1 Y1))
       (or (not A2) (= A F2))
       (or (not D) (= C 0))
       (or (not D) (= E 0))
       (or (not G) (= F 1))
       (or (not G) (= H 0))
       (or (not G) (= I 0))
       (= B true)
       (= (or B (not R)) Q)))
      )
      (state P
       E1
       A2
       T
       T1
       H1
       O
       N
       D1
       M
       B1
       L
       Z
       K
       X
       S1
       V
       X1
       P1
       M1
       W1
       J1
       U
       V1
       G1
       U1
       S
       R1
       Q1
       O1
       N1
       I1
       C
       F1
       E
       R
       C1
       A1
       Y
       W
       A
       L1
       E2
       I
       Z1
       F
       H
       C2
       B
       Q
       D2
       J
       B2
       Y1
       G
       D
       F2
       K1)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Bool) (I2 Int) (J2 Bool) (K2 Int) (L2 Bool) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Bool) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Bool) (S3 Int) (T3 Bool) (U3 Int) (V3 Int) (W3 Int) (X3 Bool) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Bool) (D4 Int) (E4 Int) (F4 Int) (G4 Bool) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) ) 
    (=>
      (and
        (state P
       E1
       G4
       T
       T1
       H1
       O
       N
       D1
       M
       B1
       L
       Z
       K
       X
       S1
       V
       X1
       P1
       M1
       W1
       J1
       U
       V1
       G1
       U1
       S
       R1
       Q1
       O1
       N1
       I1
       C
       F1
       E
       R
       C1
       A1
       Y
       W
       A
       L1
       K4
       I
       F4
       F
       H
       I4
       B
       Q
       J4
       J
       H4
       E4
       G
       D
       L4
       K1)
        (let ((a!1 (= (and (or (not C4) (not X3))
                   (or (not C4) (not T3))
                   (or (not C4) (not J3))
                   (or (not X3) (not T3))
                   (or (not X3) (not J3))
                   (or (not T3) (not J3)))
              E3))
      (a!2 (= (and (or (not T) (not H1))
                   (or (not T) (not T1))
                   (or (not T) (not G4))
                   (or (not H1) (not T1))
                   (or (not H1) (not G4))
                   (or (not T1) (not G4)))
              O))
      (a!3 (= C2
              (= (+ C1
                    A1
                    Y
                    W
                    (* (- 1) B2)
                    (* (- 1) A2)
                    (* (- 1) Z1)
                    (* (- 1) Y1))
                 0)))
      (a!4 (or (not H2) (= (+ Z (* (- 1) P2)) 1)))
      (a!5 (or (not H2) (= (+ X (* (- 1) G2)) 1)))
      (a!6 (or (not J2) (= (+ B1 Z X (* (- 1) N2)) 0)))
      (a!7 (or (not J2) (= (+ D1 (* (- 1) U2)) 1)))
      (a!8 (or (not L2) (= (+ D1 B1 Z X (* (- 1) O2)) 1)))
      (a!9 (or (not M2) (= (+ D1 B1 Z X (* (- 1) E2)) 1))))
  (and (= (<= 1 D1) M2)
       (= (<= 1 B1) L2)
       (= (<= 1 Z) H2)
       (= (or (not H3) C2) G3)
       (= (or B (not R)) Q)
       a!1
       a!2
       a!3
       (= F3 (and E1 E3))
       (= R3 F3)
       (= R3 H3)
       (= E1 R)
       (= P E1)
       (= X2 W2)
       (= Z2 Y2)
       (= B3 A3)
       (= D3 C3)
       (= N3 Y1)
       (= N3 X2)
       (= O3 Z1)
       (= O3 Z2)
       (= P3 A2)
       (= P3 B3)
       (= Q3 B2)
       (= Q3 D3)
       (= D1 C1)
       (= B1 A1)
       (= Z Y)
       (= X W)
       (= N D1)
       (= M B1)
       (= L Z)
       (= K X)
       a!4
       a!5
       (or H2 (= D1 V2))
       (or (not H2) (= D1 V2))
       (or H2 (= B1 S2))
       (or (not H2) (= B1 S2))
       (or H2 (= Z P2))
       (or H2 (= X G2))
       a!6
       a!7
       (or (not J2) (= I2 0))
       (or (not J2) (= Q2 0))
       (or J2 (= D1 U2))
       (or J2 (= B1 N2))
       (or J2 (= Z Q2))
       (or J2 (= X I2))
       a!8
       (or (not L2) (= K2 0))
       (or (not L2) (= R2 1))
       (or (not L2) (= T2 0))
       (or L2 (= D1 O2))
       (or L2 (= B1 T2))
       (or L2 (= Z R2))
       (or L2 (= X K2))
       a!9
       (or (not M2) (= Y3 0))
       (or (not M2) (= A4 1))
       (or (not M2) (= D4 0))
       (or M2 (= D1 E2))
       (or M2 (= B1 Y3))
       (or M2 (= Z A4))
       (or M2 (= X D4))
       (or J3 (= I3 D2))
       (or (not J3) (= I3 K2))
       (or (not J3) (= K3 R2))
       (or J3 (= K3 B4))
       (or (not J3) (= L3 T2))
       (or J3 (= L3 Z3))
       (or J3 (= M3 F2))
       (or (not J3) (= M3 O2))
       (or (not T3) (= I2 W2))
       (or (not T3) (= Y2 Q2))
       (or (not T3) (= A3 N2))
       (or (not T3) (= C3 U2))
       (or T3 (= S3 W2))
       (or T3 (= U3 Y2))
       (or T3 (= V3 A3))
       (or T3 (= W3 C3))
       (or (not X3) (= G2 S3))
       (or X3 (= K3 U3))
       (or X3 (= L3 V3))
       (or X3 (= M3 W3))
       (or X3 (= S3 I3))
       (or (not X3) (= U3 P2))
       (or (not X3) (= V3 S2))
       (or (not X3) (= W3 V2))
       (or (not C4) (= D2 D4))
       (or (not C4) (= F2 E2))
       (or (not C4) (= Z3 Y3))
       (or (not C4) (= B4 A4))
       (or C4 (= D1 F2))
       (or C4 (= B1 Z3))
       (or C4 (= Z B4))
       (or C4 (= X D2))
       (or (not T1) (= S1 X1))
       (or T1 (= S1 V))
       (or (not T1) (= P1 W1))
       (or T1 (= P1 M1))
       (or (not T1) (= J1 V1))
       (or T1 (= J1 U))
       (or (not T1) (= G1 U1))
       (or T1 (= G1 S))
       (or H1 (= S1 R1))
       (or (not H1) (= R1 Q1))
       (or H1 (= P1 O1))
       (or (not H1) (= O1 N1))
       (or H1 (= J1 I1))
       (or (not H1) (= I1 C))
       (or H1 (= G1 F1))
       (or (not H1) (= F1 E))
       (or T (= M1 K4))
       (or (not T) (= M1 I))
       (or (not T) (= V L1))
       (or T (= V A))
       (or T (= U F4))
       (or (not T) (= U F))
       (or T (= S I4))
       (or (not T) (= S H))
       (= (<= 1 D1) J2)))
      )
      (state F3
       R3
       C4
       J3
       X3
       T3
       E3
       D3
       Q3
       B3
       P3
       Z2
       O3
       X2
       N3
       W3
       M3
       V2
       V3
       L3
       S2
       U3
       K3
       P2
       S3
       G2
       I3
       C3
       U2
       A3
       N2
       Y2
       Q2
       W2
       I2
       H3
       B2
       A2
       Z1
       Y1
       F2
       O2
       Z3
       T2
       B4
       R2
       K2
       D2
       C2
       G3
       Y3
       M2
       D4
       A4
       L2
       J2
       E2
       H2)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) ) 
    (=>
      (and
        (state P
       E1
       A2
       T
       T1
       H1
       O
       N
       D1
       M
       B1
       L
       Z
       K
       X
       S1
       V
       X1
       P1
       M1
       W1
       J1
       U
       V1
       G1
       U1
       S
       R1
       Q1
       O1
       N1
       I1
       C
       F1
       E
       R
       C1
       A1
       Y
       W
       A
       L1
       E2
       I
       Z1
       F
       H
       C2
       B
       Q
       D2
       J
       B2
       Y1
       G
       D
       F2
       K1)
        (not Q)
      )
      false
    )
  )
)

(check-sat)
(exit)
