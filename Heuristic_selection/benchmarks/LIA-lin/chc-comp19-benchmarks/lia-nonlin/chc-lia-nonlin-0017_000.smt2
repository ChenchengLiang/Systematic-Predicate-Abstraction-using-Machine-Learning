(set-logic HORN)

(declare-fun |P1| ( Int ) Bool)
(declare-fun |P2| ( Int ) Bool)
(declare-fun |P3| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (P1 A)
        (and (<= A (- 1)) (= B 0))
      )
      (P3 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (P1 A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (P3 B A)
        true
      )
      (P2 A)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        (P2 A)
        (or (not (<= A 0)) (not (<= 0 A)))
      )
      false
    )
  )
)

(check-sat)
(exit)
