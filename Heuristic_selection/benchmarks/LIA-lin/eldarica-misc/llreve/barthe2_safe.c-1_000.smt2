(set-logic HORN)

(declare-fun |inv_main25| ( Int Int Int ) Bool)
(declare-fun |inv_main3| ( Int ) Bool)
(declare-fun |inv_main19| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main8| ( Int Int Int Int ) Bool)

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
        (inv_main19 G D H E C)
        (and (= B (+ 1 E)) (not (= F 0)) (<= 0 (+ H (* (- 1) E))) (= A (+ C E)))
      )
      (inv_main19 G D H B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main8 E G D F)
        (and (= B (+ 1 D)) (not (= C 0)) (<= 0 (+ G (* (- 1) D))) (= A (+ F D)))
      )
      (inv_main8 E G B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main19 D B F C A)
        (let ((a!1 (not (<= 0 (+ F (* (- 1) C))))))
  (or a!1 (= E 0)))
      )
      (inv_main25 D B A)
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
      (inv_main8 A v_1 v_2 v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (inv_main8 C E B D)
        (let ((a!1 (not (<= 0 (+ E (* (- 1) B))))))
  (and (or a!1 (= A 0)) (= v_5 C) (= 1 v_6) (= 0 v_7)))
      )
      (inv_main19 C D v_5 v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main25 C B A)
        (not (= B A))
      )
      false
    )
  )
)

(check-sat)
(exit)
