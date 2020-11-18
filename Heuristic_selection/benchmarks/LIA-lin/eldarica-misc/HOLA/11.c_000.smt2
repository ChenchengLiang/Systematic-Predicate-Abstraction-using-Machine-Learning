(set-logic HORN)

(declare-fun |h2| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h3| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h12| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h14| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h1| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h11| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h5| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h7| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h8| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h9| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h13| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h6| ( Int Int Int Int Int Int ) Bool)
(declare-fun |h4| ( Int Int Int Int Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |h10| ( Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) (v_4 Int) (v_5 Int) ) 
    (=>
      (and
        (and true (= v_3 A) (= v_4 B) (= v_5 C))
      )
      (h1 A B C v_3 v_4 v_5)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (h1 A B C G H I)
        (and (= E 0) (= D 0) (= F 100))
      )
      (h2 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h2 A B C D E F)
        true
      )
      (h3 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h3 A B C D E F)
        true
      )
      (h4 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h4 A B C D E F)
        true
      )
      (h5 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h5 A B C D E F)
        true
      )
      (h6 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h6 A B C D E F)
        (<= (+ E (* (- 1) F)) (- 1))
      )
      (h7 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (h7 A B C G H F)
        (and (= G (+ (- 2) D)) (= H (+ (- 1) E)))
      )
      (h8 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h6 A B C D E F)
        (>= (+ E (* (- 1) F)) 0)
      )
      (h9 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h9 A B C D E F)
        true
      )
      (h10 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h10 A B C D E F)
        true
      )
      (h11 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h8 A B C D E F)
        true
      )
      (h5 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h11 A B C D E F)
        true
      )
      (h12 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h12 A B C D E F)
        (<= (+ D (* (- 2) F)) (- 1))
      )
      (h13 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h12 A B C D E F)
        (>= (+ D (* (- 2) F)) 1)
      )
      (h14 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h13 A B C D E F)
        true
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h14 A B C D E F)
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
