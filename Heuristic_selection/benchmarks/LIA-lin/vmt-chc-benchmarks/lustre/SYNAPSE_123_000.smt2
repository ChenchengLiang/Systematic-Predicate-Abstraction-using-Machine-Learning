(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Bool Bool Bool Bool Int Bool Int Int Bool Int Bool Bool Int ) Bool)

(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Bool) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Bool) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (or (not A1) (not (<= 2 V))) Q))
      (a!2 (= (and (or (not Q1) (not F1))
                   (or (not Q1) (not M1))
                   (or (not F1) (not M1)))
              M))
      (a!3 (or (not A1) (= (+ B1 (* (- 1) V) (* (- 1) T) (* (- 1) X)) 0))))
  (and a!1
       (= (or (not A1) V1) R)
       a!2
       (= (and Q R S) P)
       (= N (and M (<= 0 G)))
       (= N C1)
       (= C1 A1)
       (= Z X)
       (= U T)
       (= H G)
       (= H J)
       (= I Z)
       (= J Y)
       (= J I)
       (= K 0)
       (= K U)
       (= L 0)
       (= L W)
       (= O G)
       (= O B1)
       (= W V)
       (or (not M1) (= J1 E))
       (or M1 (= J1 P1))
       (or M1 (= E1 S1))
       (or (not M1) (= E1 N1))
       (or M1 (= L1 U1))
       (or (not M1) (= L1 C))
       (or F1 (= J1 I1))
       (or F1 (= E1 D1))
       (or (not F1) (= D1 G1))
       (or (not F1) (= I1 H1))
       (or (not F1) (= K1 B))
       (or F1 (= L1 K1))
       (or (not F) (= T1 1))
       (or (not F) (= O1 0))
       (or (not D) (= E 0))
       (or (not D) (= C 1))
       (or (not A) (= B 0))
       (or (not Q1) (= U1 T1))
       (or (not Q1) (= S1 R1))
       (or (not Q1) (= P1 O1))
       (= V1 true)
       (= a!3 S)))
      )
      (state O
       B1
       N
       C1
       M1
       F1
       Q1
       M
       H
       J
       L
       W
       K
       U
       I
       Z
       L1
       U1
       C
       J1
       P1
       E
       E1
       N1
       S1
       K1
       B
       I1
       H1
       D1
       G1
       A1
       V
       T
       X
       S
       V1
       R
       Q
       Y
       P
       G
       O1
       F
       T1
       D
       A
       R1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Bool) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Bool) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Bool) (S1 Int) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Bool) (D2 Bool) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Bool) (S2 Int) (T2 Bool) (U2 Bool) (V2 Bool) (W2 Bool) (X2 Int) (Y2 Bool) (Z2 Int) (A3 Bool) (B3 Int) (C3 Int) (D3 Bool) (E3 Int) (F3 Bool) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Bool) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Bool) ) 
    (=>
      (and
        (state O
       B1
       N
       C1
       M1
       F1
       M3
       M
       H
       J
       L
       W
       K
       U
       I
       Z
       L1
       Q3
       C
       J1
       L3
       E
       E1
       N1
       O3
       K1
       B
       I1
       H1
       D1
       G1
       A1
       V
       T
       X
       S
       R3
       R
       Q
       Y
       P
       G
       K3
       F
       P3
       D
       A
       N3)
        (let ((a!1 (or (not F3) (= (+ X2 (* (- 1) Q1) (* (- 1) P1) (* (- 1) O1)) 0)))
      (a!2 (= (or (not F3) (not (<= 2 Q1))) U2))
      (a!3 (or (not A1) (= (+ B1 (* (- 1) V) (* (- 1) T) (* (- 1) X)) 0)))
      (a!4 (= (or (not A1) (not (<= 2 V))) Q))
      (a!5 (= (and (or (not D3) (not A3))
                   (or (not D3) (not T1))
                   (or (not A3) (not T1)))
              Q2))
      (a!6 (= (and (or (not F1) (not M1))
                   (or (not F1) (not M3))
                   (or (not M1) (not M3)))
              M))
      (a!7 (= R1 (= (+ V T X (* (- 1) Q1) (* (- 1) P1) (* (- 1) O1)) 0)))
      (a!8 (or (not A2) (= (+ W Z (* (- 1) Z1)) 1)))
      (a!9 (or (not A2) (= (+ U (* (- 1) E2)) (- 1))))
      (a!10 (or (not C2) (= (+ W U Z (* (- 1) B2)) 1)))
      (a!11 (or (not D2) (= (+ W U Z (* (- 1) U1)) 1))))
  (and (= (<= 1 Z) D2)
       (= (<= 1 U) C2)
       (= a!1 W2)
       a!2
       (= (or (not F3) R1) V2)
       (= a!3 S)
       a!4
       (= (or (not A1) R3) R)
       a!5
       a!6
       (= (and W2 V2 U2) T2)
       (= (and Q R S) P)
       a!7
       (= R2 (and C1 Q2 (<= 0 P2)))
       (= Y2 R2)
       (= Y2 F3)
       (= C1 A1)
       (= N C1)
       (= K2 J2)
       (= M2 L2)
       (= O2 N2)
       (= X2 S2)
       (= E3 I2)
       (= E3 H3)
       (= G3 Q1)
       (= G3 O2)
       (= I3 O1)
       (= I3 K2)
       (= J3 P1)
       (= J3 M2)
       (= B1 S2)
       (= Z X)
       (= W V)
       (= U T)
       (= O B1)
       (= L W)
       (= K U)
       (= J I2)
       (= J Y)
       (= I Z)
       (= H J)
       (or (not T1) (= S1 U1))
       (or (not T1) (= W1 V1))
       (or (not T1) (= Y1 X1))
       (or T1 (= Z S1))
       (or T1 (= W Y1))
       (or T1 (= U W1))
       a!8
       a!9
       (or (not A2) (= H2 0))
       (or A2 (= Z Z1))
       (or A2 (= W H2))
       (or A2 (= U E2))
       a!10
       (or (not C2) (= F2 0))
       (or (not C2) (= G2 1))
       (or C2 (= Z B2))
       (or C2 (= W G2))
       (or C2 (= U F2))
       a!11
       (or (not D2) (= V1 0))
       (or (not D2) (= X1 1))
       (or D2 (= Z U1))
       (or D2 (= W X1))
       (or D2 (= U V1))
       (or (not A3) (= Z1 J2))
       (or (not A3) (= L2 E2))
       (or (not A3) (= N2 H2))
       (or A3 (= Z2 J2))
       (or A3 (= B3 L2))
       (or A3 (= C3 N2))
       (or D3 (= W1 B3))
       (or D3 (= Y1 C3))
       (or (not D3) (= B2 Z2))
       (or D3 (= Z2 S1))
       (or (not D3) (= B3 F2))
       (or (not D3) (= C3 G2))
       (or M1 (= L1 Q3))
       (or (not M1) (= L1 C))
       (or M1 (= J1 L3))
       (or (not M1) (= J1 E))
       (or M1 (= E1 O3))
       (or (not M1) (= E1 N1))
       (or F1 (= L1 K1))
       (or (not F1) (= K1 B))
       (or F1 (= J1 I1))
       (or (not F1) (= I1 H1))
       (or F1 (= E1 D1))
       (or (not F1) (= D1 G1))
       (= (<= 1 Z) A2)))
      )
      (state S2
       X2
       R2
       Y2
       D3
       A3
       T1
       Q2
       I2
       E3
       O2
       G3
       M2
       J3
       K2
       I3
       C3
       Y1
       G2
       B3
       W1
       F2
       Z2
       B2
       S1
       N2
       H2
       L2
       E2
       J2
       Z1
       F3
       Q1
       P1
       O1
       W2
       R1
       V2
       U2
       H3
       T2
       P2
       V1
       D2
       X1
       C2
       A2
       U1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Bool) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Bool) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Bool) ) 
    (=>
      (and
        (state O
       B1
       N
       C1
       M1
       F1
       Q1
       M
       H
       J
       L
       W
       K
       U
       I
       Z
       L1
       U1
       C
       J1
       P1
       E
       E1
       N1
       S1
       K1
       B
       I1
       H1
       D1
       G1
       A1
       V
       T
       X
       S
       V1
       R
       Q
       Y
       P
       G
       O1
       F
       T1
       D
       A
       R1)
        (not P)
      )
      false
    )
  )
)

(check-sat)
(exit)
