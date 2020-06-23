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
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (|decr$unknown:2| C D)
        (and (not (= 0 A)) (= (not (= 0 A)) (>= B 3)))
      )
      (|f$unknown:4| C D)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (|f$unknown:6| B D)
        (and (= 0 A) (not (= 0 C)) (= (= 0 A) (<= B 0)) (= (not (= 0 C)) (>= D 3)))
      )
      false
    )
  )
)

(check-sat)
(exit)
