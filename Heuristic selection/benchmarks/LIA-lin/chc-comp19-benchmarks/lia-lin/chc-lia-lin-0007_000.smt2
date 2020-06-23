(set-logic HORN)

(declare-fun |inv_main20| ( Int Int Int Int ) Bool)
(declare-fun |inv_main3| ( Int ) Bool)
(declare-fun |inv_main29| ( Int Int Int ) Bool)
(declare-fun |inv_main7| ( Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main20 B C D E)
        (let ((a!1 (not (= E (+ 10 (* (- 1) D))))))
  (and a!1 (<= 0 E) (= A (+ (- 1) E))))
      )
      (inv_main20 B C D A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (inv_main7 B C D)
        (and (not (= D C)) (<= D 10) (= A (+ 1 D)))
      )
      (inv_main7 B C A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main20 B C D E)
        (and (not (<= 0 E)) (= A (+ 10 (* (- 1) E))))
      )
      (inv_main29 B C A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main20 B C D E)
        (and (= E (+ 10 (* (- 1) D))) (<= 0 E) (= A (+ 10 (* (- 1) E))))
      )
      (inv_main29 B C A)
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
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (inv_main7 A B C)
        (and (not (<= C 10)) (= v_3 A) (= 10 v_4))
      )
      (inv_main20 A C v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (inv_main7 A B C)
        (and (<= C 10) (= C B) (= v_3 A) (= 10 v_4))
      )
      (inv_main20 A C v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main29 A B C)
        (not (= B C))
      )
      false
    )
  )
)

(check-sat)
(exit)
