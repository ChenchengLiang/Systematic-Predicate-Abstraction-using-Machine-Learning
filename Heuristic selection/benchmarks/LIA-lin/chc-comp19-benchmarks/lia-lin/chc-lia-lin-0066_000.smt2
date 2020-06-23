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
        (INV3 E F H G A C I J)
        (and (= C (+ (- 2) D))
     (= A (+ (- 1) B))
     (>= (+ G (* (- 1) A)) 1)
     (not (>= E F))
     (<= J 0)
     (not (<= I 0))
     (= I J))
      )
      (INV3 E F H G B D I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV3 I A C J E G K L)
        (and (= K L)
     (= G (+ (- 2) H))
     (= E (+ (- 1) F))
     (= C (+ (- 2) D))
     (>= (+ J (* (- 1) E)) 1)
     (>= I A)
     (<= L 0)
     (not (<= K 0))
     (= A (+ (- 1) B)))
      )
      (INV3 I B D J F H K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV3 E A C F G H I J)
        (let ((a!1 (not (>= (+ F (* (- 1) G)) 1))))
  (and (= C (+ (- 2) D))
       (= A (+ (- 1) B))
       a!1
       (>= E A)
       (<= J 0)
       (not (<= I 0))
       (= I J)))
      )
      (INV3 E B D F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Int) ) 
    (=>
      (and
        (and (= E 2)
     (= D 1)
     (= C 1)
     (= B 0)
     (= A 1)
     (not (<= G 0))
     (<= F 0)
     (= G F)
     (= v_7 G))
      )
      (INV3 G A B C D E v_7 F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV4 E F H G A C I J)
        (and (= C (+ (- 2) D))
     (= A (+ (- 1) B))
     (>= (+ G (* (- 1) A)) 1)
     (not (>= E F))
     (not (<= J 0))
     (not (<= I 0))
     (= I J))
      )
      (INV4 E F H G B D I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV4 I A C J E G K L)
        (and (= K L)
     (= G (+ (- 2) H))
     (= E (+ (- 1) F))
     (= C (+ (- 2) D))
     (>= (+ J (* (- 1) E)) 1)
     (>= I A)
     (not (<= L 0))
     (not (<= K 0))
     (= A (+ (- 1) B)))
      )
      (INV4 I B D J F H K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV4 E A C F G H I J)
        (let ((a!1 (not (>= (+ F (* (- 1) G)) 1))))
  (and (= C (+ (- 2) D))
       (= A (+ (- 1) B))
       a!1
       (>= E A)
       (not (<= J 0))
       (not (<= I 0))
       (= I J)))
      )
      (INV4 E B D F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (v_6 Int) (v_7 Int) ) 
    (=>
      (and
        (and (= D 2)
     (= C 1)
     (= B 0)
     (= A 1)
     (not (<= F 0))
     (not (<= E 0))
     (= F E)
     (= v_6 F)
     (= v_7 E))
      )
      (INV4 F A B E C D v_6 v_7)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 E F H G A C I J)
        (and (= C (+ (- 2) D))
     (= A (+ (- 1) B))
     (>= (+ G (* (- 1) A)) 1)
     (not (>= E F))
     (<= J 0)
     (<= I 0)
     (= I J))
      )
      (INV1 E F H G B D I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 I A C J E G K L)
        (and (= K L)
     (= G (+ (- 2) H))
     (= E (+ (- 1) F))
     (= C (+ (- 2) D))
     (>= (+ J (* (- 1) E)) 1)
     (>= I A)
     (<= L 0)
     (<= K 0)
     (= A (+ (- 1) B)))
      )
      (INV1 I B D J F H K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 E A C F G H I J)
        (let ((a!1 (not (>= (+ F (* (- 1) G)) 1))))
  (and (= C (+ (- 2) D))
       (= A (+ (- 1) B))
       a!1
       (>= E A)
       (<= J 0)
       (<= I 0)
       (= I J)))
      )
      (INV1 E B D F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (and (= F 2) (= E 1) (= D 1) (= C 0) (= B 1) (= A 1) (<= H 0) (<= G 0) (= H G))
      )
      (INV1 A B C D E F H G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV2 E F H G A C I J)
        (and (= C (+ (- 2) D))
     (= A (+ (- 1) B))
     (>= (+ G (* (- 1) A)) 1)
     (not (>= E F))
     (not (<= J 0))
     (<= I 0)
     (= I J))
      )
      (INV2 E F H G B D I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV2 I A C J E G K L)
        (and (= K L)
     (= G (+ (- 2) H))
     (= E (+ (- 1) F))
     (= C (+ (- 2) D))
     (>= (+ J (* (- 1) E)) 1)
     (>= I A)
     (not (<= L 0))
     (<= K 0)
     (= A (+ (- 1) B)))
      )
      (INV2 I B D J F H K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV2 E A C F G H I J)
        (let ((a!1 (not (>= (+ F (* (- 1) G)) 1))))
  (and (= C (+ (- 2) D))
       (= A (+ (- 1) B))
       a!1
       (>= E A)
       (not (<= J 0))
       (<= I 0)
       (= I J)))
      )
      (INV2 E B D F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Int) ) 
    (=>
      (and
        (and (= E 2)
     (= D 1)
     (= C 0)
     (= B 1)
     (= A 1)
     (<= G 0)
     (not (<= F 0))
     (= G F)
     (= v_7 F))
      )
      (INV2 A B C F D E G v_7)
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
