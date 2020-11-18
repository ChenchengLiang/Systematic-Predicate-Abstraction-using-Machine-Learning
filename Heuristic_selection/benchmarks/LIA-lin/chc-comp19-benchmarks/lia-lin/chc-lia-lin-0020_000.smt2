(set-logic HORN)

(declare-fun |starexecinv1| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (= A (- 2))
     (not (<= D (* (- 1) B)))
     (not (<= D (* (- 1) A)))
     (not (<= D B))
     (not (<= D A))
     (not (<= C (* (- 1) B)))
     (not (<= C (* (- 1) A)))
     (not (<= C B))
     (not (<= C A))
     (= B 1))
      )
      (starexecinv1 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (starexecinv1 A B C D)
        (let ((a!1 (and (not (<= G E))
                (not (<= G F))
                (not (<= G (* (- 1) E)))
                (not (<= G (* (- 1) F)))
                (<= D 0)
                (= H (+ (- 1) C)))))
(let ((a!2 (or (and (not (<= D 0)) (= G (+ (- 1) D)) (= H C)) a!1)))
  (and (= E (+ A B))
       (>= B 1)
       (>= A (- 2))
       (<= B 1)
       (<= A (- 2))
       (not (<= A 0))
       a!2
       (= F (+ 1 B)))))
      )
      (starexecinv1 E F H G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (starexecinv1 A B C D)
        (and (>= A (- 2)) (not (<= 0 C)) (<= B 1) (<= A (- 2)) (not (<= A 0)) (>= B 1))
      )
      false
    )
  )
)

(check-sat)
(exit)
