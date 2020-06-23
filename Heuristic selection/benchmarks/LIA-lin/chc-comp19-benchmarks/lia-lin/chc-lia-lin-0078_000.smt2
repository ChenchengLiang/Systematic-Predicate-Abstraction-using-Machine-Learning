(set-logic HORN)

(declare-fun |ULTIMATE.start_L19| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L16| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L4| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L6-1| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L18| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L6| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L4-1| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startENTRY| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startFINAL| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startEXIT| ( Int Int Int Int Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startENTRY F B G H E)
        (or E (= D 0))
      )
      (ULTIMATE.start_L16 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L16 A B C D E)
        (or E (= 0 D))
      )
      (ULTIMATE.start_L4 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L16 A B C D E)
        (or E (not (= 0 D)))
      )
      (ULTIMATE.start_L6 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (ULTIMATE.start_L4 F B C D E)
        (or E (= A D))
      )
      (ULTIMATE.start_L18 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L6 A B C D F)
        (= E true)
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L6 A B C D E)
        (= E true)
      )
      (ULTIMATE.start_L4 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L18 A B C D E)
        (or E (= 0 A))
      )
      (ULTIMATE.start_L4-1 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L18 A B C D E)
        (or E (not (= 0 A)))
      )
      (ULTIMATE.start_L6-1 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (ULTIMATE.start_L4-1 A B F D E)
        (or E (= C 0))
      )
      (ULTIMATE.start_L19 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L6-1 A B C D F)
        (= E true)
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L6-1 A B C D E)
        (= E true)
      )
      (ULTIMATE.start_L4-1 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (ULTIMATE.start_L19 A F C D E)
        (or E (= B C))
      )
      (ULTIMATE.start_ULTIMATE.startFINAL A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startFINAL A B C D E)
        true
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (not E)
      )
      (ULTIMATE.start_ULTIMATE.startENTRY A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startEXIT A B C D E)
        (= E true)
      )
      false
    )
  )
)

(check-sat)
(exit)
