(set-logic HORN)

(declare-fun |inv_main5| ( Int Int Int ) Bool)
(declare-fun |inv_main11| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main8| ( Int Int Int Int Int ) Bool)
(declare-fun |inv_main12| ( Int Int Int Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |inv_main15| ( Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (v_1 Int) (v_2 Int) ) 
    (=>
      (and
        (and true (= 0 v_1) (= 0 v_2))
      )
      (inv_main5 A v_1 v_2)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main8 A B C E D)
        (not (<= 0 E))
      )
      (inv_main12 A B C E D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main15 A B C E D)
        true
      )
      (inv_main8 A B C E D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main8 C D E G F)
        (and (= B (+ (- 1) G)) (<= 0 G) (= A (+ 1 F)))
      )
      (inv_main15 C D E B A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main11 A B C E D)
        (not (<= 0 (+ A (* (- 1) B))))
      )
      (inv_main8 A B C E D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (inv_main11 C D E G F)
        (and (= B (+ 1 D)) (<= 0 (+ C (* (- 1) D))) (= A (+ 1 E)))
      )
      (inv_main11 C B A G F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) ) 
    (=>
      (and
        (inv_main5 A B C)
        (let ((a!1 (not (<= 0 (+ A (* (- 1) B))))))
  (and a!1 (= v_3 A) (= 0 v_4)))
      )
      (inv_main8 A B C v_3 v_4)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Int) (v_6 Int) ) 
    (=>
      (and
        (inv_main5 C D E)
        (and (= A (+ 1 E)) (<= 0 (+ C (* (- 1) D))) (= B (+ 1 D)) (= v_5 C) (= 0 v_6))
      )
      (inv_main11 C B A v_5 v_6)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main11 A B C E D)
        (not (= B C))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main15 A B C E D)
        (not (= (+ E D) A))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (inv_main12 A B C E D)
        (not (= C D))
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
