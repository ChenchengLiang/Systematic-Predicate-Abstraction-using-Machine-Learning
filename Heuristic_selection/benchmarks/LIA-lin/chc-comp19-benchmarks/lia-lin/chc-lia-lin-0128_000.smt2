(set-logic HORN)

(declare-fun |invariant| ( Int Int Bool Bool Bool Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) ) 
    (=>
      (and
        (and (= M 1)
     (= I 0)
     (= H 1)
     (= D 0)
     (= C 0)
     (= B 0)
     (= A 0)
     (not (<= 30 G))
     (not (<= 30 F))
     (not (<= 30 E))
     (not (<= G A))
     (not (<= F A))
     (not (<= E A))
     (or (= D 0) (= D 1) (= D 2) (= D 3))
     (or (= C 0) (= C 1) (= C 2) (= C 3))
     (or (= B 0) (= B 1) (= B 2) (= B 3))
     (or (= Q 1) (= Q 2) (= Q 3))
     (or (= P 1) (= P 2) (= P 3))
     (or (= O 1) (= O 2) (= O 3))
     (or (= M 1) (= M 2) (= M 3))
     (or (= H 0) (= H 1))
     (not L)
     (not K)
     (not J)
     (= N 0))
      )
      (invariant H
           I
           J
           K
           L
           M
           N
           B
           C
           D
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
           A
           E
           F
           G
           Y
           Z
           A1
           B1
           C1
           D1
           E1
           F1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) (O1 Int) (P1 Int) (Q1 Int) (R1 Int) (S1 Int) (T1 Bool) (U1 Bool) (V1 Bool) (W1 Int) (X1 Int) (Y1 Int) (Z1 Int) (A2 Int) (B2 Int) (C2 Int) (D2 Int) (E2 Int) (F2 Int) (G2 Int) (H2 Int) (I2 Int) (J2 Int) (K2 Int) (L2 Int) ) 
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
           F1)
        (let ((a!1 (= S1 (ite (and (not C) (not D) (not E)) (+ U F1) B)))
      (a!2 (= W1 (ite (and (not C) (not D) (not E)) 1 F)))
      (a!3 (= X1 (ite (and (not C) (not D) (not E)) U G)))
      (a!4 (= R1 (ite (and (not C) (not D) (not E)) 0 A)))
      (a!5 (= U1 (or D (and (not C) (not D) (not E)))))
      (a!6 (= V1 (or E (and (not C) (not D) (not E)))))
      (a!7 (= L1 (ite (= K 3) 1 (+ 1 K))))
      (a!8 (= R1 (ite (and (not C) (not D) (not E)) 1 A)))
      (a!9 (= (ite (= K 3) 1 (+ 1 K)) 1))
      (a!10 (and C
                 (not T1)
                 (or (= H 1) (= H 2))
                 (= I1 3)
                 (= L1 F)
                 (= O1 (+ 3 U (* (- 1) F1)))
                 (= S1 B)
                 (= W1 F)
                 (= X1 G)
                 (= A 1)
                 (= U B)
                 (= R1 A)
                 (= U1 D)
                 (= V1 E)))
      (a!11 (and C
                 (not T1)
                 (= I1 2)
                 (= L1 K)
                 (= O1 (+ 9 U (* (- 1) F1)))
                 (= S1 B)
                 (= W1 F)
                 (= X1 G)
                 (= A 0)
                 (= H 1)
                 (= U B)
                 (= R1 A)
                 (= U1 D)
                 (= V1 E)))
      (a!12 (and C
                 (not T1)
                 (= I1 3)
                 (= L1 F)
                 (= O1 (+ 3 U (* (- 1) F1)))
                 (= S1 B)
                 (= W1 F)
                 (= X1 G)
                 (= A 0)
                 (= H 2)
                 (= U B)
                 (= R1 A)
                 (= U1 D)
                 (= V1 E)))
      (a!14 (= W1 (ite (and (not C) (not D) (not E)) 2 F)))
      (a!15 (= T1 (or C (and (not C) (not D) (not E)))))
      (a!16 (= M1 (ite (= L 3) 1 (+ 1 L))))
      (a!17 (= (ite (= L 3) 1 (+ 1 L)) 2))
      (a!18 (and D
                 (not U1)
                 (or (= I 1) (= I 2))
                 (= J1 3)
                 (= M1 F)
                 (= S1 B)
                 (= W1 F)
                 (= X1 G)
                 (= A 1)
                 (= U B)
                 (= P1 (+ 3 U (* (- 1) F1)))
                 (= R1 A)
                 (= T1 C)
                 (= V1 E)))
      (a!19 (and D
                 (not U1)
                 (= J1 2)
                 (= M1 L)
                 (= S1 B)
                 (= W1 F)
                 (= X1 G)
                 (= A 0)
                 (= I 1)
                 (= U B)
                 (= P1 (+ 12 U (* (- 1) F1)))
                 (= R1 A)
                 (= T1 C)
                 (= V1 E)))
      (a!20 (and D
                 (not U1)
                 (= J1 3)
                 (= M1 F)
                 (= S1 B)
                 (= W1 F)
                 (= X1 G)
                 (= A 0)
                 (= I 2)
                 (= U B)
                 (= P1 (+ 3 U (* (- 1) F1)))
                 (= R1 A)
                 (= T1 C)
                 (= V1 E)))
      (a!22 (= W1 (ite (and (not C) (not D) (not E)) 3 F)))
      (a!23 (= N1 (ite (= M 3) 1 (+ 1 M))))
      (a!24 (= (ite (= M 3) 1 (+ 1 M)) 3))
      (a!25 (and E
                 (not V1)
                 (or (= J 1) (= J 2))
                 (= K1 3)
                 (= N1 F)
                 (= S1 B)
                 (= W1 F)
                 (= X1 G)
                 (= A 1)
                 (= U B)
                 (= Q1 (+ 3 U (* (- 1) F1)))
                 (= R1 A)
                 (= T1 C)
                 (= U1 D)))
      (a!26 (and E
                 (not V1)
                 (= K1 2)
                 (= N1 M)
                 (= S1 B)
                 (= W1 F)
                 (= X1 G)
                 (= A 0)
                 (= J 1)
                 (= U B)
                 (= Q1 (+ 15 U (* (- 1) F1)))
                 (= R1 A)
                 (= T1 C)
                 (= U1 D)))
      (a!27 (and E
                 (not V1)
                 (= K1 3)
                 (= N1 F)
                 (= S1 B)
                 (= W1 F)
                 (= X1 G)
                 (= A 0)
                 (= J 2)
                 (= U B)
                 (= Q1 (+ 3 U (* (- 1) F1)))
                 (= R1 A)
                 (= T1 C)
                 (= U1 D)))
      (a!30 (ite (and (not C) (not D) (not E))
                 (and (not (<= V U)) (not (<= W U)) (not (<= X U)))
                 (and (not (<= B U))
                      (not (<= V U))
                      (not (<= W U))
                      (not (<= X U)))))
      (a!31 (ite (and (not C) (not D) (not E))
                 (and (or (= H1 V) (= H1 W) (= H1 X))
                      (<= H1 V)
                      (<= H1 W)
                      (<= H1 X))
                 (and (or (= H1 B) (= H1 V) (= H1 W) (= H1 X))
                      (<= H1 B)
                      (<= H1 V)
                      (<= H1 W)
                      (<= H1 X)))))
(let ((a!13 (or (and (not T1)
                     (= I1 H)
                     (= L1 K)
                     (= O1 (+ 9 U))
                     a!1
                     a!2
                     a!3
                     (= H 2)
                     (= U V)
                     a!4
                     a!5
                     a!6)
                (and (not T1)
                     (= I1 2)
                     (= L1 K)
                     (= O1 (+ 9 U))
                     a!1
                     a!2
                     a!3
                     (= H 1)
                     (= U V)
                     a!4
                     a!5
                     a!6)
                (and (= I1 1)
                     (= L1 K)
                     (= O1 (+ 18 U))
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= H 0)
                     (= U V)
                     (= R1 A)
                     (= T1 C)
                     (= U1 D)
                     (= V1 E))
                (and C
                     (not T1)
                     (= I1 H)
                     (= L1 K)
                     (= O1 V)
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= H 0)
                     (= U B)
                     (= R1 A)
                     (= U1 D)
                     (= V1 E))
                (and (not T1)
                     (= I1 H)
                     a!7
                     (= O1 (+ 3 U))
                     a!1
                     a!2
                     a!3
                     (= H 3)
                     (= U V)
                     a!8
                     a!9
                     a!5
                     a!6)
                (and (= I1 H)
                     a!7
                     (= O1 (+ 3 U))
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= H 3)
                     (= U V)
                     (= R1 A)
                     (not a!9)
                     (= T1 C)
                     (= U1 D)
                     (= V1 E))
                a!10
                (and C
                     (not T1)
                     (= I1 H)
                     (= L1 K)
                     (= O1 V)
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= A 1)
                     (= H 3)
                     (= U B)
                     (= R1 A)
                     (= U1 D)
                     (= V1 E))
                a!11
                a!12))
      (a!21 (or (and (not U1)
                     (= J1 I)
                     (= M1 L)
                     a!1
                     a!14
                     a!3
                     (= I 2)
                     (= U W)
                     (= P1 (+ 12 U))
                     a!4
                     a!15
                     a!6)
                (and (not U1)
                     (= J1 2)
                     (= M1 L)
                     a!1
                     a!14
                     a!3
                     (= I 1)
                     (= U W)
                     (= P1 (+ 12 U))
                     a!4
                     a!15
                     a!6)
                (and (= J1 1)
                     (= M1 L)
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= I 0)
                     (= U W)
                     (= P1 (+ 21 U))
                     (= R1 A)
                     (= T1 C)
                     (= U1 D)
                     (= V1 E))
                (and D
                     (not U1)
                     (= J1 I)
                     (= M1 L)
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= I 0)
                     (= U B)
                     (= P1 W)
                     (= R1 A)
                     (= T1 C)
                     (= V1 E))
                (and (not U1)
                     (= J1 I)
                     a!16
                     a!1
                     a!14
                     a!3
                     (= I 3)
                     (= U W)
                     (= P1 (+ 3 U))
                     a!8
                     a!17
                     a!15
                     a!6)
                (and (= J1 I)
                     a!16
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= I 3)
                     (= U W)
                     (= P1 (+ 3 U))
                     (= R1 A)
                     (not a!17)
                     (= T1 C)
                     (= U1 D)
                     (= V1 E))
                a!18
                (and D
                     (not U1)
                     (= J1 I)
                     (= M1 L)
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= A 1)
                     (= I 3)
                     (= U B)
                     (= P1 W)
                     (= R1 A)
                     (= T1 C)
                     (= V1 E))
                a!19
                a!20))
      (a!28 (or (and (not V1)
                     (= K1 J)
                     (= N1 M)
                     a!1
                     a!22
                     a!3
                     (= J 2)
                     (= U X)
                     (= Q1 (+ 15 U))
                     a!4
                     a!15
                     a!5)
                (and (not V1)
                     (= K1 2)
                     (= N1 M)
                     a!1
                     a!22
                     a!3
                     (= J 1)
                     (= U X)
                     (= Q1 (+ 15 U))
                     a!4
                     a!15
                     a!5)
                (and (= K1 1)
                     (= N1 M)
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= J 0)
                     (= U X)
                     (= Q1 (+ 24 U))
                     (= R1 A)
                     (= T1 C)
                     (= U1 D)
                     (= V1 E))
                (and E
                     (not V1)
                     (= K1 J)
                     (= N1 M)
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= J 0)
                     (= U B)
                     (= Q1 X)
                     (= R1 A)
                     (= T1 C)
                     (= U1 D))
                (and (not V1)
                     (= K1 J)
                     a!23
                     a!1
                     a!22
                     a!3
                     (= J 3)
                     (= U X)
                     (= Q1 (+ 3 U))
                     a!8
                     a!24
                     a!15
                     a!5)
                (and (= K1 J)
                     a!23
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= J 3)
                     (= U X)
                     (= Q1 (+ 3 U))
                     (= R1 A)
                     (not a!24)
                     (= T1 C)
                     (= U1 D)
                     (= V1 E))
                a!25
                (and E
                     (not V1)
                     (= K1 J)
                     (= N1 M)
                     (= S1 B)
                     (= W1 F)
                     (= X1 G)
                     (= A 1)
                     (= J 3)
                     (= U B)
                     (= Q1 X)
                     (= R1 A)
                     (= T1 C)
                     (= U1 D))
                a!26
                a!27)))
