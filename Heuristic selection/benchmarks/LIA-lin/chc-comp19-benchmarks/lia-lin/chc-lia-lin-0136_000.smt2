(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Int Bool Int Int Bool Bool Int Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Bool) (Y1 Int) (Z1 Bool) (A2 Int) (B2 Int) (C2 Bool) (D2 Bool) (E2 Int) (F2 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (and (or (not C) (not D))
                   (or (not C) (not E))
                   (or (not C) (not F))
                   (or (not D) (not F))
                   (or (not D) (not E) (not F)))
              G)))
  (and (= N 0)
       (= N O)
       (= M M1)
       (= L 0)
       (= L M)
       (= K L1)
       (= J 0)
       (= J K)
       (= I K1)
       (= H 3)
       (= H I)
       (= (or (not J1) W1) X1)
       a!1
       (= B J1)
       (= A G)
       (= A B)
       (or (not D2) (= I1 0))
       (or (not D2) (= G1 0))
       (or (not C2) (= U1 0))
       (or (not C2) (= T1 1))
       (or (not C2) (= R1 0))
       (or (not Z1) (= B2 1))
       (or (not Z1) (= A2 0))
       (or (not Z1) (= Y1 0))
       (or F (= Y A1))
       (or (not F) (= Y Z))
       (or (not F) (= V X))
       (or F (= V W))
       (or (not F) (= S U))
       (or F (= S T))
       (or (not F) (= P R))
       (or F (= P Q))
       (or (not E) (= H1 I1))
       (or (not E) (= F1 G1))
       (or (not E) (= D1 E1))
       (or (not E) (= B1 C1))
       (or E (= Y H1))
       (or E (= V F1))
       (or E (= S D1))
       (or E (= P B1))
       (or D (= A1 V1))
       (or (not D) (= A1 U1))
       (or (not D) (= W T1))
       (or D (= W S1))
       (or (not D) (= T R1))
       (or D (= T Q1))
       (or (not D) (= Q P1))
       (or D (= Q O1))
       (or (not C) (= V1 A2))
       (or (not C) (= S1 B2))
       (or (not C) (= Q1 Y1))
       (or (not C) (= O1 E2))
       (= W1 true)
       (= O N1)))
      )
      (state A
       B
       C
       D
       F
       E
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
       F2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Bool) (Y1 Int) (Z1 Bool) (A2 Int) (B2 Int) (C2 Bool) (D2 Bool) (E2 Int) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Bool) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Bool) (D4 Bool) (E4 Bool) (F4 Int) (G4 Int) (H4 Int) (I4 Bool) (J4 Bool) (K4 Bool) (L4 Int) ) 
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
       F2)
        (let ((a!1 (= (and (or (not C) (not D))
                   (or (not C) (not E))
                   (or (not C) (not F))
                   (or (not D) (not E))
                   (or (not D) (not E) (not F)))
              G))
      (a!2 (= (and (or (not I2) (not J2))
                   (or (not I2) (not L2))
                   (or (not J2) (not K2))
                   (or (not J2) (not L2))
                   (or (not I2) (not K2) (not L2)))
              M2))
      (a!3 (= C4
              (= (+ K1
                    L1
                    M1
                    N1
                    (* (- 1) Q3)
                    (* (- 1) R3)
                    (* (- 1) S3)
                    (* (- 1) T3))
                 0)))
      (a!4 (or (not K4) (= (+ K (* (- 1) M) O (* (- 1) K3)) 1)))
      (a!5 (or (not K4) (= (+ I (* (- 1) I3)) 1)))
      (a!6 (or (not E4) (= (+ I K M O (* (- 1) L4)) 1)))
      (a!7 (or (not J4) (= (+ O (* (- 1) E3)) 1)))
      (a!8 (or (not J4) (= (+ M (* (- 1) D3)) 1)))
      (a!9 (or (not I4) (= (+ I K M O (* (- 1) V3)) 1))))
  (and (= N O)
       (= M M1)
       (= L M)
       (= K L1)
       (= J K)
       (= I K1)
       (= H I)
       (= U2 O3)
       (= T2 T3)
       (= T2 U2)
       (= S2 L3)
       (= R2 S3)
       (= R2 S2)
       (= Q2 J3)
       (= P2 R3)
       (= P2 Q2)
       (= O2 H3)
       (= N2 Q3)
       (= N2 O2)
       (= (<= 1 M) J4)
       (= (<= 1 K) I4)
       (= (<= 1 I) K4)
       (= (<= 1 I) E4)
       (= (or (not J1) W1) X1)
       (= (or (not P3) C4) D4)
       a!1
       a!2
       (= B J1)
       (= A B)
       a!3
       (= H2 (and M2 B))
       (= G2 P3)
       (= G2 H2)
       a!4
       a!5
       (or K4 (= O N3))
       (or K4 (= M M3))
       (or K4 (= K K3))
       (or K4 (= I I3))
       (or (not K4) (= N3 0))
       (or (not K4) (= M3 0))
       a!6
       (or (not E4) (= F4 0))
       (or E4 (= O G4))
       (or E4 (= M H4))
       (or E4 (= K F4))
       (or E4 (= I L4))
       (or (not E4) (= H4 1))
       (or (not E4) (= G4 0))
       (or (not F) (= H1 I1))
       (or (not F) (= F1 G1))
       (or (not F) (= D1 E1))
       (or (not F) (= B1 C1))
       (or F (= Y H1))
       (or F (= V F1))
       (or F (= S D1))
       (or F (= P B1))
       (or E (= Y A1))
       (or (not E) (= Y Z))
       (or (not E) (= V X))
       (or E (= V W))
       (or (not E) (= S U))
       (or E (= S T))
       (or (not E) (= P R))
       (or E (= P Q))
       (or D (= A1 V1))
       (or (not D) (= A1 U1))
       (or (not D) (= W T1))
       (or D (= W S1))
       (or (not D) (= T R1))
       (or D (= T Q1))
       (or (not D) (= Q P1))
       (or D (= Q O1))
       a!7
       a!8
       (or J4 (= O E3))
       (or J4 (= M D3))
       (or J4 (= K A3))
       (or (not J4) (= K A3))
       (or J4 (= I X2))
       (or (not J4) (= I X2))
       a!9
       (or I4 (= O A4))
       (or I4 (= M Z3))
       (or I4 (= K X3))
       (or I4 (= I V3))
       (or (not I4) (= A4 0))
       (or (not I4) (= Z3 1))
       (or (not I4) (= X3 0))
       (or L2 (= F3 G3))
       (or (not L2) (= E3 F3))
       (or (not L2) (= C3 D3))
       (or L2 (= B3 C3))
       (or (not L2) (= Z2 A3))
       (or L2 (= Y2 Z2))
       (or (not L2) (= W2 X2))
       (or L2 (= V2 W2))
       (or (not K2) (= N3 O3))
       (or (not K2) (= L3 M3))
       (or (not K2) (= J3 K3))
       (or (not K2) (= H3 I3))
       (or K2 (= F3 O3))
       (or K2 (= C3 L3))
       (or K2 (= Z2 J3))
       (or K2 (= W2 H3))
       (or J2 (= O B4))
       (or J2 (= M Y3))
       (or J2 (= K W3))
       (or J2 (= I U3))
       (or (not J2) (= B4 G4))
       (or (not J2) (= Y3 H4))
       (or (not J2) (= W3 F4))
       (or (not J2) (= U3 L4))
       (or I2 (= G3 B4))
       (or (not I2) (= G3 A4))
       (or (not I2) (= B3 Z3))
       (or I2 (= B3 Y3))
       (or (not I2) (= Y2 X3))
       (or I2 (= Y2 W3))
       (or (not I2) (= V2 V3))
       (or I2 (= V2 U3))
       (= O N1)))
      )
      (state H2
       G2
       J2
       I2
       L2
       K2
       M2
       O2
       N2
       Q2
       P2
       S2
       R2
       U2
       T2
       W2
       V2
       X2
       Z2
       Y2
       A3
       C3
       B3
       D3
       F3
       E3
       G3
       H3
       I3
       J3
       K3
       L3
       M3
       O3
       N3
       P3
       Q3
       R3
       S3
       T3
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
       F4
       E4
       G4
       H4
       I4
       K4
       L4
       J4)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Bool) (Y1 Int) (Z1 Bool) (A2 Int) (B2 Int) (C2 Bool) (D2 Bool) (E2 Int) (F2 Bool) ) 
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
       F2)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
