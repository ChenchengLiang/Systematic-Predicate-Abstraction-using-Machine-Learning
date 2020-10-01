(set-logic HORN)

(declare-fun |h11| ( Int Int Int Int ) Bool)
(declare-fun |h17| ( Int Int Int Int ) Bool)
(declare-fun |h5| ( Int Int Int Int ) Bool)
(declare-fun |h14| ( Int Int Int Int ) Bool)
(declare-fun |h3| ( Int Int Int Int ) Bool)
(declare-fun |h8| ( Int Int Int Int ) Bool)
(declare-fun |h10| ( Int Int Int Int ) Bool)
(declare-fun |h7| ( Int Int Int Int ) Bool)
(declare-fun |h6| ( Int Int Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |h9| ( Int Int Int Int ) Bool)
(declare-fun |h12| ( Int Int Int Int ) Bool)
(declare-fun |h4| ( Int Int Int Int ) Bool)
(declare-fun |h18| ( Int Int Int Int ) Bool)
(declare-fun |h2| ( Int Int Int Int ) Bool)
(declare-fun |h13| ( Int Int Int Int ) Bool)
(declare-fun |h1| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Int) (v_3 Int) ) 
    (=>
      (and
        (and true (= v_2 A) (= v_3 B))
      )
      (h1 A B v_2 v_3)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (h1 A B C E)
        (= D 0)
      )
      (h2 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h2 A B C D)
        true
      )
      (h3 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h3 A B C D)
        true
      )
      (h4 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h4 A B C D)
        true
      )
      (h5 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h5 A B C D)
        true
      )
      (h6 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h6 A B C D)
        (>= (+ C (* (- 1) D)) 1)
      )
      (h7 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (h7 A B C E)
        (= E (+ (- 1) D))
      )
      (h8 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h6 A B C D)
        (<= (+ C (* (- 1) D)) 0)
      )
      (h9 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h9 A B C D)
        true
      )
      (h10 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h10 A B C D)
        true
      )
      (h11 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h8 A B C D)
        true
      )
      (h5 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h11 A B C D)
        true
      )
      (h12 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h12 A B C D)
        (>= C 1)
      )
      (h13 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h13 A B C D)
        true
      )
      (h14 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h14 A B C D)
        (>= (+ C (* (- 1) D)) 1)
      )
      (h17 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h14 A B C D)
        (<= (+ C (* (- 1) D)) (- 1))
      )
      (h18 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h17 A B C D)
        true
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (h18 A B C D)
        true
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
