(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Int Int Int Bool Bool Bool Bool Int Int ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Int) (I1 Int) ) 
    (=>
      (and
        (let ((a!1 (or (not W)
               (and (<= 0 B1) (<= 0 C1) (not (<= 4 B1)) (not (<= 11 C1)))))
      (a!2 (= A (and E (not (<= 32767 C1))))))
  (and (= (<= 3 Q) V)
       (= (<= 4 O) U)
       (= a!1 G1)
       (= (or (not C) (not D)) E)
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
       a!2
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
       (= J true)
       (not H)
       (not F)
       (= (= S 10) T)))
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
       I1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Int) (I1 Int) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Int) (K2 Int) (L2 Int) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Int) (R2 Int) ) 
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
       I1)
        (let ((a!1 (or (not W)
               (and (<= 0 B1) (<= 0 C1) (not (<= 4 B1)) (not (<= 11 C1)))))
      (a!2 (or (not F2)
               (and (<= 0 K2) (<= 0 L2) (not (<= 4 K2)) (not (<= 11 L2)))))
      (a!3 (= K1 (and N1 B (not (<= 32767 L2)))))
      (a!4 (or (not O1) (not S1) (= (+ S (* (- 1) R2)) (- 1))))
      (a!5 (or (not Q1) (= (+ O (* (- 1) Q2)) (- 1)))))
  (and (= (= A2 10) C2)
       (= (<= 3 Q) V)
       (= (<= 3 Y1) E2)
       (= (<= 4 O) U)
       (= (<= 4 W1) D2)
       (= a!1 G1)
       (= (or (not C) (not D)) E)
       (= a!2 P2)
       (= (or (not L1) (not M1)) N1)
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
       (= E2 O2)
       (= D2 N2)
       (= C2 M2)
       (= T1 (and K (not T) (not U) (not V)))
       (= S1 I2)
       (= S1 T1)
       (= Q1 H2)
       (= Q1 R1)
       (= P1 (and L1 (not M1)))
       (= O1 G2)
       (= O1 P1)
       (= M1 R1)
       a!3
       (= J1 F2)
       (= J1 K1)
       (= S C1)
       (= R S)
       (= Q B1)
       (= P Q)
       (= O A1)
       (= N O)
       (= B2 R2)
       (= A2 L2)
       (= A2 B2)
       (= Y1 K2)
       (= Y1 Z1)
       (= X1 Q2)
       (= W1 J2)
       (= W1 X1)
       (= U1 Z1)
       (or I (not K) (= L M))
       (or Q1 (not S1) (= U1 V1))
       a!4
       (or (not O1) (not S1) (= Q V1))
       (or (and (not I) K) (= L 0))
       (or (and (not Q1) S1) (= U1 0))
       (or (and O1 S1) (= S R2))
       (or (and O1 S1) (= Q V1))
       a!5
       (or Q1 (= O Q2))
       (= (= S 10) T)))
      )
      (state K1
       J1
       M1
       L1
       N1
       P1
       O1
       R1
       Q1
       T1
       S1
       U1
       V1
       X1
       W1
       Z1
       Y1
       B2
       A2
       C2
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
       Q2)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Int) (I1 Int) ) 
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
       I1)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
