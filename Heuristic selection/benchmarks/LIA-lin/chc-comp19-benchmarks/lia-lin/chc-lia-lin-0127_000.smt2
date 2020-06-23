(set-logic HORN)

(declare-fun |invariant| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Int ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) ) 
    (=>
      (and
        (let ((a!1 (not (<= A (+ F (* (- 1) I)))))
      (a!2 (not (<= A (+ I (* (- 1) F)))))
      (a!3 (not (<= A (+ G (* (- 1) I)))))
      (a!4 (not (<= A (+ I (* (- 1) G)))))
      (a!5 (not (<= A (+ H (* (- 1) I)))))
      (a!6 (not (<= A (+ I (* (- 1) H)))))
      (a!8 (not (<= A (+ F (* (- 1) H)))))
      (a!9 (not (<= A (+ H (* (- 1) F)))))
      (a!10 (not (<= A (+ G (* (- 1) H)))))
      (a!11 (not (<= A (+ H (* (- 1) G)))))
      (a!13 (not (<= A (+ F (* (- 1) G)))))
      (a!14 (not (<= A (+ G (* (- 1) F))))))
(let ((a!7 (and (or (not B) (and a!1 a!2))
                (or (not C) (and a!3 a!4))
                (or (not D) (and a!5 a!6))
                (or (not E) (not (<= A 0)))))
      (a!12 (and (or (not B) (and a!8 a!9))
                 (or (not C) (and a!10 a!11))
                 (or (not D) (not (<= A 0)))
                 (or (not E) (and a!5 a!6))))
      (a!15 (and (or (not B) (and a!13 a!14))
                 (or (not C) (not (<= A 0)))
                 (or (not D) (and a!10 a!11))
                 (or (not E) (and a!3 a!4))))
      (a!16 (and (or (not B) (not (<= A 0)))
                 (or (not C) (and a!13 a!14))
                 (or (not D) (and a!8 a!9))
                 (or (not E) (and a!1 a!2)))))
  (and (= X 3)
       (= W 2)
       (= V 1)
       (= U 4)
       (= T 3)
       (= S 2)
       (= R 1)
       (= Q 4)
       (= P 3)
       (= O 2)
       (= N 1)
       (= M 4)
       (= L 3)
       (= K 2)
       (= J 1)
       (not (<= A 0))
       (or (= Y 1) (= Y 2) (= Y 3) (= Y 4))
       (or (= X 1) (= X 2) (= X 3) (= X 4))
       (or (= W 1) (= W 2) (= W 3) (= W 4))
       (or (= V 1) (= V 2) (= V 3) (= V 4))
       (or (= U 1) (= U 2) (= U 3) (= U 4))
       (or (= T 1) (= T 2) (= T 3) (= T 4))
       (or (= S 1) (= S 2) (= S 3) (= S 4))
       (or (= R 1) (= R 2) (= R 3) (= R 4))
       (or (= Q 1) (= Q 2) (= Q 3) (= Q 4))
       (or (= P 1) (= P 2) (= P 3) (= P 4))
       (or (= O 1) (= O 2) (= O 3) (= O 4))
       (or (= N 1) (= N 2) (= N 3) (= N 4))
       (or (= M 1) (= M 2) (= M 3) (= M 4))
       (or (= L 1) (= L 2) (= L 3) (= L 4))
       (or (= K 1) (= K 2) (= K 3) (= K 4))
       (or (= J 1) (= J 2) (= J 3) (= J 4))
       (or (not E) a!7)
       (or (not D) a!12)
       (or D E)
       (or (not C) a!15)
       (or C E)
       (or C D)
       (or (not B) a!16)
       (or B E)
       (or B D)
       (or B C)
       (= Y 4))))
      )
      (invariant F
           G
           H
           I
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
           B
           C
           D
           E
           A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Int) (P1 Int) (Q1 Bool) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) ) 
    (=>
      (and
        (invariant A
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
           O1)
        (let ((a!1 (ite (= W2 4) J2 (ite (= W2 3) F2 (ite (= W2 2) B2 X1))))
      (a!2 (ite (= Y2 4) J2 (ite (= Y2 3) F2 (ite (= Y2 2) B2 X1))))
      (a!4 (ite (= X2 4) J2 (ite (= X2 3) F2 (ite (= X2 2) B2 X1))))
      (a!5 (ite (= Z2 4) J2 (ite (= Z2 3) F2 (ite (= Z2 2) B2 X1))))
      (a!7 (ite (= S2 4) I2 (ite (= S2 3) E2 (ite (= S2 2) A2 W1))))
      (a!8 (ite (= U2 4) I2 (ite (= U2 3) E2 (ite (= U2 2) A2 W1))))
      (a!10 (ite (= T2 4) I2 (ite (= T2 3) E2 (ite (= T2 2) A2 W1))))
      (a!11 (ite (= V2 4) I2 (ite (= V2 3) E2 (ite (= V2 2) A2 W1))))
      (a!13 (ite (= O2 4) H2 (ite (= O2 3) D2 (ite (= O2 2) Z1 V1))))
      (a!14 (ite (= Q2 4) H2 (ite (= Q2 3) D2 (ite (= Q2 2) Z1 V1))))
      (a!16 (ite (= P2 4) H2 (ite (= P2 3) D2 (ite (= P2 2) Z1 V1))))
      (a!17 (ite (= R2 4) H2 (ite (= R2 3) D2 (ite (= R2 2) Z1 V1))))
      (a!19 (ite (= K2 4) G2 (ite (= K2 3) C2 (ite (= K2 2) Y1 U1))))
      (a!20 (ite (= M2 4) G2 (ite (= M2 3) C2 (ite (= M2 2) Y1 U1))))
      (a!22 (ite (= L2 4) G2 (ite (= L2 3) C2 (ite (= L2 2) Y1 U1))))
      (a!23 (ite (= N2 4) G2 (ite (= N2 3) C2 (ite (= N2 2) Y1 U1)))))
(let ((a!3 (or (not N1) (= D3 (div (+ a!1 a!2) 2))))
      (a!6 (or (not N1)
               (and (<= a!1 a!2)
                    (<= a!4 a!1)
                    (<= a!2 a!5)
                    (not (= W2 X2))
                    (not (= W2 Y2))
                    (not (= W2 Z2))
                    (not (= X2 W2))
                    (not (= X2 Y2))
                    (not (= X2 Z2))
                    (not (= Y2 W2))
                    (not (= Y2 X2))
                    (not (= Y2 Z2))
                    (not (= Z2 W2))
                    (not (= Z2 X2))
                    (not (= Z2 Y2)))))
      (a!9 (or (not M1) (= C3 (div (+ a!7 a!8) 2))))
      (a!12 (or (not M1)
                (and (<= a!7 a!8)
                     (<= a!10 a!7)
                     (<= a!8 a!11)
                     (not (= S2 T2))
                     (not (= S2 U2))
                     (not (= S2 V2))
                     (not (= T2 S2))
                     (not (= T2 U2))
                     (not (= T2 V2))
                     (not (= U2 S2))
                     (not (= U2 T2))
                     (not (= U2 V2))
                     (not (= V2 S2))
                     (not (= V2 T2))
                     (not (= V2 U2)))))
      (a!15 (or (not L1) (= B3 (div (+ a!13 a!14) 2))))
      (a!18 (or (not L1)
                (and (<= a!13 a!14)
                     (<= a!16 a!13)
                     (<= a!14 a!17)
                     (not (= O2 P2))
                     (not (= O2 Q2))
                     (not (= O2 R2))
                     (not (= P2 O2))
                     (not (= P2 Q2))
                     (not (= P2 R2))
                     (not (= Q2 O2))
                     (not (= Q2 P2))
                     (not (= Q2 R2))
                     (not (= R2 O2))
                     (not (= R2 P2))
                     (not (= R2 Q2)))))
      (a!21 (or (not K1) (= A3 (div (+ a!19 a!20) 2))))
      (a!24 (or (not K1)
                (and (<= a!19 a!20)
                     (<= a!22 a!19)
                     (<= a!20 a!23)
                     (not (= K2 L2))
                     (not (= K2 M2))
                     (not (= K2 N2))
                     (not (= L2 K2))
                     (not (= L2 M2))
                     (not (= L2 N2))
                     (not (= M2 K2))
                     (not (= M2 L2))
                     (not (= M2 N2))
                     (not (= N2 K2))
                     (not (= N2 L2))
                     (not (= N2 M2))))))
  (and (= S1 M1)
       (= R1 L1)
       (= Q1 K1)
       (= P1 O1)
       (or (= J1 1) (= J1 2) (= J1 3) (= J1 4))
       (or (= I1 1) (= I1 2) (= I1 3) (= I1 4))
       (or (= H1 1) (= H1 2) (= H1 3) (= H1 4))
       (or (= G1 1) (= G1 2) (= G1 3) (= G1 4))
       (or (= F1 1) (= F1 2) (= F1 3) (= F1 4))
       (or (= E1 1) (= E1 2) (= E1 3) (= E1 4))
       (or (= D1 1) (= D1 2) (= D1 3) (= D1 4))
       (or (= C1 1) (= C1 2) (= C1 3) (= C1 4))
       (or (= B1 1) (= B1 2) (= B1 3) (= B1 4))
       (or (= A1 1) (= A1 2) (= A1 3) (= A1 4))
       (or (= Z 1) (= Z 2) (= Z 3) (= Z 4))
       (or (= Y 1) (= Y 2) (= Y 3) (= Y 4))
       (or (= X 1) (= X 2) (= X 3) (= X 4))
       (or (= W 1) (= W 2) (= W 3) (= W 4))
       (or (= V 1) (= V 2) (= V 3) (= V 4))
       (or (= U 1) (= U 2) (= U 3) (= U 4))
       (or (= Z2 1) (= Z2 2) (= Z2 3) (= Z2 4))
       (or (= Y2 1) (= Y2 2) (= Y2 3) (= Y2 4))
       (or (= X2 1) (= X2 2) (= X2 3) (= X2 4))
       (or (= W2 1) (= W2 2) (= W2 3) (= W2 4))
       (or (= V2 1) (= V2 2) (= V2 3) (= V2 4))
       (or (= U2 1) (= U2 2) (= U2 3) (= U2 4))
       (or (= T2 1) (= T2 2) (= T2 3) (= T2 4))
       (or (= S2 1) (= S2 2) (= S2 3) (= S2 4))
       (or (= R2 1) (= R2 2) (= R2 3) (= R2 4))
       (or (= Q2 1) (= Q2 2) (= Q2 3) (= Q2 4))
       (or (= P2 1) (= P2 2) (= P2 3) (= P2 4))
       (or (= O2 1) (= O2 2) (= O2 3) (= O2 4))
       (or (= N2 1) (= N2 2) (= N2 3) (= N2 4))
       (or (= M2 1) (= M2 2) (= M2 3) (= M2 4))
       (or (= L2 1) (= L2 2) (= L2 3) (= L2 4))
       (or (= K2 1) (= K2 2) (= K2 3) (= K2 4))
       a!3
       a!6
       (or (not N1) (and (= G2 D) (= H2 D) (= I2 D) (= J2 D)))
       a!9
       a!12
       (or (not M1) (and (= C2 C) (= D2 C) (= E2 C) (= F2 C)))
       a!15
       a!18
       (or (not L1) (and (= Y1 B) (= Z1 B) (= A2 B) (= B2 B)))
       a!21
       a!24
       (or (not K1) (and (= U1 A) (= V1 A) (= W1 A) (= X1 A)))
       (= T1 N1))))
      )
      (invariant A3
           B3
           C3
           D3
           U1
           V1
           W1
           X1
           Y1
           Z1
           A2
           B2
           C2
           D2
           E2
           F2
           G2
           H2
           I2
           J2
           L2
           K2
           M2
           N2
           P2
           O2
           Q2
           R2
           T2
           S2
           U2
           V2
           X2
           W2
           Y2
           Z2
           Q1
           R1
           S1
           T1
           P1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Int) ) 
    (=>
      (and
        (invariant A
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
           O1)
        (let ((a!1 (or (<= O1 (+ A (* (- 1) B))) (<= O1 (+ B (* (- 1) A)))))
      (a!2 (or (<= O1 (+ A (* (- 1) C))) (<= O1 (+ C (* (- 1) A)))))
      (a!3 (or (<= O1 (+ A (* (- 1) D))) (<= O1 (+ D (* (- 1) A)))))
      (a!5 (or (<= O1 (+ B (* (- 1) C))) (<= O1 (+ C (* (- 1) B)))))
      (a!6 (or (<= O1 (+ B (* (- 1) D))) (<= O1 (+ D (* (- 1) B)))))
      (a!8 (or (<= O1 (+ C (* (- 1) D))) (<= O1 (+ D (* (- 1) C))))))
(let ((a!4 (and K1
                (or (and K1 (<= O1 0)) (and L1 a!1) (and M1 a!2) (and N1 a!3))))
      (a!7 (and L1
                (or (and K1 a!1) (and L1 (<= O1 0)) (and M1 a!5) (and N1 a!6))))
      (a!9 (and M1
                (or (and K1 a!2) (and L1 a!5) (and M1 (<= O1 0)) (and N1 a!8))))
      (a!10 (and N1
                 (or (and K1 a!3) (and L1 a!6) (and M1 a!8) (and N1 (<= O1 0))))))
  (or a!4 a!7 a!9 a!10)))
      )
      false
    )
  )
)

(check-sat)
(exit)
