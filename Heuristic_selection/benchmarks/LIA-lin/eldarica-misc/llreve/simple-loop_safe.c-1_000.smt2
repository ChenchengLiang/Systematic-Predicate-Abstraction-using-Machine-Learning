(set-logic HORN)

(declare-fun |inv_main3| ( Int ) Bool)
(declare-fun |inv_main7| ( Int Int Int ) Bool)
(declare-fun |inv_main21| ( Int Int Int ) Bool)
(declare-fun |inv_main16| ( Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main16 C E D B)
        (and (not (= F 0)) (<= B 10) (= A (+ 1 B)))
      )
      (inv_main16 C E D A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main7 B D E)
        (and (not (= C 0)) (<= E 10) (= A (+ 1 E)))
      )
      (inv_main7 B D A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main16 B D C A)
        (or (not (<= A 10)) (= E 0))
      )
      (inv_main21 B D A)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (v_4 Int) (v_5 Int) ) 
    (=>
      (and
        (inv_main7 A C D)
        (and (or (not (<= D 10)) (= B 0)) (= v_4 A) (= 1 v_5))
      )
      (inv_main16 A D v_4 v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main21 B C A)
        (not (= C A))
      )
      false
    )
  )
)

(check-sat)
(exit)
