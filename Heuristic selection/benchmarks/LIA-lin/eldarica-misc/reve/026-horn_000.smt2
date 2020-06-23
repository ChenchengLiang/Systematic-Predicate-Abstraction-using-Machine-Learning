(set-logic HORN)

(declare-fun |INV1| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (INV1 A C)
        (and (= C (+ (- 1) B)) (<= E 10) (<= C 9) (not (<= A 10)) (= D E))
      )
      (INV1 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (INV1 C D)
        (and (= D (+ (- 1) B)) (= C (+ (- 1) A)) (<= F 10) (<= D 9) (<= C 10) (= E F))
      )
      (INV1 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (INV1 C B)
        (and (= C (+ (- 1) A)) (<= E 10) (<= C 10) (not (<= B 9)) (= D E))
      )
      (INV1 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (and (<= B 10) (= A B))
      )
      (INV1 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (INV1 A B)
        (and (not (= A (+ 1 B))) (<= D 10) (not (<= B 9)) (not (<= A 10)) (= C D))
      )
      false
    )
  )
)

(check-sat)
(exit)
