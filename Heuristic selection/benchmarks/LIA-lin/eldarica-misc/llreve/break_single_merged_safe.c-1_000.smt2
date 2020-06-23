(set-logic HORN)

(declare-fun |inv_main11| ( Int Int Int ) Bool)
(declare-fun |inv_main4| ( Int Int ) Bool)
(declare-fun |inv_main10| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) ) 
    (=>
      (and
        (and true (= 0 v_1))
      )
      (inv_main4 A v_1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main10 B C A)
        (or (not (<= A 10)) (= A B))
      )
      (inv_main11 B C A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (inv_main10 C D B)
        (and (not (= B C)) (<= B 10) (= A (+ 1 B)))
      )
      (inv_main10 C D A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main4 B C)
        (and (not (= C B)) (<= C 10) (= A (+ 1 C)))
      )
      (inv_main4 B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) ) 
    (=>
      (and
        (inv_main4 A B)
        (and (not (<= B 10)) (= 0 v_2))
      )
      (inv_main10 A B v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Int) ) 
    (=>
      (and
        (inv_main4 A B)
        (and (<= B 10) (= B A) (= 0 v_2))
      )
      (inv_main10 A B v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (inv_main11 B C A)
        (not (= C A))
      )
      false
    )
  )
)

(check-sat)
(exit)
