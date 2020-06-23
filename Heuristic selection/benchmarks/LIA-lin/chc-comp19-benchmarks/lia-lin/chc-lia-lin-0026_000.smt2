(set-logic HORN)

(declare-fun |f$unknown:2| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (|f$unknown:2| H A)
        (and (= 0 F)
     (= 0 E)
     (not (= 0 D))
     (= G H)
     (= B (* 2 C))
     (= A (+ (- 1) B))
     (= (= 0 F) (<= (- 2) C))
     (= (= 0 E) (<= 2 C))
     (= (not (= 0 D)) (<= C 2)))
      )
      (|f$unknown:2| G C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (|f$unknown:2| E A)
        (and (= D E) (= A (- 3)) (= (= 0 B) (<= (- 2) C)) (not (= 0 B)))
      )
      (|f$unknown:2| D C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (not (= 0 C))
     (= E (+ (- 1) A))
     (= A (* 2 B))
     (= (= 0 D) (<= (- 2) B))
     (= (= 0 C) (<= 2 B))
     (= 0 D))
      )
      (|f$unknown:2| E B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (= 0 D)
     (= 0 C)
     (= 0 A)
     (= E B)
     (= (= 0 D) (<= (- 2) B))
     (= (= 0 C) (<= 2 B))
     (= (not (= 0 A)) (<= B 2)))
      )
      (|f$unknown:2| E B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (|f$unknown:2| B C)
        (and (= 0 A) (= C 3) (= (not (= 0 A)) (>= B 0)))
      )
      false
    )
  )
)

(check-sat)
(exit)
