(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (v_9 Int) ) 
    (=>
      (and
        (INV1 A B C D H I F G)
        (and (= F G) (= E 0) (not (>= A 1)) (<= C 9) (not (= H 0)) (= v_9 D))
      )
      (INV1 A B C D E v_9 F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A B C D I J G H)
        (and (= G H)
     (= E 0)
     (= D (+ (- 2) F))
     (not (>= A 1))
     (not (<= C 99))
     (<= C 999)
     (not (<= C 9))
     (not (= I 0)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A B J I E F G H)
        (and (= G H)
     (not (= E 0))
     (>= (+ (* 10000 C) (* (- 1) J)) (- 9999))
     (>= (+ J (* (- 10000) C)) 0)
     (not (>= A 1))
     (not (<= J 9999))
     (not (<= J 99))
     (not (<= J 999))
     (not (<= J 9))
     (= I (+ (- 4) D)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A B C D I J G H)
        (and (= G H)
     (= E 0)
     (= D (+ (- 3) F))
     (not (>= A 1))
     (<= C 9999)
     (not (<= C 99))
     (not (<= C 999))
     (not (<= C 9))
     (not (= I 0)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A B C D I J G H)
        (and (= G H)
     (= E 0)
     (= D (+ (- 1) F))
     (not (>= A 1))
     (<= C 99)
     (not (<= C 9))
     (not (= I 0)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (v_11 Int) ) 
    (=>
      (and
        (INV1 I H C D J K F G)
        (and (= H (+ (- 1) B))
     (= F G)
     (= E 0)
     (>= (+ (* 10 A) (* (- 1) I)) (- 9))
     (>= (+ I (* (- 10) A)) 0)
     (>= I 1)
     (<= C 9)
     (not (= J 0))
     (= v_11 D))
      )
      (INV1 A B C D E v_11 F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 J I C D K L G H)
        (and (= I (+ (- 1) B))
     (= G H)
     (= E 0)
     (= D (+ (- 2) F))
     (>= (+ (* 10 A) (* (- 1) J)) (- 9))
     (>= (+ J (* (- 10) A)) 0)
     (>= J 1)
     (not (<= C 99))
     (<= C 999)
     (not (<= C 9))
     (not (= K 0)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 L I K J E F G H)
        (and (= I (+ (- 1) B))
     (= G H)
     (not (= E 0))
     (>= (+ (* 10000 C) (* (- 1) K)) (- 9999))
     (>= (+ (* 10 A) (* (- 1) L)) (- 9))
     (>= (+ L (* (- 10) A)) 0)
     (>= (+ K (* (- 10000) C)) 0)
     (>= L 1)
     (not (<= K 9999))
     (not (<= K 99))
     (not (<= K 999))
     (not (<= K 9))
     (= J (+ (- 4) D)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 J I C D K L G H)
        (and (= I (+ (- 1) B))
     (= G H)
     (= E 0)
     (= D (+ (- 3) F))
     (>= (+ (* 10 A) (* (- 1) J)) (- 9))
     (>= (+ J (* (- 10) A)) 0)
     (>= J 1)
     (<= C 9999)
     (not (<= C 99))
     (not (<= C 999))
     (not (<= C 9))
     (not (= K 0)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 J I C D K L G H)
        (and (= I (+ (- 1) B))
     (= G H)
     (= E 0)
     (= D (+ (- 1) F))
     (>= (+ (* 10 A) (* (- 1) J)) (- 9))
     (>= (+ J (* (- 10) A)) 0)
     (>= J 1)
     (<= C 99)
     (not (<= C 9))
     (not (= K 0)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 J I C D E F G H)
        (and (= G H)
     (= E 0)
     (>= (+ (* 10 A) (* (- 1) J)) (- 9))
     (>= (+ J (* (- 10) A)) 0)
     (>= J 1)
     (= I (+ (- 1) B)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Int) ) 
    (=>
      (and
        (and (= F (- 1))
     (= E 1)
     (= D 1)
     (= B 1)
     (>= (+ (* 10 A) (* (- 1) G)) (- 9))
     (>= (+ G (* (- 10) A)) 0)
     (= G C)
     (= v_7 C))
      )
      (INV1 A B C D E F G v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV1 C A E F D B G H)
        (and (= D 0) (not (= A B)) (not (>= C 1)) (= G H))
      )
      false
    )
  )
)

(check-sat)
(exit)
