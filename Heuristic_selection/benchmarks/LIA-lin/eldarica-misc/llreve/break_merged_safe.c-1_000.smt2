(set-logic HORN)

(declare-fun |inv_main6| ( Int Int Int ) Bool)
(declare-fun |inv_main5| ( Int Int Int ) Bool)
(declare-fun |inv_main11| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) ) 
    (=>
      (and
        (and true (= 0 v_1) (= 10 v_2))
      )
      (inv_main5 A v_1 v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main5 C A B)
        (not (<= A 10))
      )
      (inv_main6 C A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main6 C A B)
        (not (<= 0 B))
      )
      (inv_main11 C A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main5 C A B)
        (and (<= A 10) (= A C))
      )
      (inv_main6 C A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (inv_main5 D B C)
        (and (not (= B D)) (<= B 10) (= A (+ 1 B)))
      )
      (inv_main5 D A C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main6 C A B)
        (and (<= 0 B) (= B (+ 10 (* (- 1) C))))
      )
      (inv_main11 C A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (inv_main6 D B C)
        (let ((a!1 (not (= C (+ 10 (* (- 1) D))))))
  (and a!1 (<= 0 C) (= A (+ (- 1) C))))
      )
      (inv_main6 D B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main11 C A B)
        (not (= A (+ 10 (* (- 1) B))))
      )
      false
    )
  )
)

(check-sat)
(exit)
