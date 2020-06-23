(set-logic HORN)

(declare-fun |starexecinv1| ( Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (not (= A 0))
     (not (<= E (* (- 1) D)))
     (not (<= E (* (- 1) B)))
     (not (<= E (* (- 1) A)))
     (not (<= E D))
     (not (<= E B))
     (not (<= E A))
     (not (<= C (* (- 1) D)))
     (not (<= C (* (- 1) B)))
     (not (<= C (* (- 1) A)))
     (not (<= C D))
     (not (<= C B))
     (not (<= C A))
     (= B 0))
      )
      (starexecinv1 A D B C E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (starexecinv1 A B C D E)
        (let ((a!1 (and (not (<= I F))
                (not (<= I G))
                (not (<= I H))
                (not (<= I (* (- 1) F)))
                (not (<= I (* (- 1) G)))
                (not (<= I (* (- 1) H)))
                (<= E 0)
                (= J (+ (- 1) D)))))
(let ((a!2 (or (and (not (<= E 0)) (= I (+ (- 1) E)) (= J D)) a!1)))
  (and (= G B)
       (= F (+ A (* (- 1) B)))
       (>= C 0)
       (not (<= B 0))
       (not (<= A 0))
       a!2
       (= H (+ 1 C)))))
      )
      (starexecinv1 F G H J I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (starexecinv1 A B C D E)
        (and (not (<= 0 D)) (not (<= B 0)) (not (<= A 0)) (>= C 0))
      )
      false
    )
  )
)

(check-sat)
(exit)
