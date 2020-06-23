(set-logic HORN)

(declare-fun |ULTIMATE.start_ULTIMATE.startFINAL| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L-1| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startEXIT| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L29| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L5| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startENTRY| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L7| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L23| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L17| ( Int Int Int Int Int Int Int Int Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startENTRY J B C D E F G H I)
        (or I (= A 0))
      )
      (ULTIMATE.start_L-1 A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (ULTIMATE.start_L-1 A B C J K L M N I)
        (or I (and (= F G) (= G (- 3))))
      )
      (ULTIMATE.start_L17 A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (ULTIMATE.start_L17 A B C J E F G H I)
        (or I (and (not (<= 0 F)) (= D (* (- 1) F))))
      )
      (ULTIMATE.start_L23 A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (ULTIMATE.start_L17 A B C J E F G H I)
        (or I (and (<= 0 F) (= D F)))
      )
      (ULTIMATE.start_L23 A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) ) 
    (=>
      (and
        (ULTIMATE.start_L23 J B C D E F G K I)
        (or I (and (<= D 2147483647) (<= (- 2147483648) D) (= D A)))
      )
      (ULTIMATE.start_L29 A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L29 A B C D E F G H I)
        (or I (<= 0 A))
      )
      (ULTIMATE.start_L5 A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L29 A B C D E F G H I)
        (or I (not (<= 0 A)))
      )
      (ULTIMATE.start_L7 A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (ULTIMATE.start_L5 A B J D E F G H I)
        (or I (= C E))
      )
      (ULTIMATE.start_ULTIMATE.startFINAL A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L7 A B C D E F G H J)
        (= I true)
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L7 A B C D E F G H I)
        (= I true)
      )
      (ULTIMATE.start_L5 A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startFINAL A B C D E F G H I)
        true
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (and (not I) (= A B))
      )
      (ULTIMATE.start_ULTIMATE.startENTRY A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startEXIT A B C D E F G H I)
        (= I true)
      )
      false
    )
  )
)

(check-sat)
(exit)
