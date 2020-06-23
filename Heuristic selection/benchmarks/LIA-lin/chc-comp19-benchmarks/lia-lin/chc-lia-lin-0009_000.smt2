(set-logic HORN)

(declare-fun |f$unknown:2| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) ) 
    (=>
      (and
        (and true (= v_1 A))
      )
      (|f$unknown:2| A v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (|f$unknown:2| E F)
        (let ((a!1 (= (not (= 0 B)) (and (not (= 0 C)) (not (= 0 D))))))
  (and a!1
       (= (not (= 0 A)) (= 0 B))
       (= 0 A)
       (= (= 0 C) (<= F 0))
       (= (not (= 0 D)) (<= E 0))))
      )
      false
    )
  )
)

(check-sat)
(exit)
