(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A B C D I J G H)
        (and (= I (+ (- 1) E)) (= G H) (>= D I) (not (>= A B)) (= (+ J I) F))
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
        (and (= (+ J I) C)
     (= K (+ (- 1) E))
     (= I (+ (- 1) B))
     (= G H)
     (>= A I)
     (>= D K)
     (= (+ L K) F))
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
        (and (= I (+ (- 1) B)) (= G H) (not (>= D E)) (>= A I) (= (+ J I) C))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (and (= E 1) (= C 0) (= B 0) (= A D) (= F 0) (= v_6 A) (= v_7 D))
      )
      (INV1 A B C D E F v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV1 C D A E F B G H)
        (and (not (= A B)) (not (>= E F)) (not (>= C D)) (= G H))
      )
      false
    )
  )
)

(check-sat)
(exit)
