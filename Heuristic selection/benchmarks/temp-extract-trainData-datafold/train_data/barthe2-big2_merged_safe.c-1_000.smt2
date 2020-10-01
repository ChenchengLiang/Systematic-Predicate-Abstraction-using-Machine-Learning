(set-logic HORN)

(declare-fun |inv_main6| ( Int Int Int Int ) Bool)
(declare-fun |inv_main19| ( Int Int Int Int Int Int ) Bool)
(declare-fun |inv_main12| ( Int Int Int Int Int Int ) Bool)
(declare-fun |inv_main23| ( Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (and true (= 1 v_1) (= 1 v_2) (= 1 v_3))
      )
      (inv_main6 A v_1 v_2 v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main23 D E F C B A)
        true
      )
      (inv_main12 D E F C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main19 D E F C B A)
        (let ((a!1 (not (<= 1 (+ B (* (- 1) D))))) (a!2 (not (<= 1 (+ A (* (- 1) D))))))
  (or a!1 a!2))
      )
      (inv_main23 D E F C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main12 D E F C B A)
        (let ((a!1 (not (<= 0 (+ D (* (- 1) B))))) (a!2 (not (<= 0 (+ D (* (- 1) A))))))
  (and a!1 a!2))
      )
      (inv_main19 D E F C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main12 F G H E D C)
        (let ((a!1 (not (<= 0 (+ F (* (- 1) D))))))
  (and (= B (+ E C)) (<= 0 (+ F (* (- 1) C))) a!1 (= A (+ 1 C))))
      )
      (inv_main19 F G H B D A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main12 F G H E D C)
        (let ((a!1 (not (<= 0 (+ F (* (- 1) C))))))
  (and (= B (+ H D)) a!1 (<= 0 (+ F (* (- 1) D))) (= A (+ 1 D))))
      )
      (inv_main19 F G B E A C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (inv_main12 H I J G F E)
        (and (= B (+ 1 F))
     (= C (+ G E))
     (= D (+ J F))
     (<= 0 (+ H (* (- 1) E)))
     (<= 0 (+ H (* (- 1) F)))
     (= A (+ 1 E)))
      )
      (inv_main19 H I D C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (v_4 Int) (v_5 Int) ) 
    (=>
      (and
        (inv_main6 B C D A)
        (let ((a!1 (not (<= 0 (+ B (* (- 1) C))))))
  (and a!1 (= 0 v_4) (= 1 v_5)))
      )
      (inv_main12 B C D A v_4 v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main6 E F G D)
        (and (= B G) (= C (+ 1 F)) (<= 0 (+ E (* (- 1) F))) (= A D))
      )
      (inv_main6 E C B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main23 D E F C B A)
        (not (= C (+ F B)))
      )
      false
    )
  )
)

(check-sat)
(exit)
