(set-logic HORN)

(declare-fun |map$unknown:2| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|map$unknown:2| E A)
        (and (= 0 C) (= D (+ 1 E)) (= A (+ (- 1) B)) (= (not (= 0 C)) (= B 0)))
      )
      (|map$unknown:2| D B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (and (not (= 0 A)) (= C 0) (= (not (= 0 A)) (= B 0)))
      )
      (|map$unknown:2| C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (|map$unknown:2| B C)
        (and (= 0 A) (= (not (= 0 A)) (= B C)))
      )
      false
    )
  )
)

(check-sat)
(exit)
