(set-logic HORN)

(declare-fun |ULTIMATE.start_L24-2| ( Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startENTRY| ( Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startEXIT| ( Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L18| ( Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L4| ( Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startFINAL| ( Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L6| ( Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L32| ( Int Int Int Int Int Int Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startENTRY A H C I J F G)
        (or G (= D 0))
      )
      (ULTIMATE.start_L4 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L4 A B C D E F G)
        (= G true)
      )
      (ULTIMATE.start_L24-2 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L4 A B C D E F G)
        (or G (<= 5 D))
      )
      (ULTIMATE.start_L24-2 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (ULTIMATE.start_L4 A B H I J K G)
        (let ((a!1 (and (not (<= 5 I))
                (= C (ite (= 3 D) 0 1))
                (= F C)
                (= I (+ (- 1) D)))))
  (or G a!1))
      )
      (ULTIMATE.start_L18 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (ULTIMATE.start_L24-2 A H C D E F G)
        (or G (= B 0))
      )
      (ULTIMATE.start_L32 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L18 A B C D E F G)
        (or G (not (= F 0)))
      )
      (ULTIMATE.start_L4 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L18 A B C D E F G)
        (or G (= F 0))
      )
      (ULTIMATE.start_L6 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (ULTIMATE.start_L32 H B C D E F G)
        (or G (= A B))
      )
      (ULTIMATE.start_ULTIMATE.startFINAL A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L6 A B C D E F H)
        (= G true)
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L6 A B C D E F G)
        (= G true)
      )
      (ULTIMATE.start_L4 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startFINAL A B C D E F G)
        true
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (not G)
      )
      (ULTIMATE.start_ULTIMATE.startENTRY A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startEXIT A B C D E F G)
        (= G true)
      )
      false
    )
  )
)

(check-sat)
(exit)
