(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (INV1 A B C D K L F M I J)
        (and (= (+ L F) G)
     (= K (+ 1 E))
     (= J (+ (- 1) I))
     (>= K 1)
     (not (>= A 1))
     (= (+ L F) H))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (INV1 K L B O M N F P I J)
        (and (= (+ N F) G)
     (= (+ L B) C)
     (= (+ L B) D)
     (= M (+ 1 E))
     (= K (+ 1 A))
     (= J (+ (- 1) I))
     (>= M 1)
     (>= K 1)
     (= (+ N F) H))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (INV1 K L B M E F G H I J)
        (and (= (+ L B) C)
     (= K (+ 1 A))
     (= J (+ (- 1) I))
     (>= K 1)
     (not (>= E 1))
     (= (+ L B) D))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (v_8 Int) (v_9 Int) ) 
    (=>
      (and
        (and (= G 1)
     (= F 1)
     (= E (+ (- 1) A))
     (= D 0)
     (= C 1)
     (= B 0)
     (= H 0)
     (= v_8 A)
     (= v_9 E))
      )
      (INV1 A B C D E F G H v_8 v_9)
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
