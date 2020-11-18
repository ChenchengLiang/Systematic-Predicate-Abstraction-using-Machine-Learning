(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |INV2| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (= D A) (= C 0) (not (>= D 1)) (= E B))
      )
      (INV2 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (INV2 A D E)
        (and (= H I)
     (= F G)
     (= E (+ (- 1) C))
     (>= A 1)
     (>= D 1)
     (not (>= F 1))
     (= D (+ 1 B)))
      )
      (INV2 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV2 A D C)
        (and (= E F) (= D (+ 1 B)) (not (>= A 1)) (not (>= E 1)) (>= D 1) (= G H))
      )
      (INV2 A B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) (v_8 Int) (v_9 Int) ) 
    (=>
      (and
        (and (= F 0)
     (= C 0)
     (= B E)
     (>= A 1)
     (= A D)
     (= v_6 A)
     (= v_7 B)
     (= v_8 D)
     (= v_9 E))
      )
      (INV1 A B C D E F v_6 v_7 v_8 v_9)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 A K L D E F G H I J)
        (and (= L (+ (- 1) C))
     (= K (+ 1 B))
     (= H J)
     (not (>= E 1))
     (>= G 1)
     (>= K 1)
     (= G I))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (INV1 A K L D M F G H I J)
        (and (= G I)
     (= M (+ 1 E))
     (= L (+ (- 1) C))
     (= K (+ 1 B))
     (not (>= D 1))
     (>= G 1)
     (>= M 1)
     (>= K 1)
     (= H J))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (INV1 A K L D M N G H I J)
        (and (= H J)
     (= N (+ (- 1) F))
     (= M (+ 1 E))
     (= L (+ (- 1) C))
     (= K (+ 1 B))
     (>= D 1)
     (>= G 1)
     (>= M 1)
     (>= K 1)
     (= G I))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (INV1 A B C D K F G H I J)
        (and (= H J)
     (= G I)
     (not (>= B 1))
     (not (>= D 1))
     (>= K 1)
     (>= G 1)
     (= K (+ 1 E)))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 A B C D K L G H I J)
        (and (= L (+ (- 1) F))
     (= K (+ 1 E))
     (= H J)
     (not (>= B 1))
     (>= D 1)
     (>= G 1)
     (>= K 1)
     (= G I))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (INV2 C B A)
        (and (= F G) (= D E) (not (>= B 1)) (not (>= D 1)) (not (= A 0)))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 E C A F D B G H I J)
        (and (= H J) (= G I) (not (>= C 1)) (not (>= D 1)) (>= G 1) (not (= A B)))
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
