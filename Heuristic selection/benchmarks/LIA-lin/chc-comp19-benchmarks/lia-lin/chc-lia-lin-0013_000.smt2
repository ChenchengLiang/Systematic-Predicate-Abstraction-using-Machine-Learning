(set-logic HORN)

(declare-fun |_____I_N_V____23| ( Int Int Int Int Int Int ) Bool)
(declare-fun |_____I_N_V____19| ( Int Int Int Int Int Int ) Bool)
(declare-fun |_____I_N_V____6| ( Int Int Int Int ) Bool)
(declare-fun |_____I_N_V____12| ( Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (and true (= 1 v_1) (= 1 v_2) (= 1 v_3))
      )
      (_____I_N_V____6 A v_1 v_2 v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (_____I_N_V____23 A B C D E F)
        true
      )
      (_____I_N_V____12 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (_____I_N_V____19 A B C D E F)
        (let ((a!1 (not (<= 1 (+ F (* (- 1) A))))) (a!2 (not (<= 1 (+ E (* (- 1) A))))))
  (or a!1 a!2))
      )
      (_____I_N_V____23 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (_____I_N_V____12 E F G H I J)
        (and (= B (+ 1 I))
     (= C (+ H J))
     (= D (+ G I))
     (<= 0 (+ E (* (- 1) I)))
     (<= 0 (+ E (* (- 1) J)))
     (= A (+ 1 J)))
      )
      (_____I_N_V____19 E F D C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (v_4 Int) (v_5 Int) ) 
    (=>
      (and
        (_____I_N_V____6 A B C D)
        (let ((a!1 (not (<= 0 (+ A (* (- 1) B))))))
  (and a!1 (= 0 v_4) (= 1 v_5)))
      )
      (_____I_N_V____12 A B C D v_4 v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (_____I_N_V____6 D E F G)
        (and (= C (+ 1 E)) (= B F) (<= 0 (+ D (* (- 1) E))) (= A G))
      )
      (_____I_N_V____6 D C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (_____I_N_V____23 A B C D E F)
        (not (= D (+ C E)))
      )
      false
    )
  )
)

(check-sat)
(exit)
