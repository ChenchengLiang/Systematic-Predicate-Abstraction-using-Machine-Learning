(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Bool Int Int Bool Int Bool Bool Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Bool) (O1 Int) (P1 Bool) (Q1 Bool) (R1 Int) ) 
    (=>
      (and
        (let ((a!1 (or (not F1) (= (+ B (* (- 1) H1) (* (- 1) I1) (* (- 1) J1)) 0)))
      (a!2 (= (and (not F) (not G) (or (not E) (not F)) (or (not E) (not G))) H)))
  (and (= O P)
       (= N I1)
       (= M 0)
       (= M N)
       (= L H1)
       (= K 0)
       (= K L)
       (= J G1)
       (= J O)
       (= I L1)
       (= I J)
       (= A L1)
       (= A B)
       (= a!1 K1)
       a!2
       (= D F1)
       (= C (and H (<= 0 L1)))
       (= C D)
       (or (not Q1) (= A1 0))
       (or (not P1) (= V 0))
       (or (not P1) (= S 1))
       (or (not N1) (= O1 1))
       (or (not N1) (= M1 0))
       (or (not G) (= D1 E1))
       (or (not G) (= B1 C1))
       (or (not G) (= Z A1))
       (or G (= W D1))
       (or G (= T B1))
       (or G (= Q Z))
       (or F (= W Y))
       (or (not F) (= W X))
       (or (not F) (= T V))
       (or F (= T U))
       (or (not F) (= Q S))
       (or F (= Q R))
       (or (not E) (= Y R1))
       (or (not E) (= U M1))
       (or (not E) (= R O1))
       (= P J1)))
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
       R1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Bool) (O1 Int) (P1 Bool) (Q1 Bool) (R1 Int) (S1 Int) (T1 Int) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Bool) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Bool) (D3 Int) (E3 Bool) (F3 Int) (G3 Int) (H3 Bool) (I3 Bool) (J3 Int) ) 
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
       R1)
        (let ((a!1 (or (not F1) (= (+ B (* (- 1) H1) (* (- 1) I1) (* (- 1) J1)) 0)))
      (a!2 (or (not X2) (= (+ S1 (* (- 1) Z2) (* (- 1) A3) (* (- 1) B3)) 0)))
      (a!3 (= (and (not F) (not G) (or (not E) (not F)) (or (not E) (not G))) H))
      (a!4 (= (and (not W1)
                   (not Y1)
                   (or (not W1) (not X1))
                   (or (not X1) (not Y1)))
              Z1))
      (a!5 (= V1 (or D (and Z1 (<= 0 D3)))))
      (a!6 (or (not E3) (= (+ L N P (* (- 1) J3)) 1)))
      (a!7 (or (not I3) (= (+ L P (* (- 1) V2)) 1)))
      (a!8 (or (not I3) (= (+ N (* (- 1) U2)) (- 1))))
      (a!9 (or (not H3) (= (+ L N P (* (- 1) O2)) 1))))
  (and (= O P)
       (= N I1)
       (= M N)
       (= L H1)
       (= K L)
       (= J G1)
       (= J B2)
       (= I J)
       (= B T1)
       (= A B)
       (= H2 W2)
       (= G2 B3)
       (= G2 H2)
       (= F2 T2)
       (= E2 A3)
       (= E2 F2)
       (= D2 R2)
       (= C2 Z2)
       (= C2 D2)
       (= A2 Y2)
       (= A2 B2)
       (= S1 T1)
       (= (<= 1 P) E3)
       (= (<= 1 P) I3)
       (= (<= 1 N) H3)
       (= a!1 K1)
       (= a!2 C3)
       a!3
       a!4
       (= D F1)
       (= C D)
       a!5
       (= U1 X2)
       (= U1 V1)
       a!6
       (or (not E3) (= F3 0))
       (or E3 (= P J3))
       (or E3 (= N F3))
       (or E3 (= L G3))
       (or (not E3) (= G3 1))
       (or (not G) (= D1 E1))
       (or (not G) (= B1 C1))
       (or (not G) (= Z A1))
       (or G (= W D1))
       (or G (= T B1))
       (or G (= Q Z))
       (or F (= W Y))
       (or (not F) (= W X))
       (or (not F) (= T V))
       (or F (= T U))
       (or (not F) (= Q S))
       (or F (= Q R))
       a!7
       a!8
       (or I3 (= P V2))
       (or I3 (= N U2))
       (or I3 (= L S2))
       (or (not I3) (= S2 0))
       a!9
       (or H3 (= P O2))
       (or H3 (= N N2))
       (or H3 (= L K2))
       (or (not H3) (= N2 0))
       (or (not H3) (= K2 1))
       (or (not Y1) (= V2 W2))
       (or (not Y1) (= T2 U2))
       (or (not Y1) (= R2 S2))
       (or Y1 (= P2 W2))
       (or Y1 (= M2 T2))
       (or Y1 (= J2 R2))
       (or X1 (= P Q2))
       (or X1 (= N L2))
       (or X1 (= L I2))
       (or (not X1) (= Q2 J3))
       (or (not X1) (= L2 F3))
       (or (not X1) (= I2 G3))
       (or W1 (= P2 Q2))
       (or (not W1) (= O2 P2))
       (or (not W1) (= M2 N2))
       (or W1 (= L2 M2))
       (or (not W1) (= J2 K2))
       (or W1 (= I2 J2))
       (= P J1)))
      )
      (state T1
       S1
       V1
       U1
       X1
       W1
       Y1
       Z1
       B2
       A2
       D2
       C2
       F2
       E2
       H2
       G2
       J2
       I2
       K2
       M2
       L2
       N2
       P2
       O2
       Q2
       R2
       S2
       T2
       U2
       W2
       V2
       X2
       Y2
       Z2
       A3
       B3
       C3
       D3
       F3
       E3
       G3
       H3
       I3
       J3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Int) (M1 Int) (N1 Bool) (O1 Int) (P1 Bool) (Q1 Bool) (R1 Int) ) 
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
       R1)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
