(set-logic HORN)

(declare-fun |decr$unknown:2| ( Int Int ) Bool)
(declare-fun |f$unknown:6| ( Int Int ) Bool)
(declare-fun |f$unknown:4| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (= A (+ (- 1) B))
      )
      (|decr$unknown:2| A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (|decr$unknown:2| B C)
        (= A 3)
      )
      (|f$unknown:4| B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (|f$unknown:4| D B)
        (and (= C D) (= (= 0 A) (<= B 0)) (not (= 0 A)))
      )
      (|f$unknown:6| C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (and (= C 1) (= (= 0 A) (<= B 0)) (= 0 A))
      )
      (|f$unknown:6| C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (|f$unknown:6| B C)
        (and (= C 3) (= (= 0 A) (<= B 0)) (= 0 A))
      )
      false
    )
  )
)

(check-sat)
(exit)
