(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (INV1 G H I J A C D K L M)
        (and (= (+ C D) E)
     (= M (+ (- 1) L))
     (= A (+ 1 B))
     (not (>= G 1))
     (>= A 1)
     (= (+ C D) F))
      )
      (INV1 G H I J B D E F L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (INV1 A C D M G I J N O P)
        (and (= (+ C D) E)
     (= (+ I J) L)
     (= (+ I J) K)
     (= A (+ 1 B))
     (= P (+ (- 1) O))
     (= G (+ 1 H))
     (>= A 1)
     (>= G 1)
     (= (+ C D) F))
      )
      (INV1 B D E F H J K L O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (INV1 A C D H G I J K L M)
        (and (= (+ C D) E)
     (= M (+ (- 1) L))
     (= A (+ 1 B))
     (not (>= G 1))
     (>= A 1)
     (= (+ C D) F))
      )
      (INV1 B D E F G I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (v_8 Int) (v_9 Int) ) 
    (=>
      (and
        (and (= F 0)
     (= E 1)
     (= D 1)
     (= C 0)
     (= B 1)
     (= A 0)
     (= G (+ (- 1) H))
     (= v_8 H)
     (= v_9 G))
      )
      (INV1 H A B C G D E F v_8 v_9)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 C E A F D G B H I J)
        (and (not (= A B)) (not (>= D 1)) (not (>= C 1)) (= J (+ (- 1) I)))
      )
      false
    )
  )
)

(check-sat)
(exit)
