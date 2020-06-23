(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A B C D I J G H)
        (and (= I (+ 1 E)) (= G H) (>= I 0) (not (>= A B)) (= J (+ (- 1) F)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 A I J D K L G H)
        (and (= K (+ 1 E))
     (= J (+ (- 1) C))
     (= I (+ (- 1) B))
     (= G H)
     (>= A I)
     (>= K 0)
     (= L (+ (- 1) F)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A I J D E F G H)
        (and (= I (+ (- 1) B)) (= G H) (not (>= E 0)) (>= A I) (= J (+ (- 1) C)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (and (= C 0) (= B 0) (= A D) (= E 0) (= v_5 D) (= v_6 A) (= v_7 D))
      )
      (INV1 A B C D v_5 E v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV1 C D A F E B G H)
        (and (not (= A B)) (not (>= E 0)) (not (>= C D)) (= G H))
      )
      false
    )
  )
)

(check-sat)
(exit)
