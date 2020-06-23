(set-logic HORN)

(declare-fun |state| ( Int Bool Bool Int Int Int Int Int Int Int Bool Bool Int Bool Bool Bool Bool Bool Bool Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) ) 
    (=>
      (and
        (let ((a!1 (or (and (not G) (not F)) (= (+ T (* (- 1) S) (* (- 1) D)) 0))))
  (and (= K J)
       (= L T)
       (= L K)
       (= M 0)
       (= M S)
       (= (or (not O) (not P)) N)
       (= I R)
       (= R P)
       (= Q O)
       (= H Q)
       (or G (not F) (= B A))
       (or G (not F) (= A 2))
       (or G F (= T S))
       (or (and (not G) F) (= B 1))
       (or (and (not G) F) (= A 0))
       a!1
       (not I)
       (not H)
       (= B D)))
      )
      (state M H I L T S K B D J R Q A F G P O N C E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Int) (Z Int) (A1 Bool) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Bool) (I1 Bool) (J1 Bool) (K1 Bool) (L1 Bool) (M1 Int) (N1 Int) ) 
    (=>
      (and
        (state M H I L N1 M1 K B D J L1 K1 A F G J1 I1 H1 C E)
        (let ((a!1 (or (and (not B1) (not A1)) (= (+ Z (* (- 1) Y) (* (- 1) C1)) 0)))
      (a!2 (or (and (not F) (not G)) (= (+ N1 (* (- 1) M1) (* (- 1) D)) 0)))
      (a!3 (or (not L1) (= P (not (<= N 0)))))
      (a!4 (or (not K1) (= O (not (<= 0 N))))))
  (and (= Z G1)
       (= C1 E1)
       (= F1 N)
       (= G1 F1)
       (= M M1)
       (= L N1)
       (= L K)
       (= K S)
       (= K J)
       (= B D)
       (= (or (not I1) (not J1)) H1)
       (= (or (not V) (not U)) T)
       (= L1 J1)
       (= K1 I1)
       (= Q P)
       (= R O)
       (= W R)
       (= W U)
       (= X Q)
       (= X V)
       (= I L1)
       (= H K1)
       (or B1 A1 (= Z Y))
       (or (not B1) A1 (= D1 2))
       (or (not B1) A1 (= E1 D1))
       (or F G (= N1 M1))
       (or (not F) G (= B A))
       (or (not F) G (= A 2))
       (or (and B1 (not A1)) (= D1 0))
       (or (and B1 (not A1)) (= E1 1))
       a!1
       (or (and F (not G)) (= B 1))
       (or (and F (not G)) (= A 0))
       a!2
       (or L1 (= P (<= 10 N)))
       a!3
       a!4
       (or K1 (= O (<= N (- 10))))
       (= Y S)))
      )
      (state S R Q G1 Z Y F1 E1 C1 N X W D1 B1 A1 V U T P O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) ) 
    (=>
      (and
        (state M H I L T S K B D J R Q A F G P O N C E)
        (not N)
      )
      false
    )
  )
)

(check-sat)
(exit)
