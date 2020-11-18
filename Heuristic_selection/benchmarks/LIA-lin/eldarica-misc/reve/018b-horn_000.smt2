(set-logic HORN)

(declare-fun |INV3| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |INV2| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |INV4| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |INV1| ( Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV3 A B C D I J G H)
        (and (= I (+ (- 1) E))
     (= G H)
     (>= (+ D (* (- 1) I)) 1)
     (not (>= A B))
     (<= H 0)
     (not (<= G 0))
     (= J (+ (- 2) F)))
      )
      (INV3 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV3 A I J D K L G H)
        (and (= K (+ (- 1) E))
     (= J (+ (- 2) C))
     (= I (+ (- 1) B))
     (= G H)
     (>= (+ D (* (- 1) K)) 1)
     (>= A I)
     (<= H 0)
     (not (<= G 0))
     (= L (+ (- 2) F)))
      )
      (INV3 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV3 A I J D E F G H)
        (let ((a!1 (not (>= (+ D (* (- 1) E)) 1))))
  (and (= I (+ (- 1) B))
       (= G H)
       a!1
       (>= A I)
       (<= H 0)
       (not (<= G 0))
       (= J (+ (- 2) C))))
      )
      (INV3 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Int) ) 
    (=>
      (and
        (and (= E 1)
     (= D 1)
     (= C 0)
     (= B 1)
     (= A G)
     (<= G 0)
     (not (<= A 0))
     (= F 2)
     (= v_7 A))
      )
      (INV3 A B C D E F v_7 G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV4 A B C D I J G H)
        (and (= I (+ (- 1) E))
     (= G H)
     (>= (+ D (* (- 1) I)) 1)
     (not (>= A B))
     (not (<= H 0))
     (not (<= G 0))
     (= J (+ (- 2) F)))
      )
      (INV4 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV4 A I J D K L G H)
        (and (= K (+ (- 1) E))
     (= J (+ (- 2) C))
     (= I (+ (- 1) B))
     (= G H)
     (>= (+ D (* (- 1) K)) 1)
     (>= A I)
     (not (<= H 0))
     (not (<= G 0))
     (= L (+ (- 2) F)))
      )
      (INV4 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV4 A I J D E F G H)
        (let ((a!1 (not (>= (+ D (* (- 1) E)) 1))))
  (and (= I (+ (- 1) B))
       (= G H)
       a!1
       (>= A I)
       (not (<= H 0))
       (not (<= G 0))
       (= J (+ (- 2) C))))
      )
      (INV4 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (and (= E 1)
     (= C 0)
     (= B 1)
     (= A D)
     (not (<= D 0))
     (not (<= A 0))
     (= F 2)
     (= v_6 A)
     (= v_7 D))
      )
      (INV4 A B C D E F v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A B C D I J G H)
        (and (= I (+ (- 1) E))
     (= G H)
     (>= (+ D (* (- 1) I)) 1)
     (not (>= A B))
     (<= H 0)
     (<= G 0)
     (= J (+ (- 2) F)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 A I J D K L G H)
        (and (= K (+ (- 1) E))
     (= J (+ (- 2) C))
     (= I (+ (- 1) B))
     (= G H)
     (>= (+ D (* (- 1) K)) 1)
     (>= A I)
     (<= H 0)
     (<= G 0)
     (= L (+ (- 2) F)))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A I J D E F G H)
        (let ((a!1 (not (>= (+ D (* (- 1) E)) 1))))
  (and (= I (+ (- 1) B))
       (= G H)
       a!1
       (>= A I)
       (<= H 0)
       (<= G 0)
       (= J (+ (- 2) C))))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (and (= F 2) (= E 1) (= D 1) (= C 0) (= B 1) (= A 1) (<= H 0) (<= G 0) (= G H))
      )
      (INV1 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV2 A B C D I J G H)
        (and (= I (+ (- 1) E))
     (= G H)
     (>= (+ D (* (- 1) I)) 1)
     (not (>= A B))
     (not (<= H 0))
     (<= G 0)
     (= J (+ (- 2) F)))
      )
      (INV2 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV2 A I J D K L G H)
        (and (= K (+ (- 1) E))
     (= J (+ (- 2) C))
     (= I (+ (- 1) B))
     (= G H)
     (>= (+ D (* (- 1) K)) 1)
     (>= A I)
     (not (<= H 0))
     (<= G 0)
     (= L (+ (- 2) F)))
      )
      (INV2 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV2 A I J D E F G H)
        (let ((a!1 (not (>= (+ D (* (- 1) E)) 1))))
  (and (= I (+ (- 1) B))
       (= G H)
       a!1
       (>= A I)
       (not (<= H 0))
       (<= G 0)
       (= J (+ (- 2) C))))
      )
      (INV2 A B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Int) ) 
    (=>
      (and
        (and (= F 2)
     (= E 1)
     (= C 0)
     (= B 1)
     (= A 1)
     (<= G 0)
     (not (<= D 0))
     (= G D)
     (= v_7 D))
      )
      (INV2 A B C D E F G v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV3 C D A E F B G H)
        (let ((a!1 (not (>= (+ E (* (- 1) F)) 1))))
  (and (not (= A B)) a!1 (not (>= C D)) (<= H 0) (not (<= G 0)) (= G H)))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV4 C D A E F B G H)
        (let ((a!1 (not (>= (+ E (* (- 1) F)) 1))))
  (and (not (= A B)) a!1 (not (>= C D)) (not (<= H 0)) (not (<= G 0)) (= G H)))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV1 C D A E F B G H)
        (let ((a!1 (not (>= (+ E (* (- 1) F)) 1))))
  (and (not (= A B)) a!1 (not (>= C D)) (<= H 0) (<= G 0) (= G H)))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV2 C D A E F B G H)
        (let ((a!1 (not (>= (+ E (* (- 1) F)) 1))))
  (and (not (= A B)) a!1 (not (>= C D)) (not (<= H 0)) (<= G 0) (= G H)))
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
