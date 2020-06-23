(set-logic HORN)

(declare-fun |INV2| ( Int Int Int Int Int Int ) Bool)
(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |INV3| ( Int Int Int Int Int Int ) Bool)
(declare-fun |INV4| ( Int Int Int Int Int Int ) Bool)
(declare-fun |INV1| ( Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV3 A B C D G H)
        (and (= H (+ (- 2) F))
     (= G (+ (- 1) E))
     (>= (+ D (* (- 1) G)) 1)
     (not (>= A B))
     (not (<= J 0))
     (<= I 0)
     (= J I))
      )
      (INV3 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV3 A G H D I J)
        (and (= J (+ (- 2) F))
     (= I (+ (- 1) E))
     (= H (+ (- 2) C))
     (= G (+ (- 1) B))
     (>= (+ D (* (- 1) I)) 1)
     (>= A G)
     (not (<= L 0))
     (<= K 0)
     (= L K))
      )
      (INV3 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV3 A G H D E F)
        (let ((a!1 (not (>= (+ D (* (- 1) E)) 1))))
  (and (= H (+ (- 2) C))
       (= G (+ (- 1) B))
       a!1
       (>= A G)
       (not (<= J 0))
       (<= I 0)
       (= J I)))
      )
      (INV3 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (and (= E 1) (= D 1) (= C 0) (= B 1) (= A G) (<= G 0) (not (<= A 0)) (= F 2))
      )
      (INV3 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV4 A B C D G H)
        (and (= H (+ (- 2) F))
     (= G (+ (- 1) E))
     (>= (+ D (* (- 1) G)) 1)
     (not (>= A B))
     (not (<= J 0))
     (not (<= I 0))
     (= J I))
      )
      (INV4 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV4 A G H D I J)
        (and (= J (+ (- 2) F))
     (= I (+ (- 1) E))
     (= H (+ (- 2) C))
     (= G (+ (- 1) B))
     (>= (+ D (* (- 1) I)) 1)
     (>= A G)
     (not (<= L 0))
     (not (<= K 0))
     (= L K))
      )
      (INV4 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV4 A G H D E F)
        (let ((a!1 (not (>= (+ D (* (- 1) E)) 1))))
  (and (= H (+ (- 2) C))
       (= G (+ (- 1) B))
       a!1
       (>= A G)
       (not (<= J 0))
       (not (<= I 0))
       (= J I)))
      )
      (INV4 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (and (= E 1) (= C 0) (= B 1) (= A D) (not (<= D 0)) (not (<= A 0)) (= F 2))
      )
      (INV4 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A B C D G H)
        (and (= H (+ (- 2) F))
     (= G (+ (- 1) E))
     (>= (+ D (* (- 1) G)) 1)
     (not (>= A B))
     (<= J 0)
     (<= I 0)
     (= J I))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 A G H D I J)
        (and (= J (+ (- 2) F))
     (= I (+ (- 1) E))
     (= H (+ (- 2) C))
     (= G (+ (- 1) B))
     (>= (+ D (* (- 1) I)) 1)
     (>= A G)
     (<= L 0)
     (<= K 0)
     (= L K))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV1 A G H D E F)
        (let ((a!1 (not (>= (+ D (* (- 1) E)) 1))))
  (and (= H (+ (- 2) C))
       (= G (+ (- 1) B))
       a!1
       (>= A G)
       (<= J 0)
       (<= I 0)
       (= J I)))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (and (= F 2) (= E 1) (= D 1) (= C 0) (= B 1) (= A 1) (<= H 0) (<= G 0) (= H G))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV2 A B C D G H)
        (and (= H (+ (- 2) F))
     (= G (+ (- 1) E))
     (>= (+ D (* (- 1) G)) 1)
     (not (>= A B))
     (<= J 0)
     (not (<= I 0))
     (= J I))
      )
      (INV2 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV2 A G H D I J)
        (and (= J (+ (- 2) F))
     (= I (+ (- 1) E))
     (= H (+ (- 2) C))
     (= G (+ (- 1) B))
     (>= (+ D (* (- 1) I)) 1)
     (>= A G)
     (<= L 0)
     (not (<= K 0))
     (= L K))
      )
      (INV2 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (INV2 A G H D E F)
        (let ((a!1 (not (>= (+ D (* (- 1) E)) 1))))
  (and (= H (+ (- 2) C))
       (= G (+ (- 1) B))
       a!1
       (>= A G)
       (<= J 0)
       (not (<= I 0))
       (= J I)))
      )
      (INV2 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (and (= F 2) (= E 1) (= C 0) (= B 1) (= A 1) (<= G 0) (not (<= D 0)) (= G D))
      )
      (INV2 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV3 C D A E F B)
        (let ((a!1 (not (>= (+ E (* (- 1) F)) 1))))
  (and (not (= A B)) a!1 (not (>= C D)) (not (<= H 0)) (<= G 0) (= H G)))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV4 C D A E F B)
        (let ((a!1 (not (>= (+ E (* (- 1) F)) 1))))
  (and (not (= A B)) a!1 (not (>= C D)) (not (<= H 0)) (not (<= G 0)) (= H G)))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV1 C D A E F B)
        (let ((a!1 (not (>= (+ E (* (- 1) F)) 1))))
  (and (not (= A B)) a!1 (not (>= C D)) (<= H 0) (<= G 0) (= H G)))
      )
      CHC_COMP_FALSE
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV2 C D A E F B)
        (let ((a!1 (not (>= (+ E (* (- 1) F)) 1))))
  (and (not (= A B)) a!1 (not (>= C D)) (<= H 0) (not (<= G 0)) (= H G)))
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
