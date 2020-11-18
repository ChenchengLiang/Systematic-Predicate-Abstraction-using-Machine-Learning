(set-logic HORN)

(declare-fun |invariant| ( Int Int Int Bool Bool Int Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Int) (M Int) (N Bool) (O Bool) (P Int) (Q Bool) (R Bool) (S Int) (T Bool) (U Bool) (V Int) (W Bool) (X Bool) (Y Int) (Z Bool) (A1 Bool) (B1 Int) (C1 Bool) (D1 Int) (E1 Int) (F1 Int) (G1 Bool) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) ) 
    (=>
      (and
        (and (= Y 0)
     (= V M)
     (= S I)
     (= P 0)
     (= L M)
     (= H I)
     (= G 20)
     (= F 0)
     (= E 0)
     (= D 0)
     (= A 20)
     (<= 0 F1)
     (<= 0 E1)
     (<= 0 D1)
     (<= 0 B1)
     (<= 0 V)
     (<= 0 S)
     (<= 0 M)
     (<= 0 L)
     (<= 0 I)
     (<= 0 H)
     (<= 0 G)
     (<= 0 E)
     (<= 0 A)
     (not (<= 20 E1))
     (not (<= 20 D1))
     (not (<= 20 M))
     (not (<= 20 I))
     (<= E V)
     (<= E S)
     (<= E L)
     (<= E H)
     (<= E A)
     (or (= E A) (= E H) (= E L) (= E S) (= E V))
     (not C1)
     (not A1)
     (= Z true)
     (not X)
     (not W)
     (not U)
     (not T)
     (not R)
     (= Q true)
     (not O)
     (not N)
     (not K)
     (not J)
     (not C)
     (not B)
     (= B1 0))
      )
      (invariant D
           G
           F
           B
           C
           F1
           K
           G1
           J
           Q
           R
           N
           P
           H1
           O
           U
           I1
           T
           Z
           A1
           W
           Y
           J1
           X
           K1
           L1
           M1
           N1
           O1
           C1
           E
           A
           H
           L
           S
           V
           B1
           I
           M
           D1
           E1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Int) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Bool) (Q1 Int) (R1 Int) (S1 Bool) (T1 Int) (U1 Int) (V1 Bool) (W1 Bool) (X1 Int) (Y1 Int) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Int) (E2 Bool) (F2 Bool) (G2 Int) (H2 Int) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Int) (N2 Int) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Bool) (W2 Bool) (X2 Bool) (Y2 Bool) (Z2 Bool) (A3 Bool) (B3 Bool) (C3 Bool) (D3 Bool) ) 
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
        (let ((a!1 (and (not D)
                P1
                (<= F1 (+ (- 20) Q1))
                (not (<= F1 (+ (- 40) Q1)))
                (= T1 F1)
                (= U1 (+ 1 C))
                (= A 0)
                (= E1 F1)
                (= R1 (+ 1 A))
                (= S1 D)))
      (a!3 (= Y1 (ite (= G C2) 0 (ite (<= M 3) (+ 1 M) M))))
      (a!4 (= C2 (= (and D (not O)) (not L))))
      (a!6 (= F2 (= (and D (not R)) (not P))))
      (a!7 (= H2 (ite (= P L2) 0 (ite (<= V 3) (+ 1 V) V))))
      (a!8 (= L2 (= (and D (not X)) (not U))))
      (a!10 (= W1 (= (and D (not I)) (not G))))
      (a!12 (= O2 (or D1 (and D (not E))))))
(let ((a!2 (or (and (not (<= A 1))
                    (= T1 F1)
                    (= U1 (+ 1 C))
                    (= E1 F1)
                    (= Q1 (+ 40 F1))
                    (= R1 (+ 1 A))
                    (= P1 D)
                    (= S1 E))
               (and D
                    (not P1)
                    (= T1 F1)
                    (= U1 C)
                    (= A 1)
                    (= E1 F1)
                    (= Q1 60)
                    (= R1 (+ 1 A))
                    (= S1 D))
               a!1))
      (a!5 (and (= T1 B)
                (= U1 C)
                (= X1 G1)
                (= H2 V)
                (= E1 H1)
                (= Q1 F1)
                (= R1 A)
                a!3
                (= D2 (+ 20 H1))
                (= G2 I1)
                (= M2 J1)
                (= Z1 (not A2))
                a!4
                (= F2 P)
                (= I2 S)
                (= J2 T)
                (= L2 U)
                (= P1 D)
                (= S1 E)
                (= V1 I)
                (= W1 G)
                (= A2 (not (<= Y1 2)))
                (= B2 D)
                (= E2 R)
                (= K2 X)))
      (a!9 (and (= T1 B)
                (= U1 C)
                (= X1 G1)
                a!7
                (= E1 J1)
                (= Q1 F1)
                (= R1 A)
                (= Y1 M)
                (= D2 H1)
                (= G2 I1)
                (= M2 (+ 20 J1))
                (= Z1 J)
                (= C2 L)
                (= F2 P)
                (= I2 (not J2))
                (= J2 (not (<= H2 2)))
                a!8
                (= P1 D)
                (= S1 E)
                (= V1 I)
                (= W1 G)
                (= A2 K)
                (= B2 O)
                (= E2 R)
                (= K2 D))))
(let ((a!11 (or (and a!2
                     (= X1 G1)
                     (= H2 V)
                     (= Y1 M)
                     (= D2 H1)
                     (= G2 I1)
                     (= M2 J1)
                     (= Z1 J)
                     (= C2 L)
                     (= F2 P)
                     (= I2 S)
                     (= J2 T)
                     (= L2 U)
                     (= V1 I)
                     (= W1 G)
                     (= A2 K)
                     (= B2 O)
                     (= E2 R)
                     (= K2 X))
                a!5
                (and (= T1 B)
                     (= U1 C)
                     (= X1 G1)
                     (= H2 V)
                     (= E1 I1)
                     (= Q1 F1)
                     (= R1 A)
                     (= Y1 M)
                     (= D2 H1)
                     (= G2 (+ 20 I1))
                     (= M2 J1)
                     (= Z1 J)
                     (= C2 L)
                     a!6
                     (= I2 S)
                     (= J2 T)
                     (= L2 U)
                     (= P1 D)
                     (= S1 E)
                     (= V1 I)
                     (= W1 G)
                     (= A2 K)
                     (= B2 O)
                     (= E2 D)
                     (= K2 X))
                a!9
                (and (= T1 B)
                     (= U1 C)
                     (= X1 (+ 20 G1))
                     (= H2 V)
                     (= E1 G1)
                     (= Q1 F1)
                     (= R1 A)
                     (= Y1 M)
                     (= D2 H1)
                     (= G2 I1)
                     (= M2 J1)
                     (= Z1 J)
                     (= C2 L)
                     (= F2 P)
                     (= I2 S)
                     (= J2 T)
                     (= L2 U)
                     (= P1 D)
                     (= S1 E)
                     (= V1 D)
                     a!10
                     (= A2 K)
                     (= B2 O)
                     (= E2 R)
                     (= K2 X)))))
  (and (= N2 (ite (= E1 (- 1)) K1 E1))
       (<= 0 R2)
       (<= 0 P2)
       (<= 0 M2)
       (<= 0 G2)
       (<= 0 D2)
       (<= 0 Q1)
       (<= 0 O1)
       (<= 0 N1)
       (<= 0 M1)
       (<= 0 L1)
       (<= 0 K1)
       (<= 0 J1)
       (<= 0 I1)
       (<= 0 H1)
       (<= 0 G1)
       (<= 0 F1)
       (<= 0 E1)
       (<= 0 F)
       (<= 0 B)
       (<= 0 U2)
       (<= 0 T2)
       (<= 0 S2)
       (<= 0 Q2)
       (<= 0 N2)
       (<= 0 X1)
       (<= 0 T1)
       (not (<= 20 R2))
       (not (<= 20 O1))
       (not (<= 20 N1))
       (not (<= 20 M1))
       (not (<= 20 L1))
       (not (<= 20 T2))
       (not (<= 20 S2))
       (not (<= 20 Q2))
       (<= P2 M2)
       (<= P2 G2)
       (<= P2 D2)
       (<= P2 Q1)
       (<= P2 X1)
       (<= E1 J1)
       (<= E1 I1)
       (<= E1 H1)
       (<= E1 G1)
       (<= E1 F1)
       (or (= P2 X1) (= P2 Q1) (= P2 D2) (= P2 G2) (= P2 M2))
       (or (= E1 F1) (= E1 G1) (= E1 H1) (= E1 I1) (= E1 J1))
       a!11
       a!12))))
      )
      (invariant R1
           T1
           U1
           P1
           S1
           U2
           W1
           V2
           V1
           Z1
           A2
           C2
           Y1
           W2
           B2
           F2
           X2
           E2
           I2
           J2
           L2
           H2
           Y2
           K2
           Z2
           A3
           B3
           C3
           D3
           O2
           P2
           Q1
           X1
           D2
           G2
           M2
           N2
           Q2
           R2
           S2
           T2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Int) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) ) 
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
        (= K true)
      )
      false
    )
  )
)

(check-sat)
(exit)
