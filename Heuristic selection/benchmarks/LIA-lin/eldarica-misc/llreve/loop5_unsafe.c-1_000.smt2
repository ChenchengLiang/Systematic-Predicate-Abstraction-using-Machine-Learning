(set-logic HORN)

(declare-fun |inv_main23| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main3| ( Int ) Bool)
(declare-fun |inv_main10| ( Int Int Int Int ) Bool)
(declare-fun |inv_main29| ( Int Int Int ) Bool)

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
        (inv_main23 C E H G F)
        (and (= B (+ (- 1) G)) (not (= D 0)) (<= 1 G) (= A (+ 2 F)))
      )
      (inv_main23 C E H B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main10 C F E G)
        (and (not (= D 0)) (= B (+ 1 E)) (<= 1 (+ (* 2 F) (* (- 1) E))) (= A (+ 1 G)))
      )
      (inv_main10 C F B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main23 A B F E D)
        (or (not (<= 1 E)) (= C 0))
      )
      (inv_main29 A B D)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (inv_main3 A)
        (and (= v_1 A) (= 0 v_2) (= 0 v_3))
      )
      (inv_main10 A v_1 v_2 v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (inv_main10 C E D F)
        (let ((a!1 (not (<= 1 (+ (* 2 E) (* (- 1) D))))))
  (and (or a!1 (= B 0)) (= A (+ 1 C)) (= v_6 C) (= 0 v_7)))
      )
      (inv_main23 C F v_6 A v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main29 A B C)
        (not (= B C))
      )
      false
    )
  )
)

(check-sat)
(exit)
