(set-logic HORN)

(declare-fun |inv_main17| ( Int Int Int ) Bool)
(declare-fun |inv_main3| ( Int ) Bool)
(declare-fun |inv_main14| ( Int Int Int Int ) Bool)
(declare-fun |inv_main7| ( Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main14 C E D B)
        (and (<= B 10) (= A (+ 1 B)))
      )
      (inv_main14 C E D A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (inv_main7 B D C)
        (and (<= C 10) (= A (+ 1 C)))
      )
      (inv_main7 B D A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (inv_main14 B D C A)
        (not (<= A 10))
      )
      (inv_main17 B D A)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) ) 
    (=>
      (and
        (inv_main3 A)
        (and (= v_1 A) (= 0 v_2))
      )
      (inv_main7 A v_1 v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (inv_main7 A C B)
        (and (not (<= B 10)) (= v_3 A) (= 1 v_4))
      )
      (inv_main14 A B v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main17 A B C)
        (not (= B C))
      )
      false
    )
  )
)

(check-sat)
(exit)
