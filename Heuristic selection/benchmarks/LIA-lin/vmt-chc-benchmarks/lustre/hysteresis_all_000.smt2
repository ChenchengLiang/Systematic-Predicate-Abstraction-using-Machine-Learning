(set-logic HORN)

(declare-fun |state| ( Int Bool Bool Bool Bool Int Int Int Int Int Int Int Bool Bool Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) ) 
    (=>
      (and
        (let ((a!1 (= (and S T (or (not Q) (not R))) P))
      (a!2 (or (and (not D) (not A))
               (<= G (- 1000))
               (<= 1000 G)
               (= (+ F (* (- 1) G) (* (- 1) B)) 0)))
      (a!3 (or (and (or D A) (not (<= G (- 1000))) (not (<= 1000 G))) (= F G))))
  (and (= M L)
       (= N F)
       (= N M)
       (= O 0)
       (= O G)
       a!1
       (= K V)
       (= V R)
       (= U Q)
       (= J U)
       a!2
       (or (not D) A (= I 1))
       (or D (not A) (= H (- 1)))
       a!3
       (or (and D (not A)) (= I H))
       (or (and (not D) A) (= H 0))
       (not K)
       (= T true)
       (= S true)
       (not J)
       (= I B)))
      )
      (state O J K T S N F G M I B L V U H A D R Q P C E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) (T Int) (U Bool) (V Bool) (W Bool) (X Bool) (Y Int) (Z Bool) (A1 Bool) (B1 Bool) (C1 Int) (D1 Int) (E1 Bool) (F1 Bool) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) (Q1 Bool) (R1 Bool) ) 
    (=>
      (and
        (state O J K P1 O1 N F G M I B L R1 Q1 H A D N1 M1 L1 C E)
        (let ((a!1 (= (and O1 P1 (or (not M1) (not N1))) L1))
      (a!2 (= (and S Q (or (not R) (not P))) Z))
      (a!3 (or (and (not F1) (not E1))
               (<= C1 (- 1000))
               (<= 1000 C1)
               (= (+ D1 (* (- 1) C1) (* (- 1) G1)) 0)))
      (a!4 (or (and (not A) (not D))
               (<= G (- 1000))
               (<= 1000 G)
               (= (+ F (* (- 1) G) (* (- 1) B)) 0)))
      (a!5 (or (and (or F1 E1) (not (<= C1 (- 1000))) (not (<= 1000 C1)))
               (= D1 C1)))
      (a!6 (or (and (or A D) (not (<= G (- 1000))) (not (<= 1000 G))) (= F G)))
      (a!7 (or (not R1) (= V (not (<= T 0)))))
      (a!8 (or (not Q1) (= U (not (<= 0 T))))))
  (and (= D1 K1)
       (= G1 I1)
       (= J1 T)
       (= K1 J1)
       (= O G)
       (= N M)
       (= N F)
       (= M Y)
       (= M L)
       (= I B)
       a!1
       a!2
       (= R1 N1)
       (= Q1 M1)
       (= Q (or (not P) (not N1)))
       (= S (or (not R) (not M1)))
       (= W V)
       (= X U)
       (= A1 P)
       (= A1 X)
       (= B1 R)
       (= B1 W)
       (= K R1)
       (= J Q1)
       a!3
       a!4
       (or (not F1) E1 (= H1 (- 1)))
       (or F1 (not E1) (= I1 1))
       (or A (not D) (= I 1))
       (or (not A) D (= H (- 1)))
       a!5
       a!6
       (or (and F1 (not E1)) (= H1 0))
       (or (and (not F1) E1) (= I1 H1))
       (or (and A (not D)) (= H 0))
       (or (and (not A) D) (= I H))
       (or R1 (= V (<= 10 T)))
       a!7
       a!8
       (or Q1 (= U (<= T (- 10))))
       (= C1 Y)))
      )
      (state Y X W S Q K1 D1 C1 J1 I1 G1 T B1 A1 H1 F1 E1 R P Z V U)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) ) 
    (=>
      (and
        (state O J K T S N F G M I B L V U H A D R Q P C E)
        (not P)
      )
      false
    )
  )
)

(check-sat)
(exit)
