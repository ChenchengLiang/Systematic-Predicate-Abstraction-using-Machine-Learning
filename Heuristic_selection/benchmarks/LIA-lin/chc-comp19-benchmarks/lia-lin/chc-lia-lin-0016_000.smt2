(set-logic HORN)

(declare-fun |starexecinv1| ( Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (and (not (<= D (* (- 1) B)))
     (not (<= D C))
     (not (<= D B))
     (not (<= A (* (- 1) C)))
     (not (<= A (* (- 1) B)))
     (not (<= A C))
     (not (<= A B))
     (not (<= D (* (- 1) C))))
      )
      (starexecinv1 B C A D)
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
                (= H (+ (- 1) C))))
      (a!3 (= F (+ (- 1) (ite (<= A B) A B))))
      (a!4 (= E (+ (- 1) (ite (<= A B) A B)))))
(let ((a!2 (or (and (not (<= D 0)) (= G (+ (- 1) D)) (= H C)) a!1))
      (a!5 (or (and (= E (+ A B)) a!3) (and a!4 (= F (+ A B))))))
  (and (not (<= A 0)) a!2 a!5 (not (<= B 0)))))
      )
      (starexecinv1 F E H G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (starexecinv1 A B C D)
        (and (not (<= B 0)) (not (<= A 0)) (not (<= 0 C)))
      )
      false
    )
  )
)

(check-sat)
(exit)
