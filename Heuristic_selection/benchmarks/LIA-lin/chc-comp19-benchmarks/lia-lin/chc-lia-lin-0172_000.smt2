(set-logic HORN)

(declare-fun |invariant| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) ) 
    (=>
      (and
        (and (= J1 0)
     (= I1 0)
     (= H1 2)
     (= G1 4)
     (= F1 0)
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
     (= K 5)
     (= J 4)
     (= I 3)
     (= H 2)
     (= G 1)
     (<= 0 A)
     (<= (+ F (* (- 1) E)) A)
     (<= (+ F (* (- 1) D)) A)
     (<= (+ F (* (- 1) C)) A)
     (<= (+ F (* (- 1) B)) A)
     (<= (+ E (* (- 1) F)) A)
     (<= (+ E (* (- 1) D)) A)
     (<= (+ E (* (- 1) C)) A)
     (<= (+ E (* (- 1) B)) A)
     (<= (+ D (* (- 1) F)) A)
     (<= (+ D (* (- 1) E)) A)
     (<= (+ D (* (- 1) C)) A)
     (<= (+ D (* (- 1) B)) A)
     (<= (+ C (* (- 1) F)) A)
     (<= (+ C (* (- 1) E)) A)
     (<= (+ C (* (- 1) D)) A)
     (<= (+ C (* (- 1) B)) A)
     (<= (+ B (* (- 1) F)) A)
     (<= (+ B (* (- 1) E)) A)
     (<= (+ B (* (- 1) D)) A)
     (<= (+ B (* (- 1) C)) A)
     (not (<= F 0))
     (not (<= E 0))
     (not (<= D 0))
     (not (<= C 0))
     (not (<= B 0))
     (not (<= A 0))
     (or (= P1 0) (= P1 1) (= P1 2) (= P1 3) (= P1 4) (= P1 5))
     (or (= O1 0) (= O1 1) (= O1 2) (= O1 3) (= O1 4) (= O1 5))
     (or (= N1 0) (= N1 1) (= N1 2) (= N1 3) (= N1 4) (= N1 5))
     (or (= M1 0) (= M1 1) (= M1 2) (= M1 3) (= M1 4) (= M1 5))
     (or (= L1 0) (= L1 1) (= L1 2) (= L1 3) (= L1 4) (= L1 5))
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
     (or (= K 1) (= K 2) (= K 3) (= K 4) (= K 5))
     (or (= J 1) (= J 2) (= J 3) (= J 4) (= J 5))
     (or (= I 1) (= I 2) (= I 3) (= I 4) (= I 5))
     (or (= H 1) (= H 2) (= H 3) (= H 4) (= H 5))
     (or (= G 1) (= G 2) (= G 3) (= G 4) (= G 5))
     (= K1 0))
      )
      (invariant B
           C
           D
           E
           F
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
           L1
           M1
           N1
           O1
           P1
           G1
           H1
           I1
           J1
           K1
           F1
           A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) ) 
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
           O2)
        (let ((a!1 (ite (= R4 4) N3 (ite (= R4 3) I3 (ite (= R4 2) D3 Y2))))
      (a!3 (ite (= L4 4) M3 (ite (= L4 3) H3 (ite (= L4 2) C3 X2))))
      (a!5 (ite (= F4 4) L3 (ite (= F4 3) G3 (ite (= F4 2) B3 W2))))
      (a!7 (ite (= Z3 4) K3 (ite (= Z3 3) F3 (ite (= Z3 2) A3 V2))))
      (a!9 (ite (= W4 4) O3 (ite (= W4 3) J3 (ite (= W4 2) E3 Z2))))
      (a!11 (ite (= Q4 4) N3 (ite (= Q4 3) I3 (ite (= Q4 2) D3 Y2))))
      (a!13 (ite (= K4 4) M3 (ite (= K4 3) H3 (ite (= K4 2) C3 X2))))
      (a!15 (ite (= E4 4) L3 (ite (= E4 3) G3 (ite (= E4 2) B3 W2))))
      (a!17 (ite (= Y3 4) K3 (ite (= Y3 3) F3 (ite (= Y3 2) A3 V2))))
      (a!19 (ite (= V4 4) O3 (ite (= V4 3) J3 (ite (= V4 2) E3 Z2))))
      (a!21 (ite (= P4 4) N3 (ite (= P4 3) I3 (ite (= P4 2) D3 Y2))))
      (a!23 (ite (= J4 4) M3 (ite (= J4 3) H3 (ite (= J4 2) C3 X2))))
      (a!25 (ite (= D4 4) L3 (ite (= D4 3) G3 (ite (= D4 2) B3 W2))))
      (a!27 (ite (= X3 4) K3 (ite (= X3 3) F3 (ite (= X3 2) A3 V2))))
      (a!29 (ite (= U4 4) O3 (ite (= U4 3) J3 (ite (= U4 2) E3 Z2))))
      (a!31 (ite (= O4 4) N3 (ite (= O4 3) I3 (ite (= O4 2) D3 Y2))))
      (a!33 (ite (= I4 4) M3 (ite (= I4 3) H3 (ite (= I4 2) C3 X2))))
      (a!35 (ite (= C4 4) L3 (ite (= C4 3) G3 (ite (= C4 2) B3 W2))))
      (a!37 (ite (= W3 4) K3 (ite (= W3 3) F3 (ite (= W3 2) A3 V2))))
      (a!39 (ite (= T4 4) O3 (ite (= T4 3) J3 (ite (= T4 2) E3 Z2))))
      (a!41 (ite (= N4 4) N3 (ite (= N4 3) I3 (ite (= N4 2) D3 Y2))))
      (a!43 (ite (= H4 4) M3 (ite (= H4 3) H3 (ite (= H4 2) C3 X2))))
      (a!45 (ite (= B4 4) L3 (ite (= B4 3) G3 (ite (= B4 2) B3 W2))))
      (a!47 (ite (= V3 4) K3 (ite (= V3 3) F3 (ite (= V3 2) A3 V2))))
      (a!49 (ite (= S4 5) W4 (ite (= S4 4) V4 (ite (= S4 3) U4 T4))))
      (a!55 (ite (= M4 5) Q4 (ite (= M4 4) P4 (ite (= M4 3) O4 N4))))
      (a!61 (ite (= G4 5) K4 (ite (= G4 4) J4 (ite (= G4 3) I4 H4))))
      (a!67 (ite (= A4 5) E4 (ite (= A4 4) D4 (ite (= A4 3) C4 B4))))
      (a!73 (ite (= U3 5) Y3 (ite (= U3 4) X3 (ite (= U3 3) W3 V3))))
      (a!79 (ite (= X4 4) O3 (ite (= X4 3) J3 (ite (= X4 2) E3 Z2))))
      (a!100 (or (and (or (= P3 E) (= P3 0))
                      (or (= Q3 E) (= Q3 0))
                      (or (= R3 E) (= R3 0))
                      (or (= S3 E) (= S3 0))
                      (or (= T3 E) (= T3 0)))
                 (not (= M2 2))))
      (a!101 (or (and (or (= K3 D) (= K3 0))
                      (or (= L3 D) (= L3 0))
                      (or (= M3 D) (= M3 0))
                      (or (= N3 D) (= N3 0))
                      (or (= O3 D) (= O3 0)))
                 (not (= L2 2))))
      (a!102 (or (and (or (= F3 C) (= F3 0))
                      (or (= G3 C) (= G3 0))
                      (or (= H3 C) (= H3 0))
                      (or (= I3 C) (= I3 0))
                      (or (= J3 C) (= J3 0)))
                 (not (= K2 2))))
      (a!103 (or (and (or (= A3 B) (= A3 0))
                      (or (= B3 B) (= B3 0))
                      (or (= C3 B) (= C3 0))
                      (or (= D3 B) (= D3 0))
                      (or (= E3 B) (= E3 0)))
                 (not (= J2 2))))
      (a!104 (or (and (or (= V2 A) (= V2 0))
                      (or (= W2 A) (= W2 0))
                      (or (= X2 A) (= X2 0))
                      (or (= Y2 A) (= Y2 0))
                      (or (= Z2 A) (= Z2 0)))
                 (not (= I2 2)))))
(let ((a!2 (= (not (<= 5 M4)) (= (ite (= R4 5) S3 a!1) 0)))
      (a!4 (= (not (<= 5 G4)) (= (ite (= L4 5) R3 a!3) 0)))
      (a!6 (= (not (<= 5 A4)) (= (ite (= F4 5) Q3 a!5) 0)))
      (a!8 (= (not (<= 5 U3)) (= (ite (= Z3 5) P3 a!7) 0)))
      (a!10 (= (not (<= 4 S4)) (= (ite (= W4 5) T3 a!9) 0)))
      (a!12 (= (not (<= 4 M4)) (= (ite (= Q4 5) S3 a!11) 0)))
      (a!14 (= (not (<= 4 G4)) (= (ite (= K4 5) R3 a!13) 0)))
      (a!16 (= (not (<= 4 A4)) (= (ite (= E4 5) Q3 a!15) 0)))
      (a!18 (= (not (<= 4 U3)) (= (ite (= Y3 5) P3 a!17) 0)))
      (a!20 (= (not (<= 3 S4)) (= (ite (= V4 5) T3 a!19) 0)))
      (a!22 (= (not (<= 3 M4)) (= (ite (= P4 5) S3 a!21) 0)))
      (a!24 (= (not (<= 3 G4)) (= (ite (= J4 5) R3 a!23) 0)))
      (a!26 (= (not (<= 3 A4)) (= (ite (= D4 5) Q3 a!25) 0)))
      (a!28 (= (not (<= 3 U3)) (= (ite (= X3 5) P3 a!27) 0)))
      (a!30 (= (not (<= 2 S4)) (= (ite (= U4 5) T3 a!29) 0)))
      (a!32 (= (not (<= 2 M4)) (= (ite (= O4 5) S3 a!31) 0)))
      (a!34 (= (not (<= 2 G4)) (= (ite (= I4 5) R3 a!33) 0)))
      (a!36 (= (not (<= 2 A4)) (= (ite (= C4 5) Q3 a!35) 0)))
      (a!38 (= (not (<= 2 U3)) (= (ite (= W3 5) P3 a!37) 0)))
      (a!40 (= (not (<= 1 S4)) (= (ite (= T4 5) T3 a!39) 0)))
      (a!42 (= (not (<= 1 M4)) (= (ite (= N4 5) S3 a!41) 0)))
      (a!44 (= (not (<= 1 G4)) (= (ite (= H4 5) R3 a!43) 0)))
      (a!46 (= (not (<= 1 A4)) (= (ite (= B4 5) Q3 a!45) 0)))
      (a!48 (= (not (<= 1 U3)) (= (ite (= V3 5) P3 a!47) 0)))
      (a!50 (ite (= (ite (= S4 6) X4 a!49) 2) E3 Z2))
      (a!56 (ite (= (ite (= M4 6) R4 a!55) 2) D3 Y2))
      (a!62 (ite (= (ite (= G4 6) L4 a!61) 2) C3 X2))
      (a!68 (ite (= (ite (= A4 6) F4 a!67) 2) B3 W2))
      (a!74 (ite (= (ite (= U3 6) Z3 a!73) 2) A3 V2))
      (a!80 (or (<= S4 4) (<= (ite (= W4 5) T3 a!9) (ite (= X4 5) T3 a!79))))
      (a!81 (or (<= S4 3) (<= (ite (= V4 5) T3 a!19) (ite (= W4 5) T3 a!9))))
      (a!82 (or (<= S4 2) (<= (ite (= U4 5) T3 a!29) (ite (= V4 5) T3 a!19))))
      (a!83 (or (<= S4 1) (<= (ite (= T4 5) T3 a!39) (ite (= U4 5) T3 a!29))))
      (a!84 (or (<= M4 4) (<= (ite (= Q4 5) S3 a!11) (ite (= R4 5) S3 a!1))))
      (a!85 (or (<= M4 3) (<= (ite (= P4 5) S3 a!21) (ite (= Q4 5) S3 a!11))))
      (a!86 (or (<= M4 2) (<= (ite (= O4 5) S3 a!31) (ite (= P4 5) S3 a!21))))
      (a!87 (or (<= M4 1) (<= (ite (= N4 5) S3 a!41) (ite (= O4 5) S3 a!31))))
      (a!88 (or (<= G4 4) (<= (ite (= K4 5) R3 a!13) (ite (= L4 5) R3 a!3))))
      (a!89 (or (<= G4 3) (<= (ite (= J4 5) R3 a!23) (ite (= K4 5) R3 a!13))))
      (a!90 (or (<= G4 2) (<= (ite (= I4 5) R3 a!33) (ite (= J4 5) R3 a!23))))
      (a!91 (or (<= G4 1) (<= (ite (= H4 5) R3 a!43) (ite (= I4 5) R3 a!33))))
      (a!92 (or (<= A4 4) (<= (ite (= E4 5) Q3 a!15) (ite (= F4 5) Q3 a!5))))
      (a!93 (or (<= A4 3) (<= (ite (= D4 5) Q3 a!25) (ite (= E4 5) Q3 a!15))))
      (a!94 (or (<= A4 2) (<= (ite (= C4 5) Q3 a!35) (ite (= D4 5) Q3 a!25))))
      (a!95 (or (<= A4 1) (<= (ite (= B4 5) Q3 a!45) (ite (= C4 5) Q3 a!35))))
      (a!96 (or (<= U3 4) (<= (ite (= Y3 5) P3 a!17) (ite (= Z3 5) P3 a!7))))
      (a!97 (or (<= U3 3) (<= (ite (= X3 5) P3 a!27) (ite (= Y3 5) P3 a!17))))
      (a!98 (or (<= U3 2) (<= (ite (= W3 5) P3 a!37) (ite (= X3 5) P3 a!27))))
      (a!99 (or (<= U3 1) (<= (ite (= V3 5) P3 a!47) (ite (= W3 5) P3 a!37))))
      (a!105 (= (not (<= 5 S4)) (= (ite (= X4 5) T3 a!79) 0))))
(let ((a!51 (ite (= (ite (= S4 6) X4 a!49) 3) J3 a!50))
      (a!57 (ite (= (ite (= M4 6) R4 a!55) 3) I3 a!56))
      (a!63 (ite (= (ite (= G4 6) L4 a!61) 3) H3 a!62))
      (a!69 (ite (= (ite (= A4 6) F4 a!67) 3) G3 a!68))
      (a!75 (ite (= (ite (= U3 6) Z3 a!73) 3) F3 a!74)))
(let ((a!52 (ite (= (ite (= S4 6) X4 a!49) 4) O3 a!51))
      (a!58 (ite (= (ite (= M4 6) R4 a!55) 4) N3 a!57))
      (a!64 (ite (= (ite (= G4 6) L4 a!61) 4) M3 a!63))
      (a!70 (ite (= (ite (= A4 6) F4 a!67) 4) L3 a!69))
      (a!76 (ite (= (ite (= U3 6) Z3 a!73) 4) K3 a!75)))
(let ((a!53 (ite (= (ite (= S4 6) X4 a!49) 5) T3 a!52))
      (a!59 (ite (= (ite (= M4 6) R4 a!55) 5) S3 a!58))
      (a!65 (ite (= (ite (= G4 6) L4 a!61) 5) R3 a!64))
      (a!71 (ite (= (ite (= A4 6) F4 a!67) 5) Q3 a!70))
      (a!77 (ite (= (ite (= U3 6) Z3 a!73) 5) P3 a!76)))
(let ((a!54 (div (+ (ite (= U4 5) T3 a!29) a!53) 2))
      (a!60 (div (+ (ite (= O4 5) S3 a!31) a!59) 2))
      (a!66 (div (+ (ite (= I4 5) R3 a!33) a!65) 2))
      (a!72 (div (+ (ite (= C4 5) Q3 a!35) a!71) 2))
      (a!78 (div (+ (ite (= W3 5) P3 a!37) a!77) 2)))
  (and a!2
       a!4
       a!6
       a!8
       a!10
       a!12
       a!14
       a!16
       a!18
       a!20
       a!22
       a!24
       a!26
       a!28
       a!30
       a!32
       a!34
       a!36
       a!38
       a!40
       a!42
       a!44
       a!46
       a!48
       (= D5 (div O2 2))
       (= C5 (ite (<= S4 1) 0 a!54))
       (= B5 (ite (<= M4 1) 0 a!60))
       (= A5 (ite (<= G4 1) 0 a!66))
       (= Z4 (ite (<= A4 1) 0 a!72))
       (= Y4 (ite (<= U3 1) 0 a!78))
       (not (= X4 W4))
       (not (= X4 V4))
       (not (= X4 U4))
       (not (= X4 T4))
       (not (= W4 X4))
       (not (= W4 V4))
       (not (= W4 U4))
       (not (= W4 T4))
       (not (= V4 X4))
       (not (= V4 W4))
       (not (= V4 U4))
       (not (= V4 T4))
       (not (= U4 X4))
       (not (= U4 W4))
       (not (= U4 V4))
       (not (= U4 T4))
       (not (= T4 X4))
       (not (= T4 W4))
       (not (= T4 V4))
       (not (= T4 U4))
       (not (= R4 Q4))
       (not (= R4 P4))
       (not (= R4 O4))
       (not (= R4 N4))
       (not (= Q4 R4))
       (not (= Q4 P4))
       (not (= Q4 O4))
       (not (= Q4 N4))
       (not (= P4 R4))
       (not (= P4 Q4))
       (not (= P4 O4))
       (not (= P4 N4))
       (not (= O4 R4))
       (not (= O4 Q4))
       (not (= O4 P4))
       (not (= O4 N4))
       (not (= N4 R4))
       (not (= N4 Q4))
       (not (= N4 P4))
       (not (= N4 O4))
       (not (= L4 K4))
       (not (= L4 J4))
       (not (= L4 I4))
       (not (= L4 H4))
       (not (= K4 L4))
       (not (= K4 J4))
       (not (= K4 I4))
       (not (= K4 H4))
       (not (= J4 L4))
       (not (= J4 K4))
       (not (= J4 I4))
       (not (= J4 H4))
       (not (= I4 L4))
       (not (= I4 K4))
       (not (= I4 J4))
       (not (= I4 H4))
       (not (= H4 L4))
       (not (= H4 K4))
       (not (= H4 J4))
       (not (= H4 I4))
       (not (= F4 E4))
       (not (= F4 D4))
       (not (= F4 C4))
       (not (= F4 B4))
       (not (= E4 F4))
       (not (= E4 D4))
       (not (= E4 C4))
       (not (= E4 B4))
       (not (= D4 F4))
       (not (= D4 E4))
       (not (= D4 C4))
       (not (= D4 B4))
       (not (= C4 F4))
       (not (= C4 E4))
       (not (= C4 D4))
       (not (= C4 B4))
       (not (= B4 F4))
       (not (= B4 E4))
       (not (= B4 D4))
       (not (= B4 C4))
       (not (= Z3 Y3))
       (not (= Z3 X3))
       (not (= Z3 W3))
       (not (= Z3 V3))
       (not (= Y3 Z3))
       (not (= Y3 X3))
       (not (= Y3 W3))
       (not (= Y3 V3))
       (not (= X3 Z3))
       (not (= X3 Y3))
       (not (= X3 W3))
       (not (= X3 V3))
       (not (= W3 Z3))
       (not (= W3 Y3))
       (not (= W3 X3))
       (not (= W3 V3))
       (not (= V3 Z3))
       (not (= V3 Y3))
       (not (= V3 X3))
       (not (= V3 W3))
       (= U2 M2)
       (= T2 L2)
       (= S2 K2)
       (= R2 J2)
       (= Q2 I2)
       (= P2 (+ 1 N2))
       (or (= H2 0) (= H2 1) (= H2 2) (= H2 3) (= H2 4) (= H2 5))
       (or (= G2 0) (= G2 1) (= G2 2) (= G2 3) (= G2 4) (= G2 5))
       (or (= F2 0) (= F2 1) (= F2 2) (= F2 3) (= F2 4) (= F2 5))
       (or (= E2 0) (= E2 1) (= E2 2) (= E2 3) (= E2 4) (= E2 5))
       (or (= D2 0) (= D2 1) (= D2 2) (= D2 3) (= D2 4) (= D2 5))
       (or (= S4 0) (= S4 1) (= S4 2) (= S4 3) (= S4 4) (= S4 5))
       (or (= M4 0) (= M4 1) (= M4 2) (= M4 3) (= M4 4) (= M4 5))
       (or (= G4 0) (= G4 1) (= G4 2) (= G4 3) (= G4 4) (= G4 5))
       (or (= A4 0) (= A4 1) (= A4 2) (= A4 3) (= A4 4) (= A4 5))
       (or (= U3 0) (= U3 1) (= U3 2) (= U3 3) (= U3 4) (= U3 5))
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
       (or (= X4 1) (= X4 2) (= X4 3) (= X4 4) (= X4 5))
       (or (= W4 1) (= W4 2) (= W4 3) (= W4 4) (= W4 5))
       (or (= V4 1) (= V4 2) (= V4 3) (= V4 4) (= V4 5))
       (or (= U4 1) (= U4 2) (= U4 3) (= U4 4) (= U4 5))
       (or (= T4 1) (= T4 2) (= T4 3) (= T4 4) (= T4 5))
       (or (= R4 1) (= R4 2) (= R4 3) (= R4 4) (= R4 5))
       (or (= Q4 1) (= Q4 2) (= Q4 3) (= Q4 4) (= Q4 5))
       (or (= P4 1) (= P4 2) (= P4 3) (= P4 4) (= P4 5))
       (or (= O4 1) (= O4 2) (= O4 3) (= O4 4) (= O4 5))
       (or (= N4 1) (= N4 2) (= N4 3) (= N4 4) (= N4 5))
       (or (= L4 1) (= L4 2) (= L4 3) (= L4 4) (= L4 5))
       (or (= K4 1) (= K4 2) (= K4 3) (= K4 4) (= K4 5))
       (or (= J4 1) (= J4 2) (= J4 3) (= J4 4) (= J4 5))
       (or (= I4 1) (= I4 2) (= I4 3) (= I4 4) (= I4 5))
       (or (= H4 1) (= H4 2) (= H4 3) (= H4 4) (= H4 5))
       (or (= F4 1) (= F4 2) (= F4 3) (= F4 4) (= F4 5))
       (or (= E4 1) (= E4 2) (= E4 3) (= E4 4) (= E4 5))
       (or (= D4 1) (= D4 2) (= D4 3) (= D4 4) (= D4 5))
       (or (= C4 1) (= C4 2) (= C4 3) (= C4 4) (= C4 5))
       (or (= B4 1) (= B4 2) (= B4 3) (= B4 4) (= B4 5))
       (or (= Z3 1) (= Z3 2) (= Z3 3) (= Z3 4) (= Z3 5))
       (or (= Y3 1) (= Y3 2) (= Y3 3) (= Y3 4) (= Y3 5))
       (or (= X3 1) (= X3 2) (= X3 3) (= X3 4) (= X3 5))
       (or (= W3 1) (= W3 2) (= W3 3) (= W3 4) (= W3 5))
       (or (= V3 1) (= V3 2) (= V3 3) (= V3 4) (= V3 5))
       a!80
       a!81
       a!82
       a!83
       a!84
       a!85
       a!86
       a!87
       a!88
       a!89
       a!90
       a!91
       a!92
       a!93
       a!94
       a!95
       a!96
       a!97
       a!98
       a!99
       (or (and (= P3 Q3)
                (= P3 R3)
                (= P3 S3)
                (= P3 T3)
                (= Q3 P3)
                (= Q3 R3)
                (= Q3 S3)
                (= Q3 T3)
                (= R3 P3)
                (= R3 Q3)
                (= R3 S3)
                (= R3 T3)
                (= S3 P3)
                (= S3 Q3)
                (= S3 R3)
                (= S3 T3)
                (= T3 P3)
                (= T3 Q3)
                (= T3 R3)
                (= T3 S3))
           (not (= M2 3)))
       (or (and (= K3 L3)
                (= K3 M3)
                (= K3 N3)
                (= K3 O3)
                (= L3 K3)
                (= L3 M3)
                (= L3 N3)
                (= L3 O3)
                (= M3 K3)
                (= M3 L3)
                (= M3 N3)
                (= M3 O3)
                (= N3 K3)
                (= N3 L3)
                (= N3 M3)
                (= N3 O3)
                (= O3 K3)
                (= O3 L3)
                (= O3 M3)
                (= O3 N3))
           (not (= L2 3)))
       (or (and (= F3 G3)
                (= F3 H3)
                (= F3 I3)
                (= F3 J3)
                (= G3 F3)
                (= G3 H3)
                (= G3 I3)
                (= G3 J3)
                (= H3 F3)
                (= H3 G3)
                (= H3 I3)
                (= H3 J3)
                (= I3 F3)
                (= I3 G3)
                (= I3 H3)
                (= I3 J3)
                (= J3 F3)
                (= J3 G3)
                (= J3 H3)
                (= J3 I3))
           (not (= K2 3)))
       (or (and (= A3 B3)
                (= A3 C3)
                (= A3 D3)
                (= A3 E3)
                (= B3 A3)
                (= B3 C3)
                (= B3 D3)
                (= B3 E3)
                (= C3 A3)
                (= C3 B3)
                (= C3 D3)
                (= C3 E3)
                (= D3 A3)
                (= D3 B3)
                (= D3 C3)
                (= D3 E3)
                (= E3 A3)
                (= E3 B3)
                (= E3 C3)
                (= E3 D3))
           (not (= J2 3)))
       (or (and (= V2 W2)
                (= V2 X2)
                (= V2 Y2)
                (= V2 Z2)
                (= W2 V2)
                (= W2 X2)
                (= W2 Y2)
                (= W2 Z2)
                (= X2 V2)
                (= X2 W2)
                (= X2 Y2)
                (= X2 Z2)
                (= Y2 V2)
                (= Y2 W2)
                (= Y2 X2)
                (= Y2 Z2)
                (= Z2 V2)
                (= Z2 W2)
                (= Z2 X2)
                (= Z2 Y2))
           (not (= I2 3)))
       (or (and (= P3 0) (= Q3 0) (= R3 0) (= S3 0) (= T3 0)) (not (= M2 1)))
       (or (and (= P3 E) (= Q3 E) (= R3 E) (= S3 E) (= T3 E)) (not (= M2 0)))
       (or (and (= K3 0) (= L3 0) (= M3 0) (= N3 0) (= O3 0)) (not (= L2 1)))
       (or (and (= K3 D) (= L3 D) (= M3 D) (= N3 D) (= O3 D)) (not (= L2 0)))
       (or (and (= F3 0) (= G3 0) (= H3 0) (= I3 0) (= J3 0)) (not (= K2 1)))
       (or (and (= F3 C) (= G3 C) (= H3 C) (= I3 C) (= J3 C)) (not (= K2 0)))
       (or (and (= A3 0) (= B3 0) (= C3 0) (= D3 0) (= E3 0)) (not (= J2 1)))
       (or (and (= A3 B) (= B3 B) (= C3 B) (= D3 B) (= E3 B)) (not (= J2 0)))
       (or (and (= V2 0) (= W2 0) (= X2 0) (= Y2 0) (= Z2 0)) (not (= I2 1)))
       (or (and (= V2 A) (= W2 A) (= X2 A) (= Y2 A) (= Z2 A)) (not (= I2 0)))
       a!100
       a!101
       a!102
       a!103
       a!104
       a!105)))))))
      )
      (invariant Y4
           Z4
           A5
           B5
           C5
           V2
           A3
           F3
           K3
           P3
           W2
           B3
           G3
           L3
           Q3
           X2
           C3
           H3
           M3
           R3
           Y2
           D3
           I3
           N3
           S3
           Z2
           E3
           J3
           O3
           T3
           V3
           W3
           X3
           Y3
           Z3
           B4
           C4
           D4
           E4
           F4
           H4
           I4
           J4
           K4
           L4
           N4
           O4
           P4
           Q4
           R4
           T4
           U4
           V4
           W4
           X4
           U3
           A4
           G4
           M4
           S4
           Q2
           R2
           S2
           T2
           U2
           P2
           D5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) ) 
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
           O2)
        (or (<= A 0) (<= B 0) (<= C 0) (<= D 0) (<= E 0))
      )
      false
    )
  )
)

(check-sat)
(exit)