(let ((a!29 (and (or (and a!13
                          (= J1 I)
                          (= K1 J)
                          (= M1 L)
                          (= N1 M)
                          (= P1 W)
                          (= Q1 X))
                     (and a!21
                          (= I1 H)
                          (= K1 J)
                          (= L1 K)
                          (= N1 M)
                          (= O1 V)
                          (= Q1 X))
                     (and a!28
                          (= I1 H)
                          (= J1 I)
                          (= L1 K)
                          (= M1 L)
                          (= O1 V)
                          (= P1 W)))
                 (= H1 U))))
  (and (or (= J 0) (= J 1) (= J 2) (= J 3))
       (or (= I 0) (= I 1) (= I 2) (= I 3))
       (or (= H 0) (= H 1) (= H 2) (= H 3))
       (or (= K1 0) (= K1 1) (= K1 2) (= K1 3))
       (or (= J1 0) (= J1 1) (= J1 2) (= J1 3))
       (or (= I1 0) (= I1 1) (= I1 2) (= I1 3))
       (or (= M 1) (= M 2) (= M 3))
       (or (= L 1) (= L 2) (= L 3))
       (or (= K 1) (= K 2) (= K 3))
       (or (= F 1) (= F 2) (= F 3))
       (or (= W1 1) (= W1 2) (= W1 3))
       (or (= N1 1) (= N1 2) (= N1 3))
       (or (= M1 1) (= M1 2) (= M1 3))
       (or (= L1 1) (= L1 2) (= L1 3))
       (or (= R1 0) (= R1 1))
       (or (= A 0) (= A 1))
       (or a!29
           (and (= I1 H)
                (= J1 I)
                (= K1 J)
                (= L1 K)
                (= M1 L)
                (= N1 M)
                (= O1 V)
                (= S1 B)
                (= W1 F)
                (= X1 G)
                (= P1 W)
                (= Q1 X)
                (= R1 A)
                (= T1 C)
                (= U1 D)
                (= V1 E)
                a!30
                a!31))
       (= G1 F1)))))
      )
      (invariant R1
           S1
           T1
           U1
           V1
           W1
           X1
           I1
           J1
           K1
           L1
           M1
           N1
           Y1
           Z1
           A2
           B2
           C2
           D2
           E2
           H1
           O1
           P1
           Q1
           F2
           G2
           H2
           I2
           J2
           K2
           L2
           G1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) ) 
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
           F1)
        (let ((a!1 (and (or (not (= V W)) (not (= K L))) (not (<= W U)) (= I 3)))
      (a!2 (and (or (not (= V X)) (not (= K M))) (not (<= X U)) (= J 3)))
      (a!3 (and (or (not (= W V)) (not (= L K))) (not (<= V U)) (= H 3)))
      (a!4 (and (or (not (= W X)) (not (= L M))) (not (<= X U)) (= J 3)))
      (a!5 (and (or (not (= M K)) (not (= X V))) (not (<= V U)) (= H 3)))
      (a!6 (and (or (not (= M L)) (not (= X W))) (not (<= W U)) (= I 3))))
  (or (and (or a!1 a!2) (not (<= V U)) (= H 3))
      (and (or a!3 a!4) (not (<= W U)) (= I 3))
      (and (or a!5 a!6) (not (<= X U)) (= J 3))))
      )
      false
    )
  )
)

(check-sat)
(exit)
