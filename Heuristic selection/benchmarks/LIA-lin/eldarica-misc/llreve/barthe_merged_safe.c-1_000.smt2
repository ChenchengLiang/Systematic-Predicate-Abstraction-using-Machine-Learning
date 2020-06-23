(set-logic HORN)

(declare-fun |inv_main10| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |inv_main6| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main13| ( Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (and true (= 0 v_2) (= 0 v_3) (= 0 v_4))
      )
      (inv_main6 B A v_2 v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (inv_main10 E C I D F H G)
        (and (= B (+ F D)) (= A (+ G H)))
      )
      (inv_main13 E C I D B H A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main13 F D J E G I H)
        (and (= B (+ 5 (* 5 J) D)) (= C (+ 1 J)) (<= 2 (+ F (* (- 1) J))) (= A (+ 5 I)))
      )
      (inv_main10 F D C B G A H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (inv_main6 D B F C E)
        (and (<= 1 (+ D (* (- 1) F))) (= A (+ (* 5 F) B)) (= v_6 B) (= 0 v_7))
      )
      (inv_main10 D B F A E v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main10 C A G B D F E)
        (not (= B F))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main13 C A G B D F E)
        (not (= D E))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        CHC_COMP_FALSE
      )
      false
    )
  )
)

(check-sat)
(exit)
