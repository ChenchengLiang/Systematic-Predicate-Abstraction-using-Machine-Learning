(set-logic HORN)

(declare-fun |INV1| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (INV1 A B C E)
        (and (= E (+ (- 1) D)) (<= E 10) (not (<= B 10)) (= F G))
      )
      (INV1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (INV1 A E C F)
        (and (= F (+ (- 1) D)) (= E (+ (- 1) B)) (<= F 10) (<= E 10) (= G H))
      )
      (INV1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (INV1 A E C D)
        (and (= E (+ (- 1) B)) (<= E 10) (not (<= D 10)) (= F G))
      )
      (INV1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (= B 0) (= A C) (= D 1))
      )
      (INV1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (INV1 C A D B)
        (and (not (= A B)) (not (<= B 10)) (not (<= A 10)) (= E F))
      )
      false
    )
  )
)

(check-sat)
(exit)
