(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (INV1 A B C D I J F K)
        (and (= (+ J F) G)
     (= L (+ (- 1) M))
     (= I (+ 1 E))
     (>= I 1)
     (not (>= A 1))
     (= (+ J F) H))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (INV1 I J B M K L F N)
        (and (= (+ L F) G)
     (= (+ J B) C)
     (= (+ J B) D)
     (= O (+ (- 1) P))
     (= K (+ 1 E))
     (= I (+ 1 A))
     (>= K 1)
     (>= I 1)
     (= (+ L F) H))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (INV1 I J B K E F G H)
        (and (= (+ J B) C)
     (= L (+ (- 1) M))
     (= I (+ 1 A))
     (>= I 1)
     (not (>= E 1))
     (= (+ J B) D))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (and (= G 1) (= F 1) (= E (+ (- 1) A)) (= D 0) (= C 1) (= B 0) (= H 0))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 C E A F D G B H)
        (and (not (= A B)) (not (>= D 1)) (not (>= C 1)) (= I (+ (- 1) J)))
      )
      false
    )
  )
)

(check-sat)
(exit)
