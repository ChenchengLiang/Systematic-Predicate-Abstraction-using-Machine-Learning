(set-logic HORN)

(declare-fun |inv_main7| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |inv_main15| ( Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) (v_4 Int) (v_5 Int) (v_6 Int) ) 
    (=>
      (and
        (and true (= 0 v_1) (= 1 v_2) (= 1 v_3) (= 1 v_4) (= 0 v_5) (= 0 v_6))
      )
      (inv_main7 A v_1 v_2 v_3 v_4 v_5 v_6)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main15 F A G B E C D)
        true
      )
      (inv_main7 F A G B E C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (inv_main7 K F L G J H I)
        (and (= B (+ F G))
     (= C (+ L J))
     (= D (+ F G))
     (= E (+ (- 1) K))
     (<= 1 K)
     (= A (+ L J)))
      )
      (inv_main15 E G J D C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main15 F A G B E C D)
        (not (= D (+ C A)))
      )
      false
    )
  )
)

(check-sat)
(exit)
