(set-logic HORN)

(declare-fun |f$unknown:2| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|f$unknown:2| E A)
        (and (= D E) (= A (- 2)) (= (= 0 B) (<= (- 1) C)) (not (= 0 B)))
      )
      (|f$unknown:2| D C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (= 0 D)
     (not (= 0 C))
     (= E (+ (- 1) A))
     (= A (* 2 B))
     (= (= 0 D) (<= (- 1) B))
     (= (not (= 0 C)) (<= B 1)))
      )
      (|f$unknown:2| E B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (= 0 C)
     (= 0 A)
     (= D B)
     (= (= 0 C) (<= (- 1) B))
     (= (not (= 0 A)) (<= B 1)))
      )
      (|f$unknown:2| D B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (|f$unknown:2| B C)
        (and (= 0 A) (= C 3) (= (not (= 0 A)) (>= B 0)))
      )
      false
    )
  )
)

(check-sat)
(exit)
