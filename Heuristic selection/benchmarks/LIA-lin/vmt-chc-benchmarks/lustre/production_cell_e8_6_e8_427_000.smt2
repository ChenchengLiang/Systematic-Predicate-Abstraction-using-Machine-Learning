(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) ) 
    (=>
      (and
        (let ((a!1 (and R
                (or (not B) (not A) (not E1))
                (or (and (not B) (not A))
                    (and (not B) (not E1))
                    (and (not A) (not E1))))))
  (and (= (and O M) F)
       (= (and Y X) E1)
       (= C (and B A))
       (= C A1)
       (= E (and D F1))
       (= E V)
       (= G P)
       (= H (and F G1))
       (= H W)
       (= I (not D))
       (= I B1)
       (= J (not F))
       (= J C1)
       (= L K)
       (= L T)
       (= N M)
       (= N U)
       (= V A)
       (= W B)
       (= A1 Z)
       (= B1 X)
       (= C1 Y)
       (or Q (not B) (not A))
       (or (not U) (not T) S)
       (or (and B A) (= Q D1))
       (or (and U T) (= S a!1))
       (or (not D1) (not E1))
       (or (not Z) (= O R))
       (or Z R)
       (= G1 true)
       (= F1 true)
       (= G true)
       (= (and O K) D)))
      )
      (state N U L T J C1 Y I B1 X H W E V C A1 S Z O R E1 B A Q D1 M F G P K D G1 F1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) ) 
    (=>
      (and
        (state N U L T J C1 Y I B1 X H W E V C A1 S Z O R L2 B A Q K2 M F G P K D N2 M2)
        (let ((a!1 (= M1 (and L1 F1 (or (not D) (not M2)))))
      (a!2 (= O1 (and N1 G1 (or (not F) (not N2)))))
      (a!3 (and Z1
                (or (not Y1) (not X1) (not E1))
                (or (and (not Y1) (not X1))
                    (and (not Y1) (not E1))
                    (and (not X1) (not E1)))))
      (a!4 (and R
                (or (not A) (not B) (not L2))
                (or (and (not A) (not B))
                    (and (not A) (not L2))
                    (and (not B) (not L2))))))
  (and (= (and V1 T1) N1)
       (= (and F2 E2) E1)
       (= (and X Y) L2)
       (= (and M O) F)
       (= (and K O) D)
       (= I1 H1)
       (= K1 J1)
       a!1
       a!2
       (= P1 (and D (not L1)))
       (= Q1 (and F (not N1)))
       (= S1 (and (not K) R1))
       (= U1 (and (not M) T1))
       (= W1 H1)
       (= A2 S1)
       (= B2 U1)
       (= C2 M1)
       (= C2 X1)
       (= D2 O1)
       (= D2 Y1)
       (= H2 K1)
       (= H2 G2)
       (= I2 P1)
       (= I2 E2)
       (= J2 Q1)
       (= J2 F2)
       (= C1 Y)
       (= B1 X)
       (= A1 Z)
       (= W B)
       (= V A)
       (= N U)
       (= (not M) F1)
       (= L T)
       (= (not K) G1)
       (= J C1)
       (= I B1)
       (= H W)
       (= G P)
       (= E V)
       (= C A1)
       (or (not Y1) (not X1) J1)
       (or (not B2) (not A2) I1)
       (or S (not T) (not U))
       (or (not A) (not B) Q)
       (or (and Y1 X1) (= J1 D1))
       (or (and B2 A2) (= I1 a!3))
       (or (and T U) (= S a!4))
       (or (and A B) (= Q K2))
       (or E1 (= A1 D1))
       (or (not E1) (not D1))
       (or (not G2) (= Z1 V1))
       (or G2 Z1)
       (or (not Z) (= O R))
       (or R Z)
       (= (and V1 R1) L1)))
      )
      (state U1
       B2
       S1
       A2
       Q1
       J2
       F2
       P1
       I2
       E2
       O1
       D2
       M1
       C2
       K1
       H2
       I1
       G2
       V1
       Z1
       E1
       Y1
       X1
       J1
       D1
       T1
       N1
       H1
       W1
       R1
       L1
       G1
       F1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) ) 
    (=>
      (and
        (state N U L T J C1 Y I B1 X H W E V C A1 S Z O R E1 B A Q D1 M F G P K D G1 F1)
        (not P)
      )
      false
    )
  )
)

(check-sat)
(exit)
