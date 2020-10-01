(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A B C D G H)
        (and (= H (+ (- 1) F)) (= G (+ 1 E)) (>= G 0) (not (>= A B)) (= I J))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 A G H D I J)
        (and (= J (+ (- 1) F))
     (= I (+ 1 E))
     (= H (+ (- 1) C))
     (= G (+ (- 1) B))
     (>= A G)
     (>= I 0)
     (= K L))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A G H D E F)
        (and (= H (+ (- 1) C)) (= G (+ (- 1) B)) (not (>= E 0)) (>= A G) (= I J))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) ) 
    (=>
      (and
        (and (= C 0) (= B 0) (= A D) (= E 0) (= v_5 D))
      )
      (INV1 A B C D v_5 E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV1 C D A F E B)
        (and (not (= A B)) (not (>= E 0)) (not (>= C D)) (= G H))
      )
      false
    )
  )
)

(check-sat)
(exit)
