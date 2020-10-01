(set-logic HORN)

(declare-fun |inv_main17| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main7| ( Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (and true (= 0 v_1) (= 0 v_2) (= 0 v_3) (= 1 v_4))
      )
      (inv_main7 A v_1 v_2 v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main17 B D C A E)
        true
      )
      (inv_main7 B D C A E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main7 B D C A E)
        (let ((a!1 (not (<= 0 (+ B (* (- 1) E)))))
      (a!2 (not (<= 1 (+ E (* (- 1) B)))))
      (a!3 (not (<= 1 (+ A (* (- 1) B)))))
      (a!4 (not (<= 0 (+ B (* (- 1) A))))))
  (and a!1 (or a!2 a!3) a!4))
      )
      (inv_main17 B D C A E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main7 D F E C G)
        (let ((a!1 (not (<= 0 (+ D (* (- 1) C)))))
      (a!2 (not (<= 0 (+ G (* (- 1) D)))))
      (a!3 (not (<= 1 (+ C (* (- 1) D))))))
  (and (= B (+ E G)) a!1 (<= 0 (+ D (* (- 1) G))) (or a!2 a!3) (= A (+ 1 G))))
      )
      (inv_main17 D F B C A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main7 D F E C G)
        (let ((a!1 (not (<= 0 (+ D (* (- 1) G)))))
      (a!2 (not (<= 0 (+ C (* (- 1) D)))))
      (a!3 (not (<= 1 (+ G (* (- 1) D))))))
  (and (= B (+ F C)) (<= 0 (+ D (* (- 1) C))) a!1 (or a!2 a!3) (= A (+ 1 C))))
      )
      (inv_main17 D B E A G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (inv_main7 F H G E I)
        (let ((a!1 (not (<= 0 (+ I (* (- 1) F))))) (a!2 (not (<= 0 (+ E (* (- 1) F))))))
  (and (= B (+ 1 E))
       (= C (+ G I))
       (= D (+ H E))
       (<= 0 (+ F (* (- 1) E)))
       (<= 0 (+ F (* (- 1) I)))
       (or a!1 a!2)
       (= A (+ 1 I))))
      )
      (inv_main17 F D C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main17 B D C A E)
        (not (= C (+ D A)))
      )
      false
    )
  )
)

(check-sat)
(exit)
