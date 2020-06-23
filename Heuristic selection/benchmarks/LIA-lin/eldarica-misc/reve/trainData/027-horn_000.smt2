(set-logic HORN)

(declare-fun |CHC_COMP_FALSE| ( ) Bool)
(declare-fun |INV2| ( Int Int Int ) Bool)
(declare-fun |INV1| ( Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (and (= F 0) (= C 0) (= B E) (>= A 1) (= A D))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 A G H D E F)
        (and (= K L)
     (= I J)
     (= H (+ (- 1) C))
     (not (>= E 1))
     (>= G 1)
     (>= I 1)
     (= G (+ 1 B)))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (INV1 A G H D I F)
        (and (= G (+ 1 B))
     (= L M)
     (= J K)
     (= I (+ 1 E))
     (not (>= D 1))
     (>= G 1)
     (>= J 1)
     (>= I 1)
     (= H (+ (- 1) C)))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (INV1 A G H D I J)
        (and (= I (+ 1 E))
     (= H (+ (- 1) C))
     (= M N)
     (= K L)
     (= J (+ (- 1) F))
     (>= D 1)
     (>= G 1)
     (>= I 1)
     (>= K 1)
     (= G (+ 1 B)))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (INV1 A B C D G F)
        (and (= H I)
     (= G (+ 1 E))
     (not (>= B 1))
     (not (>= D 1))
     (>= H 1)
     (>= G 1)
     (= J K))
      )
      (INV1 A B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (INV1 A B C D G H)
        (and (= K L)
     (= I J)
     (= H (+ (- 1) F))
     (not (>= B 1))
     (>= D 1)
     (>= G 1)
     (>= I 1)
     (= G (+ 1 E)))
      )
      (INV1 A B C D E F)
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
        (INV1 E C A F D B)
        (and (= I J) (= G H) (not (>= C 1)) (not (>= D 1)) (>= G 1) (not (= A B)))
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
