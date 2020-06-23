(set-logic HORN)

(declare-fun |state| ( Int Bool Bool Bool Int Int Int Int Int Int Int Bool Bool Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) ) 
    (=>
      (and
        (let ((a!1 (or (not O) (not P) (= (+ F (* (- 1) G) (* (- 1) J)) 0))))
  (and (= L Q)
       (= D S)
       (= C L)
       (= B M)
       (= I J)
       (= H K)
       (= E H)
       (= E F)
       (= A 0)
       (= A G)
       a!1
       (or (not O) P (= N 2))
       (or O (not P) (= I 1))
       (or (and O P) (= F G))
       (or (and O (not P)) (= N 0))
       (or (and (not O) P) (= I N))
       (= D true)
       (not C)
       (not B)
       (= M R)))
      )
      (state A B C D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Bool) (E1 Bool) (F1 Bool) (G1 Bool) (H1 Int) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Bool) (N1 Bool) (O1 Bool) (P1 Bool) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N O P Q R S T U)
        (let ((a!1 (or (not O) (not P) (= (+ F (* (- 1) G) (* (- 1) J)) 0)))
      (a!2 (or (not J1) (not I1) (= (+ V (* (- 1) X) (* (- 1) A1)) 0)))
      (a!3 (or (not M) (= O1 (not (<= 0 C1)))))
      (a!4 (or (not L) (= P1 (not (<= C1 0))))))
  (and (= F1 G1)
       (= E1 P1)
       (= D1 E1)
       (= D1 K1)
       (= M R)
       (= L Q)
       (= D S)
       (= C L)
       (= B M)
       (= N1 (or (not L1) (not Q)))
       (= M1 N1)
       (= G1 O1)
       (= X Y)
       (= W Z)
       (= I J)
       (= H Y)
       (= H K)
       (= E H)
       (= E F)
       (= A G)
       (= A1 B1)
       (= Z C1)
       (= V W)
       a!1
       (or (not O) P (= N 2))
       (or O (not P) (= I 1))
       a!2
       (or J1 (not I1) (= H1 2))
       (or (not J1) I1 (= B1 1))
       (or (and O P) (= F G))
       (or (and O (not P)) (= N 0))
       (or (and (not O) P) (= I N))
       (or (and J1 I1) (= V X))
       (or (and J1 (not I1)) (= B1 H1))
       (or (and (not J1) I1) (= H1 0))
       a!3
       (or M (= O1 (<= C1 (- 10))))
       (or L (= P1 (<= 10 C1)))
       a!4
       (= F1 L1)))
      )
      (state Y G1 E1 N1 W V X Z B1 A1 C1 D1 F1 H1 I1 J1 K1 L1 M1 P1 O1)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M N O P Q R S T U)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
