(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool Bool Int Int Bool Int Bool Bool Int ) Bool)

(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) ) 
    (=>
      (and
        (and (= (or Q1 (not P)) O)
     (= N (and M (<= 0 G)))
     (= N U)
     (= U P)
     (= H G)
     (= H J)
     (= V Z)
     (= I R)
     (= J X)
     (= J I)
     (= K 0)
     (= K T)
     (= L 0)
     (= L V)
     (= R Q)
     (= T S)
     (or (not H1) (= Y I1))
     (or H1 (= Y N1))
     (or (not H1) (= E1 E))
     (or H1 (= E1 K1))
     (or (not H1) (= G1 C))
     (or H1 (= G1 P1))
     (or (not A1) (= D1 C1))
     (or (not A1) (= W B1))
     (or (not A1) (= F1 B))
     (or A1 (= Y W))
     (or A1 (= E1 D1))
     (or A1 (= G1 F1))
     (or (not F) (= O1 1))
     (or (not F) (= J1 0))
     (or (not D) (= E 0))
     (or (not D) (= C 1))
     (or (not A) (= B 0))
     (or (not L1) (= P1 O1))
     (or (not L1) (= N1 M1))
     (or (not L1) (= K1 J1))
     (= Q1 true)
     (= (or (not L1) (not A1) (not H1)) M))
      )
      (state N
       U
       H1
       A1
       L1
       M
       H
       J
       L
       V
       K
       T
       I
       R
       G1
       P1
       C
       E1
       K1
       E
       Y
       I1
       N1
       F1
       B
       D1
       C1
       W
       B1
       P
       X
       Z
       S
       Q
       Q1
       O
       G
       J1
       F
       O1
       D
       A
       M1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Int) (V1 Bool) (W1 Int) (X1 Bool) (Y1 Bool) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Bool) (V2 Int) (W2 Bool) (X2 Int) (Y2 Int) (Z2 Bool) (A3 Int) (B3 Int) (C3 Bool) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Bool) ) 
    (=>
      (and
        (state N
       U
       H1
       A1
       C3
       M
       H
       J
       L
       V
       K
       T
       I
       R
       G1
       G3
       C
       E1
       B3
       E
       Y
       I1
       E3
       F1
       B
       D1
       C1
       W
       B1
       P
       X
       Z
       S
       Q
       H3
       O
       G
       A3
       F
       F3
       D
       A
       D3)
        (let ((a!1 (= T1 (= (+ Z S Q (* (- 1) S1) (* (- 1) R1) (* (- 1) Q1)) 0)))
      (a!2 (or (not V1) (= (+ V R (* (- 1) U1)) 1)))
      (a!3 (or (not V1) (= (+ T (* (- 1) Z1)) (- 1))))
      (a!4 (or (not X1) (= (+ V T R (* (- 1) W1)) 1)))
      (a!5 (or (not Y1) (= (+ V T R (* (- 1) L1)) 1))))
  (and (= (<= 1 R) V1)
       (= (<= 1 R) Y1)
       (= (or (not Z2) (not W2) (not K1)) L2)
       (= (or (not A1) (not H1) (not C3)) M)
       (= (or (not O2) T1) N2)
       (= (or (not P) H3) O)
       a!1
       (= M2 (and U L2 (<= 0 K2)))
       (= U2 M2)
       (= U2 O2)
       (= U P)
       (= N U)
       (= F2 E2)
       (= H2 G2)
       (= J2 I2)
       (= P2 Q1)
       (= P2 F2)
       (= Q2 R1)
       (= Q2 H2)
       (= R2 S1)
       (= R2 J2)
       (= T2 D2)
       (= T2 S2)
       (= V Z)
       (= T S)
       (= R Q)
       (= L V)
       (= K T)
       (= J D2)
       (= J X)
       (= I R)
       (= H J)
       (or (not K1) (= J1 L1))
       (or (not K1) (= N1 M1))
       (or (not K1) (= P1 O1))
       (or K1 (= V P1))
       (or K1 (= T N1))
       (or K1 (= R J1))
       a!2
       a!3
       (or (not V1) (= C2 0))
       (or V1 (= V C2))
       (or V1 (= T Z1))
       (or V1 (= R U1))
       a!4
       (or (not X1) (= A2 0))
       (or (not X1) (= B2 1))
       (or X1 (= V B2))
       (or X1 (= T A2))
       (or X1 (= R W1))
       a!5
       (or (not Y1) (= M1 0))
       (or (not Y1) (= O1 1))
       (or Y1 (= V O1))
       (or Y1 (= T M1))
       (or Y1 (= R L1))
       (or (not W2) (= U1 E2))
       (or (not W2) (= G2 Z1))
       (or (not W2) (= I2 C2))
       (or W2 (= V2 E2))
       (or W2 (= X2 G2))
       (or W2 (= Y2 I2))
       (or Z2 (= N1 X2))
       (or Z2 (= P1 Y2))
       (or (not Z2) (= W1 V2))
       (or Z2 (= V2 J1))
       (or (not Z2) (= X2 A2))
       (or (not Z2) (= Y2 B2))
       (or H1 (= G1 G3))
       (or (not H1) (= G1 C))
       (or H1 (= E1 B3))
       (or (not H1) (= E1 E))
       (or H1 (= Y E3))
       (or (not H1) (= Y I1))
       (or A1 (= G1 F1))
       (or (not A1) (= F1 B))
       (or A1 (= E1 D1))
       (or (not A1) (= D1 C1))
       (or A1 (= Y W))
       (or (not A1) (= W B1))
       (= (<= 1 T) X1)))
      )
      (state M2
       U2
       Z2
       W2
       K1
       L2
       D2
       T2
       J2
       R2
       H2
       Q2
       F2
       P2
       Y2
       P1
       B2
       X2
       N1
       A2
       V2
       W1
       J1
       I2
       C2
       G2
       Z1
       E2
       U1
       O2
       S2
       S1
       R1
       Q1
       T1
       N2
       K2
       M1
       Y1
       O1
       X1
       V1
       L1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Bool) ) 
    (=>
      (and
        (state N
       U
       H1
       A1
       L1
       M
       H
       J
       L
       V
       K
       T
       I
       R
       G1
       P1
       C
       E1
       K1
       E
       Y
       I1
       N1
       F1
       B
       D1
       C1
       W
       B1
       P
       X
       Z
       S
       Q
       Q1
       O
       G
       J1
       F
       O1
       D
       A
       M1)
        (not O)
      )
      false
    )
  )
)

(check-sat)
(exit)
