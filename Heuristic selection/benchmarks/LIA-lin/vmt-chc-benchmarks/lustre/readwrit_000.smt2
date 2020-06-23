(set-logic HORN)

(declare-fun |state| ( Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Bool) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Bool) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Bool) (M3 Int) (N3 Bool) (O3 Int) (P3 Bool) (Q3 Int) (R3 Bool) (S3 Int) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Bool) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Bool) (T4 Int) (U4 Int) (V4 Int) ) 
    (=>
      (and
        (let ((a!1 (= (or (and (not L4)
                       (not S4)
                       (not Y)
                       (not B)
                       (not G)
                       (not P)
                       (not C2)
                       (not S2)
                       (not H3))
                  (and (not L4)
                       (not S4)
                       (not Y)
                       (not B)
                       (not G)
                       (not P)
                       (not C2)
                       (not S2)
                       H3)
                  (and (not L4)
                       (not S4)
                       (not Y)
                       (not B)
                       (not G)
                       (not P)
                       (not C2)
                       S2
                       (not H3))
                  (and (not L4)
                       (not S4)
                       (not Y)
                       (not B)
                       (not G)
                       (not P)
                       C2
                       (not S2)
                       (not H3))
                  (and (not L4)
                       (not S4)
                       (not Y)
                       (not B)
                       (not G)
                       P
                       (not C2)
                       (not S2)
                       (not H3))
                  (and (not L4)
                       (not S4)
                       (not Y)
                       (not B)
                       G
                       (not P)
                       (not C2)
                       (not S2)
                       (not H3))
                  (and (not L4)
                       (not S4)
                       (not Y)
                       B
                       (not G)
                       (not P)
                       (not C2)
                       (not S2)
                       (not H3))
                  (and (not L4)
                       (not S4)
                       Y
                       (not B)
                       (not G)
                       (not P)
                       (not C2)
                       (not S2)
                       (not H3))
                  (and (not L4)
                       S4
                       (not Y)
                       (not B)
                       (not G)
                       (not P)
                       (not C2)
                       (not S2)
                       (not H3))
                  (and L4
                       (not S4)
                       (not Y)
                       (not B)
                       (not G)
                       (not P)
                       (not C2)
                       (not S2)
                       (not H3)))
              V1))
      (a!2 (= A2
              (and V1
                   (not (<= T1 (- 32768)))
                   (not (<= S1 (- 32768)))
                   (not (<= R1 (- 32768)))
                   (not (<= Q1 (- 32768)))
                   (not (<= P1 (- 32768)))
                   (not (<= O1 (- 32768)))
                   (not (<= M1 (- 32768)))
                   (not (<= U1 (- 32768)))
                   (not (<= N1 (- 32768)))
                   (not (<= 32767 Z1))
                   (not (<= 32767 Y1))
                   (not (<= 32767 X1))
                   (not (<= 32767 W1))
                   (not (<= 32767 T1))
                   (not (<= 32767 R1))
                   (not (<= 32767 Q1))
                   (not (<= 32767 P1))
                   (not (<= 32767 O1))
                   (not (<= 32767 M1))
                   (not (<= 32767 U1))
                   (not (<= 32767 N1))))))
  (and a!1
       a!2
       (= A2 W3)
       (= W3 U3)
       (= Q3 C1)
       (= Q3 Y1)
       (= G1 1)
       (= G1 A3)
       (= B1 0)
       (= A1 0)
       (= F1 0)
       (= F1 Z2)
       (= Z 1)
       (= C1 1)
       (= D1 1)
       (= E1 0)
       (= E1 Y2)
       (= H1 0)
       (= H1 A4)
       (= I1 0)
       (= I1 B3)
       (= J1 0)
       (= J1 C3)
       (= K1 0)
       (= K1 D3)
       (= L1 0)
       (= L1 E3)
       (= Y2 U1)
       (= Z2 T1)
       (= A3 S1)
       (= B3 Q1)
       (= C3 P1)
       (= D3 O1)
       (= E3 N1)
       (= F3 Z)
       (= F3 M1)
       (= G3 A1)
       (= G3 W1)
       (= O3 B1)
       (= O3 X1)
       (= S3 D1)
       (= S3 Z1)
       (= A4 R1)
       (or H3 (= Y3 X))
       (or (not H3) (= Y3 I3))
       (or (not H3) (= C4 B4))
       (or H3 (= D4 C4))
       (or S2 (= L2 F))
       (or (not S2) (= L2 W2))
       (or S2 (= P2 M))
       (or (not S2) (= P2 X2))
       (or S2 (= R2 I))
       (or (not S2) (= R2 T2))
       (or S2 (= V2 V))
       (or (not S2) (= V2 U2))
       (or C2 (= G2 F2))
       (or C2 (= B2 R4))
       (or (not C2) (= B2 D2))
       (or (not C2) (= F2 E2))
       (or (not P) (= O N))
       (or (not P) (= R Q))
       (or (not P) (= T S))
       (or (not P) (= V U))
       (or G (= K3 O))
       (or (not G) (= K3 M3))
       (or (not G) (= F E))
       (or (not G) (= I H))
       (or (not G) (= K J))
       (or (not G) (= M L))
       (or (not B) (= A V4))
       (or (not B) (= D C))
       (or B (= H2 R))
       (or (not B) (= H2 I2))
       (or B (= K2 K))
       (or (not B) (= K2 J2))
       (or (not Y) (= X W))
       (or (not Y) (= D4 F4))
       (or Y (= E4 D4))
       (or Y (= H4 U4))
       (or (not Y) (= H4 G4))
       (or Y (= J4 M2))
       (or (not Y) (= J4 I4))
       (or (not S4) (= G2 O2))
       (or (not S4) (= U4 T4))
       (or (not S4) (= R4 Q4))
       (or S4 (= M2 L2))
       (or (not S4) (= M2 N2))
       (or S4 (= P2 G2))
       (or L4 (= P4 A))
       (or (not L4) (= P4 O4))
       (or (not L4) (= K4 M4))
       (or L4 (= K4 T))
       (or L4 (= E4 D))
       (or (not L4) (= E4 N4))
       (= (<= 0 U1) Q2)))
      )
      (state A2
       W3
       H3
       Y
       L4
       B
       C2
       S4
       S2
       G
       P
       V1
       S3
       D1
       Q3
       C1
       O3
       B1
       G3
       A1
       F3
       Z
       L1
       E3
       K1
       D3
       J1
       C3
       I1
       B3
       H1
       A4
       G1
       A3
       F1
       Z2
       E1
       Y2
       P4
       A
       O4
       E4
       D
       N4
       K4
       M4
       T
       J4
       M2
       I4
       H4
       U4
       G4
       D4
       F4
       C4
       B4
       Y3
       I3
       X
       U3
       Z1
       Y1
       X1
       K3
       M3
       O
       W1
       M1
       N1
       O1
       P1
       Q1
       R1
       S1
       T1
       U1
       P2
       M
       X2
       L2
       F
       W2
       V2
       V
       U2
       R2
       T2
       I
       Q2
       G2
       O2
       N2
       K2
       K
       J2
       H2
       I2
       R
       F2
       E2
       B2
       D2
       R4
       W
       U
       S
       Q
       N
       L
       J
       H
       E
       C
       V4
       T4
       Q4
       J3
       L3
       N3
       P3
       R3
       T3
       V3
       X3
       Z3)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Bool) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Bool) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Bool) (M3 Int) (N3 Bool) (O3 Int) (P3 Bool) (Q3 Int) (R3 Bool) (S3 Int) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Bool) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Bool) (S4 Int) (T4 Int) (U4 Int) (V4 Int) (W4 Bool) (X4 Int) (Y4 Int) (Z4 Int) (A5 Int) (B5 Bool) (C5 Int) (D5 Int) (E5 Int) (F5 Int) (G5 Int) (H5 Int) (I5 Int) (J5 Int) (K5 Bool) (L5 Int) (M5 Int) (N5 Int) (O5 Int) (P5 Int) (Q5 Int) (R5 Int) (S5 Int) (T5 Bool) (U5 Int) (V5 Int) (W5 Bool) (X5 Bool) (Y5 Int) (Z5 Int) (A6 Int) (B6 Bool) (C6 Bool) (D6 Int) (E6 Int) (F6 Int) (G6 Int) (H6 Int) (I6 Int) (J6 Bool) (K6 Int) (L6 Int) (M6 Int) (N6 Int) (O6 Int) (P6 Int) (Q6 Bool) (R6 Bool) (S6 Int) (T6 Int) (U6 Int) (V6 Int) (W6 Int) (X6 Bool) (Y6 Int) (Z6 Int) (A7 Int) (B7 Int) (C7 Bool) (D7 Int) (E7 Int) (F7 Int) (G7 Int) (H7 Int) (I7 Int) (J7 Int) (K7 Int) (L7 Int) (M7 Int) (N7 Int) (O7 Int) (P7 Int) (Q7 Int) (R7 Int) (S7 Int) (T7 Int) (U7 Int) (V7 Int) (W7 Int) (X7 Int) (Y7 Int) (Z7 Int) (A8 Int) (B8 Int) (C8 Int) (D8 Int) (E8 Int) (F8 Int) (G8 Bool) (H8 Int) (I8 Int) (J8 Int) (K8 Int) (L8 Bool) (M8 Bool) (N8 Int) (O8 Int) (P8 Int) (Q8 Int) (R8 Bool) (S8 Bool) (T8 Int) (U8 Int) (V8 Int) (W8 Int) (X8 Int) (Y8 Int) (Z8 Int) (A9 Int) (B9 Int) (C9 Int) (D9 Int) (E9 Int) (F9 Int) (G9 Bool) (H9 Bool) (I9 Bool) (J9 Int) (K9 Int) (L9 Bool) (M9 Int) (N9 Int) (O9 Bool) (P9 Int) (Q9 Int) (R9 Int) ) 
    (=>
      (and
        (state A2
       W3
       H3
       Y
       L4
       B
       C2
       O9
       S2
       G
       P
       V1
       S3
       D1
       Q3
       C1
       O3
       B1
       G3
       A1
       F3
       Z
       L1
       E3
       K1
       D3
       J1
       C3
       I1
       B3
       H1
       A4
       G1
       A3
       F1
       Z2
       E1
       Y2
       P4
       A
       O4
       E4
       D
       N4
       K4
       M4
       T
       J4
       M2
       I4
       H4
       Q9
       G4
       D4
       F4
       C4
       B4
       Y3
       I3
       X
       U3
       Z1
       Y1
       X1
       K3
       M3
       O
       W1
       M1
       N1
       O1
       P1
       Q1
       R1
       S1
       T1
       U1
       P2
       M
       X2
       L2
       F
       W2
       V2
       V
       U2
       R2
       T2
       I
       Q2
       G2
       O2
       N2
       K2
       K
       J2
       H2
       I2
       R
       F2
       E2
       B2
       D2
       N9
       W
       U
       S
       Q
       N
       L
       J
       H
       E
       C
       R9
       P9
       M9
       J3
       L3
       N3
       P3
       R3
       T3
       V3
       X3
       Z3)
        (let ((a!1 (= (or (and (not L9)
                       (not I9)
                       (not S8)
                       (not M8)
                       (not T5)
                       (not K5)
                       (not B5)
                       (not W4)
                       (not R4))
                  (and (not L9)
                       (not I9)
                       (not S8)
                       (not M8)
                       (not T5)
                       (not K5)
                       (not B5)
                       (not W4)
                       R4)
                  (and (not L9)
                       (not I9)
                       (not S8)
                       (not M8)
                       (not T5)
                       (not K5)
                       (not B5)
                       W4
                       (not R4))
                  (and (not L9)
                       (not I9)
                       (not S8)
                       (not M8)
                       (not T5)
                       (not K5)
                       B5
                       (not W4)
                       (not R4))
                  (and (not L9)
                       (not I9)
                       (not S8)
                       (not M8)
                       (not T5)
                       K5
                       (not B5)
                       (not W4)
                       (not R4))
                  (and (not L9)
                       (not I9)
                       (not S8)
                       (not M8)
                       T5
                       (not K5)
                       (not B5)
                       (not W4)
                       (not R4))
                  (and (not L9)
                       (not I9)
                       (not S8)
                       M8
                       (not T5)
                       (not K5)
                       (not B5)
                       (not W4)
                       (not R4))
                  (and (not L9)
                       (not I9)
                       S8
                       (not M8)
                       (not T5)
                       (not K5)
                       (not B5)
                       (not W4)
                       (not R4))
                  (and (not L9)
                       I9
                       (not S8)
                       (not M8)
                       (not T5)
                       (not K5)
                       (not B5)
                       (not W4)
                       (not R4))
                  (and L9
                       (not I9)
                       (not S8)
                       (not M8)
                       (not T5)
                       (not K5)
                       (not B5)
                       (not W4)
                       (not R4)))
              G8))
      (a!2 (= (or (and (not B)
                       (not G)
                       (not P)
                       (not Y)
                       (not C2)
                       (not S2)
                       (not H3)
                       (not L4)
                       (not O9))
                  (and (not B)
                       (not G)
                       (not P)
                       (not Y)
                       (not C2)
                       (not S2)
                       (not H3)
                       (not L4)
                       O9)
                  (and (not B)
                       (not G)
                       (not P)
                       (not Y)
                       (not C2)
                       (not S2)
                       (not H3)
                       L4
                       (not O9))
                  (and (not B)
                       (not G)
                       (not P)
                       (not Y)
                       (not C2)
                       (not S2)
                       H3
                       (not L4)
                       (not O9))
                  (and (not B)
                       (not G)
                       (not P)
                       (not Y)
                       (not C2)
                       S2
                       (not H3)
                       (not L4)
                       (not O9))
                  (and (not B)
                       (not G)
                       (not P)
                       (not Y)
                       C2
                       (not S2)
                       (not H3)
                       (not L4)
                       (not O9))
                  (and (not B)
                       (not G)
                       (not P)
                       Y
                       (not C2)
                       (not S2)
                       (not H3)
                       (not L4)
                       (not O9))
                  (and (not B)
                       (not G)
                       P
                       (not Y)
                       (not C2)
                       (not S2)
                       (not H3)
                       (not L4)
                       (not O9))
                  (and (not B)
                       G
                       (not P)
                       (not Y)
                       (not C2)
                       (not S2)
                       (not H3)
                       (not L4)
                       (not O9))
                  (and B
                       (not G)
                       (not P)
                       (not Y)
                       (not C2)
                       (not S2)
                       (not H3)
                       (not L4)
                       (not O9)))
              V1))
      (a!3 (= L8
              (and W3
                   G8
                   (not (<= F8 (- 32768)))
                   (not (<= E8 (- 32768)))
                   (not (<= D8 (- 32768)))
                   (not (<= C8 (- 32768)))
                   (not (<= B8 (- 32768)))
                   (not (<= A8 (- 32768)))
                   (not (<= Z7 (- 32768)))
                   (not (<= Y7 (- 32768)))
                   (not (<= X7 (- 32768)))
                   (not (<= 32767 K8))
                   (not (<= 32767 J8))
                   (not (<= 32767 I8))
                   (not (<= 32767 H8))
                   (not (<= 32767 F8))
                   (not (<= 32767 E8))
                   (not (<= 32767 C8))
                   (not (<= 32767 B8))
                   (not (<= 32767 A8))
                   (not (<= 32767 Z7))
                   (not (<= 32767 Y7))
                   (not (<= 32767 X7)))))
      (a!4 (or (not W5) (= (+ S3 (* (- 1) M6)) 1)))
      (a!5 (or (not W5) (= (+ F3 (* (- 1) V5)) 1)))
      (a!6 (or (not W5) (= (+ E3 (* (- 1) G7)) (- 1))))
      (a!7 (or (not W5) (= (+ B3 (* (- 1) A7)) (- 5))))
      (a!8 (or (not X5) (= (+ O3 (* (- 1) F6)) (- 1))))
      (a!9 (or (not X5) (= (+ F3 (* (- 1) C5)) (- 1))))
      (a!10 (or (not X5) (= (+ E3 (* (- 1) H5)) 1)))
      (a!11 (or (not X5) (= (+ C3 (* (- 1) F5)) 1)))
      (a!12 (or (not X5) (= (+ B3 (* (- 1) D5)) 5)))
      (a!13 (or (not B6) (= (+ G3 (* (- 1) A6)) (- 1))))
      (a!14 (or (not B6) (= (+ A3 (* (- 1) Y4)) (- 1))))
      (a!15 (or (not B6) (= (+ Z2 (* (- 1) X4)) 1)))
      (a!16 (or (not C6) (= (+ S3 (* (- 1) Q5)) (- 1))))
      (a!17 (or (not C6) (= (+ Q3 (* (- 1) O5)) (- 1))))
      (a!18 (or (not C6) (= (+ O3 (* (- 1) M5)) 1)))
      (a!19 (or (not C6) (= (+ G3 (* (- 1) L5)) 1)))
      (a!20 (or (not J6) (= (+ Q3 (* (- 1) I6)) 1)))
      (a!21 (or (not J6) (= (+ A3 (* (- 1) V6)) 1)))
      (a!22 (or (not J6) (= (+ Z2 (* (- 1) U6)) (- 1))))
      (a!23 (or (not Q6) (= (+ Z2 (* (- 1) S6)) (- 1))))
      (a!24 (or (not Q6) (= (+ Y2 (* (- 1) P6)) 1)))
      (a!25 (or (not R6) (= (+ A4 (* (- 1) W6)) (- 1))))
      (a!26 (or (not R6) (= (+ B3 (* (- 1) Y6)) 1)))
      (a!27 (or (not R6) (= (+ Z2 (* (- 1) T6)) 1)))
      (a!28 (or (not R6) (= (+ Y2 (* (- 1) U5)) (- 1))))
      (a!29 (or (not X6) (= (+ A4 (* (- 1) S4)) 1)))
      (a!30 (or (not X6) (= (+ E3 (* (- 1) F7)) 1)))
      (a!31 (or (not X6) (= (+ D3 (* (- 1) T4)) (- 1))))
      (a!32 (or (not X6) (= (+ B3 (* (- 1) Z6)) (- 1))))
      (a!33 (or (not C7) (= (+ E3 (* (- 1) E7)) (- 1))))
      (a!34 (or (not C7) (= (+ D3 (* (- 1) D7)) 1)))
      (a!35 (or (not C7) (= (+ C3 (* (- 1) B7)) (- 1)))))
  (and (= (<= 0 U1) Q2)
       (= (<= 1 D3) C7)
       (= (<= 1 Z2) B6)
       (= (<= 1 Y2) Q6)
       a!1
       a!2
       (= (and (<= 1 C3) (<= 1 E3) (<= 5 B3)) X5)
       (= (and (<= 1 G3) (<= 1 O3)) C6)
       (= (and (<= 1 F3) (<= 1 S3)) W5)
       (= (and (<= 1 E3) (<= 1 A4)) X6)
       (= (and (<= 1 A3) (<= 1 Q3)) J6)
       (= (and (<= 1 Z2) (<= 1 B3)) R6)
       a!3
       (= H9 L8)
       (= H9 G9)
       (= W3 U3)
       (= A2 W3)
       (= Z5 Y5)
       (= Z5 B9)
       (= E6 D6)
       (= E6 C9)
       (= H6 G6)
       (= H6 D9)
       (= L6 K6)
       (= L6 E9)
       (= O6 N6)
       (= O6 F9)
       (= I7 H7)
       (= K7 J7)
       (= M7 L7)
       (= O7 N7)
       (= Q7 P7)
       (= S7 R7)
       (= U7 T7)
       (= W7 V7)
       (= T8 I7)
       (= T8 F8)
       (= U8 K7)
       (= U8 E8)
       (= V8 M7)
       (= V8 D8)
       (= W8 O7)
       (= W8 C8)
       (= X8 Q7)
       (= X8 B8)
       (= Y8 S7)
       (= Y8 A8)
       (= Z8 U7)
       (= Z8 Z7)
       (= A9 W7)
       (= A9 Y7)
       (= B9 X7)
       (= C9 H8)
       (= D9 I8)
       (= E9 J8)
       (= F9 K8)
       (= A4 R1)
       (= S3 Z1)
       (= S3 D1)
       (= Q3 Y1)
       (= Q3 C1)
       (= O3 X1)
       (= O3 B1)
       (= G3 W1)
       (= G3 A1)
       (= F3 M1)
       (= F3 Z)
       (= E3 N1)
       (= D3 O1)
       (= C3 P1)
       (= B3 Q1)
       (= A3 S1)
       (= Z2 T1)
       (= Y2 U1)
       (= L1 E3)
       (= K1 D3)
       (= J1 C3)
       (= I1 B3)
       (= H1 A4)
       (= G1 A3)
       (= F1 Z2)
       (= E1 Y2)
       (or O9 (= P2 G2))
       (or (not O9) (= M2 N2))
       (or O9 (= M2 L2))
       (or (not O9) (= G2 O2))
       (or (not R4) (= Q4 S4))
       (or (not R4) (= U4 T4))
       (or (not R4) (= N8 F7))
       (or (not R4) (= P8 Z6))
       (or R4 (= P8 O8))
       (or R4 (= Q8 N8))
       (or R4 (= A4 Q4))
       (or R4 (= D3 U4))
       (or (not W4) (= V4 X4))
       (or (not W4) (= Z4 Y4))
       (or W4 (= G5 R7))
       (or (not W4) (= A6 D6))
       (or W4 (= D6 J5))
       (or (not W4) (= R7 B7))
       (or W4 (= A3 Z4))
       (or W4 (= Z2 V4))
       (or (not B5) (= A5 C5))
       (or (not B5) (= E5 D5))
       (or (not B5) (= G5 F5))
       (or (not B5) (= I5 H5))
       (or (not B5) (= F6 G6))
       (or B5 (= G6 N5))
       (or B5 (= F3 A5))
       (or B5 (= E3 I5))
       (or B5 (= C3 G5))
       (or B5 (= B3 E5))
       (or (not K5) (= J5 L5))
       (or (not K5) (= N5 M5))
       (or (not K5) (= P5 O5))
       (or (not K5) (= R5 Q5))
       (or K5 (= S3 R5))
       (or K5 (= Q3 P5))
       (or K5 (= O3 N5))
       (or K5 (= G3 J5))
       (or T5 (= Q4 N7))
       (or (not T5) (= S5 U5))
       (or (not T5) (= T6 J9))
       (or (not T5) (= N7 W6))
       (or (not T5) (= P7 Y6))
       (or T5 (= P8 P7))
       (or T5 (= K9 J9))
       (or T5 (= Y2 S5))
       a!4
       a!5
       a!6
       a!7
       (or W5 (= S3 M6))
       (or W5 (= F3 V5))
       (or W5 (= E3 G7))
       (or W5 (= B3 A7))
       a!8
       a!9
       a!10
       a!11
       a!12
       (or X5 (= O3 F6))
       (or X5 (= F3 C5))
       (or X5 (= E3 H5))
       (or X5 (= C3 F5))
       (or X5 (= B3 D5))
       a!13
       a!14
       a!15
       (or B6 (= G3 A6))
       (or B6 (= A3 Y4))
       (or B6 (= Z2 X4))
       a!16
       a!17
       a!18
       a!19
       (or C6 (= S3 Q5))
       (or C6 (= Q3 O5))
       (or C6 (= O3 M5))
       (or C6 (= G3 L5))
       a!20
       a!21
       a!22
       (or J6 (= Q3 I6))
       (or J6 (= A3 V6))
       (or J6 (= Z2 U6))
       a!23
       a!24
       (or Q6 (= Z2 S6))
       (or Q6 (= Y2 P6))
       a!25
       a!26
       a!27
       a!28
       (or R6 (= A4 W6))
       (or R6 (= B3 Y6))
       (or R6 (= Z2 T6))
       (or R6 (= Y2 U5))
       a!29
       a!30
       a!31
       a!32
       (or X6 (= A4 S4))
       (or X6 (= E3 F7))
       (or X6 (= D3 T4))
       (or X6 (= B3 Z6))
       a!33
       a!34
       a!35
       (or C7 (= E3 E7))
       (or C7 (= D3 D7))
       (or C7 (= C3 B7))
       (or (not M8) (= D7 T7))
       (or M8 (= T7 U4))
       (or (not M8) (= V7 E7))
       (or M8 (= N8 V7))
       (or S8 (= E5 O8))
       (or S8 (= I5 Q8))
       (or S8 (= R5 N6))
       (or (not S8) (= V5 Y5))
       (or S8 (= Y5 A5))
       (or (not S8) (= N6 M6))
       (or (not S8) (= O8 A7))
       (or (not S8) (= Q8 G7))
       (or (not I9) (= P6 H7))
       (or I9 (= H7 S5))
       (or (not I9) (= J7 S6))
       (or I9 (= J9 J7))
       (or L9 (= V4 K9))
       (or L9 (= Z4 L7))
       (or (not L9) (= I6 K6))
       (or L9 (= K6 P5))
       (or (not L9) (= L7 V6))
       (or (not L9) (= K9 U6))
       (or (not L4) (= P4 O4))
       (or L4 (= P4 A))
       (or (not L4) (= K4 M4))
       (or L4 (= K4 T))
       (or (not L4) (= E4 N4))
       (or L4 (= E4 D))
       (or H3 (= D4 C4))
       (or (not H3) (= C4 B4))
       (or (not H3) (= Y3 I3))
       (or H3 (= Y3 X))
       (or (not S2) (= V2 U2))
       (or S2 (= V2 V))
       (or (not S2) (= R2 T2))
       (or S2 (= R2 I))
       (or (not S2) (= P2 X2))
       (or S2 (= P2 M))
       (or (not S2) (= L2 W2))
       (or S2 (= L2 F))
       (or C2 (= G2 F2))
       (or (not C2) (= F2 E2))
       (or C2 (= B2 N9))
       (or (not C2) (= B2 D2))
       (or (not Y) (= J4 I4))
       (or Y (= J4 M2))
       (or Y (= H4 Q9))
       (or (not Y) (= H4 G4))
       (or Y (= E4 D4))
       (or (not Y) (= D4 F4))
       (or (not G) (= K3 M3))
       (or G (= K3 O))
       (or (not B) (= K2 J2))
       (or B (= K2 K))
       (or (not B) (= H2 I2))
       (or B (= H2 R))
       (= (<= 0 F8) R8)))
      )
      (state L8
       H9
       I9
       T5
       L9
       W4
       M8
       R4
       S8
       B5
       K5
       G8
       F9
       O6
       E9
       L6
       D9
       H6
       C9
       E6
       B9
       Z5
       W7
       A9
       U7
       Z8
       S7
       Y8
       Q7
       X8
       O7
       W8
       M7
       V8
       K7
       U8
       I7
       T8
       L7
       Z4
       V6
       K9
       V4
       U6
       K6
       I6
       P5
       P7
       P8
       Y6
       N7
       Q4
       W6
       J9
       T6
       J7
       S6
       H7
       P6
       S5
       G9
       K8
       J8
       I8
       G6
       F6
       N5
       H8
       X7
       Y7
       Z7
       A8
       B8
       C8
       D8
       E8
       F8
       Q8
       I5
       G7
       O8
       E5
       A7
       N6
       R5
       M6
       Y5
       V5
       A5
       R8
       N8
       F7
       Z6
       R7
       G5
       B7
       D6
       A6
       J5
       V7
       E7
       T7
       D7
       U4
       U5
       Q5
       O5
       L5
       M5
       H5
       F5
       C5
       D5
       X4
       Y4
       S4
       T4
       Q6
       R6
       J6
       B6
       C7
       X6
       W5
       X5
       C6)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Int) (U1 Int) (V1 Bool) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Bool) (B2 Int) (C2 Bool) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) (M2 Int) (N2 Int) (O2 Int) (P2 Int) (Q2 Bool) (R2 Int) (S2 Bool) (T2 Int) (U2 Int) (V2 Int) (W2 Int) (X2 Int) (Y2 Int) (Z2 Int) (A3 Int) (B3 Int) (C3 Int) (D3 Int) (E3 Int) (F3 Int) (G3 Int) (H3 Bool) (I3 Int) (J3 Bool) (K3 Int) (L3 Bool) (M3 Int) (N3 Bool) (O3 Int) (P3 Bool) (Q3 Int) (R3 Bool) (S3 Int) (T3 Bool) (U3 Bool) (V3 Bool) (W3 Bool) (X3 Bool) (Y3 Int) (Z3 Bool) (A4 Int) (B4 Int) (C4 Int) (D4 Int) (E4 Int) (F4 Int) (G4 Int) (H4 Int) (I4 Int) (J4 Int) (K4 Int) (L4 Bool) (M4 Int) (N4 Int) (O4 Int) (P4 Int) (Q4 Int) (R4 Int) (S4 Bool) (T4 Int) (U4 Int) (V4 Int) ) 
    (=>
      (and
        (state A2
       W3
       H3
       Y
       L4
       B
       C2
       S4
       S2
       G
       P
       V1
       S3
       D1
       Q3
       C1
       O3
       B1
       G3
       A1
       F3
       Z
       L1
       E3
       K1
       D3
       J1
       C3
       I1
       B3
       H1
       A4
       G1
       A3
       F1
       Z2
       E1
       Y2
       P4
       A
       O4
       E4
       D
       N4
       K4
       M4
       T
       J4
       M2
       I4
       H4
       U4
       G4
       D4
       F4
       C4
       B4
       Y3
       I3
       X
       U3
       Z1
       Y1
       X1
       K3
       M3
       O
       W1
       M1
       N1
       O1
       P1
       Q1
       R1
       S1
       T1
       U1
       P2
       M
       X2
       L2
       F
       W2
       V2
       V
       U2
       R2
       T2
       I
       Q2
       G2
       O2
       N2
       K2
       K
       J2
       H2
       I2
       R
       F2
       E2
       B2
       D2
       R4
       W
       U
       S
       Q
       N
       L
       J
       H
       E
       C
       V4
       T4
       Q4
       J3
       L3
       N3
       P3
       R3
       T3
       V3
       X3
       Z3)
        (not Q2)
      )
      false
    )
  )
)

(check-sat)
(exit)
