(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Bool) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Bool) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Bool) (V4 Bool) ) 
    (=>
      (and
        (let ((a!1 (= (or (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)))
              L))
      (a!2 (= A
              (and L
                   (not (<= Q2 (- 32768)))
                   (not (<= R2 (- 32768)))
                   (not (<= S2 (- 32768)))
                   (not (<= T2 (- 32768)))
                   (not (<= U2 (- 32768)))
                   (not (<= V2 (- 32768)))
                   (not (<= W2 (- 32768)))
                   (not (<= X2 (- 32768)))
                   (not (<= Y2 (- 32768)))
                   (not (<= 32767 J2))
                   (not (<= 32767 K2))
                   (not (<= 32767 L2))
                   (not (<= 32767 P2))
                   (not (<= 32767 Q2))
                   (not (<= 32767 R2))
                   (not (<= 32767 S2))
                   (not (<= 32767 T2))
                   (not (<= 32767 U2))
                   (not (<= 32767 V2))
                   (not (<= 32767 X2))
                   (not (<= 32767 Y2))))))
  (and (= K1 0)
       (= K1 L1)
       (= J1 X2)
       (= I1 0)
       (= I1 J1)
       (= H1 W2)
       (= G1 1)
       (= G1 H1)
       (= F1 V2)
       (= E1 0)
       (= E1 F1)
       (= D1 U2)
       (= C1 0)
       (= C1 D1)
       (= B1 T2)
       (= A1 0)
       (= A1 B1)
       (= Z S2)
       (= Y 0)
       (= Y Z)
       (= X R2)
       (= W 0)
       (= W X)
       (= V 1)
       (= U Q2)
       (= U V)
       (= T 0)
       (= S P2)
       (= S T)
       (= R 0)
       (= Q L2)
       (= Q R)
       (= P 1)
       (= O K2)
       (= O P)
       (= N 1)
       (= M J2)
       (= M N)
       (= (<= 0 Y2) L3)
       a!1
       (= B I2)
       a!2
       (= A B)
       (or (not K) (= U3 D4))
       (or (not K) (= G3 B4))
       (or (not K) (= O2 E4))
       (or (not K) (= U1 C4))
       (or (not J) (= Q3 G4))
       (or (not J) (= K3 H4))
       (or (not J) (= D3 I4))
       (or (not J) (= A3 F4))
       (or J (= M2 O2))
       (or (not J) (= M2 N2))
       (or I (= I3 K3))
       (or (not I) (= I3 J3))
       (or (not I) (= F3 H3))
       (or I (= F3 G3))
       (or (not I) (= C3 E3))
       (or I (= C3 D3))
       (or (not I) (= Z2 B3))
       (or I (= Z2 A3))
       (or (not H) (= Z3 M4))
       (or (not H) (= M3 N3))
       (or H (= Z2 M3))
       (or (not H) (= Z1 L4))
       (or (not H) (= W1 O3))
       (or H (= W1 C3))
       (or G (= X3 Z3))
       (or (not G) (= X3 Y3))
       (or (not G) (= V3 W3))
       (or G (= M3 V3))
       (or F (= S3 U3))
       (or (not F) (= S3 T3))
       (or (not F) (= P3 R3))
       (or F (= P3 Q3))
       (or (not F) (= Q1 J4))
       (or (not F) (= N1 K4))
       (or E (= S1 U1))
       (or (not E) (= S1 T1))
       (or (not E) (= P1 R1))
       (or E (= P1 Q1))
       (or (not E) (= M1 O1))
       (or E (= M1 N1))
       (or (not D) (= H2 A4))
       (or (not D) (= B2 C2))
       (or (not D) (= Y1 A2))
       (or D (= Y1 Z1))
       (or (not D) (= V1 X1))
       (or D (= V1 W1))
       (or D (= P1 B2))
       (or C (= F2 H2))
       (or (not C) (= F2 G2))
       (or (not C) (= D2 E2))
       (or C (= B2 D2))
       (= L1 Y2)))
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
       P3
       Q3
       R3
       S3
       T3
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
       V4)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Bool) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Bool) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Bool) (V4 Bool) (W4 Bool) (X4 Bool) (Y4 Bool) (Z4 Bool) (A5 Bool) (B5 Bool) (C5 Bool) (D5 Bool) (E5 Bool) (F5 Bool) (G5 Bool) (H5 Bool) (I5 Int) (J5 Int) (K5 Int) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Int) (U5 Int) (V5 Int) (W5 Int) (X5 Int) (Y5 Int) (Z5 Int) (A6 Int) (B6 Int) (C6 Int) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Int) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Int) (R6 Int) (S6 Int) (T6 Int) (U6 Int) (V6 Int) (W6 Int) (X6 Int) (Y6 Int) (Z6 Int) (A7 Int) (B7 Int) (C7 Int) (D7 Int) (E7 Bool) (F7 Int) (G7 Int) (H7 Int) (I7 Int) (J7 Int) (K7 Int) (L7 Int) (M7 Int) (N7 Int) (O7 Int) (P7 Int) (Q7 Int) (R7 Int) (S7 Int) (T7 Int) (U7 Int) (V7 Int) (W7 Int) (X7 Int) (Y7 Int) (Z7 Int) (A8 Int) (B8 Int) (C8 Int) (D8 Int) (E8 Int) (F8 Int) (G8 Int) (H8 Bool) (I8 Int) (J8 Int) (K8 Int) (L8 Int) (M8 Int) (N8 Int) (O8 Int) (P8 Int) (Q8 Int) (R8 Int) (S8 Int) (T8 Int) (U8 Int) (V8 Int) (W8 Bool) (X8 Bool) (Y8 Bool) (Z8 Bool) (A9 Bool) (B9 Bool) (C9 Bool) (D9 Bool) (E9 Bool) (F9 Int) (G9 Int) (H9 Int) (I9 Int) (J9 Int) (K9 Int) (L9 Int) (M9 Int) (N9 Int) (O9 Int) (P9 Int) (Q9 Int) (R9 Int) ) 
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
       P3
       Q3
       R3
       S3
       T3
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
       V4)
        (let ((a!1 (= (or (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       K)
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       J
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       I
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       H
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       (not F)
                       G
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       (not E)
                       F
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       (not D)
                       E
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and (not C)
                       D
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K))
                  (and C
                       (not D)
                       (not E)
                       (not F)
                       (not G)
                       (not H)
                       (not I)
                       (not J)
                       (not K)))
              L))
      (a!2 (= (or (and (not Y4)
                       (not Z4)
                       (not A5)
                       (not B5)
                       (not C5)
                       (not D5)
                       (not E5)
                       (not F5)
                       (not G5))
                  (and (not Y4)
                       (not Z4)
                       (not A5)
                       (not B5)
                       (not C5)
                       (not D5)
                       (not E5)
                       (not F5)
                       G5)
                  (and (not Y4)
                       (not Z4)
                       (not A5)
                       (not B5)
                       (not C5)
                       (not D5)
                       (not E5)
                       F5
                       (not G5))
                  (and (not Y4)
                       (not Z4)
                       (not A5)
                       (not B5)
                       (not C5)
                       (not D5)
                       E5
                       (not F5)
                       (not G5))
                  (and (not Y4)
                       (not Z4)
                       (not A5)
                       (not B5)
                       (not C5)
                       D5
                       (not E5)
                       (not F5)
                       (not G5))
                  (and (not Y4)
                       (not Z4)
                       (not A5)
                       (not B5)
                       C5
                       (not D5)
                       (not E5)
                       (not F5)
                       (not G5))
                  (and (not Y4)
                       (not Z4)
                       (not A5)
                       B5
                       (not C5)
                       (not D5)
                       (not E5)
                       (not F5)
                       (not G5))
                  (and (not Y4)
                       (not Z4)
                       A5
                       (not B5)
                       (not C5)
                       (not D5)
                       (not E5)
                       (not F5)
                       (not G5))
                  (and (not Y4)
                       Z4
                       (not A5)
                       (not B5)
                       (not C5)
                       (not D5)
                       (not E5)
                       (not F5)
                       (not G5))
                  (and Y4
                       (not Z4)
                       (not A5)
                       (not B5)
                       (not C5)
                       (not D5)
                       (not E5)
                       (not F5)
                       (not G5)))
              H5))
      (a!3 (= X4
              (and H5
                   B
                   (not (<= M7 (- 32768)))
                   (not (<= N7 (- 32768)))
                   (not (<= O7 (- 32768)))
                   (not (<= P7 (- 32768)))
                   (not (<= Q7 (- 32768)))
                   (not (<= R7 (- 32768)))
                   (not (<= S7 (- 32768)))
                   (not (<= T7 (- 32768)))
                   (not (<= U7 (- 32768)))
                   (not (<= 32767 F7))
                   (not (<= 32767 G7))
                   (not (<= 32767 H7))
                   (not (<= 32767 L7))
                   (not (<= 32767 M7))
                   (not (<= 32767 N7))
                   (not (<= 32767 O7))
                   (not (<= 32767 P7))
                   (not (<= 32767 Q7))
                   (not (<= 32767 R7))
                   (not (<= 32767 T7))
                   (not (<= 32767 U7)))))
      (a!4 (or (not E9) (= (+ L1 (* (- 1) B7)) 1)))
      (a!5 (or (not E9) (= (+ J1 (* (- 1) A7)) (- 1))))
      (a!6 (or (not D9) (= (+ L1 (* (- 1) M9)) (- 1))))
      (a!7 (or (not D9) (= (+ J1 (* (- 1) X6)) 1)))
      (a!8 (or (not D9) (= (+ F1 (* (- 1) W6)) (- 1))))
      (a!9 (or (not D9) (= (+ D1 (* (- 1) T6)) 1)))
      (a!10 (or (not C9) (= (+ J1 (* (- 1) N6)) (- 1))))
      (a!11 (or (not C9) (= (+ H1 (* (- 1) K6)) 1)))
      (a!12 (or (not C9) (= (+ O (* (- 1) O6)) 1)))
      (a!13 (or (not B9) (= (+ J1 (* (- 1) L9)) 1)))
      (a!14 (or (not B9) (= (+ H1 (* (- 1) K9)) (- 1))))
      (a!15 (or (not B9) (= (+ S (* (- 1) O8)) (- 1))))
      (a!16 (or (not A9) (= (+ B1 (* (- 1) N8)) (- 1))))
      (a!17 (or (not A9) (= (+ Z (* (- 1) T8)) 1)))
      (a!18 (or (not A9) (= (+ X (* (- 1) S8)) (- 1))))
      (a!19 (or (not Z8) (= (+ F1 (* (- 1) J9)) 1)))
      (a!20 (or (not Z8) (= (+ D1 (* (- 1) K8)) (- 1))))
      (a!21 (or (not Z8) (= (+ Z (* (- 1) G9)) (- 1))))
      (a!22 (or (not Z8) (= (+ X (* (- 1) J8)) 1)))
      (a!23 (or (not Y8) (= (+ D1 (* (- 1) A8)) (- 5))))
      (a!24 (or (not Y8) (= (+ X (* (- 1) X7)) (- 1))))
      (a!25 (or (not Y8) (= (+ U (* (- 1) E8)) 1)))
      (a!26 (or (not Y8) (= (+ M (* (- 1) D8)) 1)))
      (a!27 (or (not X8) (= (+ D1 (* (- 1) I9)) 5)))
      (a!28 (or (not X8) (= (+ B1 (* (- 1) H9)) 1)))
      (a!29 (or (not X8) (= (+ X (* (- 1) F9)) 1)))
      (a!30 (or (not X8) (= (+ U (* (- 1) R9)) (- 1))))
      (a!31 (or (not X8) (= (+ Q (* (- 1) I7)) (- 1))))
      (a!32 (or (not W8) (= (+ S (* (- 1) Q9)) 1)))
      (a!33 (or (not W8) (= (+ Q (* (- 1) P9)) 1)))
      (a!34 (or (not W8) (= (+ O (* (- 1) O9)) (- 1))))
      (a!35 (or (not W8) (= (+ M (* (- 1) N9)) (- 1)))))
  (and (= K1 L1)
       (= J1 X2)
       (= I1 J1)
       (= H1 W2)
       (= G1 H1)
       (= F1 V2)
       (= E1 F1)
       (= D1 U2)
       (= C1 D1)
       (= B1 T2)
       (= A1 B1)
       (= Z S2)
       (= Y Z)
       (= X R2)
       (= W X)
       (= U Q2)
       (= U V)
       (= S P2)
       (= S T)
       (= Q L2)
       (= Q R)
       (= O K2)
       (= O P)
       (= M J2)
       (= M N)
       (= H6 C7)
       (= G6 U7)
       (= G6 H6)
       (= F6 Z6)
       (= E6 T7)
       (= E6 F6)
       (= D6 J6)
       (= C6 S7)
       (= C6 D6)
       (= B6 V6)
       (= A6 R7)
       (= A6 B6)
       (= Z5 S6)
       (= Y5 Q7)
       (= Y5 Z5)
       (= X5 M8)
       (= W5 P7)
       (= W5 X5)
       (= V5 U8)
       (= U5 O7)
       (= U5 V5)
       (= T5 R8)
       (= S5 N7)
       (= S5 T5)
       (= R5 M7)
       (= Q5 F8)
       (= Q5 R5)
       (= P5 L7)
       (= O5 P8)
       (= O5 P5)
       (= N5 H7)
       (= M5 J7)
       (= M5 N5)
       (= L5 G7)
       (= K5 P6)
       (= K5 L5)
       (= J5 F7)
       (= I5 C8)
       (= I5 J5)
       (= (<= 1 L1) E9)
       (= (<= 1 J1) B9)
       (= (<= 1 Z) A9)
       (= (<= 0 Y2) L3)
       (= (<= 0 U7) H8)
       a!1
       a!2
       (= (and (<= 1 X) (<= 1 B1) (<= 5 D1)) X8)
       (= (and (<= 1 D1) (<= 1 J1)) D9)
       (= (and (<= 1 X) (<= 1 F1)) Z8)
       (= (and (<= 1 Q) (<= 1 S)) W8)
       (= (and (<= 1 O) (<= 1 H1)) C9)
       (= (and (<= 1 M) (<= 1 U)) Y8)
       (= B I2)
       (= A B)
       a!3
       (= W4 E7)
       (= W4 X4)
       a!4
       a!5
       (or E9 (= L1 B7))
       (or E9 (= J1 A7))
       a!6
       a!7
       a!8
       a!9
       (or D9 (= L1 M9))
       (or D9 (= J1 X6))
       (or D9 (= F1 W6))
       (or D9 (= D1 T6))
       a!10
       a!11
       a!12
       (or C9 (= J1 N6))
       (or C9 (= H1 K6))
       (or C9 (= O O6))
       a!13
       a!14
       a!15
       (or B9 (= J1 L9))
       (or B9 (= H1 K9))
       (or B9 (= S O8))
       a!16
       a!17
       a!18
       (or A9 (= B1 N8))
       (or A9 (= Z T8))
       (or A9 (= X S8))
       a!19
       a!20
       a!21
       a!22
       (or Z8 (= F1 J9))
       (or Z8 (= D1 K8))
       (or Z8 (= Z G9))
       (or Z8 (= X J8))
       a!23
       a!24
       a!25
       a!26
       (or Y8 (= D1 A8))
       (or Y8 (= X X7))
       (or Y8 (= U E8))
       (or Y8 (= M D8))
       a!27
       a!28
       a!29
       a!30
       a!31
       (or X8 (= D1 I9))
       (or X8 (= B1 H9))
       (or X8 (= X F9))
       (or X8 (= U R9))
       (or X8 (= Q I7))
       a!32
       a!33
       a!34
       a!35
       (or W8 (= S Q9))
       (or W8 (= Q P9))
       (or W8 (= O O9))
       (or W8 (= M N9))
       (or J (= M2 O2))
       (or (not J) (= M2 N2))
       (or I (= I3 K3))
       (or (not I) (= I3 J3))
       (or (not I) (= F3 H3))
       (or I (= F3 G3))
       (or (not I) (= C3 E3))
       (or I (= C3 D3))
       (or (not I) (= Z2 B3))
       (or I (= Z2 A3))
       (or (not H) (= M3 N3))
       (or H (= Z2 M3))
       (or (not H) (= W1 O3))
       (or H (= W1 C3))
       (or G (= X3 Z3))
       (or (not G) (= X3 Y3))
       (or (not G) (= V3 W3))
       (or G (= M3 V3))
       (or F (= S3 U3))
       (or (not F) (= S3 T3))
       (or (not F) (= P3 R3))
       (or F (= P3 Q3))
       (or E (= S1 U1))
       (or (not E) (= S1 T1))
       (or (not E) (= P1 R1))
       (or E (= P1 Q1))
       (or (not E) (= M1 O1))
       (or E (= M1 N1))
       (or (not D) (= B2 C2))
       (or (not D) (= Y1 A2))
       (or D (= Y1 Z1))
       (or (not D) (= V1 X1))
       (or D (= V1 W1))
       (or D (= P1 B2))
       (or C (= F2 H2))
       (or (not C) (= F2 G2))
       (or (not C) (= D2 E2))
       (or C (= B2 D2))
       (or G5 (= S Q8))
       (or G5 (= Q K7))
       (or G5 (= O Q6))
       (or G5 (= M B8))
       (or (not G5) (= Q8 Q9))
       (or (not G5) (= B8 N9))
       (or (not G5) (= K7 P9))
       (or (not G5) (= Q6 O9))
       (or F5 (= D1 Y7))
       (or F5 (= B1 L8))
       (or F5 (= X V7))
       (or F5 (= U G8))
       (or (not F5) (= L8 H9))
       (or (not F5) (= G8 R9))
       (or (not F5) (= Y7 I9))
       (or (not F5) (= V7 F9))
       (or F5 (= J7 K7))
       (or (not F5) (= I7 J7))
       (or E5 (= F8 G8))
       (or (not E5) (= E8 F8))
       (or (not E5) (= C8 D8))
       (or E5 (= B8 C8))
       (or (not E5) (= Z7 A8))
       (or E5 (= Y7 Z7))
       (or (not E5) (= W7 X7))
       (or E5 (= V7 W7))
       (or D5 (= F1 U6))
       (or D5 (= Z V8))
       (or (not D5) (= V8 G9))
       (or (not D5) (= I8 J8))
       (or D5 (= W7 I8))
       (or (not D5) (= U6 J9))
       (or (not D5) (= R6 K8))
       (or D5 (= R6 Z7))
       (or C5 (= U8 V8))
       (or (not C5) (= T8 U8))
       (or (not C5) (= R8 S8))
       (or C5 (= I8 R8))
       (or B5 (= J1 L6))
       (or B5 (= H1 I6))
       (or B5 (= P8 Q8))
       (or (not B5) (= O8 P8))
       (or (not B5) (= M8 N8))
       (or B5 (= L8 M8))
       (or (not B5) (= L6 L9))
       (or (not B5) (= I6 K9))
       (or A5 (= P6 Q6))
       (or (not A5) (= O6 P6))
       (or (not A5) (= M6 N6))
       (or A5 (= L6 M6))
       (or (not A5) (= J6 K6))
       (or A5 (= I6 J6))
       (or Z4 (= L1 D7))
       (or (not Z4) (= D7 M9))
       (or (not Z4) (= X6 Y6))
       (or (not Z4) (= V6 W6))
       (or Z4 (= U6 V6))
       (or (not Z4) (= S6 T6))
       (or Z4 (= R6 S6))
       (or Z4 (= M6 Y6))
       (or Y4 (= C7 D7))
       (or (not Y4) (= B7 C7))
       (or (not Y4) (= Z6 A7))
       (or Y4 (= Y6 Z6))
       (= L1 Y2)))
      )
      (state X4
       W4
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
       J5
       I5
       L5
       K5
       N5
       M5
       P5
       O5
       R5
       Q5
       T5
       S5
       V5
       U5
       X5
       W5
       Z5
       Y5
       B6
       A6
       D6
       C6
       F6
       E6
       H6
       G6
       J6
       I6
       K6
       M6
       L6
       N6
       P6
       O6
       Q6
       S6
       R6
       T6
       V6
       U6
       W6
       Y6
       X6
       Z6
       A7
       C7
       B7
       D7
       E7
       F7
       G7
       H7
       J7
       I7
       K7
       L7
       M7
       N7
       O7
       P7
       Q7
       R7
       S7
       T7
       U7
       W7
       V7
       X7
       Z7
       Y7
       A8
       C8
       B8
       D8
       F8
       E8
       G8
       H8
       I8
       J8
       K8
       M8
       L8
       N8
       P8
       O8
       Q8
       R8
       S8
       U8
       T8
       V8
       M9
       N9
       O9
       Q9
       P9
       F9
       H9
       R9
       I9
       L9
       K9
       J9
       G9
       E9
       D9
       C9
       B9
       A9
       Z8
       Y8
       X8
       W8)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Int) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Bool) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Int) (R2 Int) (S2 Int) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Int) (I3 Int) (J3 Int) (K3 Int) (L3 Bool) (M3 Int) (N3 Int) (O3 Int) (P3 Int) (Q3 Int) (R3 Int) (S3 Int) (T3 Int) (U3 Int) (V3 Int) (W3 Int) (X3 Int) (Y3 Int) (Z3 Int) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Int) (M4 Int) (N4 Bool) (O4 Bool) (P4 Bool) (Q4 Bool) (R4 Bool) (S4 Bool) (T4 Bool) (U4 Bool) (V4 Bool) ) 
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
       P3
       Q3
       R3
       S3
       T3
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
       V4)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
