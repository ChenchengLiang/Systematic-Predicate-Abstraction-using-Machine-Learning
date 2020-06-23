(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool Int Int Bool Int Bool Bool Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Bool) (J1 Int) (K1 Int) (L1 Int) (M1 Bool) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (and (or (not M1) (not A1))
                   (or (not M1) (not I1))
                   (or (not A1) (not I1)))
              L))
      (a!2 (or (not P) (= (+ T (* (- 1) S) (* (- 1) R) (* (- 1) Q)) 0))))
  (and a!1
       (= V P)
       (= M (and L (<= 0 F)))
       (= M V)
       (= U Q)
       (= G F)
       (= G I)
       (= H U)
       (= I H)
       (= I Z)
       (= J 0)
       (= J B1)
       (= K 0)
       (= K X)
       (= N T)
       (= N F)
       (= X S)
       (= B1 R)
       (or (not I1) (= Y J1))
       (or I1 (= Y O1))
       (or I1 (= F1 L1))
       (or (not I1) (= F1 D))
       (or I1 (= H1 Q1))
       (or (not I1) (= H1 B))
       (or (not A1) (= G1 A))
       (or (not A1) (= E1 D1))
       (or (not A1) (= W C1))
       (or A1 (= Y W))
       (or A1 (= F1 E1))
       (or A1 (= H1 G1))
       (or (not E) (= P1 1))
       (or (not E) (= K1 0))
       (or (not C) (= B 1))
       (or (not C) (= D 0))
       (or (not R1) (= A 0))
       (or (not M1) (= Q1 P1))
       (or (not M1) (= O1 N1))
       (or (not M1) (= L1 K1))
       (= a!2 O)))
      )
      (state N
       T
       M
       V
       M1
       I1
       A1
       L
       G
       I
       K
       X
       J
       B1
       H
       U
       H1
       Q1
       B
       F1
       L1
       D
       Y
       J1
       O1
       G1
       A
       E1
       D1
       W
       C1
       P
       Z
       S
       R
       Q
       O
       F
       K1
       E
       P1
       C
       R1
       N1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Bool) (J1 Int) (K1 Int) (L1 Bool) (M1 Int) (N1 Bool) (O1 Int) (P1 Bool) (Q1 Int) (R1 Bool) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Bool) (J2 Bool) (K2 Int) (L2 Bool) (M2 Bool) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Bool) (X2 Int) (Y2 Bool) (Z2 Int) (A3 Int) (B3 Bool) (C3 Int) (D3 Int) (E3 Bool) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Bool) ) 
    (=>
      (and
        (state N
       T
       M
       V
       E3
       I1
       A1
       L
       G
       I
       K
       X
       J
       B1
       H
       U
       H1
       I3
       B
       F1
       D3
       D
       Y
       J1
       G3
       G1
       A
       E1
       D1
       W
       C1
       P
       Z
       S
       R
       Q
       O
       F
       C3
       E
       H3
       C
       J3
       F3)
        (let ((a!1 (or (not M2) (= (+ Q2 (* (- 1) P2) (* (- 1) O2) (* (- 1) N2)) 0)))
      (a!2 (or (not P) (= (+ T (* (- 1) S) (* (- 1) R) (* (- 1) Q)) 0)))
      (a!3 (= (and (or (not B3) (not Y2))
                   (or (not B3) (not R1))
                   (or (not Y2) (not R1)))
              I2))
      (a!4 (= (and (or (not A1) (not I1))
                   (or (not A1) (not E3))
                   (or (not I1) (not E3)))
              L))
      (a!5 (= J2 (or V (and I2 (<= 0 H2)))))
      (a!6 (or (not L1) (= (+ X U (* (- 1) K1)) 0)))
      (a!7 (or (not L1) (= (+ B1 (* (- 1) W1)) (- 1))))
      (a!8 (or (not N1) (= (+ X B1 U (* (- 1) M1)) 1)))
      (a!9 (or (not P1) (= (+ X B1 U (* (- 1) O1)) 1))))
  (and (= (<= 1 U) L1)
       (= (<= 1 U) P1)
       (= a!1 L2)
       (= a!2 O)
       a!3
       a!4
       a!5
       (= W2 J2)
       (= W2 M2)
       (= V P)
       (= M V)
       (= C2 B2)
       (= E2 D2)
       (= G2 F2)
       (= Q2 K2)
       (= R2 C2)
       (= R2 N2)
       (= S2 E2)
       (= S2 O2)
       (= T2 G2)
       (= T2 P2)
       (= V2 A2)
       (= V2 U2)
       (= B1 R)
       (= X S)
       (= U Q)
       (= T K2)
       (= N T)
       (= K X)
       (= J B1)
       (= I A2)
       (= I Z)
       (= H U)
       (= G I)
       a!6
       a!7
       (or (not L1) (= Z1 0))
       (or L1 (= B1 W1))
       (or L1 (= X Z1))
       (or L1 (= U K1))
       a!8
       (or (not N1) (= X1 0))
       (or (not N1) (= Y1 1))
       (or N1 (= B1 X1))
       (or N1 (= X Y1))
       (or N1 (= U M1))
       a!9
       (or (not P1) (= S1 0))
       (or (not P1) (= U1 1))
       (or P1 (= B1 S1))
       (or P1 (= X U1))
       (or P1 (= U O1))
       (or (not R1) (= Q1 O1))
       (or (not R1) (= T1 S1))
       (or (not R1) (= V1 U1))
       (or R1 (= B1 T1))
       (or R1 (= X V1))
       (or R1 (= U Q1))
       (or (not Y2) (= K1 B2))
       (or (not Y2) (= D2 W1))
       (or (not Y2) (= F2 Z1))
       (or Y2 (= X2 B2))
       (or Y2 (= Z2 D2))
       (or Y2 (= A3 F2))
       (or (not B3) (= M1 X2))
       (or B3 (= T1 Z2))
       (or B3 (= V1 A3))
       (or B3 (= X2 Q1))
       (or (not B3) (= Z2 X1))
       (or (not B3) (= A3 Y1))
       (or I1 (= H1 I3))
       (or (not I1) (= H1 B))
       (or I1 (= F1 D3))
       (or (not I1) (= F1 D))
       (or I1 (= Y G3))
       (or (not I1) (= Y J1))
       (or A1 (= H1 G1))
       (or (not A1) (= G1 A))
       (or A1 (= F1 E1))
       (or (not A1) (= E1 D1))
       (or A1 (= Y W))
       (or (not A1) (= W C1))
       (= (<= 1 B1) N1)))
      )
      (state K2
       Q2
       J2
       W2
       R1
       B3
       Y2
       I2
       A2
       V2
       G2
       T2
       E2
       S2
       C2
       R2
       A3
       V1
       Y1
       Z2
       T1
       X1
       X2
       M1
       Q1
       F2
       Z1
       D2
       W1
       B2
       K1
       M2
       U2
       P2
       O2
       N2
       L2
       H2
       S1
       P1
       U1
       N1
       L1
       O1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Bool) (J1 Int) (K1 Int) (L1 Int) (M1 Bool) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Bool) ) 
    (=>
      (and
        (state N
       T
       M
       V
       M1
       I1
       A1
       L
       G
       I
       K
       X
       J
       B1
       H
       U
       H1
       Q1
       B
       F1
       L1
       D
       Y
       J1
       O1
       G1
       A
       E1
       D1
       W
       C1
       P
       Z
       S
       R
       Q
       O
       F
       K1
       E
       P1
       C
       R1
       N1)
        (not O)
      )
      false
    )
  )
)

(check-sat)
(exit)
