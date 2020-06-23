(set-logic HORN)

(declare-fun |starexecinv1| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (not (<= D (* (- 1) A)))
     (not (<= D C))
     (not (<= D A))
     (not (<= B (* (- 1) C)))
     (not (<= B (* (- 1) A)))
     (not (<= B C))
     (not (<= B A))
     (not (<= A 1))
     (not (<= D (* (- 1) C))))
      )
      (starexecinv1 C A B D)
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
  (and (= E (ite (<= A 0) 1 (* B A)))
       (not (<= 100 A))
       (not (<= B 1))
       a!2
       (= F B))))
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
        (and (not (<= 0 C)) (not (<= B 1)) (not (<= 100 A)))
      )
      false
    )
  )
)

(check-sat)
(exit)
