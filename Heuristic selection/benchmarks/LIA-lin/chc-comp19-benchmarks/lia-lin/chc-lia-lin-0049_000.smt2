(set-logic HORN)

(declare-fun |state| ( Int Bool Bool Int Bool Bool Bool Bool Bool Bool Bool Bool Int ) Bool)

(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) ) 
    (=>
      (and
        (and (= (= D 2) E)
     (= (and F G) H)
     (= H J)
     (= E I)
     (= C G)
     (= B F)
     (= A 0)
     (= A D)
     (not C)
     (not B)
     (= (= I J) K))
      )
      (state A B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) (Y Int) (Z Bool) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M)
        (let ((a!1 (or (= D 3) (= (+ D (* (- 1) Y)) 1))))
  (and (= (= V W) X)
       (= (= D 2) E)
       (= (= N 2) P)
       (= (and F G) H)
       (= (and S Q) U)
       (= Q R)
       (= H J)
       (= G R)
       (= E I)
       (= C G)
       (= B F)
       (= U W)
       (= T (not F))
       (= S T)
       (= P V)
       (= O Y)
       (= A D)
       (= N O)
       a!1
       (or (not (= D 3)) (= Y 0))
       (= (= I J) K)))
      )
      (state O R T N P Q S U V W X Z Y)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) ) 
    (=>
      (and
        (state A B C D E F G H I J K L M)
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
