(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Int Int Int Bool Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Int) (J1 Int) ) 
    (=>
      (and
        (and (= (<= 3 Q) V)
     (= (<= 4 O) U)
     (= (or (not C) (not D)) E)
     (= G1 H1)
     (= V F1)
     (= U E1)
     (= T D1)
     (= K Z)
     (= J K)
     (= I Y)
     (= H I)
     (= G X)
     (= F G)
     (= B W)
     (= A E)
     (= A B)
     (= S C1)
     (= R 0)
     (= R S)
     (= Q B1)
     (= P 0)
     (= P Q)
     (= O A1)
     (= N 0)
     (= N O)
     (or I (not K) (= L M))
     (or (and (not I) K) (= L 0))
     (= G1 true)
     (= J true)
     (not H)
     (not F)
     (= (= S 10) T))
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
       J1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Int) (J1 Int) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Int) (L2 Int) (M2 Int) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Bool) (R2 Bool) (S2 Int) (T2 Int) ) 
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
       J1)
        (let ((a!1 (or (not P1) (not T1) (= (+ S (* (- 1) T2)) (- 1))))
      (a!2 (or (not P1) (not T1) (= (+ Q (* (- 1) W1)) 1)))
      (a!3 (or (not R1) (= (+ O (* (- 1) S2)) (- 2)))))
  (and (= (= B2 10) D2)
       (= (<= 3 Q) V)
       (= (<= 3 Z1) F2)
       (= (<= 4 O) U)
       (= (<= 4 X1) E2)
       (= (or (not C) (not D)) E)
       (= (or (not M1) (not N1)) O1)
       (= G1 H1)
       (= V F1)
       (= U E1)
       (= T D1)
       (= K Z)
       (= J K)
       (= I Y)
       (= H I)
       (= G X)
       (= F G)
       (= B W)
       (= A B)
       (= R2 (not D1))
       (= Q2 R2)
       (= F2 P2)
       (= E2 O2)
       (= D2 N2)
       (= U1 (and K (not T) (not U) (not V)))
       (= T1 J2)
       (= T1 U1)
       (= R1 I2)
       (= R1 S1)
       (= Q1 (and M1 (not N1)))
       (= P1 H2)
       (= P1 Q1)
       (= N1 S1)
       (= L1 (and O1 B))
       (= K1 G2)
       (= K1 L1)
       (= S C1)
       (= R S)
       (= Q B1)
       (= P Q)
       (= O A1)
       (= N O)
       (= C2 T2)
       (= B2 M2)
       (= B2 C2)
       (= Z1 L2)
       (= Z1 A2)
       (= Y1 S2)
       (= X1 K2)
       (= X1 Y1)
       (= V1 A2)
       (or I (not K) (= L M))
       (or R1 (not T1) (= V1 W1))
       a!1
       a!2
       (or (and (not I) K) (= L 0))
       (or (and (not R1) T1) (= V1 0))
       (or (and P1 T1) (= S T2))
       (or (and P1 T1) (= Q W1))
       a!3
       (or R1 (= O S2))
       (= (= S 10) T)))
      )
      (state L1
       K1
       N1
       M1
       O1
       Q1
       P1
       S1
       R1
       U1
       T1
       V1
       W1
       Y1
       X1
       A2
       Z1
       C2
       B2
       D2
       E2
       F2
       G2
       H2
       I2
       J2
       K2
       L2
       M2
       N2
       O2
       P2
       R2
       Q2
       T2
       S2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Int) (J1 Int) ) 
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
       J1)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
