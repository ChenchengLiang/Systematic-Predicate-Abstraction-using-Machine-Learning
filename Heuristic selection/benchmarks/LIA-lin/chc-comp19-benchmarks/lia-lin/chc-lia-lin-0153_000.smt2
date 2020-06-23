(set-logic HORN)

(declare-fun |invariant| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Int ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) ) 
    (=>
      (and
        (let ((a!1 (not (<= A (+ G (* (- 1) K)))))
      (a!2 (not (<= A (+ K (* (- 1) G)))))
      (a!3 (not (<= A (+ H (* (- 1) K)))))
      (a!4 (not (<= A (+ K (* (- 1) H)))))
      (a!5 (not (<= A (+ I (* (- 1) K)))))
      (a!6 (not (<= A (+ K (* (- 1) I)))))
      (a!7 (not (<= A (+ J (* (- 1) K)))))
      (a!8 (not (<= A (+ K (* (- 1) J)))))
      (a!10 (not (<= A (+ G (* (- 1) J)))))
      (a!11 (not (<= A (+ J (* (- 1) G)))))
      (a!12 (not (<= A (+ H (* (- 1) J)))))
      (a!13 (not (<= A (+ J (* (- 1) H)))))
      (a!14 (not (<= A (+ I (* (- 1) J)))))
      (a!15 (not (<= A (+ J (* (- 1) I)))))
      (a!17 (not (<= A (+ G (* (- 1) I)))))
      (a!18 (not (<= A (+ I (* (- 1) G)))))
      (a!19 (not (<= A (+ H (* (- 1) I)))))
      (a!20 (not (<= A (+ I (* (- 1) H)))))
      (a!22 (not (<= A (+ G (* (- 1) H)))))
      (a!23 (not (<= A (+ H (* (- 1) G))))))
(let ((a!9 (and (or (not B) (and a!1 a!2))
                (or (not C) (and a!3 a!4))
                (or (not D) (and a!5 a!6))
                (or (not E) (and a!7 a!8))
                (or (not F) (not (<= A 0)))))
      (a!16 (and (or (not B) (and a!10 a!11))
                 (or (not C) (and a!12 a!13))
                 (or (not D) (and a!14 a!15))
                 (or (not E) (not (<= A 0)))
                 (or (not F) (and a!7 a!8))))
      (a!21 (and (or (not B) (and a!17 a!18))
                 (or (not C) (and a!19 a!20))
                 (or (not D) (not (<= A 0)))
                 (or (not E) (and a!14 a!15))
                 (or (not F) (and a!5 a!6))))
      (a!24 (and (or (not B) (and a!22 a!23))
                 (or (not C) (not (<= A 0)))
                 (or (not D) (and a!19 a!20))
                 (or (not E) (and a!12 a!13))
                 (or (not F) (and a!3 a!4))))
      (a!25 (and (or (not B) (not (<= A 0)))
                 (or (not C) (and a!22 a!23))
                 (or (not D) (and a!17 a!18))
                 (or (not E) (and a!10 a!11))
                 (or (not F) (and a!1 a!2)))))
  (and (= I1 4)
       (= H1 3)
       (= G1 2)
       (= F1 1)
       (= E1 5)
       (= D1 4)
       (= C1 3)
       (= B1 2)
       (= A1 1)
       (= Z 5)
       (= Y 4)
       (= X 3)
       (= W 2)
       (= V 1)
       (= U 5)
       (= T 4)
       (= S 3)
       (= R 2)
       (= Q 1)
       (= P 5)
       (= O 4)
       (= N 3)
       (= M 2)
       (= L 1)
       (not (<= A 0))
       (or (= J1 1) (= J1 2) (= J1 3) (= J1 4) (= J1 5))
       (or (= I1 1) (= I1 2) (= I1 3) (= I1 4) (= I1 5))
       (or (= H1 1) (= H1 2) (= H1 3) (= H1 4) (= H1 5))
       (or (= G1 1) (= G1 2) (= G1 3) (= G1 4) (= G1 5))
       (or (= F1 1) (= F1 2) (= F1 3) (= F1 4) (= F1 5))
       (or (= E1 1) (= E1 2) (= E1 3) (= E1 4) (= E1 5))
       (or (= D1 1) (= D1 2) (= D1 3) (= D1 4) (= D1 5))
       (or (= C1 1) (= C1 2) (= C1 3) (= C1 4) (= C1 5))
       (or (= B1 1) (= B1 2) (= B1 3) (= B1 4) (= B1 5))
       (or (= A1 1) (= A1 2) (= A1 3) (= A1 4) (= A1 5))
       (or (= Z 1) (= Z 2) (= Z 3) (= Z 4) (= Z 5))
       (or (= Y 1) (= Y 2) (= Y 3) (= Y 4) (= Y 5))
       (or (= X 1) (= X 2) (= X 3) (= X 4) (= X 5))
       (or (= W 1) (= W 2) (= W 3) (= W 4) (= W 5))
       (or (= V 1) (= V 2) (= V 3) (= V 4) (= V 5))
       (or (= U 1) (= U 2) (= U 3) (= U 4) (= U 5))
       (or (= T 1) (= T 2) (= T 3) (= T 4) (= T 5))
       (or (= S 1) (= S 2) (= S 3) (= S 4) (= S 5))
       (or (= R 1) (= R 2) (= R 3) (= R 4) (= R 5))
       (or (= Q 1) (= Q 2) (= Q 3) (= Q 4) (= Q 5))
       (or (= P 1) (= P 2) (= P 3) (= P 4) (= P 5))
       (or (= O 1) (= O 2) (= O 3) (= O 4) (= O 5))
       (or (= N 1) (= N 2) (= N 3) (= N 4) (= N 5))
       (or (= M 1) (= M 2) (= M 3) (= M 4) (= M 5))
       (or (= L 1) (= L 2) (= L 3) (= L 4) (= L 5))
       (or (not F) a!9)
       (or (not E) a!16)
       (or E F)
       (or (not D) a!21)
       (or D F)
       (or D E)
       (or (not C) a!24)
       (or C F)
       (or C E)
       (or C D)
       (or (not B) a!25)
       (or B F)
       (or B E)
       (or B D)
       (or B C)
       (= J1 5))))
      )
      (invariant G
           H
           I
           J
           K
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
           B
           C
           D
           E
           F
           A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Int) (J2 Int) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) ) 
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
           O1
           P1
           Q1
           R1
           S1
           T1
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
           I2)
        (let ((a!1 (ite (= K4 4) I3 (ite (= K4 3) D3 (ite (= K4 2) Y2 T2))))
      (a!3 (ite (= I4 4) I3 (ite (= I4 3) D3 (ite (= I4 2) Y2 T2))))
      (a!4 (ite (= J4 4) I3 (ite (= J4 3) D3 (ite (= J4 2) Y2 T2))))
      (a!5 (ite (= L4 4) I3 (ite (= L4 3) D3 (ite (= L4 2) Y2 T2))))
      (a!6 (ite (= M4 4) I3 (ite (= M4 3) D3 (ite (= M4 2) Y2 T2))))
      (a!8 (ite (= F4 4) H3 (ite (= F4 3) C3 (ite (= F4 2) X2 S2))))
      (a!10 (ite (= D4 4) H3 (ite (= D4 3) C3 (ite (= D4 2) X2 S2))))
      (a!11 (ite (= E4 4) H3 (ite (= E4 3) C3 (ite (= E4 2) X2 S2))))
      (a!12 (ite (= G4 4) H3 (ite (= G4 3) C3 (ite (= G4 2) X2 S2))))
      (a!13 (ite (= H4 4) H3 (ite (= H4 3) C3 (ite (= H4 2) X2 S2))))
      (a!15 (ite (= A4 4) G3 (ite (= A4 3) B3 (ite (= A4 2) W2 R2))))
      (a!17 (ite (= Y3 4) G3 (ite (= Y3 3) B3 (ite (= Y3 2) W2 R2))))
      (a!18 (ite (= Z3 4) G3 (ite (= Z3 3) B3 (ite (= Z3 2) W2 R2))))
      (a!19 (ite (= B4 4) G3 (ite (= B4 3) B3 (ite (= B4 2) W2 R2))))
      (a!20 (ite (= C4 4) G3 (ite (= C4 3) B3 (ite (= C4 2) W2 R2))))
      (a!22 (ite (= V3 4) F3 (ite (= V3 3) A3 (ite (= V3 2) V2 Q2))))
      (a!24 (ite (= T3 4) F3 (ite (= T3 3) A3 (ite (= T3 2) V2 Q2))))
      (a!25 (ite (= U3 4) F3 (ite (= U3 3) A3 (ite (= U3 2) V2 Q2))))
      (a!26 (ite (= W3 4) F3 (ite (= W3 3) A3 (ite (= W3 2) V2 Q2))))
      (a!27 (ite (= X3 4) F3 (ite (= X3 3) A3 (ite (= X3 2) V2 Q2))))
      (a!29 (ite (= Q3 4) E3 (ite (= Q3 3) Z2 (ite (= Q3 2) U2 P2))))
      (a!31 (ite (= O3 4) E3 (ite (= O3 3) Z2 (ite (= O3 2) U2 P2))))
      (a!32 (ite (= P3 4) E3 (ite (= P3 3) Z2 (ite (= P3 2) U2 P2))))
      (a!33 (ite (= R3 4) E3 (ite (= R3 3) Z2 (ite (= R3 2) U2 P2))))
      (a!34 (ite (= S3 4) E3 (ite (= S3 3) Z2 (ite (= S3 2) U2 P2)))))
(let ((a!2 (or (not H2) (= R4 (ite (= K4 5) N3 a!1))))
      (a!7 (and (<= (ite (= I4 5) N3 a!3) (ite (= K4 5) N3 a!1))
                (<= (ite (= J4 5) N3 a!4) (ite (= I4 5) N3 a!3))
                (<= (ite (= K4 5) N3 a!1) (ite (= L4 5) N3 a!5))
                (<= (ite (= L4 5) N3 a!5) (ite (= M4 5) N3 a!6))
                (not (= I4 J4))
                (not (= I4 K4))
                (not (= I4 L4))
                (not (= I4 M4))
                (not (= J4 I4))
                (not (= J4 K4))
                (not (= J4 L4))
                (not (= J4 M4))
                (not (= K4 I4))
                (not (= K4 J4))
                (not (= K4 L4))
                (not (= K4 M4))
                (not (= L4 I4))
                (not (= L4 J4))
                (not (= L4 K4))
                (not (= L4 M4))
                (not (= M4 I4))
                (not (= M4 J4))
                (not (= M4 K4))
                (not (= M4 L4))))
      (a!9 (or (not G2) (= Q4 (ite (= F4 5) M3 a!8))))
      (a!14 (and (<= (ite (= D4 5) M3 a!10) (ite (= F4 5) M3 a!8))
                 (<= (ite (= E4 5) M3 a!11) (ite (= D4 5) M3 a!10))
                 (<= (ite (= F4 5) M3 a!8) (ite (= G4 5) M3 a!12))
                 (<= (ite (= G4 5) M3 a!12) (ite (= H4 5) M3 a!13))
                 (not (= D4 E4))
                 (not (= D4 F4))
                 (not (= D4 G4))
                 (not (= D4 H4))
                 (not (= E4 D4))
                 (not (= E4 F4))
                 (not (= E4 G4))
                 (not (= E4 H4))
                 (not (= F4 D4))
                 (not (= F4 E4))
                 (not (= F4 G4))
                 (not (= F4 H4))
                 (not (= G4 D4))
                 (not (= G4 E4))
                 (not (= G4 F4))
                 (not (= G4 H4))
                 (not (= H4 D4))
                 (not (= H4 E4))
                 (not (= H4 F4))
                 (not (= H4 G4))))
      (a!16 (or (not F2) (= P4 (ite (= A4 5) L3 a!15))))
      (a!21 (and (<= (ite (= Y3 5) L3 a!17) (ite (= A4 5) L3 a!15))
                 (<= (ite (= Z3 5) L3 a!18) (ite (= Y3 5) L3 a!17))
                 (<= (ite (= A4 5) L3 a!15) (ite (= B4 5) L3 a!19))
                 (<= (ite (= B4 5) L3 a!19) (ite (= C4 5) L3 a!20))
                 (not (= Y3 Z3))
                 (not (= Y3 A4))
                 (not (= Y3 B4))
                 (not (= Y3 C4))
                 (not (= Z3 Y3))
                 (not (= Z3 A4))
                 (not (= Z3 B4))
                 (not (= Z3 C4))
                 (not (= A4 Y3))
                 (not (= A4 Z3))
                 (not (= A4 B4))
                 (not (= A4 C4))
                 (not (= B4 Y3))
                 (not (= B4 Z3))
                 (not (= B4 A4))
                 (not (= B4 C4))
                 (not (= C4 Y3))
                 (not (= C4 Z3))
                 (not (= C4 A4))
                 (not (= C4 B4))))
      (a!23 (or (not E2) (= O4 (ite (= V3 5) K3 a!22))))
      (a!28 (and (<= (ite (= T3 5) K3 a!24) (ite (= V3 5) K3 a!22))
                 (<= (ite (= U3 5) K3 a!25) (ite (= T3 5) K3 a!24))
                 (<= (ite (= V3 5) K3 a!22) (ite (= W3 5) K3 a!26))
                 (<= (ite (= W3 5) K3 a!26) (ite (= X3 5) K3 a!27))
                 (not (= T3 U3))
                 (not (= T3 V3))
                 (not (= T3 W3))
                 (not (= T3 X3))
                 (not (= U3 T3))
                 (not (= U3 V3))
                 (not (= U3 W3))
                 (not (= U3 X3))
                 (not (= V3 T3))
                 (not (= V3 U3))
                 (not (= V3 W3))
                 (not (= V3 X3))
                 (not (= W3 T3))
                 (not (= W3 U3))
                 (not (= W3 V3))
                 (not (= W3 X3))
                 (not (= X3 T3))
                 (not (= X3 U3))
                 (not (= X3 V3))
                 (not (= X3 W3))))
      (a!30 (or (not D2) (= N4 (ite (= Q3 5) J3 a!29))))
      (a!35 (and (<= (ite (= O3 5) J3 a!31) (ite (= Q3 5) J3 a!29))
                 (<= (ite (= P3 5) J3 a!32) (ite (= O3 5) J3 a!31))
                 (<= (ite (= Q3 5) J3 a!29) (ite (= R3 5) J3 a!33))
                 (<= (ite (= R3 5) J3 a!33) (ite (= S3 5) J3 a!34))
                 (not (= O3 P3))
                 (not (= O3 Q3))
                 (not (= O3 R3))
                 (not (= O3 S3))
                 (not (= P3 O3))
                 (not (= P3 Q3))
                 (not (= P3 R3))
                 (not (= P3 S3))
                 (not (= Q3 O3))
                 (not (= Q3 P3))
                 (not (= Q3 R3))
                 (not (= Q3 S3))
                 (not (= R3 O3))
                 (not (= R3 P3))
                 (not (= R3 Q3))
                 (not (= R3 S3))
                 (not (= S3 O3))
                 (not (= S3 P3))
                 (not (= S3 Q3))
                 (not (= S3 R3)))))
  (and (= N2 G2)
       (= M2 F2)
       (= L2 E2)
       (= K2 D2)
       (= J2 I2)
       (or (= C2 1) (= C2 2) (= C2 3) (= C2 4) (= C2 5))
       (or (= B2 1) (= B2 2) (= B2 3) (= B2 4) (= B2 5))
       (or (= A2 1) (= A2 2) (= A2 3) (= A2 4) (= A2 5))
       (or (= Z1 1) (= Z1 2) (= Z1 3) (= Z1 4) (= Z1 5))
       (or (= Y1 1) (= Y1 2) (= Y1 3) (= Y1 4) (= Y1 5))
       (or (= X1 1) (= X1 2) (= X1 3) (= X1 4) (= X1 5))
       (or (= W1 1) (= W1 2) (= W1 3) (= W1 4) (= W1 5))
       (or (= V1 1) (= V1 2) (= V1 3) (= V1 4) (= V1 5))
       (or (= U1 1) (= U1 2) (= U1 3) (= U1 4) (= U1 5))
       (or (= T1 1) (= T1 2) (= T1 3) (= T1 4) (= T1 5))
       (or (= S1 1) (= S1 2) (= S1 3) (= S1 4) (= S1 5))
       (or (= R1 1) (= R1 2) (= R1 3) (= R1 4) (= R1 5))
       (or (= Q1 1) (= Q1 2) (= Q1 3) (= Q1 4) (= Q1 5))
       (or (= P1 1) (= P1 2) (= P1 3) (= P1 4) (= P1 5))
       (or (= O1 1) (= O1 2) (= O1 3) (= O1 4) (= O1 5))
       (or (= N1 1) (= N1 2) (= N1 3) (= N1 4) (= N1 5))
       (or (= M1 1) (= M1 2) (= M1 3) (= M1 4) (= M1 5))
       (or (= L1 1) (= L1 2) (= L1 3) (= L1 4) (= L1 5))
       (or (= K1 1) (= K1 2) (= K1 3) (= K1 4) (= K1 5))
       (or (= J1 1) (= J1 2) (= J1 3) (= J1 4) (= J1 5))
       (or (= I1 1) (= I1 2) (= I1 3) (= I1 4) (= I1 5))
       (or (= H1 1) (= H1 2) (= H1 3) (= H1 4) (= H1 5))
       (or (= G1 1) (= G1 2) (= G1 3) (= G1 4) (= G1 5))
       (or (= F1 1) (= F1 2) (= F1 3) (= F1 4) (= F1 5))
       (or (= E1 1) (= E1 2) (= E1 3) (= E1 4) (= E1 5))
       (or (= M4 1) (= M4 2) (= M4 3) (= M4 4) (= M4 5))
       (or (= L4 1) (= L4 2) (= L4 3) (= L4 4) (= L4 5))
       (or (= K4 1) (= K4 2) (= K4 3) (= K4 4) (= K4 5))
       (or (= J4 1) (= J4 2) (= J4 3) (= J4 4) (= J4 5))
       (or (= I4 1) (= I4 2) (= I4 3) (= I4 4) (= I4 5))
       (or (= H4 1) (= H4 2) (= H4 3) (= H4 4) (= H4 5))
       (or (= G4 1) (= G4 2) (= G4 3) (= G4 4) (= G4 5))
       (or (= F4 1) (= F4 2) (= F4 3) (= F4 4) (= F4 5))
       (or (= E4 1) (= E4 2) (= E4 3) (= E4 4) (= E4 5))
       (or (= D4 1) (= D4 2) (= D4 3) (= D4 4) (= D4 5))
       (or (= C4 1) (= C4 2) (= C4 3) (= C4 4) (= C4 5))
       (or (= B4 1) (= B4 2) (= B4 3) (= B4 4) (= B4 5))
       (or (= A4 1) (= A4 2) (= A4 3) (= A4 4) (= A4 5))
       (or (= Z3 1) (= Z3 2) (= Z3 3) (= Z3 4) (= Z3 5))
       (or (= Y3 1) (= Y3 2) (= Y3 3) (= Y3 4) (= Y3 5))
       (or (= X3 1) (= X3 2) (= X3 3) (= X3 4) (= X3 5))
       (or (= W3 1) (= W3 2) (= W3 3) (= W3 4) (= W3 5))
       (or (= V3 1) (= V3 2) (= V3 3) (= V3 4) (= V3 5))
       (or (= U3 1) (= U3 2) (= U3 3) (= U3 4) (= U3 5))
       (or (= T3 1) (= T3 2) (= T3 3) (= T3 4) (= T3 5))
       (or (= S3 1) (= S3 2) (= S3 3) (= S3 4) (= S3 5))
       (or (= R3 1) (= R3 2) (= R3 3) (= R3 4) (= R3 5))
       (or (= Q3 1) (= Q3 2) (= Q3 3) (= Q3 4) (= Q3 5))
       (or (= P3 1) (= P3 2) (= P3 3) (= P3 4) (= P3 5))
       (or (= O3 1) (= O3 2) (= O3 3) (= O3 4) (= O3 5))
       a!2
       (or (not H2) a!7)
       (or (not H2) (and (= J3 E) (= K3 E) (= L3 E) (= M3 E) (= N3 E)))
       a!9
       (or (not G2) a!14)
       (or (not G2) (and (= E3 D) (= F3 D) (= G3 D) (= H3 D) (= I3 D)))
       a!16
       (or (not F2) a!21)
       (or (not F2) (and (= Z2 C) (= A3 C) (= B3 C) (= C3 C) (= D3 C)))
       a!23
       (or (not E2) a!28)
       (or (not E2) (and (= U2 B) (= V2 B) (= W2 B) (= X2 B) (= Y2 B)))
       a!30
       (or (not D2) a!35)
       (or (not D2) (and (= P2 A) (= Q2 A) (= R2 A) (= S2 A) (= T2 A)))
       (= O2 H2))))
      )
      (invariant N4
           O4
           P4
           Q4
           R4
           P2
           Q2
           R2
           S2
           T2
           U2
           V2
           W2
           X2
           Y2
           Z2
           A3
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
           M3
           N3
           P3
           O3
           Q3
           R3
           S3
           U3
           T3
           V3
           W3
           X3
           Z3
           Y3
           A4
           B4
           C4
           E4
           D4
           F4
           G4
           H4
           J4
           I4
           K4
           L4
           M4
           K2
           L2
           M2
           N2
           O2
           J2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Int) ) 
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
           O1
           P1
           Q1
           R1
           S1
           T1
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
           I2)
        (let ((a!1 (or (<= I2 (+ A (* (- 1) B))) (<= I2 (+ B (* (- 1) A)))))
      (a!2 (or (<= I2 (+ A (* (- 1) C))) (<= I2 (+ C (* (- 1) A)))))
      (a!3 (or (<= I2 (+ A (* (- 1) D))) (<= I2 (+ D (* (- 1) A)))))
      (a!4 (or (<= I2 (+ A (* (- 1) E))) (<= I2 (+ E (* (- 1) A)))))
      (a!6 (or (<= I2 (+ B (* (- 1) C))) (<= I2 (+ C (* (- 1) B)))))
      (a!7 (or (<= I2 (+ B (* (- 1) D))) (<= I2 (+ D (* (- 1) B)))))
      (a!8 (or (<= I2 (+ B (* (- 1) E))) (<= I2 (+ E (* (- 1) B)))))
      (a!10 (or (<= I2 (+ C (* (- 1) D))) (<= I2 (+ D (* (- 1) C)))))
      (a!11 (or (<= I2 (+ C (* (- 1) E))) (<= I2 (+ E (* (- 1) C)))))
      (a!13 (or (<= I2 (+ D (* (- 1) E))) (<= I2 (+ E (* (- 1) D))))))
(let ((a!5 (and D2
                (or (and D2 (<= I2 0))
                    (and E2 a!1)
                    (and F2 a!2)
                    (and G2 a!3)
                    (and H2 a!4))))
      (a!9 (and E2
                (or (and D2 a!1)
                    (and E2 (<= I2 0))
                    (and F2 a!6)
                    (and G2 a!7)
                    (and H2 a!8))))
      (a!12 (and F2
                 (or (and D2 a!2)
                     (and E2 a!6)
                     (and F2 (<= I2 0))
                     (and G2 a!10)
                     (and H2 a!11))))
      (a!14 (and G2
                 (or (and D2 a!3)
                     (and E2 a!7)
                     (and F2 a!10)
                     (and G2 (<= I2 0))
                     (and H2 a!13))))
      (a!15 (and H2
                 (or (and D2 a!4)
                     (and E2 a!8)
                     (and F2 a!11)
                     (and G2 a!13)
                     (and H2 (<= I2 0))))))
  (or a!5 a!9 a!12 a!14 a!15)))
      )
      false
    )
  )
)

(check-sat)
(exit)
