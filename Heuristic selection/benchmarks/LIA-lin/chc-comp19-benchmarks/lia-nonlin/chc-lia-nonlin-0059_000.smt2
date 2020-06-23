(set-logic HORN)

(declare-fun |f$unknown:2| ( Int Int ) Bool)
(declare-fun |f$unknown:1| ( Int ) Bool)
(declare-fun |h$unknown:5| ( Int ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (|f$unknown:1| B)
        (= A (+ 1 B))
      )
      (|f$unknown:2| A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (|f$unknown:2| C B)
        (and (not (= 0 A)) (= (not (= 0 A)) (>= B 0)))
      )
      (|h$unknown:5| C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (and (not (= 0 A)) (= (not (= 0 A)) (>= B 0)))
      )
      (|f$unknown:1| B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (|h$unknown:5| B)
        (and (= (= 0 A) (<= B 0)) (= 0 A))
      )
      false
    )
  )
)

(check-sat)
(exit)
