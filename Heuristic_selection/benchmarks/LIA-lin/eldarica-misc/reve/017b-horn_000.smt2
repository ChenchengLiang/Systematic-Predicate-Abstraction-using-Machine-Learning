(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A B C D I J G H)
        (and (= I (+ (- 1) E))
     (= G H)
     (>= (+ D (* (- 1) I)) 1)
     (not (>= A B))
     (= J (+ (- 2) F)))
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
        (and (= K (+ (- 1) E))
     (= J (+ (- 2) C))
     (= I (+ (- 1) B))
     (= G H)
     (>= (+ D (* (- 1) K)) 1)
     (>= A I)
     (= L (+ (- 2) F)))
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
        (let ((a!1 (not (>= (+ D (* (- 1) E)) 1))))
  (and (= I (+ (- 1) B)) (= G H) a!1 (>= A I) (= J (+ (- 2) C))))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (and (= E 0) (= C 0) (= B 1) (= A D) (= F 0) (= v_6 A) (= v_7 D))
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
        (let ((a!1 (not (>= (+ E (* (- 1) F)) 1))))
  (and (not (= A B)) a!1 (not (>= C D)) (= G H)))
      )
      false
    )
  )
)

(check-sat)
(exit)
