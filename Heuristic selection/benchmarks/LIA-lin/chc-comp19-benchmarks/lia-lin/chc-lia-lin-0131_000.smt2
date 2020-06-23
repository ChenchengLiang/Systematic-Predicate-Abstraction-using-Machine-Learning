(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Bool Int Int Bool Bool Int Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Bool) (C2 Bool) (D2 Int) (E2 Bool) ) 
    (=>
      (and
        (let ((a!1 (or (not J1) (and (or (<= L1 1) (<= N1 1)) (<= N1 2) (<= 0 M1))))
      (a!2 (= (and (or (not C) (not D))
                   (or (not C) (not E))
                   (or (not C) (not F))
                   (or (not D) (not E))
                   (or (not D) (not F))
                   (or (not E) (not F)))
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
       (= a!1 W1)
       a!2
       (= B J1)
       (= A (and G (<= 0 N1)))
       (= A B)
       (or (not C2) (= I1 0))
       (or (not C2) (= G1 0))
       (or (not B2) (= U1 0))
       (or (not B2) (= T1 1))
       (or (not B2) (= R1 0))
       (or (not Y1) (= A2 1))
       (or (not Y1) (= Z1 0))
       (or (not Y1) (= X1 0))
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
       (or (not C) (= V1 Z1))
       (or (not C) (= S1 A2))
       (or (not C) (= Q1 X1))
       (or (not C) (= O1 D2))
       (= O N1)))
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
       E2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Bool) (C2 Bool) (D2 Int) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Bool) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Bool) (C4 Bool) (D4 Int) (E4 Int) (F4 Int) (G4 Bool) (H4 Bool) (I4 Bool) (J4 Int) ) 
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
       E2)
        (let ((a!1 (or (not J1) (and (or (<= L1 1) (<= N1 1)) (<= N1 2) (<= 0 M1))))
      (a!2 (or (not O3) (and (or (<= Q3 1) (<= S3 1)) (<= S3 2) (<= 0 R3))))
      (a!3 (= (and (or (not C) (not D))
                   (or (not C) (not E))
                   (or (not C) (not F))
                   (or (not D) (not E))
                   (or (not D) (not F))
                   (or (not E) (not F)))
              G))
      (a!4 (= (and (or (not H2) (not I2))
                   (or (not H2) (not J2))
                   (or (not H2) (not K2))
                   (or (not I2) (not J2))
                   (or (not I2) (not K2))
                   (or (not J2) (not K2)))
              L2))
      (a!5 (= G2 (or B (and L2 (<= 0 S3)))))
      (a!6 (or (not I4) (= (+ K M O (* (- 1) J3)) 0)))
      (a!7 (or (not I4) (= (+ I (* (- 1) H3)) 1)))
      (a!8 (or (not C4) (= (+ I K M O (* (- 1) J4)) 1)))
      (a!9 (or (not H4) (= (+ O (* (- 1) D3)) 1)))
      (a!10 (or (not H4) (= (+ M (* (- 1) C3)) 1)))
      (a!11 (or (not G4) (= (+ I K M O (* (- 1) U3)) 1))))
  (and (= N O)
       (= M M1)
       (= L M)
       (= K L1)
       (= J K)
       (= I K1)
       (= H I)
       (= T2 N3)
       (= S2 S3)
       (= S2 T2)
       (= R2 K3)
       (= Q2 R3)
       (= Q2 R2)
       (= P2 I3)
       (= O2 Q3)
       (= O2 P2)
       (= N2 G3)
       (= M2 P3)
       (= M2 N2)
       (= (<= 1 M) H4)
       (= (<= 1 K) G4)
       (= (<= 1 I) I4)
       (= (<= 1 I) C4)
       (= a!1 W1)
       (= a!2 B4)
       a!3
       a!4
       (= B J1)
       (= A B)
       a!5
       (= F2 O3)
       (= F2 G2)
       a!6
       a!7
       (or I4 (= O M3))
       (or I4 (= M L3))
       (or I4 (= K J3))
       (or I4 (= I H3))
       (or (not I4) (= M3 0))
       (or (not I4) (= L3 0))
       a!8
       (or (not C4) (= D4 0))
       (or C4 (= O E4))
       (or C4 (= M F4))
       (or C4 (= K D4))
       (or C4 (= I J4))
       (or (not C4) (= F4 1))
       (or (not C4) (= E4 0))
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
       a!9
       a!10
       (or H4 (= O D3))
       (or H4 (= M C3))
       (or H4 (= K Z2))
       (or (not H4) (= K Z2))
       (or H4 (= I W2))
       (or (not H4) (= I W2))
       a!11
       (or G4 (= O Z3))
       (or G4 (= M Y3))
       (or G4 (= K W3))
       (or G4 (= I U3))
       (or (not G4) (= Z3 0))
       (or (not G4) (= Y3 1))
       (or (not G4) (= W3 0))
       (or K2 (= E3 F3))
       (or (not K2) (= D3 E3))
       (or (not K2) (= B3 C3))
       (or K2 (= A3 B3))
       (or (not K2) (= Y2 Z2))
       (or K2 (= X2 Y2))
       (or (not K2) (= V2 W2))
       (or K2 (= U2 V2))
       (or (not J2) (= M3 N3))
       (or (not J2) (= K3 L3))
       (or (not J2) (= I3 J3))
       (or (not J2) (= G3 H3))
       (or J2 (= E3 N3))
       (or J2 (= B3 K3))
       (or J2 (= Y2 I3))
       (or J2 (= V2 G3))
       (or I2 (= O A4))
       (or I2 (= M X3))
       (or I2 (= K V3))
       (or I2 (= I T3))
       (or (not I2) (= A4 E4))
       (or (not I2) (= X3 F4))
       (or (not I2) (= V3 D4))
       (or (not I2) (= T3 J4))
       (or H2 (= F3 A4))
       (or (not H2) (= F3 Z3))
       (or (not H2) (= A3 Y3))
       (or H2 (= A3 X3))
       (or (not H2) (= X2 W3))
       (or H2 (= X2 V3))
       (or (not H2) (= U2 U3))
       (or H2 (= U2 T3))
       (= O N1)))
      )
      (state G2
       F2
       I2
       H2
       K2
       J2
       L2
       N2
       M2
       P2
       O2
       R2
       Q2
       T2
       S2
       V2
       U2
       W2
       Y2
       X2
       Z2
       B3
       A3
       C3
       E3
       D3
       F3
       G3
       H3
       I3
       J3
       K3
       L3
       N3
       M3
       O3
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
       D4
       C4
       E4
       F4
       G4
       I4
       J4
       H4)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Bool) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Bool) (C2 Bool) (D2 Int) (E2 Bool) ) 
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
       E2)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
