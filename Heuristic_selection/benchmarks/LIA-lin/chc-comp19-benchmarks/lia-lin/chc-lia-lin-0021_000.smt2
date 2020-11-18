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
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (= 0 C)
     (not (= 0 A))
     (= D (- 1))
     (= (= 0 C) (<= (- 1) B))
     (= (not (= 0 A)) (<= B 0)))
      )
      (|f$unknown:2| D B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (= (not (= 0 A)) (<= B 2))
     (= 0 D)
     (= 0 C)
     (not (= 0 A))
     (= E (+ 3 (* (- 1) B)))
     (= (= 0 D) (<= (- 1) B))
     (= (not (= 0 C)) (<= B 0)))
      )
      (|f$unknown:2| E B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (= (not (= 0 A)) (<= B 2))
     (= 0 D)
     (= 0 C)
     (= 0 A)
     (= E B)
     (= (= 0 D) (<= (- 1) B))
     (= (not (= 0 C)) (<= B 0)))
      )
      (|f$unknown:2| E B)
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
