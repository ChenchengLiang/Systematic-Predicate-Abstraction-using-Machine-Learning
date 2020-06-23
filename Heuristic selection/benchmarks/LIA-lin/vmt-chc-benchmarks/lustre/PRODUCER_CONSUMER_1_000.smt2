(set-logic HORN)

(declare-fun |state| ( Int Int Int Int Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Bool Bool Bool Int Int Int Int Int Bool Int Bool Int Int Int Int Int Int Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Int) (T Int) (U Bool) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Bool) (P1 Int) ) 
    (=>
      (and
        (let ((a!1 (= (and O1 D1 (not (<= E1 0)) (not (<= 10 F1))) V))
      (a!2 (= R (and (or (not B) (not F)) (<= Q 32767) (<= P 32767)))))
  (and a!1
       a!2
       (= R D1)
       (= (not N1) O1)
       (= X W)
       (= J I)
       (= J A1)
       (= I X)
       (= K 0)
       (= K Z)
       (= M L)
       (= M J)
       (= N 0)
       (= N B1)
       (= O 0)
       (= O C1)
       (= S L)
       (= S E1)
       (= T L)
       (= T F1)
       (= Z Y)
       (= B1 P)
       (= C1 Q)
       (or (not F) (= H G))
       (or N1 (= H1 G1))
       (or (not N1) (= M1 L1))
       (or (not N1) (= G1 I1))
       (or B (= H1 J1))
       (or (not B) (= H1 K1))
       (or (not B) (= A P1))
       (= (or (not V) (<= 0 P)) U)))
      )
      (state T
       F1
       S
       E1
       R
       D1
       O
       C1
       N
       B1
       M
       J
       K
       Z
       I
       X
       H1
       K1
       B
       J1
       G1
       I1
       N1
       O1
       V
       Q
       P
       A1
       Y
       W
       U
       L
       F
       H
       G
       A
       P1
       M1
       L1
       C
       D
       E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Int) (U Int) (V Bool) (W Bool) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Bool) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Int) (P1 Bool) (Q1 Int) (R1 Bool) (S1 Int) (T1 Int) (U1 Bool) (V1 Int) (W1 Bool) (X1 Int) (Y1 Int) (Z1 Bool) (A2 Int) (B2 Bool) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Bool) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Bool) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Bool) (E3 Bool) (F3 Int) ) 
    (=>
      (and
        (state U
       G1
       T
       F1
       S
       E1
       P
       D1
       O
       C1
       N
       K
       L
       A1
       J
       Y
       I1
       L1
       B
       K1
       H1
       J1
       D3
       E3
       W
       R
       Q
       B1
       Z
       X
       V
       M
       G
       I
       H
       A
       F3
       C3
       B3
       C
       D
       E)
        (let ((a!1 (= (and X2 P1 (not (<= Y2 0)) (not (<= 10 Z2))) O2))
      (a!2 (= (and E1 E3 (not (<= F1 0)) (not (<= 10 G1))) W))
      (a!3 (= K2 (and E1 (or (not U1) (not R1)) (<= J2 32767) (<= I2 32767))))
      (a!4 (or (not W1) (= (+ A1 (* (- 1) X1)) (- 1))))
      (a!5 (or (not W1) (= (+ Y (* (- 1) O1)) 1)))
      (a!6 (or (not Z1) (= (+ C1 (* (- 1) S1)) (- 1))))
      (a!7 (or (not Z1) (= (+ A1 (* (- 1) Y1)) 1)))
      (a!8 (or (not B2) (= (+ D1 (* (- 1) V1)) (- 1))))
      (a!9 (or (not B2) (= (+ A1 (* (- 1) A2)) 1))))
  (and (= (<= 1 A1) B2)
       (= (<= 1 Y) W1)
       (= (or (not O2) (<= 0 I2)) N2)
       (= (or (not W) (<= 0 Q)) V)
       a!1
       a!2
       a!3
       (= X2 K2)
       (= S E1)
       (= C2 M1)
       (= E2 D2)
       (= G2 Q1)
       (= H2 T1)
       (= Q2 C2)
       (= Q2 P2)
       (= S2 E2)
       (= S2 R2)
       (= U2 F2)
       (= U2 T2)
       (= V2 G2)
       (= V2 I2)
       (= W2 H2)
       (= W2 J2)
       (= Y2 L2)
       (= Z2 M2)
       (= G1 M2)
       (= F1 L2)
       (= D1 R)
       (= C1 Q)
       (= A1 Z)
       (= Y X)
       (= U G1)
       (= T F1)
       (= P D1)
       (= O C1)
       (= N K)
       (= L A1)
       (= K F2)
       (= K B1)
       (= J Y)
       (or D3 (= I1 H1))
       (or (not D3) (= H1 J1))
       (or (not N1) (= M1 O1))
       (or (not N1) (= X1 D2))
       (or N1 (= Y M1))
       (or N1 (= A3 D2))
       (or (not R1) (= Q1 S1))
       (or (not R1) (= Y1 A3))
       (or R1 (= C1 Q1))
       (or R1 (= A3 A2))
       (or (not U1) (= T1 V1))
       (or U1 (= D1 T1))
       a!4
       a!5
       (or W1 (= A1 X1))
       (or W1 (= Y O1))
       a!6
       a!7
       (or Z1 (= C1 S1))
       (or Z1 (= A1 Y1))
       a!8
       a!9
       (or B2 (= D1 V1))
       (or B2 (= A1 A2))
       (or (not B) (= I1 L1))
       (or B (= I1 K1))
       (= P1 true)
       (= (<= 1 A1) Z1)))
      )
      (state M2
       Z2
       L2
       Y2
       K2
       X2
       H2
       W2
       G2
       V2
       F2
       U2
       E2
       S2
       C2
       Q2
       A3
       Y1
       R1
       A2
       D2
       X1
       N1
       P1
       O2
       J2
       I2
       T2
       R2
       P2
       N2
       F
       U1
       T1
       V1
       Q1
       S1
       M1
       O1
       W1
       Z1
       B2)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Int) (T Int) (U Bool) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Bool) (P1 Int) ) 
    (=>
      (and
        (state T
       F1
       S
       E1
       R
       D1
       O
       C1
       N
       B1
       M
       J
       K
       Z
       I
       X
       H1
       K1
       B
       J1
       G1
       I1
       N1
       O1
       V
       Q
       P
       A1
       Y
       W
       U
       L
       F
       H
       G
       A
       P1
       M1
       L1
       C
       D
       E)
        (not U)
      )
      false
    )
  )
)

(check-sat)
(exit)
