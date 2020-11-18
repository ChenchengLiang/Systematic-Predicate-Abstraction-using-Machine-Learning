(set-logic HORN)

(declare-fun |inv_main10| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main5| ( Int Int Int ) Bool)
(declare-fun |inv_main11| ( Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) ) 
    (=>
      (and
        (and true (= 0 v_1) (= 0 v_2))
      )
      (inv_main5 A v_1 v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main10 A D B E C)
        (not (<= 1 E))
      )
      (inv_main11 A D B E C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main10 C F D G E)
        (and (= B (+ (- 1) G)) (<= 1 G) (= A (+ 2 E)))
      )
      (inv_main10 C F D B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (v_4 Int) ) 
    (=>
      (and
        (inv_main5 B D C)
        (let ((a!1 (not (<= 1 (+ (* 2 B) (* (- 1) D))))))
  (and a!1 (= A (+ 1 B)) (= 0 v_4)))
      )
      (inv_main10 B D C A v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main5 C E D)
        (and (= A (+ 1 D)) (<= 1 (+ (* 2 C) (* (- 1) E))) (= B (+ 1 E)))
      )
      (inv_main5 C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main11 A D B E C)
        (not (= B C))
      )
      false
    )
  )
)

(check-sat)
(exit)
