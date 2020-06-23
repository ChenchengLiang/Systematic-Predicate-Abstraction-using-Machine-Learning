(set-logic HORN)

(declare-fun |inv_main3| ( Int ) Bool)
(declare-fun |inv_main37| ( Int Int Int ) Bool)
(declare-fun |inv_main12| ( Int Int Int Int ) Bool)
(declare-fun |inv_main29| ( Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (inv_main3 A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main29 E F C D G)
        (and (= B (+ 1 D)) (not (= H 0)) (<= 1 (+ C (* (- 1) D))) (= A (+ 2 G)))
      )
      (inv_main29 E F C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main12 E D C G)
        (and (not (= F 0)) (= B (+ 1 C)) (<= 0 (+ D (* (- 1) C))) (= A (+ 2 G)))
      )
      (inv_main12 E D B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main29 D E A C F)
        (let ((a!1 (not (<= 1 (+ A (* (- 1) C))))))
  (or a!1 (= B 0)))
      )
      (inv_main37 D E F)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (inv_main3 A)
        (and (<= A 0) (= 1 v_1) (= 1 v_2) (= 0 v_3))
      )
      (inv_main12 A v_1 v_2 v_3)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (inv_main3 A)
        (and (not (<= A 0)) (= v_1 A) (= 1 v_2) (= 0 v_3))
      )
      (inv_main12 A v_1 v_2 v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (inv_main12 C B A E)
        (let ((a!1 (not (<= 0 (+ B (* (- 1) A))))))
  (and (or a!1 (= D 0)) (<= C 0) (= 1 v_5) (= 1 v_6) (= 2 v_7)))
      )
      (inv_main29 C E v_5 v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (inv_main12 C B A E)
        (let ((a!1 (not (<= 0 (+ B (* (- 1) A))))))
  (and (or a!1 (= D 0)) (not (<= C 0)) (= v_5 C) (= 1 v_6) (= 2 v_7)))
      )
      (inv_main29 C E v_5 v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main37 A B C)
        (not (= B C))
      )
      false
    )
  )
)

(check-sat)
(exit)
