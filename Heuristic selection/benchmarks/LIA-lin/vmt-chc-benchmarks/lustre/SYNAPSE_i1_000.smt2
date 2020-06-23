(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool Int Int Bool Int Bool Bool Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Bool) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (and (or (not K1) (not Y))
                   (or (not K1) (not G1))
                   (or (not Y) (not G1)))
              L))
      (a!2 (= (or (not O) (not (<= 1 P)) (not (<= 2 Q))) N)))
  (and a!1
       (= V O)
       (= M (and L (<= 0 F)))
       (= M V)
       (= T S)
       (= R Q)
       (= G F)
       (= G I)
       (= H R)
       (= I H)
       (= I Z)
       (= J 0)
       (= J T)
       (= K 0)
       (= K U)
       (= U P)
       (or (not G1) (= W H1))
       (or G1 (= W M1))
       (or G1 (= D1 J1))
       (or (not G1) (= D1 D))
       (or G1 (= F1 O1))
       (or (not G1) (= F1 B))
       (or (not Y) (= E1 A))
       (or (not Y) (= C1 B1))
       (or Y (= W X))
       (or (not Y) (= X A1))
       (or Y (= D1 C1))
       (or Y (= F1 E1))
       (or (not E) (= N1 1))
       (or (not E) (= I1 0))
       (or (not C) (= B 1))
       (or (not C) (= D 0))
       (or (not P1) (= A 0))
       (or (not K1) (= O1 N1))
       (or (not K1) (= M1 L1))
       (or (not K1) (= J1 I1))
       a!2))
      )
      (state M
       V
       K1
       G1
       Y
       L
       G
       I
       K
       U
       J
       T
       H
       R
       F1
       O1
       B
       D1
       J1
       D
       W
       H1
       M1
       E1
       A
       C1
       B1
       X
       A1
       O
       Z
       P
       S
       Q
       N
       F
       I1
       E
       N1
       C
       P1
       L1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Bool) (H1 Int) (I1 Int) (J1 Bool) (K1 Int) (L1 Bool) (M1 Int) (N1 Bool) (O1 Int) (P1 Bool) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Bool) (T2 Int) (U2 Bool) (V2 Int) (W2 Int) (X2 Bool) (Y2 Int) (Z2 Int) (A3 Bool) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Bool) ) 
    (=>
      (and
        (state M
       V
       A3
       G1
       Y
       L
       G
       I
       K
       U
       J
       T
       H
       R
       F1
       E3
       B
       D1
       Z2
       D
       W
       H1
       C3
       E1
       A
       C1
       B1
       X
       A1
       O
       Z
       P
       S
       Q
       N
       F
       Y2
       E
       D3
       C
       F3
       B3)
        (let ((a!1 (= (or (not J2) (not (<= 1 K2)) (not (<= 2 L2))) I2))
      (a!2 (= (or (not O) (not (<= 1 P)) (not (<= 2 Q))) N))
      (a!3 (= (and (or (not X2) (not U2))
                   (or (not X2) (not P1))
                   (or (not U2) (not P1)))
              G2))
      (a!4 (= (and (or (not Y) (not G1))
                   (or (not Y) (not A3))
                   (or (not G1) (not A3)))
              L))
      (a!5 (or (not J1) (= (+ U R (* (- 1) I1)) 1)))
      (a!6 (or (not J1) (= (+ T (* (- 1) U1)) (- 1))))
      (a!7 (or (not L1) (= (+ U T R (* (- 1) K1)) 1)))
      (a!8 (or (not N1) (= (+ U T R (* (- 1) M1)) 1))))
  (and (= (<= 1 R) J1)
       (= (<= 1 R) N1)
       a!1
       a!2
       a!3
       a!4
       (= H2 (and V G2 (<= 0 F2)))
       (= S2 H2)
       (= S2 J2)
       (= V O)
       (= M V)
       (= A2 Z1)
       (= C2 B2)
       (= E2 D2)
       (= M2 A2)
       (= M2 L2)
       (= O2 C2)
       (= O2 N2)
       (= P2 E2)
       (= P2 K2)
       (= R2 Y1)
       (= R2 Q2)
       (= U P)
       (= T S)
       (= R Q)
       (= K U)
       (= J T)
       (= I Y1)
       (= I Z)
       (= H R)
       (= G I)
       a!5
       a!6
       (or (not J1) (= X1 0))
       (or J1 (= U X1))
       (or J1 (= T U1))
       (or J1 (= R I1))
       a!7
       (or (not L1) (= V1 0))
       (or (not L1) (= W1 1))
       (or L1 (= U W1))
       (or L1 (= T V1))
       (or L1 (= R K1))
       a!8
       (or (not N1) (= Q1 0))
       (or (not N1) (= S1 1))
       (or N1 (= U S1))
       (or N1 (= T Q1))
       (or N1 (= R M1))
       (or (not P1) (= O1 M1))
       (or (not P1) (= R1 Q1))
       (or (not P1) (= T1 S1))
       (or P1 (= U T1))
       (or P1 (= T R1))
       (or P1 (= R O1))
       (or (not U2) (= I1 Z1))
       (or (not U2) (= B2 U1))
       (or (not U2) (= D2 X1))
       (or U2 (= T2 Z1))
       (or U2 (= V2 B2))
       (or U2 (= W2 D2))
       (or (not X2) (= K1 T2))
       (or X2 (= R1 V2))
       (or X2 (= T1 W2))
       (or X2 (= T2 O1))
       (or (not X2) (= V2 V1))
       (or (not X2) (= W2 W1))
       (or G1 (= F1 E3))
       (or (not G1) (= F1 B))
       (or G1 (= D1 Z2))
       (or (not G1) (= D1 D))
       (or G1 (= W C3))
       (or (not G1) (= W H1))
       (or Y (= F1 E1))
       (or (not Y) (= E1 A))
       (or Y (= D1 C1))
       (or (not Y) (= C1 B1))
       (or (not Y) (= X A1))
       (or Y (= W X))
       (= (<= 1 T) L1)))
      )
      (state H2
       S2
       P1
       X2
       U2
       G2
       Y1
       R2
       E2
       P2
       C2
       O2
       A2
       M2
       W2
       T1
       W1
       V2
       R1
       V1
       T2
       K1
       O1
       D2
       X1
       B2
       U1
       Z1
       I1
       J2
       Q2
       K2
       N2
       L2
       I2
       F2
       Q1
       N1
       S1
       L1
       J1
       M1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Bool) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Bool) ) 
    (=>
      (and
        (state M
       V
       K1
       G1
       Y
       L
       G
       I
       K
       U
       J
       T
       H
       R
       F1
       O1
       B
       D1
       J1
       D
       W
       H1
       M1
       E1
       A
       C1
       B1
       X
       A1
       O
       Z
       P
       S
       Q
       N
       F
       I1
       E
       N1
       C
       P1
       L1)
        (not N)
      )
      false
    )
  )
)

(check-sat)
(exit)
