(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Bool) (N1 Int) (O1 Int) (P1 Bool) (Q1 Int) ) 
    (=>
      (and
        (let ((a!1 (= (and (or (not M1) (not B))
                   (or (not M1) (not H))
                   (or (not B) (not H)))
              P))
      (a!2 (= (and E1 F1 (not (<= G1 0))) U))
      (a!3 (= Q (or P (and (not M1) (not B) (not H))))))
  (and a!1
       a!2
       a!3
       (= Q E1)
       (= R (and (not M1) (not B) (not H)))
       (= R F1)
       (= B1 A1)
       (= O 0)
       (= O D1)
       (= K 0)
       (= K Y)
       (= J Z)
       (= J I)
       (= Y X)
       (= I W)
       (= M J)
       (= M L)
       (= N 0)
       (= N B1)
       (= S G1)
       (= S L)
       (= W V)
       (= D1 C1)
       (or H (= I1 K1))
       (or (not H) (= I1 L1))
       (or (not H) (= G F))
       (or (not B) (= H1 J1))
       (or B (= I1 H1))
       (or (not B) (= A Q1))
       (or (not M1) (= O1 N1))
       (= P1 true)
       (= (or P1 (not U)) T)))
      )
      (state S
       G1
       R
       F1
       Q
       E1
       H
       B
       M1
       P
       O
       D1
       N
       B1
       M
       J
       K
       Y
       I
       W
       I1
       L1
       K1
       H1
       J1
       U
       C1
       A1
       Z
       X
       V
       P1
       T
       L
       G
       F
       A
       Q1
       O1
       N1
       C
       D
       E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) (T Int) (U Bool) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Bool) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Bool) (C2 Int) (D2 Int) (E2 Int) (F2 Bool) (G2 Int) (H2 Int) (I2 Bool) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Int) (B3 Int) (C3 Int) (D3 Bool) (E3 Int) (F3 Int) (G3 Bool) (H3 Int) ) 
    (=>
      (and
        (state T
       H1
       S
       G1
       R
       F1
       I
       B
       D3
       Q
       P
       E1
       O
       C1
       N
       K
       L
       Z
       J
       X
       J1
       M1
       L1
       I1
       K1
       V
       D1
       B1
       A1
       Y
       W
       G3
       U
       M
       H
       G
       A
       H3
       F3
       E3
       C
       D
       E)
        (let ((a!1 (= (and (or (not B) (not I))
                   (or (not B) (not D3))
                   (or (not I) (not D3)))
              Q))
      (a!2 (= (and B2 A2 (not (<= C2 0))) O1))
      (a!3 (= (and F1 G1 (not (<= H1 0))) V))
      (a!4 (and F1 (or Q2 (and (not P2) (not I2) (not F2)))))
      (a!5 (= Q2
              (and (or (not P2) (not I2))
                   (or (not P2) (not F2))
                   (or (not I2) (not F2)))))
      (a!6 (or (not X2) (= (+ E1 (* (- 1) A3)) (- 1))))
      (a!7 (or (not X2) (= (+ Z (* (- 1) H2)) 1)))
      (a!8 (or (not Y2) (= (+ C1 (* (- 1) B3)) (- 1))))
      (a!9 (or (not Y2) (= (+ Z (* (- 1) J2)) 1)))
      (a!10 (or (not Z2) (= (+ Z (* (- 1) G2)) (- 1))))
      (a!11 (or (not Z2) (= (+ X (* (- 1) C3)) 1)))
      (a!12 (or (not B) (not I2) (= B1 X1) (= (+ B1 (* (- 1) X1)) (- 1)))))
  (and (= (or P1 (not O1)) N1)
       (= (or (not V) G3) U)
       a!1
       a!2
       a!3
       (= a!4 R2)
       a!5
       (= R2 A2)
       (= S2 B2)
       (= X2 (<= 1 Z))
       (= Y2 (<= 1 Z))
       (= Z2 (<= 1 X))
       (= G1 S2)
       (= S G1)
       (= R F1)
       (= R1 Q1)
       (= T1 S1)
       (= V1 U1)
       (= X1 W1)
       (= Z1 Y1)
       (= E2 L2)
       (= K2 R1)
       (= L2 T1)
       (= M2 V1)
       (= N2 W1)
       (= O2 Z1)
       (= T2 C2)
       (= U2 O2)
       (= V2 N2)
       (= W2 K2)
       (= H1 T2)
       (= E1 D1)
       (= C1 B1)
       (= Z Y)
       (= X W)
       (= T H1)
       (= P E1)
       (= O C1)
       (= N K)
       (= L Z)
       (= K M2)
       (= K A1)
       (= J X)
       (or F2 (= E2 D2))
       (or (not F2) (= G2 E2))
       (or F2 (= X W2))
       (or (not F2) (= C3 W2))
       (or I2 (= H2 D2))
       (or (not I2) (= J2 D2))
       (or (not I2) (= V2 B3))
       (or I2 (= C1 V2))
       (or (not P2) (= A3 U2))
       (or P2 (= E1 U2))
       a!6
       a!7
       (or X2 (= E1 A3))
       (or X2 (= Z H2))
       a!8
       a!9
       (or Y2 (= C1 B3))
       (or Y2 (= Z J2))
       a!10
       a!11
       (or Z2 (= Z G2))
       (or Z2 (= X C3))
       (or (not I) (= J1 M1))
       (or I (= J1 L1))
       (or B (= J1 I1))
       (or (not B) (= I1 K1))
       (= a!12 P1)))
      )
      (state T2
       C2
       S2
       B2
       R2
       A2
       I2
       F2
       P2
       Q2
       O2
       Z1
       N2
       W1
       M2
       V1
       L2
       T1
       K2
       R1
       D2
       J2
       H2
       E2
       G2
       O1
       Y1
       X1
       U1
       S1
       Q1
       P1
       N1
       F
       V2
       B3
       W2
       C3
       U2
       A3
       Z2
       Y2
       X2)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Bool) (N1 Int) (O1 Int) (P1 Bool) (Q1 Int) ) 
    (=>
      (and
        (state S
       G1
       R
       F1
       Q
       E1
       H
       B
       M1
       P
       O
       D1
       N
       B1
       M
       J
       K
       Y
       I
       W
       I1
       L1
       K1
       H1
       J1
       U
       C1
       A1
       Z
       X
       V
       P1
       T
       L
       G
       F
       A
       Q1
       O1
       N1
       C
       D
       E)
        (not T)
      )
      false
    )
  )
)

(check-sat)
(exit)
