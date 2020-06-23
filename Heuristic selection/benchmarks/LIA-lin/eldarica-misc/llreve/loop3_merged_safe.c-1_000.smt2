(set-logic HORN)

(declare-fun |inv_main18| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main8| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main13| ( Int Int Int Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |inv_main7| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main15| ( Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (and true (= 1 v_1) (= 0 v_2) (= 1 v_3) (= 2 v_4))
      )
      (inv_main7 A v_1 v_2 v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) ) 
    (=>
      (and
        (inv_main7 B E A C D)
        (and (<= B 0) (= 1 v_5))
      )
      (inv_main8 v_5 E A C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main7 B E A C D)
        (not (<= B 0))
      )
      (inv_main8 B E A C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main8 C F B D E)
        (and (<= 0 (+ C (* (- 1) F))) (= A (+ 2 B)))
      )
      (inv_main13 C F A D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main13 C F B D E)
        (= A (+ 1 F))
      )
      (inv_main8 C A B D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main8 B E A C D)
        (let ((a!1 (not (<= 1 (+ B (* (- 1) C))))) (a!2 (not (<= 0 (+ B (* (- 1) E))))))
  (and a!1 a!2))
      )
      (inv_main15 B E A C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main8 D G C E F)
        (let ((a!1 (not (<= 0 (+ D (* (- 1) G))))))
  (and (= B (+ 1 E)) a!1 (<= 1 (+ D (* (- 1) E))) (= A (+ 2 F))))
      )
      (inv_main18 D G C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main18 B E A C D)
        (not (<= 1 (+ B (* (- 1) C))))
      )
      (inv_main15 B E A C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main18 D G C E F)
        (and (= B (+ 1 E)) (<= 1 (+ D (* (- 1) E))) (= A (+ 2 F)))
      )
      (inv_main18 D G C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main13 B E A C D)
        (not (= (+ A (* (- 2) E)) 0))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main18 B E A C D)
        (not (= (+ D (* (- 2) C)) 0))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main15 B E A C D)
        (not (= A D))
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
