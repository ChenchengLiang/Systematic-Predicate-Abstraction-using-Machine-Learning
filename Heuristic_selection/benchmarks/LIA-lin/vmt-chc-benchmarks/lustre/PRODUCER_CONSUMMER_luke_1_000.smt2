(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int Int Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Bool) (W Bool) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Bool) (P1 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (and (or (not I) (not O1))
                   (or (not I) (not H))
                   (or (not O1) (not H)))
              S))
      (a!2 (= (and H1 (not (<= G1 0))) W)))
  (and (= P M)
       (= P O)
       (= N 0)
       (= N A1)
       (= L Y)
       (= M L)
       (= M B1)
       (= Q 0)
       (= Q D1)
       (= R 0)
       (= R F1)
       (= U O)
       (= U G1)
       (= Y X)
       (= D1 C1)
       (= F1 E1)
       (= (or (not W) (not N1) P1) V)
       a!1
       a!2
       (= T H1)
       (= T S)
       (= (not O1) N1)
       (or (not H) (= G F))
       (or H (= J1 L1))
       (or (not H) (= J1 M1))
       (or (not O1) (= B A))
       (or (not O1) (= I1 K1))
       (or O1 (= J1 I1))
       (or (not I) (= K J))
       (= P1 true)
       (= A1 Z)))
      )
      (state U
       G1
       T
       H1
       I
       H
       O1
       S
       R
       F1
       Q
       D1
       P
       M
       N
       A1
       L
       Y
       J1
       M1
       L1
       I1
       K1
       W
       E1
       C1
       B1
       Z
       X
       N1
       P1
       V
       O
       K
       J
       G
       F
       B
       A
       C
       D
       E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Bool) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Bool) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Bool) (P1 Int) (Q1 Bool) (R1 Bool) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Int) (A2 Bool) (B2 Int) (C2 Int) (D2 Bool) (E2 Int) (F2 Bool) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Bool) (O2 Int) (P2 Bool) (Q2 Bool) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Bool) (C3 Int) (D3 Bool) (E3 Bool) (F3 Bool) ) 
    (=>
      (and
        (state V
       H1
       U
       I1
       J
       I
       E3
       T
       S
       G1
       R
       E1
       Q
       N
       O
       B1
       M
       Z
       K1
       N1
       M1
       J1
       L1
       X
       F1
       D1
       C1
       A1
       Y
       D3
       F3
       W
       P
       L
       K
       H
       G
       B
       A
       C
       D
       E)
        (let ((a!1 (= (and (or (not Y1) (not T1))
                   (or (not Y1) (not O1))
                   (or (not T1) (not O1)))
              M2))
      (a!2 (= (and (or (not I) (not J))
                   (or (not I) (not E3))
                   (or (not J) (not E3)))
              T))
      (a!3 (= (and B3 (not (<= A3 0))) Q2))
      (a!4 (= (and I1 (not (<= H1 0))) X))
      (a!5 (or (not O1) (not E3) (= (+ D1 (* (- 1) P1)) (- 1))))
      (a!6 (or (not A2) (= (+ B1 (* (- 1) B2)) (- 1))))
      (a!7 (or (not A2) (= (+ Z (* (- 1) U1)) 1)))
      (a!8 (or (not D2) (= (+ E1 (* (- 1) W1)) (- 1))))
      (a!9 (or (not D2) (= (+ B1 (* (- 1) C2)) 1)))
      (a!10 (or (not F2) (= (+ G1 (* (- 1) Z1)) (- 1))))
      (a!11 (or (not F2) (= (+ B1 (* (- 1) E2)) 1))))
  (and (= I2 H2)
       (= K2 V1)
       (= L2 X1)
       (= S2 G2)
       (= S2 R2)
       (= U2 I2)
       (= U2 T2)
       (= W2 J2)
       (= W2 V2)
       (= X2 P1)
       (= X2 K2)
       (= Z2 L2)
       (= Z2 Y2)
       (= A3 O2)
       (= H1 O2)
       (= G1 F1)
       (= E1 D1)
       (= B1 A1)
       (= Z Y)
       (= V H1)
       (= S G1)
       (= R E1)
       (= Q N)
       (= O B1)
       (= N J2)
       (= N C1)
       (= M Z)
       (= (<= 1 B1) D2)
       (= (<= 1 B1) F2)
       (= (<= 1 Z) A2)
       (= (or (not Q2) (not R1) Q1) P2)
       (= (or (not X) (not D3) F3) W)
       a!1
       a!2
       a!3
       a!4
       (= Q1 a!5)
       (= N2 (and I1 M2))
       (= B3 N2)
       (= U I1)
       (or E3 (= K1 J1))
       (or (not E3) (= J1 L1))
       (or (not O1) (= V1 W1))
       (or (not O1) (= C2 C3))
       (or O1 (= E1 V1))
       (or O1 (= C3 E2))
       (or (not T1) (= S1 U1))
       (or (not T1) (= B2 H2))
       (or T1 (= Z S1))
       (or T1 (= C3 H2))
       (or (not Y1) (= X1 Z1))
       (or Y1 (= G1 X1))
       a!6
       a!7
       (or A2 (= B1 B2))
       (or A2 (= Z U1))
       a!8
       a!9
       (or D2 (= E1 W1))
       (or D2 (= B1 C2))
       a!10
       a!11
       (or F2 (= G1 Z1))
       (or F2 (= B1 E2))
       (or (not I) (= K1 N1))
       (or I (= K1 M1))
       (= R1 true)
       (= G2 S1)))
      )
      (state O2
       A3
       N2
       B3
       Y1
       O1
       T1
       M2
       L2
       Z2
       K2
       X2
       J2
       W2
       I2
       U2
       G2
       S2
       C3
       C2
       E2
       H2
       B2
       Q2
       Y2
       P1
       V2
       T2
       R2
       R1
       Q1
       P2
       F
       X1
       Z1
       V1
       W1
       S1
       U1
       A2
       D2
       F2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Int) (V Bool) (W Bool) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Bool) (P1 Bool) ) 
    (=>
      (and
        (state U
       G1
       T
       H1
       I
       H
       O1
       S
       R
       F1
       Q
       D1
       P
       M
       N
       A1
       L
       Y
       J1
       M1
       L1
       I1
       K1
       W
       E1
       C1
       B1
       Z
       X
       N1
       P1
       V
       O
       K
       J
       G
       F
       B
       A
       C
       D
       E)
        (not V)
      )
      false
    )
  )
)

(check-sat)
(exit)
