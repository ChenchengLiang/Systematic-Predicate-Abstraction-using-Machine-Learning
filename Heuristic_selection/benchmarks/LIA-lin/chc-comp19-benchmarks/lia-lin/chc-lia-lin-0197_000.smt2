(set-logic HORN)

(declare-fun |invariant| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) ) 
    (=>
      (and
        (let ((a!1 (not (<= A (+ H (* (- 1) I)))))
      (a!2 (not (<= A (+ I (* (- 1) H)))))
      (a!3 (not (<= A (+ I (* (- 1) J)))))
      (a!4 (not (<= A (+ J (* (- 1) I)))))
      (a!5 (not (<= A (+ I (* (- 1) K)))))
      (a!6 (not (<= A (+ K (* (- 1) I)))))
      (a!7 (not (<= A (+ I (* (- 1) L)))))
      (a!8 (not (<= A (+ L (* (- 1) I)))))
      (a!9 (not (<= A (+ I (* (- 1) M)))))
      (a!10 (not (<= A (+ M (* (- 1) I)))))
      (a!12 (not (<= A (+ H (* (- 1) J)))))
      (a!13 (not (<= A (+ J (* (- 1) H)))))
      (a!14 (not (<= A (+ H (* (- 1) K)))))
      (a!15 (not (<= A (+ K (* (- 1) H)))))
      (a!16 (not (<= A (+ H (* (- 1) L)))))
      (a!17 (not (<= A (+ L (* (- 1) H)))))
      (a!18 (not (<= A (+ H (* (- 1) M)))))
      (a!19 (not (<= A (+ M (* (- 1) H)))))
      (a!21 (not (<= A (+ J (* (- 1) K)))))
      (a!22 (not (<= A (+ K (* (- 1) J)))))
      (a!23 (not (<= A (+ J (* (- 1) L)))))
      (a!24 (not (<= A (+ L (* (- 1) J)))))
      (a!25 (not (<= A (+ J (* (- 1) M)))))
      (a!26 (not (<= A (+ M (* (- 1) J)))))
      (a!28 (not (<= A (+ K (* (- 1) M)))))
      (a!29 (not (<= A (+ M (* (- 1) K)))))
      (a!30 (not (<= A (+ L (* (- 1) M)))))
      (a!31 (not (<= A (+ M (* (- 1) L)))))
      (a!33 (not (<= A (+ K (* (- 1) L)))))
      (a!34 (not (<= A (+ L (* (- 1) K))))))
(let ((a!11 (and (or (and a!1 a!2) (not (= B 0)))
                 (or (and a!3 a!4) (not (= D 0)))
                 (or (and a!5 a!6) (not (= E 0)))
                 (or (and a!7 a!8) (not (= F 0)))
                 (or (and a!9 a!10) (not (= G 0)))
                 (or (not (<= A 0)) (not (= C 0)))))
      (a!20 (and (or (and a!12 a!13) (not (= D 0)))
                 (or (and a!14 a!15) (not (= E 0)))
                 (or (and a!16 a!17) (not (= F 0)))
                 (or (and a!1 a!2) (not (= C 0)))
                 (or (and a!18 a!19) (not (= G 0)))
                 (or (not (<= A 0)) (not (= B 0)))))
      (a!27 (and (or (and a!12 a!13) (not (= B 0)))
                 (or (and a!3 a!4) (not (= C 0)))
                 (or (and a!21 a!22) (not (= E 0)))
                 (or (and a!23 a!24) (not (= F 0)))
                 (or (and a!25 a!26) (not (= G 0)))
                 (or (not (<= A 0)) (not (= D 0)))))
      (a!32 (and (or (and a!18 a!19) (not (= B 0)))
                 (or (and a!9 a!10) (not (= C 0)))
                 (or (and a!25 a!26) (not (= D 0)))
                 (or (and a!28 a!29) (not (= E 0)))
                 (or (and a!30 a!31) (not (= F 0)))
                 (or (not (<= A 0)) (not (= G 0)))))
      (a!35 (and (or (and a!14 a!15) (not (= B 0)))
                 (or (and a!5 a!6) (not (= C 0)))
                 (or (and a!21 a!22) (not (= D 0)))
                 (or (and a!33 a!34) (not (= F 0)))
                 (or (and a!28 a!29) (not (= G 0)))
                 (or (not (<= A 0)) (not (= E 0)))))
      (a!36 (and (or (and a!16 a!17) (not (= B 0)))
                 (or (and a!7 a!8) (not (= C 0)))
                 (or (and a!23 a!24) (not (= D 0)))
                 (or (and a!33 a!34) (not (= E 0)))
                 (or (and a!30 a!31) (not (= G 0)))
                 (or (not (<= A 0)) (not (= F 0))))))
  (and (= B2 5)
       (= A2 4)
       (= Z1 3)
       (= Y1 2)
       (= X1 1)
       (= W1 6)
       (= V1 5)
       (= U1 4)
       (= T1 3)
       (= S1 2)
       (= R1 1)
       (= Q1 6)
       (= P1 5)
       (= O1 4)
       (= N1 3)
       (= M1 2)
       (= L1 1)
       (= K1 6)
       (= J1 5)
       (= I1 4)
       (= H1 3)
       (= G1 2)
       (= F1 1)
       (= E1 6)
       (= D1 5)
       (= C1 4)
       (= B1 3)
       (= A1 2)
       (= Z 1)
       (= Y 6)
       (= X 5)
       (= W 4)
       (= V 3)
       (= U 2)
       (= T 1)
       (= S M)
       (= R L)
       (= Q K)
       (= P J)
       (= O I)
       (= N H)
       (= G 1)
       (= F 2)
       (= E 0)
       (= D 0)
       (= C 0)
       (= B 0)
       (not (<= A 0))
       (or (= C2 2) (= C2 1) (= C2 3) (= C2 4) (= C2 5) (= C2 6))
       (or (= B2 2) (= B2 1) (= B2 3) (= B2 4) (= B2 5) (= B2 6))
       (or (= A2 2) (= A2 1) (= A2 3) (= A2 4) (= A2 5) (= A2 6))
       (or (= Z1 2) (= Z1 1) (= Z1 3) (= Z1 4) (= Z1 5) (= Z1 6))
       (or (= Y1 2) (= Y1 1) (= Y1 3) (= Y1 4) (= Y1 5) (= Y1 6))
       (or (= X1 2) (= X1 1) (= X1 3) (= X1 4) (= X1 5) (= X1 6))
       (or (= W1 2) (= W1 1) (= W1 3) (= W1 4) (= W1 5) (= W1 6))
       (or (= V1 2) (= V1 1) (= V1 3) (= V1 4) (= V1 5) (= V1 6))
       (or (= U1 2) (= U1 1) (= U1 3) (= U1 4) (= U1 5) (= U1 6))
       (or (= T1 2) (= T1 1) (= T1 3) (= T1 4) (= T1 5) (= T1 6))
       (or (= S1 2) (= S1 1) (= S1 3) (= S1 4) (= S1 5) (= S1 6))
       (or (= R1 2) (= R1 1) (= R1 3) (= R1 4) (= R1 5) (= R1 6))
       (or (= Q1 2) (= Q1 1) (= Q1 3) (= Q1 4) (= Q1 5) (= Q1 6))
       (or (= P1 2) (= P1 1) (= P1 3) (= P1 4) (= P1 5) (= P1 6))
       (or (= O1 2) (= O1 1) (= O1 3) (= O1 4) (= O1 5) (= O1 6))
       (or (= N1 2) (= N1 1) (= N1 3) (= N1 4) (= N1 5) (= N1 6))
       (or (= M1 2) (= M1 1) (= M1 3) (= M1 4) (= M1 5) (= M1 6))
       (or (= L1 2) (= L1 1) (= L1 3) (= L1 4) (= L1 5) (= L1 6))
       (or (= K1 2) (= K1 1) (= K1 3) (= K1 4) (= K1 5) (= K1 6))
       (or (= J1 2) (= J1 1) (= J1 3) (= J1 4) (= J1 5) (= J1 6))
       (or (= I1 2) (= I1 1) (= I1 3) (= I1 4) (= I1 5) (= I1 6))
       (or (= H1 2) (= H1 1) (= H1 3) (= H1 4) (= H1 5) (= H1 6))
       (or (= G1 2) (= G1 1) (= G1 3) (= G1 4) (= G1 5) (= G1 6))
       (or (= F1 2) (= F1 1) (= F1 3) (= F1 4) (= F1 5) (= F1 6))
       (or (= E1 2) (= E1 1) (= E1 3) (= E1 4) (= E1 5) (= E1 6))
       (or (= D1 2) (= D1 1) (= D1 3) (= D1 4) (= D1 5) (= D1 6))
       (or (= C1 2) (= C1 1) (= C1 3) (= C1 4) (= C1 5) (= C1 6))
       (or (= B1 2) (= B1 1) (= B1 3) (= B1 4) (= B1 5) (= B1 6))
       (or (= A1 2) (= A1 1) (= A1 3) (= A1 4) (= A1 5) (= A1 6))
       (or (= Z 2) (= Z 1) (= Z 3) (= Z 4) (= Z 5) (= Z 6))
       (or (= Y 2) (= Y 1) (= Y 3) (= Y 4) (= Y 5) (= Y 6))
       (or (= X 2) (= X 1) (= X 3) (= X 4) (= X 5) (= X 6))
       (or (= W 2) (= W 1) (= W 3) (= W 4) (= W 5) (= W 6))
       (or (= V 2) (= V 1) (= V 3) (= V 4) (= V 5) (= V 6))
       (or (= U 2) (= U 1) (= U 3) (= U 4) (= U 5) (= U 6))
       (or (= T 2) (= T 1) (= T 3) (= T 4) (= T 5) (= T 6))
       (or (not (<= M 0)) (not (= G 0)))
       (or (not (<= L 0)) (not (= F 0)))
       (or (not (<= K 0)) (not (= E 0)))
       (or (not (<= J 0)) (not (= D 0)))
       (or (not (<= I 0)) (not (= C 0)))
       (or (not (<= H 0)) (not (= B 0)))
       (or a!11 (not (= C 0)))
       (or a!20 (not (= B 0)))
       (or a!27 (not (= D 0)))
       (or a!32 (not (= G 0)))
       (or a!35 (not (= E 0)))
       (or a!36 (not (= F 0)))
       (= C2 6))))
      )
      (invariant H
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
           B
           C
           D
           E
           F
           G
           A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Int) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Int) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Int) (R6 Int) (S6 Int) (T6 Int) (U6 Int) (V6 Int) (W6 Int) (X6 Int) (Y6 Int) (Z6 Int) ) 
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
           M3)
        (let ((a!1 (ite (= Q6 4) X4 (ite (= Q6 3) R4 (ite (= Q6 2) L4 F4))))
      (a!3 (ite (= R6 4) X4 (ite (= R6 3) R4 (ite (= R6 2) L4 F4))))
      (a!6 (ite (= K6 4) W4 (ite (= K6 3) Q4 (ite (= K6 2) K4 E4))))
      (a!8 (ite (= L6 4) W4 (ite (= L6 3) Q4 (ite (= L6 2) K4 E4))))
      (a!11 (ite (= E6 4) V4 (ite (= E6 3) P4 (ite (= E6 2) J4 D4))))
      (a!13 (ite (= F6 4) V4 (ite (= F6 3) P4 (ite (= F6 2) J4 D4))))
      (a!16 (ite (= Y5 4) U4 (ite (= Y5 3) O4 (ite (= Y5 2) I4 C4))))
      (a!18 (ite (= Z5 4) U4 (ite (= Z5 3) O4 (ite (= Z5 2) I4 C4))))
      (a!21 (ite (= S5 4) T4 (ite (= S5 3) N4 (ite (= S5 2) H4 B4))))
      (a!23 (ite (= T5 4) T4 (ite (= T5 3) N4 (ite (= T5 2) H4 B4))))
      (a!26 (ite (= M5 4) S4 (ite (= M5 3) M4 (ite (= M5 2) G4 A4))))
      (a!28 (ite (= N5 4) S4 (ite (= N5 3) M4 (ite (= N5 2) G4 A4))))
      (a!31 (ite (= O6 4) X4 (ite (= O6 3) R4 (ite (= O6 2) L4 F4))))
      (a!33 (ite (= P6 4) X4 (ite (= P6 3) R4 (ite (= P6 2) L4 F4))))
      (a!35 (ite (= S6 4) X4 (ite (= S6 3) R4 (ite (= S6 2) L4 F4))))
      (a!37 (ite (= T6 4) X4 (ite (= T6 3) R4 (ite (= T6 2) L4 F4))))
      (a!40 (ite (= I6 4) W4 (ite (= I6 3) Q4 (ite (= I6 2) K4 E4))))
      (a!42 (ite (= J6 4) W4 (ite (= J6 3) Q4 (ite (= J6 2) K4 E4))))
      (a!44 (ite (= M6 4) W4 (ite (= M6 3) Q4 (ite (= M6 2) K4 E4))))
      (a!46 (ite (= N6 4) W4 (ite (= N6 3) Q4 (ite (= N6 2) K4 E4))))
      (a!49 (ite (= C6 4) V4 (ite (= C6 3) P4 (ite (= C6 2) J4 D4))))
      (a!51 (ite (= D6 4) V4 (ite (= D6 3) P4 (ite (= D6 2) J4 D4))))
      (a!53 (ite (= G6 4) V4 (ite (= G6 3) P4 (ite (= G6 2) J4 D4))))
      (a!55 (ite (= H6 4) V4 (ite (= H6 3) P4 (ite (= H6 2) J4 D4))))
      (a!58 (ite (= W5 4) U4 (ite (= W5 3) O4 (ite (= W5 2) I4 C4))))
      (a!60 (ite (= X5 4) U4 (ite (= X5 3) O4 (ite (= X5 2) I4 C4))))
      (a!62 (ite (= A6 4) U4 (ite (= A6 3) O4 (ite (= A6 2) I4 C4))))
      (a!64 (ite (= B6 4) U4 (ite (= B6 3) O4 (ite (= B6 2) I4 C4))))
      (a!67 (ite (= Q5 4) T4 (ite (= Q5 3) N4 (ite (= Q5 2) H4 B4))))
      (a!69 (ite (= R5 4) T4 (ite (= R5 3) N4 (ite (= R5 2) H4 B4))))
      (a!71 (ite (= U5 4) T4 (ite (= U5 3) N4 (ite (= U5 2) H4 B4))))
      (a!73 (ite (= V5 4) T4 (ite (= V5 3) N4 (ite (= V5 2) H4 B4))))
      (a!76 (ite (= K5 4) S4 (ite (= K5 3) M4 (ite (= K5 2) G4 A4))))
      (a!78 (ite (= L5 4) S4 (ite (= L5 3) M4 (ite (= L5 2) G4 A4))))
      (a!80 (ite (= O5 4) S4 (ite (= O5 3) M4 (ite (= O5 2) G4 A4))))
      (a!82 (ite (= P5 4) S4 (ite (= P5 3) M4 (ite (= P5 2) G4 A4)))))
(let ((a!2 (ite (= Q6 6) J5 (ite (= Q6 5) D5 a!1)))
      (a!4 (ite (= R6 6) J5 (ite (= R6 5) D5 a!3)))
      (a!7 (ite (= K6 6) I5 (ite (= K6 5) C5 a!6)))
      (a!9 (ite (= L6 6) I5 (ite (= L6 5) C5 a!8)))
      (a!12 (ite (= E6 6) H5 (ite (= E6 5) B5 a!11)))
      (a!14 (ite (= F6 6) H5 (ite (= F6 5) B5 a!13)))
      (a!17 (ite (= Y5 6) G5 (ite (= Y5 5) A5 a!16)))
      (a!19 (ite (= Z5 6) G5 (ite (= Z5 5) A5 a!18)))
      (a!22 (ite (= S5 6) F5 (ite (= S5 5) Z4 a!21)))
      (a!24 (ite (= T5 6) F5 (ite (= T5 5) Z4 a!23)))
      (a!27 (ite (= M5 6) E5 (ite (= M5 5) Y4 a!26)))
      (a!29 (ite (= N5 6) E5 (ite (= N5 5) Y4 a!28)))
      (a!32 (ite (= O6 6) J5 (ite (= O6 5) D5 a!31)))
      (a!36 (ite (= S6 6) J5 (ite (= S6 5) D5 a!35)))
      (a!41 (ite (= I6 6) I5 (ite (= I6 5) C5 a!40)))
      (a!45 (ite (= M6 6) I5 (ite (= M6 5) C5 a!44)))
      (a!50 (ite (= C6 6) H5 (ite (= C6 5) B5 a!49)))
      (a!54 (ite (= G6 6) H5 (ite (= G6 5) B5 a!53)))
      (a!59 (ite (= W5 6) G5 (ite (= W5 5) A5 a!58)))
      (a!63 (ite (= A6 6) G5 (ite (= A6 5) A5 a!62)))
      (a!68 (ite (= Q5 6) F5 (ite (= Q5 5) Z4 a!67)))
      (a!72 (ite (= U5 6) F5 (ite (= U5 5) Z4 a!71)))
      (a!77 (ite (= K5 6) E5 (ite (= K5 5) Y4 a!76)))
      (a!81 (ite (= O5 6) E5 (ite (= O5 5) Y4 a!80))))
(let ((a!5 (or (= Z6 (div (+ a!2 a!4) 2)) (not (= L3 0))))
      (a!10 (or (= Y6 (div (+ a!7 a!9) 2)) (not (= K3 0))))
      (a!15 (or (= X6 (div (+ a!12 a!14) 2)) (not (= J3 0))))
      (a!20 (or (= W6 (div (+ a!17 a!19) 2)) (not (= I3 0))))
      (a!25 (or (= V6 (div (+ a!22 a!24) 2)) (not (= H3 0))))
      (a!30 (or (= U6 (div (+ a!27 a!29) 2)) (not (= G3 0))))
      (a!34 (<= (ite (= P6 6) J5 (ite (= P6 5) D5 a!33)) a!32))
      (a!38 (<= a!36 (ite (= T6 6) J5 (ite (= T6 5) D5 a!37))))
      (a!43 (<= (ite (= J6 6) I5 (ite (= J6 5) C5 a!42)) a!41))
      (a!47 (<= a!45 (ite (= N6 6) I5 (ite (= N6 5) C5 a!46))))
      (a!52 (<= (ite (= D6 6) H5 (ite (= D6 5) B5 a!51)) a!50))
      (a!56 (<= a!54 (ite (= H6 6) H5 (ite (= H6 5) B5 a!55))))
      (a!61 (<= (ite (= X5 6) G5 (ite (= X5 5) A5 a!60)) a!59))
      (a!65 (<= a!63 (ite (= B6 6) G5 (ite (= B6 5) A5 a!64))))
      (a!70 (<= (ite (= R5 6) F5 (ite (= R5 5) Z4 a!69)) a!68))
      (a!74 (<= a!72 (ite (= V5 6) F5 (ite (= V5 5) Z4 a!73))))
      (a!79 (<= (ite (= L5 6) E5 (ite (= L5 5) Y4 a!78)) a!77))
      (a!83 (<= a!81 (ite (= P5 6) E5 (ite (= P5 5) Y4 a!82)))))
(let ((a!39 (or (and (<= a!32 a!2)
                     a!34
                     (<= a!2 a!4)
                     (<= a!4 a!36)
                     a!38
                     (not (= O6 P6))
                     (not (= O6 Q6))
                     (not (= O6 R6))
                     (not (= O6 S6))
                     (not (= O6 T6))
                     (not (= P6 O6))
                     (not (= P6 Q6))
                     (not (= P6 R6))
                     (not (= P6 S6))
                     (not (= P6 T6))
                     (not (= Q6 O6))
                     (not (= Q6 P6))
                     (not (= Q6 R6))
                     (not (= Q6 S6))
                     (not (= Q6 T6))
                     (not (= R6 O6))
                     (not (= R6 P6))
                     (not (= R6 Q6))
                     (not (= R6 S6))
                     (not (= R6 T6))
                     (not (= S6 O6))
                     (not (= S6 P6))
                     (not (= S6 Q6))
                     (not (= S6 R6))
                     (not (= S6 T6))
                     (not (= T6 O6))
                     (not (= T6 P6))
                     (not (= T6 Q6))
                     (not (= T6 R6))
                     (not (= T6 S6)))
                (not (= L3 0))))
      (a!48 (or (and (<= a!41 a!7)
                     a!43
                     (<= a!7 a!9)
                     (<= a!9 a!45)
                     a!47
                     (not (= I6 J6))
                     (not (= I6 K6))
                     (not (= I6 L6))
                     (not (= I6 M6))
                     (not (= I6 N6))
                     (not (= J6 I6))
                     (not (= J6 K6))
                     (not (= J6 L6))
                     (not (= J6 M6))
                     (not (= J6 N6))
                     (not (= K6 I6))
                     (not (= K6 J6))
                     (not (= K6 L6))
                     (not (= K6 M6))
                     (not (= K6 N6))
                     (not (= L6 I6))
                     (not (= L6 J6))
                     (not (= L6 K6))
                     (not (= L6 M6))
                     (not (= L6 N6))
                     (not (= M6 I6))
                     (not (= M6 J6))
                     (not (= M6 K6))
                     (not (= M6 L6))
                     (not (= M6 N6))
                     (not (= N6 I6))
                     (not (= N6 J6))
                     (not (= N6 K6))
                     (not (= N6 L6))
                     (not (= N6 M6)))
                (not (= K3 0))))
      (a!57 (or (and (<= a!50 a!12)
                     a!52
                     (<= a!12 a!14)
                     (<= a!14 a!54)
                     a!56
                     (not (= C6 D6))
                     (not (= C6 E6))
                     (not (= C6 F6))
                     (not (= C6 G6))
                     (not (= C6 H6))
                     (not (= D6 C6))
                     (not (= D6 E6))
                     (not (= D6 F6))
                     (not (= D6 G6))
                     (not (= D6 H6))
                     (not (= E6 C6))
                     (not (= E6 D6))
                     (not (= E6 F6))
                     (not (= E6 G6))
                     (not (= E6 H6))
                     (not (= F6 C6))
                     (not (= F6 D6))
                     (not (= F6 E6))
                     (not (= F6 G6))
                     (not (= F6 H6))
                     (not (= G6 C6))
                     (not (= G6 D6))
                     (not (= G6 E6))
                     (not (= G6 F6))
                     (not (= G6 H6))
                     (not (= H6 C6))
                     (not (= H6 D6))
                     (not (= H6 E6))
                     (not (= H6 F6))
                     (not (= H6 G6)))
                (not (= J3 0))))
      (a!66 (or (and (<= a!59 a!17)
                     a!61
                     (<= a!17 a!19)
                     (<= a!19 a!63)
                     a!65
                     (not (= W5 X5))
                     (not (= W5 Y5))
                     (not (= W5 Z5))
                     (not (= W5 A6))
                     (not (= W5 B6))
                     (not (= X5 W5))
                     (not (= X5 Y5))
                     (not (= X5 Z5))
                     (not (= X5 A6))
                     (not (= X5 B6))
                     (not (= Y5 W5))
                     (not (= Y5 X5))
                     (not (= Y5 Z5))
                     (not (= Y5 A6))
                     (not (= Y5 B6))
                     (not (= Z5 W5))
                     (not (= Z5 X5))
                     (not (= Z5 Y5))
                     (not (= Z5 A6))
                     (not (= Z5 B6))
                     (not (= A6 W5))
                     (not (= A6 X5))
                     (not (= A6 Y5))
                     (not (= A6 Z5))
                     (not (= A6 B6))
                     (not (= B6 W5))
                     (not (= B6 X5))
                     (not (= B6 Y5))
                     (not (= B6 Z5))
                     (not (= B6 A6)))
                (not (= I3 0))))
      (a!75 (or (and (<= a!68 a!22)
                     a!70
                     (<= a!22 a!24)
                     (<= a!24 a!72)
                     a!74
                     (not (= Q5 R5))
                     (not (= Q5 S5))
                     (not (= Q5 T5))
                     (not (= Q5 U5))
                     (not (= Q5 V5))
                     (not (= R5 Q5))
                     (not (= R5 S5))
                     (not (= R5 T5))
                     (not (= R5 U5))
                     (not (= R5 V5))
                     (not (= S5 Q5))
                     (not (= S5 R5))
                     (not (= S5 T5))
                     (not (= S5 U5))
                     (not (= S5 V5))
                     (not (= T5 Q5))
                     (not (= T5 R5))
                     (not (= T5 S5))
                     (not (= T5 U5))
                     (not (= T5 V5))
                     (not (= U5 Q5))
                     (not (= U5 R5))
                     (not (= U5 S5))
                     (not (= U5 T5))
                     (not (= U5 V5))
                     (not (= V5 Q5))
                     (not (= V5 R5))
                     (not (= V5 S5))
                     (not (= V5 T5))
                     (not (= V5 U5)))
                (not (= H3 0))))
      (a!84 (or (and (<= a!77 a!27)
                     a!79
                     (<= a!27 a!29)
                     (<= a!29 a!81)
                     a!83
                     (not (= K5 L5))
                     (not (= K5 M5))
                     (not (= K5 N5))
                     (not (= K5 O5))
                     (not (= K5 P5))
                     (not (= L5 K5))
                     (not (= L5 M5))
                     (not (= L5 N5))
                     (not (= L5 O5))
                     (not (= L5 P5))
                     (not (= M5 K5))
                     (not (= M5 L5))
                     (not (= M5 N5))
                     (not (= M5 O5))
                     (not (= M5 P5))
                     (not (= N5 K5))
                     (not (= N5 L5))
                     (not (= N5 M5))
                     (not (= N5 O5))
                     (not (= N5 P5))
                     (not (= O5 K5))
                     (not (= O5 L5))
                     (not (= O5 M5))
                     (not (= O5 N5))
                     (not (= O5 P5))
                     (not (= P5 K5))
                     (not (= P5 L5))
                     (not (= P5 M5))
                     (not (= P5 N5))
                     (not (= P5 O5)))
                (not (= G3 0)))))
  (and (= Y3 K)
       (= X3 J)
       (= W3 I)
       (= V3 H)
       (= U3 G)
       (= T3 L3)
       (= S3 K3)
       (= R3 J3)
       (= Q3 I3)
       (= P3 H3)
       (= O3 G3)
       (= N3 M3)
       (or (= F3 2) (= F3 1) (= F3 3) (= F3 4) (= F3 5) (= F3 6))
       (or (= E3 2) (= E3 1) (= E3 3) (= E3 4) (= E3 5) (= E3 6))
       (or (= D3 2) (= D3 1) (= D3 3) (= D3 4) (= D3 5) (= D3 6))
       (or (= C3 2) (= C3 1) (= C3 3) (= C3 4) (= C3 5) (= C3 6))
       (or (= B3 2) (= B3 1) (= B3 3) (= B3 4) (= B3 5) (= B3 6))
       (or (= A3 2) (= A3 1) (= A3 3) (= A3 4) (= A3 5) (= A3 6))
       (or (= Z2 2) (= Z2 1) (= Z2 3) (= Z2 4) (= Z2 5) (= Z2 6))
       (or (= Y2 2) (= Y2 1) (= Y2 3) (= Y2 4) (= Y2 5) (= Y2 6))
       (or (= X2 2) (= X2 1) (= X2 3) (= X2 4) (= X2 5) (= X2 6))
       (or (= W2 2) (= W2 1) (= W2 3) (= W2 4) (= W2 5) (= W2 6))
       (or (= V2 2) (= V2 1) (= V2 3) (= V2 4) (= V2 5) (= V2 6))
       (or (= U2 2) (= U2 1) (= U2 3) (= U2 4) (= U2 5) (= U2 6))
       (or (= T2 2) (= T2 1) (= T2 3) (= T2 4) (= T2 5) (= T2 6))
       (or (= S2 2) (= S2 1) (= S2 3) (= S2 4) (= S2 5) (= S2 6))
       (or (= R2 2) (= R2 1) (= R2 3) (= R2 4) (= R2 5) (= R2 6))
       (or (= Q2 2) (= Q2 1) (= Q2 3) (= Q2 4) (= Q2 5) (= Q2 6))
       (or (= P2 2) (= P2 1) (= P2 3) (= P2 4) (= P2 5) (= P2 6))
       (or (= O2 2) (= O2 1) (= O2 3) (= O2 4) (= O2 5) (= O2 6))
       (or (= N2 2) (= N2 1) (= N2 3) (= N2 4) (= N2 5) (= N2 6))
       (or (= M2 2) (= M2 1) (= M2 3) (= M2 4) (= M2 5) (= M2 6))
       (or (= L2 2) (= L2 1) (= L2 3) (= L2 4) (= L2 5) (= L2 6))
       (or (= K2 2) (= K2 1) (= K2 3) (= K2 4) (= K2 5) (= K2 6))
       (or (= J2 2) (= J2 1) (= J2 3) (= J2 4) (= J2 5) (= J2 6))
       (or (= I2 2) (= I2 1) (= I2 3) (= I2 4) (= I2 5) (= I2 6))
       (or (= H2 2) (= H2 1) (= H2 3) (= H2 4) (= H2 5) (= H2 6))
       (or (= G2 2) (= G2 1) (= G2 3) (= G2 4) (= G2 5) (= G2 6))
       (or (= F2 2) (= F2 1) (= F2 3) (= F2 4) (= F2 5) (= F2 6))
       (or (= E2 2) (= E2 1) (= E2 3) (= E2 4) (= E2 5) (= E2 6))
       (or (= D2 2) (= D2 1) (= D2 3) (= D2 4) (= D2 5) (= D2 6))
       (or (= C2 2) (= C2 1) (= C2 3) (= C2 4) (= C2 5) (= C2 6))
       (or (= B2 2) (= B2 1) (= B2 3) (= B2 4) (= B2 5) (= B2 6))
       (or (= A2 2) (= A2 1) (= A2 3) (= A2 4) (= A2 5) (= A2 6))
       (or (= Z1 2) (= Z1 1) (= Z1 3) (= Z1 4) (= Z1 5) (= Z1 6))
       (or (= Y1 2) (= Y1 1) (= Y1 3) (= Y1 4) (= Y1 5) (= Y1 6))
       (or (= X1 2) (= X1 1) (= X1 3) (= X1 4) (= X1 5) (= X1 6))
       (or (= W1 2) (= W1 1) (= W1 3) (= W1 4) (= W1 5) (= W1 6))
       (or (= T6 2) (= T6 1) (= T6 3) (= T6 4) (= T6 5) (= T6 6))
       (or (= S6 2) (= S6 1) (= S6 3) (= S6 4) (= S6 5) (= S6 6))
       (or (= R6 2) (= R6 1) (= R6 3) (= R6 4) (= R6 5) (= R6 6))
       (or (= Q6 2) (= Q6 1) (= Q6 3) (= Q6 4) (= Q6 5) (= Q6 6))
       (or (= P6 2) (= P6 1) (= P6 3) (= P6 4) (= P6 5) (= P6 6))
       (or (= O6 2) (= O6 1) (= O6 3) (= O6 4) (= O6 5) (= O6 6))
       (or (= N6 2) (= N6 1) (= N6 3) (= N6 4) (= N6 5) (= N6 6))
       (or (= M6 2) (= M6 1) (= M6 3) (= M6 4) (= M6 5) (= M6 6))
       (or (= L6 2) (= L6 1) (= L6 3) (= L6 4) (= L6 5) (= L6 6))
       (or (= K6 2) (= K6 1) (= K6 3) (= K6 4) (= K6 5) (= K6 6))
       (or (= J6 2) (= J6 1) (= J6 3) (= J6 4) (= J6 5) (= J6 6))
       (or (= I6 2) (= I6 1) (= I6 3) (= I6 4) (= I6 5) (= I6 6))
       (or (= H6 2) (= H6 1) (= H6 3) (= H6 4) (= H6 5) (= H6 6))
       (or (= G6 2) (= G6 1) (= G6 3) (= G6 4) (= G6 5) (= G6 6))
       (or (= F6 2) (= F6 1) (= F6 3) (= F6 4) (= F6 5) (= F6 6))
       (or (= E6 2) (= E6 1) (= E6 3) (= E6 4) (= E6 5) (= E6 6))
       (or (= D6 2) (= D6 1) (= D6 3) (= D6 4) (= D6 5) (= D6 6))
       (or (= C6 2) (= C6 1) (= C6 3) (= C6 4) (= C6 5) (= C6 6))
       (or (= B6 2) (= B6 1) (= B6 3) (= B6 4) (= B6 5) (= B6 6))
       (or (= A6 2) (= A6 1) (= A6 3) (= A6 4) (= A6 5) (= A6 6))
       (or (= Z5 2) (= Z5 1) (= Z5 3) (= Z5 4) (= Z5 5) (= Z5 6))
       (or (= Y5 2) (= Y5 1) (= Y5 3) (= Y5 4) (= Y5 5) (= Y5 6))
       (or (= X5 2) (= X5 1) (= X5 3) (= X5 4) (= X5 5) (= X5 6))
       (or (= W5 2) (= W5 1) (= W5 3) (= W5 4) (= W5 5) (= W5 6))
       (or (= V5 2) (= V5 1) (= V5 3) (= V5 4) (= V5 5) (= V5 6))
       (or (= U5 2) (= U5 1) (= U5 3) (= U5 4) (= U5 5) (= U5 6))
       (or (= T5 2) (= T5 1) (= T5 3) (= T5 4) (= T5 5) (= T5 6))
       (or (= S5 2) (= S5 1) (= S5 3) (= S5 4) (= S5 5) (= S5 6))
       (or (= R5 2) (= R5 1) (= R5 3) (= R5 4) (= R5 5) (= R5 6))
       (or (= Q5 2) (= Q5 1) (= Q5 3) (= Q5 4) (= Q5 5) (= Q5 6))
       (or (= P5 2) (= P5 1) (= P5 3) (= P5 4) (= P5 5) (= P5 6))
       (or (= O5 2) (= O5 1) (= O5 3) (= O5 4) (= O5 5) (= O5 6))
       (or (= N5 2) (= N5 1) (= N5 3) (= N5 4) (= N5 5) (= N5 6))
       (or (= M5 2) (= M5 1) (= M5 3) (= M5 4) (= M5 5) (= M5 6))
       (or (= L5 2) (= L5 1) (= L5 3) (= L5 4) (= L5 5) (= L5 6))
       (or (= K5 2) (= K5 1) (= K5 3) (= K5 4) (= K5 5) (= K5 6))
       a!5
       a!10
       a!15
       a!20
       a!25
       a!30
       a!39
       a!48
       a!57
       a!66
       a!75
       a!84
       (or (and (= E5 F5)
                (= E5 G5)
                (= E5 H5)
                (= E5 I5)
                (= E5 J5)
                (= F5 E5)
                (= F5 G5)
                (= F5 H5)
                (= F5 I5)
                (= F5 J5)
                (= G5 E5)
                (= G5 F5)
                (= G5 H5)
                (= G5 I5)
                (= G5 J5)
                (= H5 E5)
                (= H5 F5)
                (= H5 G5)
                (= H5 I5)
                (= H5 J5)
                (= I5 E5)
                (= I5 F5)
                (= I5 G5)
                (= I5 H5)
                (= I5 J5)
                (= J5 E5)
                (= J5 F5)
                (= J5 G5)
                (= J5 H5)
                (= J5 I5))
           (not (= L3 2)))
       (or (and (= Y4 Z4)
                (= Y4 A5)
                (= Y4 B5)
                (= Y4 C5)
                (= Y4 D5)
                (= Z4 Y4)
                (= Z4 A5)
                (= Z4 B5)
                (= Z4 C5)
                (= Z4 D5)
                (= A5 Y4)
                (= A5 Z4)
                (= A5 B5)
                (= A5 C5)
                (= A5 D5)
                (= B5 Y4)
                (= B5 Z4)
                (= B5 A5)
                (= B5 C5)
                (= B5 D5)
                (= C5 Y4)
                (= C5 Z4)
                (= C5 A5)
                (= C5 B5)
                (= C5 D5)
                (= D5 Y4)
                (= D5 Z4)
                (= D5 A5)
                (= D5 B5)
                (= D5 C5))
           (not (= K3 2)))
       (or (and (= S4 T4)
                (= S4 U4)
                (= S4 V4)
                (= S4 W4)
                (= S4 X4)
                (= T4 S4)
                (= T4 U4)
                (= T4 V4)
                (= T4 W4)
                (= T4 X4)
                (= U4 S4)
                (= U4 T4)
                (= U4 V4)
                (= U4 W4)
                (= U4 X4)
                (= V4 S4)
                (= V4 T4)
                (= V4 U4)
                (= V4 W4)
                (= V4 X4)
                (= W4 S4)
                (= W4 T4)
                (= W4 U4)
                (= W4 V4)
                (= W4 X4)
                (= X4 S4)
                (= X4 T4)
                (= X4 U4)
                (= X4 V4)
                (= X4 W4))
           (not (= J3 2)))
       (or (and (= M4 N4)
                (= M4 O4)
                (= M4 P4)
                (= M4 Q4)
                (= M4 R4)
                (= N4 M4)
                (= N4 O4)
                (= N4 P4)
                (= N4 Q4)
                (= N4 R4)
                (= O4 M4)
                (= O4 N4)
                (= O4 P4)
                (= O4 Q4)
                (= O4 R4)
                (= P4 M4)
                (= P4 N4)
                (= P4 O4)
                (= P4 Q4)
                (= P4 R4)
                (= Q4 M4)
                (= Q4 N4)
                (= Q4 O4)
                (= Q4 P4)
                (= Q4 R4)
                (= R4 M4)
                (= R4 N4)
                (= R4 O4)
                (= R4 P4)
                (= R4 Q4))
           (not (= I3 2)))
       (or (and (= G4 H4)
                (= G4 I4)
                (= G4 J4)
                (= G4 K4)
                (= G4 L4)
                (= H4 G4)
                (= H4 I4)
                (= H4 J4)
                (= H4 K4)
                (= H4 L4)
                (= I4 G4)
                (= I4 H4)
                (= I4 J4)
                (= I4 K4)
                (= I4 L4)
                (= J4 G4)
                (= J4 H4)
                (= J4 I4)
                (= J4 K4)
                (= J4 L4)
                (= K4 G4)
                (= K4 H4)
                (= K4 I4)
                (= K4 J4)
                (= K4 L4)
                (= L4 G4)
                (= L4 H4)
                (= L4 I4)
                (= L4 J4)
                (= L4 K4))
           (not (= H3 2)))
       (or (and (= A4 B4)
                (= A4 C4)
                (= A4 D4)
                (= A4 E4)
                (= A4 F4)
                (= B4 A4)
                (= B4 C4)
                (= B4 D4)
                (= B4 E4)
                (= B4 F4)
                (= C4 A4)
                (= C4 B4)
                (= C4 D4)
                (= C4 E4)
                (= C4 F4)
                (= D4 A4)
                (= D4 B4)
                (= D4 C4)
                (= D4 E4)
                (= D4 F4)
                (= E4 A4)
                (= E4 B4)
                (= E4 C4)
                (= E4 D4)
                (= E4 F4)
                (= F4 A4)
                (= F4 B4)
                (= F4 C4)
                (= F4 D4)
                (= F4 E4))
           (not (= G3 2)))
       (or (and (= E5 0) (= F5 0) (= G5 0) (= H5 0) (= I5 0) (= J5 0))
           (not (= L3 1)))
       (or (and (= E5 F) (= F5 F) (= G5 F) (= H5 F) (= I5 F) (= J5 F))
           (not (= L3 0)))
       (or (and (= Y4 0) (= Z4 0) (= A5 0) (= B5 0) (= C5 0) (= D5 0))
           (not (= K3 1)))
       (or (and (= Y4 E) (= Z4 E) (= A5 E) (= B5 E) (= C5 E) (= D5 E))
           (not (= K3 0)))
       (or (and (= S4 0) (= T4 0) (= U4 0) (= V4 0) (= W4 0) (= X4 0))
           (not (= J3 1)))
       (or (and (= S4 D) (= T4 D) (= U4 D) (= V4 D) (= W4 D) (= X4 D))
           (not (= J3 0)))
       (or (and (= M4 0) (= N4 0) (= O4 0) (= P4 0) (= Q4 0) (= R4 0))
           (not (= I3 1)))
       (or (and (= M4 C) (= N4 C) (= O4 C) (= P4 C) (= Q4 C) (= R4 C))
           (not (= I3 0)))
       (or (and (= G4 0) (= H4 0) (= I4 0) (= J4 0) (= K4 0) (= L4 0))
           (not (= H3 1)))
       (or (and (= G4 B) (= H4 B) (= I4 B) (= J4 B) (= K4 B) (= L4 B))
           (not (= H3 0)))
       (or (and (= A4 0) (= B4 0) (= C4 0) (= D4 0) (= E4 0) (= F4 0))
           (not (= G3 1)))
       (or (and (= A4 A) (= B4 A) (= C4 A) (= D4 A) (= E4 A) (= F4 A))
           (not (= G3 0)))
       (= Z3 L))))))
      )
      (invariant U6
           V6
           W6
           X6
           Y6
           Z6
           U3
           V3
           W3
           X3
           Y3
           Z3
           A4
           B4
           C4
           D4
           E4
           F4
           G4
           H4
           I4
           J4
           K4
           L4
           M4
           N4
           O4
           P4
           Q4
           R4
           S4
           T4
           U4
           V4
           W4
           X4
           Y4
           Z4
           A5
           B5
           C5
           D5
           E5
           F5
           G5
           H5
           I5
           J5
           L5
           K5
           M5
           N5
           O5
           P5
           R5
           Q5
           S5
           T5
           U5
           V5
           X5
           W5
           Y5
           Z5
           A6
           B6
           D6
           C6
           E6
           F6
           G6
           H6
           J6
           I6
           K6
           L6
           M6
           N6
           P6
           O6
           Q6
           R6
           S6
           T6
           O3
           P3
           Q3
           R3
           S3
           T3
           N3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) ) 
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
           M3)
        (let ((a!1 (or (<= M3 (+ A (* (- 1) G)))
               (<= M3 (+ G (* (- 1) A)))
               (not (= G3 0))))
      (a!2 (or (<= M3 (+ A (* (- 1) H)))
               (<= M3 (+ H (* (- 1) A)))
               (not (= H3 0))))
      (a!3 (or (<= M3 (+ A (* (- 1) I)))
               (<= M3 (+ I (* (- 1) A)))
               (not (= I3 0))))
      (a!4 (or (<= M3 (+ A (* (- 1) J)))
               (<= M3 (+ J (* (- 1) A)))
               (not (= J3 0))))
      (a!5 (or (<= M3 (+ A (* (- 1) K)))
               (<= M3 (+ K (* (- 1) A)))
               (not (= K3 0))))
      (a!6 (or (<= M3 (+ A (* (- 1) L)))
               (<= M3 (+ L (* (- 1) A)))
               (not (= L3 0))))
      (a!7 (or (<= M3 (+ B (* (- 1) G)))
               (<= M3 (+ G (* (- 1) B)))
               (not (= G3 0))))
      (a!8 (or (<= M3 (+ B (* (- 1) H)))
               (<= M3 (+ H (* (- 1) B)))
               (not (= H3 0))))
      (a!9 (or (<= M3 (+ B (* (- 1) I)))
               (<= M3 (+ I (* (- 1) B)))
               (not (= I3 0))))
      (a!10 (or (<= M3 (+ B (* (- 1) J)))
                (<= M3 (+ J (* (- 1) B)))
                (not (= J3 0))))
      (a!11 (or (<= M3 (+ B (* (- 1) K)))
                (<= M3 (+ K (* (- 1) B)))
                (not (= K3 0))))
      (a!12 (or (<= M3 (+ B (* (- 1) L)))
                (<= M3 (+ L (* (- 1) B)))
                (not (= L3 0))))
      (a!13 (or (<= M3 (+ C (* (- 1) G)))
                (<= M3 (+ G (* (- 1) C)))
                (not (= G3 0))))
      (a!14 (or (<= M3 (+ C (* (- 1) H)))
                (<= M3 (+ H (* (- 1) C)))
                (not (= H3 0))))
      (a!15 (or (<= M3 (+ C (* (- 1) I)))
                (<= M3 (+ I (* (- 1) C)))
                (not (= I3 0))))
      (a!16 (or (<= M3 (+ C (* (- 1) J)))
                (<= M3 (+ J (* (- 1) C)))
                (not (= J3 0))))
      (a!17 (or (<= M3 (+ C (* (- 1) K)))
                (<= M3 (+ K (* (- 1) C)))
                (not (= K3 0))))
      (a!18 (or (<= M3 (+ C (* (- 1) L)))
                (<= M3 (+ L (* (- 1) C)))
                (not (= L3 0))))
      (a!19 (or (<= M3 (+ D (* (- 1) G)))
                (<= M3 (+ G (* (- 1) D)))
                (not (= G3 0))))
      (a!20 (or (<= M3 (+ D (* (- 1) H)))
                (<= M3 (+ H (* (- 1) D)))
                (not (= H3 0))))
      (a!21 (or (<= M3 (+ D (* (- 1) I)))
                (<= M3 (+ I (* (- 1) D)))
                (not (= I3 0))))
      (a!22 (or (<= M3 (+ D (* (- 1) J)))
                (<= M3 (+ J (* (- 1) D)))
                (not (= J3 0))))
      (a!23 (or (<= M3 (+ D (* (- 1) K)))
                (<= M3 (+ K (* (- 1) D)))
                (not (= K3 0))))
      (a!24 (or (<= M3 (+ D (* (- 1) L)))
                (<= M3 (+ L (* (- 1) D)))
                (not (= L3 0))))
      (a!25 (or (<= M3 (+ E (* (- 1) G)))
                (<= M3 (+ G (* (- 1) E)))
                (not (= G3 0))))
      (a!26 (or (<= M3 (+ E (* (- 1) H)))
                (<= M3 (+ H (* (- 1) E)))
                (not (= H3 0))))
      (a!27 (or (<= M3 (+ E (* (- 1) I)))
                (<= M3 (+ I (* (- 1) E)))
                (not (= I3 0))))
      (a!28 (or (<= M3 (+ E (* (- 1) J)))
                (<= M3 (+ J (* (- 1) E)))
                (not (= J3 0))))
      (a!29 (or (<= M3 (+ E (* (- 1) K)))
                (<= M3 (+ K (* (- 1) E)))
                (not (= K3 0))))
      (a!30 (or (<= M3 (+ E (* (- 1) L)))
                (<= M3 (+ L (* (- 1) E)))
                (not (= L3 0))))
      (a!31 (or (<= M3 (+ F (* (- 1) G)))
                (<= M3 (+ G (* (- 1) F)))
                (not (= G3 0))))
      (a!32 (or (<= M3 (+ F (* (- 1) H)))
                (<= M3 (+ H (* (- 1) F)))
                (not (= H3 0))))
      (a!33 (or (<= M3 (+ F (* (- 1) I)))
                (<= M3 (+ I (* (- 1) F)))
                (not (= I3 0))))
      (a!34 (or (<= M3 (+ F (* (- 1) J)))
                (<= M3 (+ J (* (- 1) F)))
                (not (= J3 0))))
      (a!35 (or (<= M3 (+ F (* (- 1) K)))
                (<= M3 (+ K (* (- 1) F)))
                (not (= K3 0))))
      (a!36 (or (<= M3 (+ F (* (- 1) L)))
                (<= M3 (+ L (* (- 1) F)))
                (not (= L3 0)))))
  (or (and a!1 a!2 a!3 a!4 a!5 a!6 (= G3 0))
      (and a!7 a!8 a!9 a!10 a!11 a!12 (= H3 0))
      (and a!13 a!14 a!15 a!16 a!17 a!18 (= I3 0))
      (and a!19 a!20 a!21 a!22 a!23 a!24 (= J3 0))
      (and a!25 a!26 a!27 a!28 a!29 a!30 (= K3 0))
      (and a!31 a!32 a!33 a!34 a!35 a!36 (= L3 0))))
      )
      false
    )
  )
)

(check-sat)
(exit)
