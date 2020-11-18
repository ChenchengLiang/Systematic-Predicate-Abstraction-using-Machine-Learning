(set-logic HORN)

(declare-fun |ULTIMATE.start_L10| ( Int Int Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startENTRY| ( Int Int Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L-1| ( Int Int Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L6| ( Int Int Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startFINAL| ( Int Int Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L18| ( Int Int Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L8| ( Int Int Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_L24| ( Int Int Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |ULTIMATE.start_ULTIMATE.startEXIT| ( Int Int Int Int Int Int Int Int Int Int Bool ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startENTRY L B C D E F G H I J K)
        (or K (= A 0))
      )
      (ULTIMATE.start_L-1 A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (ULTIMATE.start_L-1 A B C L E M N O I P K)
        (or K (and (= H (- 3)) (= G H)))
      )
      (ULTIMATE.start_L18 A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (ULTIMATE.start_L18 A B C L E F G H I J K)
        (or K (and (not (<= 0 G)) (= D (* (- 1) G))))
      )
      (ULTIMATE.start_L24 A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (ULTIMATE.start_L18 A B C L E F G H I J K)
        (or K (and (<= 0 G) (= D G)))
      )
      (ULTIMATE.start_L24 A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (ULTIMATE.start_L24 L B C D M F G H N O K)
        (let ((a!1 (and (<= D 2147483647)
                (<= (- 2147483648) D)
                (= E I)
                (= I (ite (<= 0 A) 1 0))
                (= D A))))
  (or K a!1))
      )
      (ULTIMATE.start_L8 A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L8 A B C D E F G H I J K)
        (or K (= E 0))
      )
      (ULTIMATE.start_L10 A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L8 A B C D E F G H I J K)
        (or K (not (= E 0)))
      )
      (ULTIMATE.start_L6 A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L10 A B C D E F G H I J L)
        (= K true)
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (ULTIMATE.start_L10 A B C D E F G H I J K)
        (= K true)
      )
      (ULTIMATE.start_L6 A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (ULTIMATE.start_L6 A B L D E F G H I J K)
        (or K (= C F))
      )
      (ULTIMATE.start_ULTIMATE.startFINAL A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startFINAL A B C D E F G H I J K)
        true
      )
      (ULTIMATE.start_ULTIMATE.startEXIT A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (and (not K) (= A B))
      )
      (ULTIMATE.start_ULTIMATE.startENTRY A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (ULTIMATE.start_ULTIMATE.startEXIT A B C D E F G H I J K)
        (= K true)
      )
      false
    )
  )
)

(check-sat)
(exit)
