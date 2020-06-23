(set-logic HORN)

(declare-fun |invariant| ( Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Bool) (S1 Bool) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Bool) (X1 Bool) (Y1 Bool) (Z1 Bool) (A2 Bool) (B2 Bool) (C2 Bool) (D2 Bool) (E2 Bool) (F2 Bool) (G2 Bool) (H2 Bool) (I2 Bool) (J2 Bool) (K2 Bool) (L2 Bool) (M2 Bool) (N2 Bool) (O2 Bool) (P2 Bool) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) ) 
    (=>
      (and
        (and (= K1 0)
     (= J1 0)
     (= I1 2)
     (= H1 3)
     (= G1 0)
     (= F1 5)
     (= E1 4)
     (= D1 3)
     (= C1 2)
     (= B1 1)
     (= A1 5)
     (= Z 4)
     (= Y 3)
     (= X 2)
     (= W 1)
     (= V 5)
     (= U 4)
     (= T 3)
     (= S 2)
     (= R 1)
     (= Q 5)
     (= P 4)
     (= O 3)
     (= N 2)
     (= M 1)
     (= L 5)
     (= K 4)
     (= J 3)
     (= I 2)
     (= H 1)
     (<= 0 B)
     (<= (+ G (* (- 1) F)) B)
     (<= (+ G (* (- 1) E)) B)
     (<= (+ G (* (- 1) D)) B)
     (<= (+ G (* (- 1) C)) B)
     (<= (+ F (* (- 1) G)) B)
     (<= (+ F (* (- 1) E)) B)
     (<= (+ F (* (- 1) D)) B)
     (<= (+ F (* (- 1) C)) B)
     (<= (+ E (* (- 1) G)) B)
     (<= (+ E (* (- 1) F)) B)
     (<= (+ E (* (- 1) D)) B)
     (<= (+ E (* (- 1) C)) B)
     (<= (+ D (* (- 1) G)) B)
     (<= (+ D (* (- 1) F)) B)
     (<= (+ D (* (- 1) E)) B)
     (<= (+ D (* (- 1) C)) B)
     (<= (+ C (* (- 1) G)) B)
     (<= (+ C (* (- 1) F)) B)
     (<= (+ C (* (- 1) E)) B)
     (<= (+ C (* (- 1) D)) B)
     (not (<= B (* 2 A)))
     (not (<= A 0))
     (or (= Q1 0) (= Q1 2) (= Q1 1) (= Q1 3) (= Q1 4) (= Q1 5))
     (or (= P1 0) (= P1 2) (= P1 1) (= P1 3) (= P1 4) (= P1 5))
     (or (= O1 0) (= O1 2) (= O1 1) (= O1 3) (= O1 4) (= O1 5))
     (or (= N1 0) (= N1 2) (= N1 1) (= N1 3) (= N1 4) (= N1 5))
     (or (= M1 0) (= M1 2) (= M1 1) (= M1 3) (= M1 4) (= M1 5))
     (or (= F1 2) (= F1 1) (= F1 3) (= F1 4) (= F1 5))
     (or (= E1 2) (= E1 1) (= E1 3) (= E1 4) (= E1 5))
     (or (= D1 2) (= D1 1) (= D1 3) (= D1 4) (= D1 5))
     (or (= C1 2) (= C1 1) (= C1 3) (= C1 4) (= C1 5))
     (or (= B1 2) (= B1 1) (= B1 3) (= B1 4) (= B1 5))
     (or (= A1 2) (= A1 1) (= A1 3) (= A1 4) (= A1 5))
     (or (= Z 2) (= Z 1) (= Z 3) (= Z 4) (= Z 5))
     (or (= Y 2) (= Y 1) (= Y 3) (= Y 4) (= Y 5))
     (or (= X 2) (= X 1) (= X 3) (= X 4) (= X 5))
     (or (= W 2) (= W 1) (= W 3) (= W 4) (= W 5))
     (or (= V 2) (= V 1) (= V 3) (= V 4) (= V 5))
     (or (= U 2) (= U 1) (= U 3) (= U 4) (= U 5))
     (or (= T 2) (= T 1) (= T 3) (= T 4) (= T 5))
     (or (= S 2) (= S 1) (= S 3) (= S 4) (= S 5))
     (or (= R 2) (= R 1) (= R 3) (= R 4) (= R 5))
     (or (= Q 2) (= Q 1) (= Q 3) (= Q 4) (= Q 5))
     (or (= P 2) (= P 1) (= P 3) (= P 4) (= P 5))
     (or (= O 2) (= O 1) (= O 3) (= O 4) (= O 5))
     (or (= N 2) (= N 1) (= N 3) (= N 4) (= N 5))
     (or (= M 2) (= M 1) (= M 3) (= M 4) (= M 5))
     (or (= L 2) (= L 1) (= L 3) (= L 4) (= L 5))
     (or (= K 2) (= K 1) (= K 3) (= K 4) (= K 5))
     (or (= J 2) (= J 1) (= J 3) (= J 4) (= J 5))
     (or (= I 2) (= I 1) (= I 3) (= I 4) (= I 5))
     (or (= H 2) (= H 1) (= H 3) (= H 4) (= H 5))
     (= L1 0))
      )
      (invariant C
           D
           E
           F
           G
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
           J2
           K2
           L2
           M2
           N2
           O2
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
           O3
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
           M1
           N1
           O1
           P1
           Q1
           H1
           I1
           J1
           K1
           L1
           G1
           B
           A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Bool) (X3 Bool) (Y3 Bool) (Z3 Bool) (A4 Bool) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Bool) (H4 Bool) (I4 Bool) (J4 Bool) (K4 Bool) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Bool) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Bool) (B5 Bool) (C5 Bool) (D5 Bool) (E5 Bool) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Bool) (L5 Bool) (M5 Bool) (N5 Bool) (O5 Bool) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Int) (R6 Int) (S6 Int) (T6 Int) (U6 Int) (V6 Int) (W6 Int) (X6 Int) (Y6 Int) (Z6 Int) (A7 Int) (B7 Int) (C7 Int) (D7 Int) ) 
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
           I2
           J2
           K2
           L2
           M2
           N2
           O2
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
           O3)
        (let ((a!1 (ite (= Z5 4) A5 (ite (= Z5 3) Q4 (ite (= Z5 2) G4 W3))))
      (a!2 (ite (= X6 4) E5 (ite (= X6 3) U4 (ite (= X6 2) K4 A4))))
      (a!3 (ite (= R6 4) D5 (ite (= R6 3) T4 (ite (= R6 2) J4 Z3))))
      (a!4 (ite (= L6 4) C5 (ite (= L6 3) S4 (ite (= L6 2) I4 Y3))))
      (a!5 (ite (= E6 4) B5 (ite (= E6 3) R4 (ite (= E6 2) H4 X3))))
      (a!6 (ite (= Y5 4) A5 (ite (= Y5 3) Q4 (ite (= Y5 2) G4 W3))))
      (a!7 (ite (= W6 4) E5 (ite (= W6 3) U4 (ite (= W6 2) K4 A4))))
      (a!8 (ite (= Q6 4) D5 (ite (= Q6 3) T4 (ite (= Q6 2) J4 Z3))))
      (a!9 (ite (= K6 4) C5 (ite (= K6 3) S4 (ite (= K6 2) I4 Y3))))
      (a!10 (ite (= D6 4) B5 (ite (= D6 3) R4 (ite (= D6 2) H4 X3))))
      (a!11 (ite (= X5 4) A5 (ite (= X5 3) Q4 (ite (= X5 2) G4 W3))))
      (a!12 (ite (= V6 4) E5 (ite (= V6 3) U4 (ite (= V6 2) K4 A4))))
      (a!13 (ite (= P6 4) D5 (ite (= P6 3) T4 (ite (= P6 2) J4 Z3))))
      (a!14 (ite (= J6 4) C5 (ite (= J6 3) S4 (ite (= J6 2) I4 Y3))))
      (a!15 (ite (= B6 4) B5 (ite (= B6 3) R4 (ite (= B6 2) H4 X3))))
      (a!16 (ite (= V5 4) A5 (ite (= V5 3) Q4 (ite (= V5 2) G4 W3))))
      (a!17 (ite (= T6 4) E5 (ite (= T6 3) U4 (ite (= T6 2) K4 A4))))
      (a!18 (ite (= N6 4) D5 (ite (= N6 3) T4 (ite (= N6 2) J4 Z3))))
      (a!19 (ite (= H6 4) C5 (ite (= H6 3) S4 (ite (= H6 2) I4 Y3))))
      (a!20 (ite (= C6 4) B5 (ite (= C6 3) R4 (ite (= C6 2) H4 X3))))
      (a!21 (ite (= W5 4) A5 (ite (= W5 3) Q4 (ite (= W5 2) G4 W3))))
      (a!22 (ite (= U6 4) E5 (ite (= U6 3) U4 (ite (= U6 2) K4 A4))))
      (a!23 (ite (= O6 4) D5 (ite (= O6 3) T4 (ite (= O6 2) J4 Z3))))
      (a!24 (ite (= I6 4) C5 (ite (= I6 3) S4 (ite (= I6 2) I4 Y3))))
      (a!25 (ite (= U6 4) J5 (ite (= U6 3) Z4 (ite (= U6 2) P4 F4))))
      (a!26 (ite (= S6 5) W6 (ite (= S6 4) V6 (ite (= S6 3) U6 T6))))
      (a!32 (ite (= O6 4) I5 (ite (= O6 3) Y4 (ite (= O6 2) O4 E4))))
      (a!33 (ite (= M6 5) Q6 (ite (= M6 4) P6 (ite (= M6 3) O6 N6))))
      (a!39 (ite (= I6 4) H5 (ite (= I6 3) X4 (ite (= I6 2) N4 D4))))
      (a!40 (ite (= G6 5) K6 (ite (= G6 4) J6 (ite (= G6 3) I6 H6))))
      (a!46 (ite (= C6 4) G5 (ite (= C6 3) W4 (ite (= C6 2) M4 C4))))
      (a!47 (ite (= A6 5) E6 (ite (= A6 4) D6 (ite (= A6 3) C6 B6))))
      (a!53 (ite (= W5 4) F5 (ite (= W5 3) V4 (ite (= W5 2) L4 B4))))
      (a!54 (ite (= U5 5) Y5 (ite (= U5 4) X5 (ite (= U5 3) W5 V5))))
      (a!60 (and (<= (+ F5 (* (- 1) G5)) (* 2 O3))
                 (<= (+ F5 (* (- 1) H5)) (* 2 O3))
                 (<= (+ F5 (* (- 1) I5)) (* 2 O3))
                 (<= (+ F5 (* (- 1) J5)) (* 2 O3))
                 (<= (+ G5 (* (- 1) F5)) (* 2 O3))
                 (<= (+ G5 (* (- 1) H5)) (* 2 O3))
                 (<= (+ G5 (* (- 1) I5)) (* 2 O3))
                 (<= (+ G5 (* (- 1) J5)) (* 2 O3))
                 (<= (+ H5 (* (- 1) F5)) (* 2 O3))
                 (<= (+ H5 (* (- 1) G5)) (* 2 O3))
                 (<= (+ H5 (* (- 1) I5)) (* 2 O3))
                 (<= (+ H5 (* (- 1) J5)) (* 2 O3))
                 (<= (+ I5 (* (- 1) F5)) (* 2 O3))
                 (<= (+ I5 (* (- 1) G5)) (* 2 O3))
                 (<= (+ I5 (* (- 1) H5)) (* 2 O3))
                 (<= (+ I5 (* (- 1) J5)) (* 2 O3))
                 (<= (+ J5 (* (- 1) F5)) (* 2 O3))
                 (<= (+ J5 (* (- 1) G5)) (* 2 O3))
                 (<= (+ J5 (* (- 1) H5)) (* 2 O3))
                 (<= (+ J5 (* (- 1) I5)) (* 2 O3))
                 (>= O3 0)))
      (a!61 (and (<= F5 (+ D O3))
                 (<= G5 (+ D O3))
                 (<= H5 (+ D O3))
                 (<= I5 (+ D O3))
                 (<= J5 (+ D O3))
                 (<= (+ D (* (- 1) O3)) F5)
                 (<= (+ D (* (- 1) O3)) G5)
                 (<= (+ D (* (- 1) O3)) H5)
                 (<= (+ D (* (- 1) O3)) I5)
                 (<= (+ D (* (- 1) O3)) J5)))
      (a!62 (and (<= (+ V4 (* (- 1) W4)) (* 2 O3))
                 (<= (+ V4 (* (- 1) X4)) (* 2 O3))
                 (<= (+ V4 (* (- 1) Y4)) (* 2 O3))
                 (<= (+ V4 (* (- 1) Z4)) (* 2 O3))
                 (<= (+ W4 (* (- 1) V4)) (* 2 O3))
                 (<= (+ W4 (* (- 1) X4)) (* 2 O3))
                 (<= (+ W4 (* (- 1) Y4)) (* 2 O3))
                 (<= (+ W4 (* (- 1) Z4)) (* 2 O3))
                 (<= (+ X4 (* (- 1) V4)) (* 2 O3))
                 (<= (+ X4 (* (- 1) W4)) (* 2 O3))
                 (<= (+ X4 (* (- 1) Y4)) (* 2 O3))
                 (<= (+ X4 (* (- 1) Z4)) (* 2 O3))
                 (<= (+ Y4 (* (- 1) V4)) (* 2 O3))
                 (<= (+ Y4 (* (- 1) W4)) (* 2 O3))
                 (<= (+ Y4 (* (- 1) X4)) (* 2 O3))
                 (<= (+ Y4 (* (- 1) Z4)) (* 2 O3))
                 (<= (+ Z4 (* (- 1) V4)) (* 2 O3))
                 (<= (+ Z4 (* (- 1) W4)) (* 2 O3))
                 (<= (+ Z4 (* (- 1) X4)) (* 2 O3))
                 (<= (+ Z4 (* (- 1) Y4)) (* 2 O3))
                 (>= O3 0)))
      (a!63 (and (<= V4 (+ C O3))
                 (<= W4 (+ C O3))
                 (<= X4 (+ C O3))
                 (<= Y4 (+ C O3))
                 (<= Z4 (+ C O3))
                 (<= (+ C (* (- 1) O3)) V4)
                 (<= (+ C (* (- 1) O3)) W4)
                 (<= (+ C (* (- 1) O3)) X4)
                 (<= (+ C (* (- 1) O3)) Y4)
                 (<= (+ C (* (- 1) O3)) Z4)))
      (a!64 (and (<= (+ L4 (* (- 1) M4)) (* 2 O3))
                 (<= (+ L4 (* (- 1) N4)) (* 2 O3))
                 (<= (+ L4 (* (- 1) O4)) (* 2 O3))
                 (<= (+ L4 (* (- 1) P4)) (* 2 O3))
                 (<= (+ M4 (* (- 1) L4)) (* 2 O3))
                 (<= (+ M4 (* (- 1) N4)) (* 2 O3))
                 (<= (+ M4 (* (- 1) O4)) (* 2 O3))
                 (<= (+ M4 (* (- 1) P4)) (* 2 O3))
                 (<= (+ N4 (* (- 1) L4)) (* 2 O3))
                 (<= (+ N4 (* (- 1) M4)) (* 2 O3))
                 (<= (+ N4 (* (- 1) O4)) (* 2 O3))
                 (<= (+ N4 (* (- 1) P4)) (* 2 O3))
                 (<= (+ O4 (* (- 1) L4)) (* 2 O3))
                 (<= (+ O4 (* (- 1) M4)) (* 2 O3))
                 (<= (+ O4 (* (- 1) N4)) (* 2 O3))
                 (<= (+ O4 (* (- 1) P4)) (* 2 O3))
                 (<= (+ P4 (* (- 1) L4)) (* 2 O3))
                 (<= (+ P4 (* (- 1) M4)) (* 2 O3))
                 (<= (+ P4 (* (- 1) N4)) (* 2 O3))
                 (<= (+ P4 (* (- 1) O4)) (* 2 O3))
                 (>= O3 0)))
      (a!65 (and (<= L4 (+ B O3))
                 (<= M4 (+ B O3))
                 (<= N4 (+ B O3))
                 (<= O4 (+ B O3))
                 (<= P4 (+ B O3))
                 (<= (+ B (* (- 1) O3)) L4)
                 (<= (+ B (* (- 1) O3)) M4)
                 (<= (+ B (* (- 1) O3)) N4)
                 (<= (+ B (* (- 1) O3)) O4)
                 (<= (+ B (* (- 1) O3)) P4)))
      (a!66 (and (<= (+ B4 (* (- 1) C4)) (* 2 O3))
                 (<= (+ B4 (* (- 1) D4)) (* 2 O3))
                 (<= (+ B4 (* (- 1) E4)) (* 2 O3))
                 (<= (+ B4 (* (- 1) F4)) (* 2 O3))
                 (<= (+ C4 (* (- 1) B4)) (* 2 O3))
                 (<= (+ C4 (* (- 1) D4)) (* 2 O3))
                 (<= (+ C4 (* (- 1) E4)) (* 2 O3))
                 (<= (+ C4 (* (- 1) F4)) (* 2 O3))
                 (<= (+ D4 (* (- 1) B4)) (* 2 O3))
                 (<= (+ D4 (* (- 1) C4)) (* 2 O3))
                 (<= (+ D4 (* (- 1) E4)) (* 2 O3))
                 (<= (+ D4 (* (- 1) F4)) (* 2 O3))
                 (<= (+ E4 (* (- 1) B4)) (* 2 O3))
                 (<= (+ E4 (* (- 1) C4)) (* 2 O3))
                 (<= (+ E4 (* (- 1) D4)) (* 2 O3))
                 (<= (+ E4 (* (- 1) F4)) (* 2 O3))
                 (<= (+ F4 (* (- 1) B4)) (* 2 O3))
                 (<= (+ F4 (* (- 1) C4)) (* 2 O3))
                 (<= (+ F4 (* (- 1) D4)) (* 2 O3))
                 (<= (+ F4 (* (- 1) E4)) (* 2 O3))
                 (>= O3 0)))
      (a!67 (and (<= B4 (+ A O3))
                 (<= C4 (+ A O3))
                 (<= D4 (+ A O3))
                 (<= E4 (+ A O3))
                 (<= F4 (+ A O3))
                 (<= (+ A (* (- 1) O3)) B4)
                 (<= (+ A (* (- 1) O3)) C4)
                 (<= (+ A (* (- 1) O3)) D4)
                 (<= (+ A (* (- 1) O3)) E4)
                 (<= (+ A (* (- 1) O3)) F4)))
      (a!68 (and (<= (+ P5 (* (- 1) Q5)) (* 2 O3))
                 (<= (+ P5 (* (- 1) R5)) (* 2 O3))
                 (<= (+ P5 (* (- 1) S5)) (* 2 O3))
                 (<= (+ P5 (* (- 1) T5)) (* 2 O3))
                 (<= (+ Q5 (* (- 1) P5)) (* 2 O3))
                 (<= (+ Q5 (* (- 1) R5)) (* 2 O3))
                 (<= (+ Q5 (* (- 1) S5)) (* 2 O3))
                 (<= (+ Q5 (* (- 1) T5)) (* 2 O3))
                 (<= (+ R5 (* (- 1) P5)) (* 2 O3))
                 (<= (+ R5 (* (- 1) Q5)) (* 2 O3))
                 (<= (+ R5 (* (- 1) S5)) (* 2 O3))
                 (<= (+ R5 (* (- 1) T5)) (* 2 O3))
                 (<= (+ S5 (* (- 1) P5)) (* 2 O3))
                 (<= (+ S5 (* (- 1) Q5)) (* 2 O3))
                 (<= (+ S5 (* (- 1) R5)) (* 2 O3))
                 (<= (+ S5 (* (- 1) T5)) (* 2 O3))
                 (<= (+ T5 (* (- 1) P5)) (* 2 O3))
                 (<= (+ T5 (* (- 1) Q5)) (* 2 O3))
                 (<= (+ T5 (* (- 1) R5)) (* 2 O3))
                 (<= (+ T5 (* (- 1) S5)) (* 2 O3))
                 (>= O3 0)))
      (a!69 (and (<= P5 (+ E O3))
                 (<= Q5 (+ E O3))
                 (<= R5 (+ E O3))
                 (<= S5 (+ E O3))
                 (<= T5 (+ E O3))
                 (<= (+ E (* (- 1) O3)) P5)
                 (<= (+ E (* (- 1) O3)) Q5)
                 (<= (+ E (* (- 1) O3)) R5)
                 (<= (+ E (* (- 1) O3)) S5)
                 (<= (+ E (* (- 1) O3)) T5)))
      (a!70 (ite (= E6 4) G5 (ite (= E6 3) W4 (ite (= E6 2) M4 C4))))
      (a!71 (ite (= F6 4) G5 (ite (= F6 3) W4 (ite (= F6 2) M4 C4))))
      (a!73 (ite (= D6 4) G5 (ite (= D6 3) W4 (ite (= D6 2) M4 C4))))
      (a!75 (ite (= B6 4) G5 (ite (= B6 3) W4 (ite (= B6 2) M4 C4))))
      (a!78 (ite (= Y5 4) F5 (ite (= Y5 3) V4 (ite (= Y5 2) L4 B4))))
      (a!79 (ite (= Z5 4) F5 (ite (= Z5 3) V4 (ite (= Z5 2) L4 B4))))
      (a!81 (ite (= X5 4) F5 (ite (= X5 3) V4 (ite (= X5 2) L4 B4))))
      (a!83 (ite (= V5 4) F5 (ite (= V5 3) V4 (ite (= V5 2) L4 B4))))
      (a!86 (ite (= W6 4) J5 (ite (= W6 3) Z4 (ite (= W6 2) P4 F4))))
      (a!87 (ite (= X6 4) J5 (ite (= X6 3) Z4 (ite (= X6 2) P4 F4))))
      (a!89 (ite (= V6 4) J5 (ite (= V6 3) Z4 (ite (= V6 2) P4 F4))))
      (a!91 (ite (= T6 4) J5 (ite (= T6 3) Z4 (ite (= T6 2) P4 F4))))
      (a!94 (ite (= Q6 4) I5 (ite (= Q6 3) Y4 (ite (= Q6 2) O4 E4))))
      (a!95 (ite (= R6 4) I5 (ite (= R6 3) Y4 (ite (= R6 2) O4 E4))))
      (a!97 (ite (= P6 4) I5 (ite (= P6 3) Y4 (ite (= P6 2) O4 E4))))
      (a!99 (ite (= N6 4) I5 (ite (= N6 3) Y4 (ite (= N6 2) O4 E4))))
      (a!102 (ite (= K6 4) H5 (ite (= K6 3) X4 (ite (= K6 2) N4 D4))))
      (a!103 (ite (= L6 4) H5 (ite (= L6 3) X4 (ite (= L6 2) N4 D4))))
      (a!105 (ite (= J6 4) H5 (ite (= J6 3) X4 (ite (= J6 2) N4 D4))))
      (a!107 (ite (= H6 4) H5 (ite (= H6 3) X4 (ite (= H6 2) N4 D4))))
      (a!110 (and (not A5)
                  (not B5)
                  (not C5)
                  (not D5)
                  (not E5)
                  (<= F5 (+ D O3))
                  (<= G5 (+ D O3))
                  (<= H5 (+ D O3))
                  (<= I5 (+ D O3))
                  (<= J5 (+ D O3))
                  (<= (+ D (* (- 1) O3)) F5)
                  (<= (+ D (* (- 1) O3)) G5)
                  (<= (+ D (* (- 1) O3)) H5)
                  (<= (+ D (* (- 1) O3)) I5)
                  (<= (+ D (* (- 1) O3)) J5)))
      (a!111 (and (not Q4)
                  (not R4)
                  (not S4)
                  (not T4)
                  (not U4)
                  (<= V4 (+ C O3))
                  (<= W4 (+ C O3))
                  (<= X4 (+ C O3))
                  (<= Y4 (+ C O3))
                  (<= Z4 (+ C O3))
                  (<= (+ C (* (- 1) O3)) V4)
                  (<= (+ C (* (- 1) O3)) W4)
                  (<= (+ C (* (- 1) O3)) X4)
                  (<= (+ C (* (- 1) O3)) Y4)
                  (<= (+ C (* (- 1) O3)) Z4)))
      (a!112 (and (not G4)
                  (not H4)
                  (not I4)
                  (not J4)
                  (not K4)
                  (<= L4 (+ B O3))
                  (<= M4 (+ B O3))
                  (<= N4 (+ B O3))
                  (<= O4 (+ B O3))
                  (<= P4 (+ B O3))
                  (<= (+ B (* (- 1) O3)) L4)
                  (<= (+ B (* (- 1) O3)) M4)
                  (<= (+ B (* (- 1) O3)) N4)
                  (<= (+ B (* (- 1) O3)) O4)
                  (<= (+ B (* (- 1) O3)) P4)))
      (a!113 (and (not W3)
                  (not X3)
                  (not Y3)
                  (not Z3)
                  (not A4)
                  (<= B4 (+ A O3))
                  (<= C4 (+ A O3))
                  (<= D4 (+ A O3))
                  (<= E4 (+ A O3))
                  (<= F4 (+ A O3))
                  (<= (+ A (* (- 1) O3)) B4)
                  (<= (+ A (* (- 1) O3)) C4)
                  (<= (+ A (* (- 1) O3)) D4)
                  (<= (+ A (* (- 1) O3)) E4)
                  (<= (+ A (* (- 1) O3)) F4)))
      (a!114 (and (not K5)
                  (not L5)
                  (not M5)
                  (not N5)
                  (not O5)
                  (<= P5 (+ E O3))
                  (<= Q5 (+ E O3))
                  (<= R5 (+ E O3))
                  (<= S5 (+ E O3))
                  (<= T5 (+ E O3))
                  (<= (+ E (* (- 1) O3)) P5)
                  (<= (+ E (* (- 1) O3)) Q5)
                  (<= (+ E (* (- 1) O3)) R5)
                  (<= (+ E (* (- 1) O3)) S5)
                  (<= (+ E (* (- 1) O3)) T5)))
      (a!115 (and (<= F5 (+ D O3)) (<= (+ D (* (- 1) O3)) F5)))
      (a!116 (and (<= G5 (+ D O3)) (<= (+ D (* (- 1) O3)) G5)))
      (a!117 (and (<= H5 (+ D O3)) (<= (+ D (* (- 1) O3)) H5)))
      (a!118 (and (<= I5 (+ D O3)) (<= (+ D (* (- 1) O3)) I5)))
      (a!119 (and (<= J5 (+ D O3)) (<= (+ D (* (- 1) O3)) J5)))
      (a!120 (and (<= V4 (+ C O3)) (<= (+ C (* (- 1) O3)) V4)))
      (a!121 (and (<= W4 (+ C O3)) (<= (+ C (* (- 1) O3)) W4)))
      (a!122 (and (<= X4 (+ C O3)) (<= (+ C (* (- 1) O3)) X4)))
      (a!123 (and (<= Y4 (+ C O3)) (<= (+ C (* (- 1) O3)) Y4)))
      (a!124 (and (<= Z4 (+ C O3)) (<= (+ C (* (- 1) O3)) Z4)))
      (a!125 (and (<= L4 (+ B O3)) (<= (+ B (* (- 1) O3)) L4)))
      (a!126 (and (<= M4 (+ B O3)) (<= (+ B (* (- 1) O3)) M4)))
      (a!127 (and (<= N4 (+ B O3)) (<= (+ B (* (- 1) O3)) N4)))
      (a!128 (and (<= O4 (+ B O3)) (<= (+ B (* (- 1) O3)) O4)))
      (a!129 (and (<= P4 (+ B O3)) (<= (+ B (* (- 1) O3)) P4)))
      (a!130 (and (<= B4 (+ A O3)) (<= (+ A (* (- 1) O3)) B4)))
      (a!131 (and (<= C4 (+ A O3)) (<= (+ A (* (- 1) O3)) C4)))
      (a!132 (and (<= D4 (+ A O3)) (<= (+ A (* (- 1) O3)) D4)))
      (a!133 (and (<= E4 (+ A O3)) (<= (+ A (* (- 1) O3)) E4)))
      (a!134 (and (<= F4 (+ A O3)) (<= (+ A (* (- 1) O3)) F4)))
      (a!135 (and (<= P5 (+ E O3)) (<= (+ E (* (- 1) O3)) P5)))
      (a!136 (and (<= Q5 (+ E O3)) (<= (+ E (* (- 1) O3)) Q5)))
      (a!137 (and (<= R5 (+ E O3)) (<= (+ E (* (- 1) O3)) R5)))
      (a!138 (and (<= S5 (+ E O3)) (<= (+ E (* (- 1) O3)) S5)))
      (a!139 (and (<= T5 (+ E O3)) (<= (+ E (* (- 1) O3)) T5)))
      (a!140 (ite (= F6 4) B5 (ite (= F6 3) R4 (ite (= F6 2) H4 X3)))))
(let ((a!27 (ite (= (ite (= S6 6) X6 a!26) 2) P4 F4))
      (a!34 (ite (= (ite (= M6 6) R6 a!33) 2) O4 E4))
      (a!41 (ite (= (ite (= G6 6) L6 a!40) 2) N4 D4))
      (a!48 (ite (= (ite (= A6 6) F6 a!47) 2) M4 C4))
      (a!55 (ite (= (ite (= U5 6) Z5 a!54) 2) L4 B4))
      (a!72 (or (<= A6 4) (<= (ite (= E6 5) Q5 a!70) (ite (= F6 5) Q5 a!71))))
      (a!74 (or (<= A6 3) (<= (ite (= D6 5) Q5 a!73) (ite (= E6 5) Q5 a!70))))
      (a!76 (or (<= A6 1) (<= (ite (= B6 5) Q5 a!75) (ite (= C6 5) Q5 a!46))))
      (a!77 (or (<= A6 2) (<= (ite (= C6 5) Q5 a!46) (ite (= D6 5) Q5 a!73))))
      (a!80 (or (<= U5 4) (<= (ite (= Y5 5) P5 a!78) (ite (= Z5 5) P5 a!79))))
      (a!82 (or (<= U5 3) (<= (ite (= X5 5) P5 a!81) (ite (= Y5 5) P5 a!78))))
      (a!84 (or (<= U5 1) (<= (ite (= V5 5) P5 a!83) (ite (= W5 5) P5 a!53))))
      (a!85 (or (<= U5 2) (<= (ite (= W5 5) P5 a!53) (ite (= X5 5) P5 a!81))))
      (a!88 (or (<= S6 4) (<= (ite (= W6 5) T5 a!86) (ite (= X6 5) T5 a!87))))
      (a!90 (or (<= S6 3) (<= (ite (= V6 5) T5 a!89) (ite (= W6 5) T5 a!86))))
      (a!92 (or (<= S6 1) (<= (ite (= T6 5) T5 a!91) (ite (= U6 5) T5 a!25))))
      (a!93 (or (<= S6 2) (<= (ite (= U6 5) T5 a!25) (ite (= V6 5) T5 a!89))))
      (a!96 (or (<= M6 4) (<= (ite (= Q6 5) S5 a!94) (ite (= R6 5) S5 a!95))))
      (a!98 (or (<= M6 3) (<= (ite (= P6 5) S5 a!97) (ite (= Q6 5) S5 a!94))))
      (a!100 (or (<= M6 1) (<= (ite (= N6 5) S5 a!99) (ite (= O6 5) S5 a!32))))
      (a!101 (or (<= M6 2) (<= (ite (= O6 5) S5 a!32) (ite (= P6 5) S5 a!97))))
      (a!104 (or (<= G6 4) (<= (ite (= K6 5) R5 a!102) (ite (= L6 5) R5 a!103))))
      (a!106 (or (<= G6 3) (<= (ite (= J6 5) R5 a!105) (ite (= K6 5) R5 a!102))))
      (a!108 (or (<= G6 1) (<= (ite (= H6 5) R5 a!107) (ite (= I6 5) R5 a!39))))
      (a!109 (or (<= G6 2) (<= (ite (= I6 5) R5 a!39) (ite (= J6 5) R5 a!105)))))
(let ((a!28 (ite (= (ite (= S6 6) X6 a!26) 3) Z4 a!27))
      (a!35 (ite (= (ite (= M6 6) R6 a!33) 3) Y4 a!34))
      (a!42 (ite (= (ite (= G6 6) L6 a!40) 3) X4 a!41))
      (a!49 (ite (= (ite (= A6 6) F6 a!47) 3) W4 a!48))
      (a!56 (ite (= (ite (= U5 6) Z5 a!54) 3) V4 a!55)))
(let ((a!29 (ite (= (ite (= S6 6) X6 a!26) 4) J5 a!28))
      (a!36 (ite (= (ite (= M6 6) R6 a!33) 4) I5 a!35))
      (a!43 (ite (= (ite (= G6 6) L6 a!40) 4) H5 a!42))
      (a!50 (ite (= (ite (= A6 6) F6 a!47) 4) G5 a!49))
      (a!57 (ite (= (ite (= U5 6) Z5 a!54) 4) F5 a!56)))
(let ((a!30 (ite (= (ite (= S6 6) X6 a!26) 5) T5 a!29))
      (a!37 (ite (= (ite (= M6 6) R6 a!33) 5) S5 a!36))
      (a!44 (ite (= (ite (= G6 6) L6 a!40) 5) R5 a!43))
      (a!51 (ite (= (ite (= A6 6) F6 a!47) 5) Q5 a!50))
      (a!58 (ite (= (ite (= U5 6) Z5 a!54) 5) P5 a!57)))
(let ((a!31 (div (+ (ite (= U6 5) T5 a!25) a!30) 2))
      (a!38 (div (+ (ite (= O6 5) S5 a!32) a!37) 2))
      (a!45 (div (+ (ite (= I6 5) R5 a!39) a!44) 2))
      (a!52 (div (+ (ite (= C6 5) Q5 a!46) a!51) 2))
      (a!59 (div (+ (ite (= W5 5) P5 a!53) a!58) 2)))
  (and (= (not (<= 5 U5)) (ite (= Z5 5) K5 a!1))
       (= (not (<= 5 S6)) (ite (= X6 5) O5 a!2))
       (= (not (<= 5 M6)) (ite (= R6 5) N5 a!3))
       (= (not (<= 5 G6)) (ite (= L6 5) M5 a!4))
       (= (not (<= 4 A6)) (ite (= E6 5) L5 a!5))
       (= (not (<= 4 U5)) (ite (= Y5 5) K5 a!6))
       (= (not (<= 4 S6)) (ite (= W6 5) O5 a!7))
       (= (not (<= 4 M6)) (ite (= Q6 5) N5 a!8))
       (= (not (<= 4 G6)) (ite (= K6 5) M5 a!9))
       (= (not (<= 3 A6)) (ite (= D6 5) L5 a!10))
       (= (not (<= 3 U5)) (ite (= X5 5) K5 a!11))
       (= (not (<= 3 S6)) (ite (= V6 5) O5 a!12))
       (= (not (<= 3 M6)) (ite (= P6 5) N5 a!13))
       (= (not (<= 3 G6)) (ite (= J6 5) M5 a!14))
       (= (not (<= 1 A6)) (ite (= B6 5) L5 a!15))
       (= (not (<= 1 U5)) (ite (= V5 5) K5 a!16))
       (= (not (<= 1 S6)) (ite (= T6 5) O5 a!17))
       (= (not (<= 1 M6)) (ite (= N6 5) N5 a!18))
       (= (not (<= 1 G6)) (ite (= H6 5) M5 a!19))
       (= (not (<= 2 A6)) (ite (= C6 5) L5 a!20))
       (= (not (<= 2 U5)) (ite (= W5 5) K5 a!21))
       (= (not (<= 2 S6)) (ite (= U6 5) O5 a!22))
       (= (not (<= 2 M6)) (ite (= O6 5) N5 a!23))
       (= (not (<= 2 G6)) (ite (= I6 5) M5 a!24))
       (not (= E6 D6))
       (not (= E6 C6))
       (not (= E6 B6))
       (not (= E6 F6))
       (not (= D6 E6))
       (not (= D6 C6))
       (not (= D6 B6))
       (not (= D6 F6))
       (not (= C6 E6))
       (not (= C6 D6))
       (not (= C6 B6))
       (not (= C6 F6))
       (not (= B6 E6))
       (not (= B6 D6))
       (not (= B6 C6))
       (not (= B6 F6))
       (not (= Z5 Y5))
       (not (= Z5 X5))
       (not (= Z5 W5))
       (not (= Z5 V5))
       (not (= Y5 Z5))
       (not (= Y5 X5))
       (not (= Y5 W5))
       (not (= Y5 V5))
       (not (= X5 Z5))
       (not (= X5 Y5))
       (not (= X5 W5))
       (not (= X5 V5))
       (not (= W5 Z5))
       (not (= W5 Y5))
       (not (= W5 X5))
       (not (= W5 V5))
       (not (= V5 Z5))
       (not (= V5 Y5))
       (not (= V5 X5))
       (not (= V5 W5))
       (= D7 (+ (div N3 2) (* 2 O3)))
       (= C7 (ite (<= S6 1) 0 a!31))
       (= B7 (ite (<= M6 1) 0 a!38))
       (= A7 (ite (<= G6 1) 0 a!45))
       (= Z6 (ite (<= A6 1) 0 a!52))
       (= Y6 (ite (<= U5 1) 0 a!59))
       (not (= X6 W6))
       (not (= X6 V6))
       (not (= X6 U6))
       (not (= X6 T6))
       (not (= W6 X6))
       (not (= W6 V6))
       (not (= W6 U6))
       (not (= W6 T6))
       (not (= V6 X6))
       (not (= V6 W6))
       (not (= V6 U6))
       (not (= V6 T6))
       (not (= U6 X6))
       (not (= U6 W6))
       (not (= U6 V6))
       (not (= U6 T6))
       (not (= T6 X6))
       (not (= T6 W6))
       (not (= T6 V6))
       (not (= T6 U6))
       (not (= R6 Q6))
       (not (= R6 P6))
       (not (= R6 O6))
       (not (= R6 N6))
       (not (= Q6 R6))
       (not (= Q6 P6))
       (not (= Q6 O6))
       (not (= Q6 N6))
       (not (= P6 R6))
       (not (= P6 Q6))
       (not (= P6 O6))
       (not (= P6 N6))
       (not (= O6 R6))
       (not (= O6 Q6))
       (not (= O6 P6))
       (not (= O6 N6))
       (not (= N6 R6))
       (not (= N6 Q6))
       (not (= N6 P6))
       (not (= N6 O6))
       (not (= L6 K6))
       (not (= L6 J6))
       (not (= L6 I6))
       (not (= L6 H6))
       (not (= K6 L6))
       (not (= K6 J6))
       (not (= K6 I6))
       (not (= K6 H6))
       (not (= J6 L6))
       (not (= J6 K6))
       (not (= J6 I6))
       (not (= J6 H6))
       (not (= I6 L6))
       (not (= I6 K6))
       (not (= I6 J6))
       (not (= I6 H6))
       (not (= H6 L6))
       (not (= H6 K6))
       (not (= H6 J6))
       (not (= H6 I6))
       (not (= F6 E6))
       (not (= F6 D6))
       (not (= F6 C6))
       (not (= F6 B6))
       (= V3 L3)
       (= U3 K3)
       (= T3 J3)
       (= S3 I3)
       (= R3 H3)
       (= Q3 (+ 1 M3))
       (= P3 O3)
       (or (= A6 0) (= A6 2) (= A6 1) (= A6 3) (= A6 4) (= A6 5))
       (or (= U5 0) (= U5 2) (= U5 1) (= U5 3) (= U5 4) (= U5 5))
       (or (= G3 0) (= G3 2) (= G3 1) (= G3 3) (= G3 4) (= G3 5))
       (or (= F3 0) (= F3 2) (= F3 1) (= F3 3) (= F3 4) (= F3 5))
       (or (= E3 0) (= E3 2) (= E3 1) (= E3 3) (= E3 4) (= E3 5))
       (or (= D3 0) (= D3 2) (= D3 1) (= D3 3) (= D3 4) (= D3 5))
       (or (= C3 0) (= C3 2) (= C3 1) (= C3 3) (= C3 4) (= C3 5))
       (or (= S6 0) (= S6 2) (= S6 1) (= S6 3) (= S6 4) (= S6 5))
       (or (= M6 0) (= M6 2) (= M6 1) (= M6 3) (= M6 4) (= M6 5))
       (or (= G6 0) (= G6 2) (= G6 1) (= G6 3) (= G6 4) (= G6 5))
       (or (= E6 2) (= E6 1) (= E6 3) (= E6 4) (= E6 5))
       (or (= D6 2) (= D6 1) (= D6 3) (= D6 4) (= D6 5))
       (or (= C6 2) (= C6 1) (= C6 3) (= C6 4) (= C6 5))
       (or (= B6 2) (= B6 1) (= B6 3) (= B6 4) (= B6 5))
       (or (= Z5 2) (= Z5 1) (= Z5 3) (= Z5 4) (= Z5 5))
       (or (= Y5 2) (= Y5 1) (= Y5 3) (= Y5 4) (= Y5 5))
       (or (= X5 2) (= X5 1) (= X5 3) (= X5 4) (= X5 5))
       (or (= W5 2) (= W5 1) (= W5 3) (= W5 4) (= W5 5))
       (or (= V5 2) (= V5 1) (= V5 3) (= V5 4) (= V5 5))
       (or (= B3 2) (= B3 1) (= B3 3) (= B3 4) (= B3 5))
       (or (= A3 2) (= A3 1) (= A3 3) (= A3 4) (= A3 5))
       (or (= Z2 2) (= Z2 1) (= Z2 3) (= Z2 4) (= Z2 5))
       (or (= Y2 2) (= Y2 1) (= Y2 3) (= Y2 4) (= Y2 5))
       (or (= X2 2) (= X2 1) (= X2 3) (= X2 4) (= X2 5))
       (or (= W2 2) (= W2 1) (= W2 3) (= W2 4) (= W2 5))
       (or (= V2 2) (= V2 1) (= V2 3) (= V2 4) (= V2 5))
       (or (= U2 2) (= U2 1) (= U2 3) (= U2 4) (= U2 5))
       (or (= T2 2) (= T2 1) (= T2 3) (= T2 4) (= T2 5))
       (or (= S2 2) (= S2 1) (= S2 3) (= S2 4) (= S2 5))
       (or (= R2 2) (= R2 1) (= R2 3) (= R2 4) (= R2 5))
       (or (= Q2 2) (= Q2 1) (= Q2 3) (= Q2 4) (= Q2 5))
       (or (= P2 2) (= P2 1) (= P2 3) (= P2 4) (= P2 5))
       (or (= O2 2) (= O2 1) (= O2 3) (= O2 4) (= O2 5))
       (or (= N2 2) (= N2 1) (= N2 3) (= N2 4) (= N2 5))
       (or (= M2 2) (= M2 1) (= M2 3) (= M2 4) (= M2 5))
       (or (= L2 2) (= L2 1) (= L2 3) (= L2 4) (= L2 5))
       (or (= K2 2) (= K2 1) (= K2 3) (= K2 4) (= K2 5))
       (or (= J2 2) (= J2 1) (= J2 3) (= J2 4) (= J2 5))
       (or (= I2 2) (= I2 1) (= I2 3) (= I2 4) (= I2 5))
       (or (= H2 2) (= H2 1) (= H2 3) (= H2 4) (= H2 5))
       (or (= G2 2) (= G2 1) (= G2 3) (= G2 4) (= G2 5))
       (or (= F2 2) (= F2 1) (= F2 3) (= F2 4) (= F2 5))
       (or (= E2 2) (= E2 1) (= E2 3) (= E2 4) (= E2 5))
       (or (= D2 2) (= D2 1) (= D2 3) (= D2 4) (= D2 5))
       (or (= X6 2) (= X6 1) (= X6 3) (= X6 4) (= X6 5))
       (or (= W6 2) (= W6 1) (= W6 3) (= W6 4) (= W6 5))
       (or (= V6 2) (= V6 1) (= V6 3) (= V6 4) (= V6 5))
       (or (= U6 2) (= U6 1) (= U6 3) (= U6 4) (= U6 5))
       (or (= T6 2) (= T6 1) (= T6 3) (= T6 4) (= T6 5))
       (or (= R6 2) (= R6 1) (= R6 3) (= R6 4) (= R6 5))
       (or (= Q6 2) (= Q6 1) (= Q6 3) (= Q6 4) (= Q6 5))
       (or (= P6 2) (= P6 1) (= P6 3) (= P6 4) (= P6 5))
       (or (= O6 2) (= O6 1) (= O6 3) (= O6 4) (= O6 5))
       (or (= N6 2) (= N6 1) (= N6 3) (= N6 4) (= N6 5))
       (or (= L6 2) (= L6 1) (= L6 3) (= L6 4) (= L6 5))
       (or (= K6 2) (= K6 1) (= K6 3) (= K6 4) (= K6 5))
       (or (= J6 2) (= J6 1) (= J6 3) (= J6 4) (= J6 5))
       (or (= I6 2) (= I6 1) (= I6 3) (= I6 4) (= I6 5))
       (or (= H6 2) (= H6 1) (= H6 3) (= H6 4) (= H6 5))
       (or (= F6 2) (= F6 1) (= F6 3) (= F6 4) (= F6 5))
       (or (and A5 B5 C5 D5 E5) a!60 (not (= K3 3)))
       (or (and A5 B5 C5 D5 E5) a!61 (not (= K3 1)))
       (or (and Q4 R4 S4 T4 U4) a!62 (not (= J3 3)))
       (or (and Q4 R4 S4 T4 U4) a!63 (not (= J3 1)))
       (or (and G4 H4 I4 J4 K4) a!64 (not (= I3 3)))
       (or (and G4 H4 I4 J4 K4) a!65 (not (= I3 1)))
       (or (and W3 X3 Y3 Z3 A4) a!66 (not (= H3 3)))
       (or (and W3 X3 Y3 Z3 A4) a!67 (not (= H3 1)))
       (or (and K5 L5 M5 N5 O5) a!68 (not (= L3 3)))
       (or (and K5 L5 M5 N5 O5) a!69 (not (= L3 1)))
       a!72
       a!74
       a!76
       a!77
       a!80
       a!82
       a!84
       a!85
       a!88
       a!90
       a!92
       a!93
       a!96
       a!98
       a!100
       a!101
       a!104
       a!106
       a!108
       a!109
       (or a!110 (not (= K3 0)))
       (or a!111 (not (= J3 0)))
       (or a!112 (not (= I3 0)))
       (or a!113 (not (= H3 0)))
       (or a!114 (not (= L3 0)))
       (or (and (or A5 a!115)
                (or B5 a!116)
                (or C5 a!117)
                (or D5 a!118)
                (or E5 a!119))
           (not (= K3 2)))
       (or (and (or Q4 a!120)
                (or R4 a!121)
                (or S4 a!122)
                (or T4 a!123)
                (or U4 a!124))
           (not (= J3 2)))
       (or (and (or G4 a!125)
                (or H4 a!126)
                (or I4 a!127)
                (or J4 a!128)
                (or K4 a!129))
           (not (= I3 2)))
       (or (and (or W3 a!130)
                (or X3 a!131)
                (or Y3 a!132)
                (or Z3 a!133)
                (or A4 a!134))
           (not (= H3 2)))
       (or (and (or K5 a!135)
                (or L5 a!136)
                (or M5 a!137)
                (or N5 a!138)
                (or O5 a!139))
           (not (= L3 2)))
       (= (not (<= 5 A6)) (ite (= F6 5) L5 a!140)))))))))
      )
      (invariant Y6
           Z6
           A7
           B7
           C7
           W3
           G4
           Q4
           A5
           K5
           X3
           H4
           R4
           B5
           L5
           Y3
           I4
           S4
           C5
           M5
           Z3
           J4
           T4
           D5
           N5
           A4
           K4
           U4
           E5
           O5
           B4
           L4
           V4
           F5
           P5
           C4
           M4
           W4
           G5
           Q5
           D4
           N4
           X4
           H5
           R5
           E4
           O4
           Y4
           I5
           S5
           F4
           P4
           Z4
           J5
           T5
           V5
           W5
           X5
           Y5
           Z5
           B6
           C6
           D6
           E6
           F6
           H6
           I6
           J6
           K6
           L6
           N6
           O6
           P6
           Q6
           R6
           T6
           U6
           V6
           W6
           X6
           U5
           A6
           G6
           M6
           S6
           R3
           S3
           T3
           U3
           V3
           Q3
           D7
           P3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) (B1 Bool) (C1 Bool) (D1 Bool) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) ) 
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
           I2
           J2
           K2
           L2
           M2
           N2
           O2
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
           O3)
        (let ((a!1 (not (<= (+ A (* (- 1) B)) N3)))
      (a!2 (not (<= (+ A (* (- 1) C)) N3)))
      (a!3 (not (<= (+ A (* (- 1) D)) N3)))
      (a!4 (not (<= (+ A (* (- 1) E)) N3)))
      (a!5 (not (<= (+ B (* (- 1) A)) N3)))
      (a!6 (not (<= (+ B (* (- 1) C)) N3)))
      (a!7 (not (<= (+ B (* (- 1) D)) N3)))
      (a!8 (not (<= (+ B (* (- 1) E)) N3)))
      (a!9 (not (<= (+ C (* (- 1) A)) N3)))
      (a!10 (not (<= (+ C (* (- 1) B)) N3)))
      (a!11 (not (<= (+ C (* (- 1) D)) N3)))
      (a!12 (not (<= (+ C (* (- 1) E)) N3)))
      (a!13 (not (<= (+ D (* (- 1) A)) N3)))
      (a!14 (not (<= (+ D (* (- 1) B)) N3)))
      (a!15 (not (<= (+ D (* (- 1) C)) N3)))
      (a!16 (not (<= (+ D (* (- 1) E)) N3)))
      (a!17 (not (<= (+ E (* (- 1) A)) N3)))
      (a!18 (not (<= (+ E (* (- 1) B)) N3)))
      (a!19 (not (<= (+ E (* (- 1) C)) N3)))
      (a!20 (not (<= (+ E (* (- 1) D)) N3))))
  (or a!1
      a!2
      a!3
      a!4
      a!5
      a!6
      a!7
      a!8
      a!9
      a!10
      a!11
      a!12
      a!13
      a!14
      a!15
      a!16
      a!17
      a!18
      a!19
      a!20
      (not (<= 0 N3))))
      )
      false
    )
  )
)

(check-sat)
(exit)
