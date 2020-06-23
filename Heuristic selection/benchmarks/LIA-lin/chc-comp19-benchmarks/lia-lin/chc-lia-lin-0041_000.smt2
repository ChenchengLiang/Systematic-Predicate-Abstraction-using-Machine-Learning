(set-logic HORN)

(declare-fun |ULTIMATE.start_L8| ( Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L7| ( Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L7-2| ( Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L10| ( Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startENTRY| ( Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startFINAL| ( Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startEXIT| ( Int Int Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startENTRY A D C)
        true
      )
      (ULTIMATE.start_L7 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L7 A B C)
        (= C true)
      )
      (ULTIMATE.start_L8 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L7 A B C)
        true
      )
      (ULTIMATE.start_L7-2 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L8 A B D)
        (= C true)
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L8 A B C)
        (= C true)
      )
      (ULTIMATE.start_L7-2 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (ULTIMATE.start_L7-2 A D C)
        (or C (= B 0))
      )
      (ULTIMATE.start_L10 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (ULTIMATE.start_L10 D B C)
        (or C (= A B))
      )
      (ULTIMATE.start_ULTIMATE.startFINAL A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startFINAL A B C)
        true
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (not C)
      )
      (ULTIMATE.start_ULTIMATE.startENTRY A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startEXIT A B C)
        (= C true)
      )
      false
    )
  )
)

(check-sat)
(exit)
