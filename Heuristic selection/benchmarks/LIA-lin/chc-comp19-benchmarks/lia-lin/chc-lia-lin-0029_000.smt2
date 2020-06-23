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
        (h1 D E F G H I)
        (and (= B 0) (= A 0) (= C 100))
      )
      (h2 D E F A B C)
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
        (h6 C D E F A B)
        (<= (+ A (* (- 1) B)) (- 1))
      )
      (h7 C D E F A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (h7 E F G A C H)
        (and (= A (+ (- 2) B)) (= C (+ (- 1) D)))
      )
      (h8 E F G B D H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h6 C D E F A B)
        (>= (+ A (* (- 1) B)) 0)
      )
      (h9 C D E F A B)
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
        (h12 C D E A F B)
        (<= (+ A (* (- 2) B)) (- 1))
      )
      (h13 C D E A F B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (h12 C D E A F B)
        (>= (+ A (* (- 2) B)) 1)
      )
      (h14 C D E A F B)
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
