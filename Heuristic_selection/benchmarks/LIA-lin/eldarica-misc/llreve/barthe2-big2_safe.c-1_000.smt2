(set-logic HORN)

(declare-fun |inv_main37| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main20| ( Int Int Int Int ) Bool)
(declare-fun |inv_main14| ( Int Int Int Int ) Bool)
(declare-fun |inv_main31| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main3| ( Int ) Bool)
(declare-fun |inv_main49| ( Int Int Int ) Bool)
(declare-fun |inv_main8| ( Int Int Int Int ) Bool)
(declare-fun |inv_main43| ( Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) ) 
    (=>
      (and
        (inv_main31 F B D A C)
        (let ((a!1 (not (<= 0 (+ D (* (- 1) A))))))
  (and (or a!1 (= E 0)) (= 1 v_6)))
      )
      (inv_main37 F B D v_6 C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main31 G D F C E)
        (and (= B (+ 1 C)) (not (= H 0)) (<= 0 (+ F (* (- 1) C))) (= A E))
      )
      (inv_main31 G D F B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) ) 
    (=>
      (and
        (inv_main37 F B E A D)
        (let ((a!1 (not (<= 0 (+ E (* (- 1) A))))))
  (and (or a!1 (= C 0)) (= 1 v_6)))
      )
      (inv_main43 F B E v_6 D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main37 H E G C F)
        (and (= B (+ 1 C)) (not (= D 0)) (<= 0 (+ G (* (- 1) C))) (= A (+ F C)))
      )
      (inv_main37 H E G B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (inv_main43 G D F C E)
        (and (= B (+ 1 C)) (not (= H 0)) (<= 0 (+ F (* (- 1) C))) (= A (* 2 E)))
      )
      (inv_main43 G D F B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) ) 
    (=>
      (and
        (inv_main8 E C D B)
        (let ((a!1 (not (<= 0 (+ C (* (- 1) D))))))
  (and (or a!1 (= A 0)) (= 0 v_5)))
      )
      (inv_main14 E C v_5 B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main8 G D E C)
        (and (not (= F 0)) (= B (+ 1 E)) (<= 0 (+ D (* (- 1) E))) (= A C))
      )
      (inv_main8 G D B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) ) 
    (=>
      (and
        (inv_main14 E C D B)
        (let ((a!1 (not (<= 0 (+ C (* (- 1) D))))))
  (and (or a!1 (= A 0)) (= 1 v_5)))
      )
      (inv_main20 E C v_5 B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main14 G E F D)
        (and (= B (+ 1 F)) (not (= C 0)) (<= 0 (+ E (* (- 1) F))) (= A (+ D F)))
      )
      (inv_main14 G E B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main20 G E F D)
        (and (= B (+ 1 F)) (not (= C 0)) (<= 0 (+ E (* (- 1) F))) (= A (* 2 D)))
      )
      (inv_main20 G E B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (inv_main43 F B E A C)
        (let ((a!1 (not (<= 0 (+ E (* (- 1) A))))))
  (or a!1 (= D 0)))
      )
      (inv_main49 F B C)
    )
  )
)
(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (inv_main3 A)
        (and (= v_1 A) (= 1 v_2) (= 1 v_3))
      )
      (inv_main8 A v_1 v_2 v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (inv_main20 E B C A)
        (let ((a!1 (not (<= 0 (+ B (* (- 1) C))))))
  (and (or a!1 (= D 0)) (= v_5 E) (= 1 v_6) (= 1 v_7)))
      )
      (inv_main31 E A v_5 v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main49 C A B)
        (not (= A B))
      )
      false
    )
  )
)

(check-sat)
(exit)
