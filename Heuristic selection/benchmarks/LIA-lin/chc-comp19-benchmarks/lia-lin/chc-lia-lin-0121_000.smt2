(set-logic HORN)

(declare-fun |state| ( Int Int Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Bool Bool Bool Bool Int Bool Int Int Bool Int Bool Bool Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Int) (O1 Bool) (P1 Int) (Q1 Int) (R1 Bool) (S1 Int) (T1 Bool) (U1 Bool) (V1 Int) ) 
    (=>
      (and
        (let ((a!1 (or (not F1) (= (+ B (* (- 1) G1) (* (- 1) H1) (* (- 1) I1)) 0)))
      (a!2 (= (or (not F1) (not (<= 2 G1))) M1))
      (a!3 (= (and (or (not E) (not F))
                   (or (not E) (not G))
                   (or (not F) (not G)))
              H)))
  (and (= O P)
       (= N H1)
       (= M 0)
       (= M N)
       (= L G1)
       (= K 0)
       (= K L)
       (= J N1)
       (= J O)
       (= I P1)
       (= I J)
       (= A P1)
       (= A B)
       (= a!1 J1)
       a!2
       (= (or (not F1) K1) L1)
       a!3
       (= (and J1 L1 M1) O1)
       (= D F1)
       (= C (and H (<= 0 P1)))
       (= C D)
       (or (not U1) (= A1 0))
       (or (not T1) (= V 0))
       (or (not T1) (= S 1))
       (or (not R1) (= S1 1))
       (or (not R1) (= Q1 0))
       (or (not G) (= Y V1))
       (or (not G) (= U Q1))
       (or (not G) (= R S1))
       (or (not F) (= D1 E1))
       (or (not F) (= B1 C1))
       (or (not F) (= Z A1))
       (or F (= W D1))
       (or F (= T B1))
       (or F (= Q Z))
       (or E (= W Y))
       (or (not E) (= W X))
       (or (not E) (= T V))
       (or E (= T U))
       (or (not E) (= Q S))
       (or E (= Q R))
       (= K1 true)
       (= P I1)))
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
       R1
       S1
       T1
       U1
       V1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Int) (O1 Bool) (P1 Int) (Q1 Int) (R1 Bool) (S1 Int) (T1 Bool) (U1 Bool) (V1 Int) (W1 Int) (X1 Int) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Bool) (C3 Int) (D3 Int) (E3 Int) (F3 Bool) (G3 Bool) (H3 Bool) (I3 Bool) (J3 Int) (K3 Bool) (L3 Int) (M3 Bool) (N3 Int) (O3 Int) (P3 Bool) (Q3 Bool) (R3 Int) ) 
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
       R1
       S1
       T1
       U1
       V1)
        (let ((a!1 (or (not F1) (= (+ B (* (- 1) G1) (* (- 1) H1) (* (- 1) I1)) 0)))
      (a!2 (= (or (not F1) (not (<= 2 G1))) M1))
      (a!3 (or (not B3) (= (+ W1 (* (- 1) C3) (* (- 1) D3) (* (- 1) E3)) 0)))
      (a!4 (= (or (not B3) (not (<= 2 C3))) I3))
      (a!5 (= (and (or (not E) (not F))
                   (or (not E) (not G))
                   (or (not F) (not G)))
              H))
      (a!6 (= (and (or (not A2) (not B2))
                   (or (not A2) (not C2))
                   (or (not B2) (not C2)))
              D2))
      (a!7 (= G3 (= (+ G1 H1 I1 (* (- 1) C3) (* (- 1) D3) (* (- 1) E3)) 0)))
      (a!8 (or (not M3) (= (+ L N P (* (- 1) R3)) 1)))
      (a!9 (or (not Q3) (= (+ L (* (- 1) P) Z2) (- 1))))
      (a!10 (or (not Q3) (= (+ N (* (- 1) Y2)) (- 1))))
      (a!11 (or (not P3) (= (+ L N P (* (- 1) S2)) 0))))
  (and (= O P)
       (= N H1)
       (= M N)
       (= L G1)
       (= K L)
       (= J N1)
       (= J F2)
       (= I J)
       (= B X1)
       (= A B)
       (= L2 A3)
       (= K2 E3)
       (= K2 L2)
       (= J2 X2)
       (= I2 D3)
       (= I2 J2)
       (= H2 V2)
       (= G2 C3)
       (= G2 H2)
       (= E2 J3)
       (= E2 F2)
       (= W1 X1)
       (= (<= 1 P) M3)
       (= (<= 1 P) Q3)
       (= (<= 1 N) P3)
       (= a!1 J1)
       a!2
       (= (or (not F1) K1) L1)
       (= a!3 F3)
       a!4
       (= (or (not B3) G3) H3)
       a!5
       a!6
       (= (and J1 L1 M1) O1)
       (= (and F3 H3 I3) K3)
       (= D F1)
       (= C D)
       a!7
       (= Z1 (and D2 D (<= 0 L3)))
       (= Y1 B3)
       (= Y1 Z1)
       a!8
       (or (not M3) (= N3 0))
       (or M3 (= P R3))
       (or M3 (= N N3))
       (or M3 (= L O3))
       (or (not M3) (= O3 1))
       (or (not F) (= D1 E1))
       (or (not F) (= B1 C1))
       (or (not F) (= Z A1))
       (or F (= W D1))
       (or F (= T B1))
       (or F (= Q Z))
       (or E (= W Y))
       (or (not E) (= W X))
       (or (not E) (= T V))
       (or E (= T U))
       (or (not E) (= Q S))
       (or E (= Q R))
       a!9
       a!10
       (or Q3 (= P Z2))
       (or Q3 (= N Y2))
       (or Q3 (= L W2))
       (or (not Q3) (= W2 0))
       a!11
       (or P3 (= P S2))
       (or P3 (= N R2))
       (or P3 (= L O2))
       (or (not P3) (= R2 0))
       (or (not P3) (= O2 1))
       (or C2 (= P U2))
       (or C2 (= N P2))
       (or C2 (= L M2))
       (or (not C2) (= U2 R3))
       (or (not C2) (= P2 N3))
       (or (not C2) (= M2 O3))
       (or B2 (= T2 U2))
       (or (not B2) (= S2 T2))
       (or (not B2) (= Q2 R2))
       (or B2 (= P2 Q2))
       (or (not B2) (= N2 O2))
       (or B2 (= M2 N2))
       (or (not A2) (= Z2 A3))
       (or (not A2) (= X2 Y2))
       (or (not A2) (= V2 W2))
       (or A2 (= T2 A3))
       (or A2 (= Q2 X2))
       (or A2 (= N2 V2))
       (= P I1)))
      )
      (state X1
       W1
       Z1
       Y1
       B2
       A2
       C2
       D2
       F2
       E2
       H2
       G2
       J2
       I2
       L2
       K2
       N2
       M2
       O2
       Q2
       P2
       R2
       T2
       S2
       U2
       V2
       W2
       X2
       Y2
       A3
       Z2
       B3
       C3
       D3
       E3
       F3
       G3
       H3
       I3
       J3
       K3
       L3
       N3
       M3
       O3
       P3
       Q3
       R3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Int) (O1 Bool) (P1 Int) (Q1 Int) (R1 Bool) (S1 Int) (T1 Bool) (U1 Bool) (V1 Int) ) 
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
       R1
       S1
       T1
       U1
       V1)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
