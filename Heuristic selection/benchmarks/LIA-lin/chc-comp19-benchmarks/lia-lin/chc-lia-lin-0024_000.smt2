(set-logic HORN)

(declare-fun |starexecinv1| ( Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (and (not (<= E (* (- 1) C)))
     (not (<= E (* (- 1) B)))
     (not (<= E D))
     (not (<= E C))
     (not (<= E B))
     (not (<= A (* (- 1) D)))
     (not (<= A (* (- 1) C)))
     (not (<= A (* (- 1) B)))
     (not (<= A D))
     (not (<= A C))
     (not (<= A B))
     (not (<= E (* (- 1) D))))
      )
      (starexecinv1 B C D A E)
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
  (and (= G (+ (- 2) B))
       (= F (+ (- 3) A))
       (not (<= B C))
       (not (<= A B))
       a!2
       (= H (+ (- 1) C)))))
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
        (and (not (<= B C)) (not (<= A B)) (not (<= 0 D)))
      )
      false
    )
  )
)

(check-sat)
(exit)
