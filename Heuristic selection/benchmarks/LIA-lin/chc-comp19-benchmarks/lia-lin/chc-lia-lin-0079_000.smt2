(set-logic HORN)

(declare-fun |state| ( Int Bool Bool Int Int Int Int Int Int Int Bool Bool Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) ) 
    (=>
      (and
        (let ((a!1 (or (and (not N) (not O))
               (<= F (- 1000))
               (<= 1000 F)
               (= (+ E (* (- 1) F) (* (- 1) I)) 0)))
      (a!2 (or (and (or N O) (not (<= F (- 1000))) (not (<= 1000 F))) (= E F))))
  (and (= L Q)
       (= K P)
       (= C K)
       (= B L)
       (= H I)
       (= G J)
       (= D G)
       (= D E)
       (= A 0)
       (= A F)
       a!1
       (or (not N) O (= M (- 1)))
       (or N (not O) (= H 1))
       a!2
       (or (and N (not O)) (= M 0))
       (or (and (not N) O) (= H M))
       (not C)
       (not B)
       (= (or (not P) (not Q)) R)))
      )
      (state A B C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Bool) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Int) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N O P Q R S T)
        (let ((a!1 (or (and (not N) (not O))
               (<= F (- 1000))
               (<= 1000 F)
               (= (+ E (* (- 1) F) (* (- 1) I)) 0)))
      (a!2 (or (and (not H1) (not I1))
               (<= W (- 1000))
               (<= 1000 W)
               (= (+ U (* (- 1) W) (* (- 1) Z)) 0)))
      (a!3 (or (and (or N O) (not (<= F (- 1000))) (not (<= 1000 F))) (= E F)))
      (a!4 (or (and (or H1 I1) (not (<= W (- 1000))) (not (<= 1000 W))) (= U W)))
      (a!5 (or (not L) (= M1 (not (<= 0 B1)))))
      (a!6 (or (not K) (= N1 (not (<= B1 0))))))
  (and (= (or (not J1) (not K1)) L1)
       (= D1 N1)
       (= C1 D1)
       (= C1 J1)
       (= L Q)
       (= K P)
       (= C K)
       (= B L)
       (= F1 M1)
       (= E1 K1)
       (= E1 F1)
       (= W X)
       (= V Y)
       (= H I)
       (= G J)
       (= G X)
       (= D G)
       (= D E)
       (= A F)
       (= Z A1)
       (= Y B1)
       (= U V)
       a!1
       a!2
       (or (not N) O (= M (- 1)))
       (or N (not O) (= H 1))
       (or (not H1) I1 (= G1 (- 1)))
       (or H1 (not I1) (= A1 1))
       a!3
       a!4
       (or (and N (not O)) (= M 0))
       (or (and (not N) O) (= H M))
       (or (and H1 (not I1)) (= G1 0))
       (or (and (not H1) I1) (= A1 G1))
       a!5
       (or L (= M1 (<= B1 (- 10))))
       (or K (= N1 (<= 10 B1)))
       a!6
       (= (or (not P) (not Q)) R)))
      )
      (state X F1 D1 V U W Y A1 Z B1 C1 E1 G1 H1 I1 J1 K1 L1 N1 M1)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N O P Q R S T)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
