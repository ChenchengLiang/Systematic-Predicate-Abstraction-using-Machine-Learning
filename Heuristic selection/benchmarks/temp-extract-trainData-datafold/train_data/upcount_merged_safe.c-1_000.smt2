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
        (inv_main4 B C A E D)
        (not (<= 0 C))
      )
      (inv_main5 B C A E D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main5 B C A E D)
        (not (<= 1 A))
      )
      (inv_main8 B C A E D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main4 D E C G F)
        (and (= B (+ (- 1) E)) (<= 0 E) (= A (+ 1 G)))
      )
      (inv_main4 D B C A F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main5 D E C G F)
        (and (= B (+ (- 1) C)) (<= 1 C) (= A (+ 1 F)))
      )
      (inv_main5 D E B G A)
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
        (inv_main8 B C A E D)
        (and (not (<= B (- 1))) (not (= E (+ 1 D))))
      )
      false
    )
  )
)

(check-sat)
(exit)
