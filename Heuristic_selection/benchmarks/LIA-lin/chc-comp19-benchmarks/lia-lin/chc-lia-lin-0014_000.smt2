(set-logic HORN)

(declare-fun |mult$unknown:3| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (|mult$unknown:3| H A F)
        (let ((a!1 (= (not (= 0 C)) (or (not (= 0 D)) (not (= 0 E))))))
  (and (= (not (= 0 D)) (<= F 0))
       a!1
       (= 0 C)
       (= G (+ F H))
       (= A (+ (- 1) B))
       (= (not (= 0 E)) (<= B 0))))
      )
      (|mult$unknown:3| G B F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (let ((a!1 (= (not (= 0 A)) (or (not (= 0 B)) (not (= 0 C))))))
  (and (= (not (= 0 B)) (<= E 0))
       a!1
       (not (= 0 A))
       (= F 0)
       (= (not (= 0 C)) (<= D 0))))
      )
      (|mult$unknown:3| F D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (v_3 Int) ) 
    (=>
      (and
        (|mult$unknown:3| C B v_3)
        (and (= v_3 B) (= 0 A) (= (not (= 0 A)) (<= B C)))
      )
      false
    )
  )
)

(check-sat)
(exit)
