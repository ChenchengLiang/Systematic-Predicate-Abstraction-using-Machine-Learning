(set-logic HORN)

(declare-fun |invariant| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Bool) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) ) 
    (=>
      (and
        (and (= L1 33)
     (= K1 2)
     (= J1 0)
     (= I1 0)
     (= H1 0)
     (= G1 0)
     (= F1 0)
     (= E1 0)
     (= D1 0)
     (= C1 0)
     (= B1 0)
     (= A1 0)
     (= Z 0)
     (= Y 0)
     (= X 0)
     (= W 0)
     (= V 0)
     (= U 0)
     (= T 0)
     (= S 0)
     (= R 0)
     (= Q 0)
     (= P 0)
     (= O 0)
     (= N 0)
     (= M 0)
     (= L 0)
     (= K 0)
     (= J 0)
     (= I 0)
     (= H 0)
     (= G 0)
     (= F 0)
     (= E 0)
     (= D 0)
     (= C 0)
     (= B 0)
     (= A 0)
     (= N1 true)
     (= M1 0))
      )
      (invariant J1
           K1
           L1
           O1
           P1
           Q1
           R1
           M1
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
           S1
           T1
           U1
           V1
           W1
           X1
           N1
           Y1
           Z1
           A2
           A
           I1
           B
           C
           D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Bool) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Int) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Bool) ) 
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
           A2)
        (let ((a!1 (ite (= B 4) R (ite (= B 3) O (ite (= B 2) L I))))
      (a!4 (ite (= B 4) T (ite (= B 3) Q (ite (= B 2) N K))))
      (a!8 (and (or (not (= Y1 T1)) (not (= Z1 U1)) (not (= A2 V1)))
                (= G2 I)
                (= H2 J)
                (= I2 K)
                (= J2 L)
                (= K2 M)
                (= L2 N)
                (= M2 O)
                (= N2 P)
                (= O2 Q)
                (= P2 R)
                (= Q2 S)
                (= R2 T)
                (= S2 U)
                (= T2 V)
                (= U2 W)
                (= V2 X)
                (= W2 Y)
                (= X2 Z)
                (= Y2 A1)
                (= Z2 B1)
                (= A3 C1)
                (= B3 D1)
                (= C3 E1)
                (= D3 F1)
                (= E3 G1)
                (= F3 H1)
                (= G3 I1)
                (= H3 J1)
                (= I3 K1)
                (= J3 L1)
                (= N3 Y1)
                (= P3 A2)
                (= Q3 A)
                (= R3 B)
                (= S3 C)
                (= T3 M1)
                (= U3 N1)
                (= V3 O1)
                (= W3 T1)
                (= X3 U1)
                (= Y3 V1)
                (= Z3 0)
                (= X1 3)
                (= O3 Z1)))
      (a!10 (and (or (not (= Y1 D)) (not (= Z1 E)) (not (= A2 F)))
                 (= B2 D)
                 (= C2 E)
                 (= D2 F)
                 (= E2 0)
                 (= F2 G)
                 (= G2 I)
                 (= H2 J)
                 (= I2 K)
                 (= J2 L)
                 (= K2 M)
                 (= L2 N)
                 (= M2 O)
                 (= N2 P)
                 (= O2 Q)
                 (= P2 R)
                 (= Q2 S)
                 (= R2 T)
                 (= S2 U)
                 (= T2 V)
                 (= U2 W)
                 (= V2 X)
                 (= W2 Y)
                 (= X2 Z)
                 (= Y2 A1)
                 (= Z2 B1)
                 (= A3 C1)
                 (= B3 D1)
                 (= C3 E1)
                 (= D3 F1)
                 (= E3 G1)
                 (= F3 H1)
                 (= G3 I1)
                 (= H3 J1)
                 (= I3 K1)
                 (= J3 L1)
                 (= K3 P1)
                 (= L3 Q1)
                 (= M3 R1)
                 (= N3 Y1)
                 (= P3 A2)
                 (= W1 2)
                 (= O3 Z1)))
      (a!11 (ite (= E 4) R (ite (= E 3) O (ite (= E 2) L I))))
      (a!14 (ite (= E 4) S (ite (= E 3) P (ite (= E 2) M J))))
      (a!18 (ite (= B 4) S (ite (= B 3) P (ite (= B 2) M J)))))
(let ((a!2 (ite (= B 7) A1 (ite (= B 6) X (ite (= B 5) U a!1))))
      (a!5 (ite (= B 7) C1 (ite (= B 6) Z (ite (= B 5) W a!4))))
      (a!12 (ite (= E 7) A1 (ite (= E 6) X (ite (= E 5) U a!11))))
      (a!15 (ite (= E 7) B1 (ite (= E 6) Y (ite (= E 5) V a!14))))
      (a!19 (ite (= B 7) B1 (ite (= B 6) Y (ite (= B 5) V a!18)))))
(let ((a!3 (ite (= B 10) J1 (ite (= B 9) G1 (ite (= B 8) D1 a!2))))
      (a!6 (ite (= B 10) L1 (ite (= B 9) I1 (ite (= B 8) F1 a!5))))
      (a!13 (ite (= E 10) J1 (ite (= E 9) G1 (ite (= E 8) D1 a!12))))
      (a!16 (ite (= E 10) K1 (ite (= E 9) H1 (ite (= E 8) E1 a!15))))
      (a!20 (ite (= B 10) K1 (ite (= B 9) H1 (ite (= B 8) E1 a!19)))))
(let ((a!7 (and (= G2 (ite (= B 1) a!3 I))
                (= H2 (ite (= B 1) U1 J))
                (= I2 (ite (= B 1) (+ 1 a!6) K))
                (= J2 (ite (= B 2) a!3 L))
                (= K2 (ite (= B 2) U1 M))
                (= L2 (ite (= B 2) (+ 1 a!6) N))
                (= M2 (ite (= B 3) a!3 O))
                (= N2 (ite (= B 3) U1 P))
                (= O2 (ite (= B 3) (+ 1 a!6) Q))
                (= P2 (ite (= B 4) a!3 R))
                (= Q2 (ite (= B 4) U1 S))
                (= R2 (ite (= B 4) (+ 1 a!6) T))
                (= S2 (ite (= B 5) a!3 U))
                (= T2 (ite (= B 5) U1 V))
                (= U2 (ite (= B 5) (+ 1 a!6) W))
                (= V2 (ite (= B 6) a!3 X))
                (= W2 (ite (= B 6) U1 Y))
                (= X2 (ite (= B 6) (+ 1 a!6) Z))
                (= Y2 (ite (= B 7) a!3 A1))
                (= Z2 (ite (= B 7) U1 B1))
                (= A3 (ite (= B 7) (+ 1 a!6) C1))
                (= B3 (ite (= B 8) a!3 D1))
                (= C3 (ite (= B 8) U1 E1))
                (= D3 (ite (= B 8) (+ 1 a!6) F1))
                (= E3 (ite (= B 9) a!3 G1))
                (= F3 (ite (= B 9) U1 H1))
                (= G3 (ite (= B 9) (+ 1 a!6) I1))
                (= H3 J1)
                (= I3 (ite (= B 10) U1 K1))
                (= J3 (ite (= B 10) (+ 1 a!6) L1))
                (= N3 Y1)
                (= P3 A2)
                (= Q3 A)
                (= R3 B)
                (= S3 C)
                (= T3 M1)
                (= U3 N1)
                (= V3 O1)
                (= W3 T1)
                (= X3 U1)
                (= Y3 V1)
                (= Z3 2)
                (= X1 1)
                (= O3 Z1)))
      (a!17 (or (and (= B2 D)
                     (= C2 E)
                     (= D2 F)
                     (= E2 W1)
                     (= F2 G)
                     (= G2 I)
                     (= H2 J)
                     (= I2 K)
                     (= J2 L)
                     (= K2 M)
                     (= L2 N)
                     (= M2 O)
                     (= N2 P)
                     (= O2 Q)
                     (= P2 R)
                     (= Q2 S)
                     (= R2 T)
                     (= S2 U)
                     (= T2 V)
                     (= U2 W)
                     (= V2 X)
                     (= W2 Y)
                     (= X2 Z)
                     (= Y2 A1)
                     (= Z2 B1)
                     (= A3 C1)
                     (= B3 D1)
                     (= C3 E1)
                     (= D3 F1)
                     (= E3 G1)
                     (= F3 H1)
                     (= G3 I1)
                     (= H3 J1)
                     (= I3 K1)
                     (= J3 L1)
                     (= K3 P1)
                     (= L3 Q1)
                     (= M3 R1)
                     (= N3 Y1)
                     (= P3 A2)
                     (= W1 4)
                     (= O3 Z1))
                (and (= B2 D)
                     (= C2 E)
                     (= D2 F)
                     (= E2 0)
                     (= F2 G)
                     (= G2 I)
                     (= H2 J)
                     (= I2 K)
                     (= J2 L)
                     (= K2 M)
                     (= L2 N)
                     (= M2 O)
                     (= N2 P)
                     (= O2 Q)
                     (= P2 R)
                     (= Q2 S)
                     (= R2 T)
                     (= S2 U)
                     (= T2 V)
                     (= U2 W)
                     (= V2 X)
                     (= W2 Y)
                     (= X2 Z)
                     (= Y2 A1)
                     (= Z2 B1)
                     (= A3 C1)
                     (= B3 D1)
                     (= C3 E1)
                     (= D3 F1)
                     (= E3 G1)
                     (= F3 H1)
                     (= G3 I1)
                     (= H3 J1)
                     (= I3 K1)
                     (= J3 L1)
                     (= K3 P1)
                     (= L3 Q1)
                     (= M3 R1)
                     (= N3 Y1)
                     (= P3 A2)
                     (= W1 3)
                     (= O3 Z1))
                (and (= B2 Y1)
                     (= C2 Z1)
                     (= D2 A2)
                     (= E2 1)
                     (= F2 G)
                     (= G2 I)
                     (= H2 J)
                     (= I2 K)
                     (= J2 L)
                     (= K2 M)
                     (= L2 N)
                     (= M2 O)
                     (= N2 P)
                     (= O2 Q)
                     (= P2 R)
                     (= Q2 S)
                     (= R2 T)
                     (= S2 U)
                     (= T2 V)
                     (= U2 W)
                     (= V2 X)
                     (= W2 Y)
                     (= X2 Z)
                     (= Y2 A1)
                     (= Z2 B1)
                     (= A3 C1)
                     (= B3 D1)
                     (= C3 E1)
                     (= D3 F1)
                     (= E3 G1)
                     (= F3 H1)
                     (= G3 I1)
                     (= H3 J1)
                     (= I3 K1)
                     (= J3 L1)
                     (= K3 P1)
                     (= L3 Q1)
                     (= M3 R1)
                     (= N3 Y1)
                     (= P3 A2)
                     (= W1 0)
                     (= O3 Z1))
                a!10
                (and (= B2 D)
                     (= C2 E)
                     (= D2 F)
                     (= E2 2)
                     (= F2 G)
                     (= G2 I)
                     (= H2 J)
                     (= I2 K)
                     (= J2 L)
                     (= K2 M)
                     (= L2 N)
                     (= M2 O)
                     (= N2 P)
                     (= O2 Q)
                     (= P2 R)
                     (= Q2 S)
                     (= R2 T)
                     (= S2 U)
                     (= T2 V)
                     (= U2 W)
                     (= V2 X)
                     (= W2 Y)
                     (= X2 Z)
                     (= Y2 A1)
                     (= Z2 B1)
                     (= A3 C1)
                     (= B3 D1)
                     (= C3 E1)
                     (= D3 F1)
                     (= E3 G1)
                     (= F3 H1)
                     (= G3 I1)
                     (= H3 J1)
                     (= I3 K1)
                     (= J3 L1)
                     (= K3 (+ 1 a!13))
                     (= L3 a!16)
                     (= M3 R1)
                     (= N3 Y1)
                     (= P3 A2)
                     (not (= E 0))
                     (= W1 1)
                     (= O3 Z1))
                (and (= B2 D)
                     (= C2 E)
                     (= D2 F)
                     (= E2 4)
                     (= F2 0)
                     (= G2 I)
                     (= H2 J)
                     (= I2 K)
                     (= J2 L)
                     (= K2 M)
                     (= L2 N)
                     (= M2 O)
                     (= N2 P)
                     (= O2 Q)
                     (= P2 R)
                     (= Q2 S)
                     (= R2 T)
                     (= S2 U)
                     (= T2 V)
                     (= U2 W)
                     (= V2 X)
                     (= W2 Y)
                     (= X2 Z)
                     (= Y2 A1)
                     (= Z2 B1)
                     (= A3 C1)
                     (= B3 D1)
                     (= C3 E1)
                     (= D3 F1)
                     (= E3 G1)
                     (= F3 H1)
                     (= G3 I1)
                     (= H3 J1)
                     (= I3 K1)
                     (= J3 L1)
                     (= K3 P1)
                     (= L3 Q1)
                     (= M3 R1)
                     (= N3 Y1)
                     (= P3 A2)
                     (= E 0)
                     (= W1 1)
                     (= O3 Z1))
                (and (= B2 D)
                     (= C2 E)
                     (= D2 F)
                     (= E2 3)
                     (= F2 E)
                     (= G2 I)
                     (= H2 J)
                     (= I2 K)
                     (= J2 L)
                     (= K2 M)
                     (= L2 N)
                     (= M2 O)
                     (= N2 P)
                     (= O2 Q)
                     (= P2 R)
                     (= Q2 S)
                     (= R2 T)
                     (= S2 U)
                     (= T2 V)
                     (= U2 W)
                     (= V2 X)
                     (= W2 Y)
                     (= X2 Z)
                     (= Y2 A1)
                     (= Z2 B1)
                     (= A3 C1)
                     (= B3 D1)
                     (= C3 E1)
                     (= D3 F1)
                     (= E3 G1)
                     (= F3 H1)
                     (= G3 I1)
                     (= H3 J1)
                     (= I3 K1)
                     (= J3 L1)
                     (= K3 P1)
                     (= L3 Q1)
                     (= M3 R1)
                     (= N3 P1)
                     (= P3 R1)
                     (= W1 2)
                     (= Y1 D)
                     (= Z1 E)
                     (= A2 F)
                     (= O3 Q1))))
      (a!21 (and (or (not (= E2 3)) (not (= W1 2)))
                 (or (not (= Z3 4)) (not (= X1 3)) (not (= a!20 H)))
                 (or (not (= Z3 4)) (not (= X1 3)) (= a!20 H))
                 (= A4 H)
                 (= B4 S1))))
(let ((a!9 (or (and (= G2 I)
                    (= H2 J)
                    (= I2 K)
                    (= J2 L)
                    (= K2 M)
                    (= L2 N)
                    (= M2 O)
                    (= N2 P)
                    (= O2 Q)
                    (= P2 R)
                    (= Q2 S)
                    (= R2 T)
                    (= S2 U)
                    (= T2 V)
                    (= U2 W)
                    (= V2 X)
                    (= W2 Y)
                    (= X2 Z)
                    (= Y2 A1)
                    (= Z2 B1)
                    (= A3 C1)
                    (= B3 D1)
                    (= C3 E1)
                    (= D3 F1)
                    (= E3 G1)
                    (= F3 H1)
                    (= G3 I1)
                    (= H3 J1)
                    (= I3 K1)
                    (= J3 L1)
                    (= N3 Y1)
                    (= P3 A2)
                    (= Q3 A)
                    (= R3 B)
                    (= S3 C)
                    (= T3 M1)
                    (= U3 N1)
                    (= V3 O1)
                    (= W3 Y1)
                    (= X3 Z1)
                    (= Y3 A2)
                    (= Z3 1)
                    (= X1 0)
                    (= O3 Z1))
               (and (= G2 I)
                    (= H2 J)
                    (= I2 K)
                    (= J2 L)
                    (= K2 M)
                    (= L2 N)
                    (= M2 O)
                    (= N2 P)
                    (= O2 Q)
                    (= P2 R)
                    (= Q2 S)
                    (= R2 T)
                    (= S2 U)
                    (= T2 V)
                    (= U2 W)
                    (= V2 X)
                    (= W2 Y)
                    (= X2 Z)
                    (= Y2 A1)
                    (= Z2 B1)
                    (= A3 C1)
                    (= B3 D1)
                    (= C3 E1)
                    (= D3 F1)
                    (= E3 G1)
                    (= F3 H1)
                    (= G3 I1)
                    (= H3 J1)
                    (= I3 K1)
                    (= J3 L1)
                    (= N3 Y1)
                    (= P3 A2)
                    (= Q3 A)
                    (= R3 B)
                    (= S3 C)
                    (= T3 (+ 1 T1))
                    (= U3 B)
                    (= V3 O1)
                    (= W3 T1)
                    (= X3 U1)
                    (= Y3 V1)
                    (= Z3 3)
                    (= X1 2)
                    (= O3 Z1))
               a!7
               a!8
               (and (<= 10 B)
                    (= G2 I)
                    (= H2 J)
                    (= I2 K)
                    (= J2 L)
                    (= K2 M)
                    (= L2 N)
                    (= M2 O)
                    (= N2 P)
                    (= O2 Q)
                    (= P2 R)
                    (= Q2 S)
                    (= R2 T)
                    (= S2 U)
                    (= T2 V)
                    (= U2 W)
                    (= V2 X)
                    (= W2 Y)
                    (= X2 Z)
                    (= Y2 A1)
                    (= Z2 B1)
                    (= A3 C1)
                    (= B3 D1)
                    (= C3 E1)
                    (= D3 F1)
                    (= E3 G1)
                    (= F3 H1)
                    (= G3 I1)
                    (= H3 J1)
                    (= I3 K1)
                    (= J3 L1)
                    (= N3 Y1)
                    (= P3 A2)
                    (= Q3 A)
                    (= R3 B)
                    (= S3 C)
                    (= T3 M1)
                    (= U3 N1)
                    (= V3 O1)
                    (= W3 T1)
                    (= X3 U1)
                    (= Y3 V1)
                    (= Z3 X1)
                    (= X1 4)
                    (= O3 Z1))
               (and (not (<= 10 B))
                    (= G2 I)
                    (= H2 J)
                    (= I2 K)
                    (= J2 L)
                    (= K2 M)
                    (= L2 N)
                    (= M2 O)
                    (= N2 P)
                    (= O2 Q)
                    (= P2 R)
                    (= Q2 S)
                    (= R2 T)
                    (= S2 U)
                    (= T2 V)
                    (= U2 W)
                    (= V2 X)
                    (= W2 Y)
                    (= X2 Z)
                    (= Y2 A1)
                    (= Z2 B1)
                    (= A3 C1)
                    (= B3 D1)
                    (= C3 E1)
                    (= D3 F1)
                    (= E3 G1)
                    (= F3 H1)
                    (= G3 I1)
                    (= H3 J1)
                    (= I3 K1)
                    (= J3 L1)
                    (= N3 Y1)
                    (= P3 A2)
                    (= Q3 A)
                    (= R3 (+ 1 B))
                    (= S3 C)
                    (= T3 M1)
                    (= U3 N1)
                    (= V3 O1)
                    (= W3 T1)
                    (= X3 U1)
                    (= Y3 V1)
                    (= Z3 0)
                    (= X1 4)
                    (= O3 Z1))
               (and (= G2 I)
                    (= H2 J)
                    (= I2 K)
                    (= J2 L)
                    (= K2 M)
                    (= L2 N)
                    (= M2 O)
                    (= N2 P)
                    (= O2 Q)
                    (= P2 R)
                    (= Q2 S)
                    (= R2 T)
                    (= S2 U)
                    (= T2 V)
                    (= U2 W)
                    (= V2 X)
                    (= W2 Y)
                    (= X2 Z)
                    (= Y2 A1)
                    (= Z2 B1)
                    (= A3 C1)
                    (= B3 D1)
                    (= C3 E1)
                    (= D3 F1)
                    (= E3 G1)
                    (= F3 H1)
                    (= G3 I1)
                    (= H3 J1)
                    (= I3 K1)
                    (= J3 L1)
                    (= N3 M1)
                    (= P3 O1)
                    (= Q3 A)
                    (= R3 B)
                    (= S3 C)
                    (= T3 M1)
                    (= U3 N1)
                    (= V3 O1)
                    (= W3 T1)
                    (= X3 U1)
                    (= Y3 V1)
                    (= Z3 4)
                    (= X1 3)
                    (= Y1 T1)
                    (= Z1 U1)
                    (= A2 V1)
                    (= O3 N1))))
      (a!22 (or (and (= E2 3) (= A4 Q1) (= W1 2) (= B4 S1))
                (and B4 (= Z3 4) (= A4 B) (= X1 3) (= a!20 H))
                (and (not B4) (= Z3 4) (= A4 H) (= X1 3) (not (= a!20 H)))
                a!21)))
  (and (or (and a!9
                (= B2 D)
                (= C2 E)
                (= D2 F)
                (= E2 W1)
                (= F2 G)
                (= K3 P1)
                (= L3 Q1)
                (= M3 R1))
           (and a!17
                (= Q3 A)
                (= R3 B)
                (= S3 C)
                (= T3 M1)
                (= U3 N1)
                (= V3 O1)
                (= W3 T1)
                (= X3 U1)
                (= Y3 V1)
                (= Z3 X1)))
       a!22))))))
      )
      (invariant Q3
           R3
           S3
           B2
           C2
           D2
           F2
           A4
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
           T3
           U3
           V3
           K3
           L3
           M3
           B4
           W3
           X3
           Y3
           E2
           Z3
           N3
           O3
           P3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Bool) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) ) 
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
           A2)
        (not S1)
      )
      false
    )
  )
)

(check-sat)
(exit)
