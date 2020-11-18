(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (INV1 A B C D E F G K M L)
        (let ((a!1 (not (>= (+ A (* (- 1) C)) 1))))
  (and (= P Q)
       (= N O)
       (= K 10)
       (= K (+ (- 1) H))
       (= I 10)
       (>= (+ F (* (- 1) K)) 1)
       a!1
       (= (+ L M) J)))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (INV1 A B C D E F G K L M)
        (let ((a!1 (not (>= (+ A (* (- 1) C)) 1))))
  (and (= P Q)
       (= N O)
       (= L (+ (- 5) I))
       (not (= K 10))
       (= K (+ (- 1) H))
       (>= (+ F (* (- 1) K)) 1)
       a!1
       (= (+ M L) J)))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (INV1 A B K P L F G M O N)
        (and (= (+ (* 5 K) B) D)
     (= (+ N O) J)
     (= S T)
     (= Q R)
     (= M 10)
     (= M (+ (- 1) H))
     (= K (+ (- 1) C))
     (= I 10)
     (>= (+ A (* (- 1) K)) 1)
     (>= (+ F (* (- 1) M)) 1)
     (= (+ L (* 5 K) B) E))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (INV1 A B K P L F G M N O)
        (and (= (+ (* 5 K) B) D)
     (= (+ O N) J)
     (= S T)
     (= Q R)
     (= N (+ (- 5) I))
     (not (= M 10))
     (= M (+ (- 1) H))
     (= K (+ (- 1) C))
     (>= (+ A (* (- 1) K)) 1)
     (>= (+ F (* (- 1) M)) 1)
     (= (+ L (* 5 K) B) E))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (INV1 A B K M L F G H I J)
        (let ((a!1 (not (>= (+ F (* (- 1) H)) 1))))
  (and (= (+ (* 5 K) B) D)
       (= P Q)
       (= N O)
       (= K (+ (- 1) C))
       a!1
       (>= (+ A (* (- 1) K)) 1)
       (= (+ L (* 5 K) B) E)))
      )
      (INV1 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (v_9 Int) ) 
    (=>
      (and
        (and (= H 0) (= E 0) (= D 0) (= C 0) (= B G) (= A F) (= I 0) (= v_9 G))
      )
      (INV1 A B C D E F G H v_9 I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (INV1 C G D H A E I F J B)
        (let ((a!1 (not (>= (+ E (* (- 1) F)) 1))) (a!2 (not (>= (+ C (* (- 1) D)) 1))))
  (and (= K L) (not (= A B)) a!1 a!2 (= M N)))
      )
      false
    )
  )
)

(check-sat)
(exit)
