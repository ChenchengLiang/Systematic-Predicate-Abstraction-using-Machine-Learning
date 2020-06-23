(set-logic HORN)

(declare-fun |rev$unknown:3| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (|rev$unknown:3| G A C)
        (and (= 0 E) (= F G) (= C (+ (- 1) D)) (= A (+ 1 B)) (= (not (= 0 E)) (= D 0)))
      )
      (|rev$unknown:3| F B D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (not (= 0 A)) (= C D) (= (not (= 0 A)) (= B 0)))
      )
      (|rev$unknown:3| C D B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (|rev$unknown:3| C A D)
        (and (= 0 B) (= A 0) (= (not (= 0 B)) (>= C D)))
      )
      false
    )
  )
)

(check-sat)
(exit)
