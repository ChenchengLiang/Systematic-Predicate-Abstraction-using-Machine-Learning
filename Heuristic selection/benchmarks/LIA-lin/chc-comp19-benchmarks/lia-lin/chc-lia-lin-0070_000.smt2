(set-logic HORN)

(declare-fun |ULTIMATE.start_L16| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L4| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L13-2| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L6| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L21| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startENTRY| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startFINAL| ( Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startEXIT| ( Int Int Int Int Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startENTRY A F G H E)
        (or E (= C 0))
      )
      (ULTIMATE.start_L4 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L4 A B C D E)
        (= E true)
      )
      (ULTIMATE.start_L13-2 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L4 A B C D E)
        (or E (<= 5 C))
      )
      (ULTIMATE.start_L13-2 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (ULTIMATE.start_L4 A B F G E)
        (or E (and (not (<= 5 F)) (= F (+ (- 1) C))))
      )
      (ULTIMATE.start_L16 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (ULTIMATE.start_L13-2 A F C D E)
        (or E (= B 0))
      )
      (ULTIMATE.start_L21 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L16 A B C D E)
        (or E (not (= 3 C)))
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
        (or E (= 3 C))
      )
      (ULTIMATE.start_L6 A B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (ULTIMATE.start_L21 F B C D E)
        (or E (= A B))
      )
      (ULTIMATE.start_ULTIMATE.startFINAL A B C D E)
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
