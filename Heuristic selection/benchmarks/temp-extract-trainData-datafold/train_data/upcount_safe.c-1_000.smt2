(set-logic HORN)

(declare-fun |inv_main2| ( ) Bool)
(declare-fun |inv_main8| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main4| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main5| ( Int Int Int Int Int ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      inv_main2
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main4 A E D C B)
        (not (<= 0 E))
      )
      (inv_main5 A E D C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main5 A E D C B)
        (not (<= 1 D))
      )
      (inv_main8 A E D C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main4 C G F E D)
        (and (= B (+ (- 1) G)) (<= 0 G) (= A (+ 1 E)))
      )
      (inv_main4 C B F A D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main5 C G F E D)
        (and (= B (+ (- 1) F)) (<= 1 F) (= A (+ 1 D)))
      )
      (inv_main5 C G B E A)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        inv_main2
        (and (= v_1 A) (= v_2 A) (= 0 v_3) (= 0 v_4))
      )
      (inv_main4 A v_1 v_2 v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main8 A E D C B)
        (and (not (<= A (- 1))) (not (= C (+ 1 B))))
      )
      false
    )
  )
)

(check-sat)
(exit)
