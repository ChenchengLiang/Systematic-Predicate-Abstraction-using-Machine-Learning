(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (INV1 A E C D)
        (and (= C D) (<= E 9) (<= D 10) (not (<= A 10)) (= E (+ (- 1) B)))
      )
      (INV1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (INV1 E F C D)
        (and (= E (+ (- 1) A)) (= C D) (<= F 9) (<= E 10) (<= D 10) (= F (+ (- 1) B)))
      )
      (INV1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (INV1 E B C D)
        (and (= C D) (<= E 10) (<= D 10) (not (<= B 9)) (= E (+ (- 1) A)))
      )
      (INV1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (and (<= B 10) (= A B) (= v_2 A) (= v_3 B))
      )
      (INV1 A B v_2 v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (INV1 A B C D)
        (and (not (= A (+ 1 B))) (<= D 10) (not (<= B 9)) (not (<= A 10)) (= C D))
      )
      false
    )
  )
)

(check-sat)
(exit)
