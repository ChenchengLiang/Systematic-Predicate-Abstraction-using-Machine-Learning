(set-logic HORN)

(declare-fun |decr$unknown:2| ( Int Int ) Bool)
(declare-fun |f$unknown:6| ( Int Int ) Bool)
(declare-fun |f$unknown:4| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (= A (+ (- 1) B))
      )
      (|decr$unknown:2| A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (|decr$unknown:2| E F)
        (let ((a!1 (= (not (= 0 A)) (or (not (= 0 B)) (not (= 0 C))))))
  (and (= (not (= 0 B)) (>= D 3)) a!1 (not (= 0 A)) (= (not (= 0 C)) (<= D 0))))
      )
      (|f$unknown:4| E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (|f$unknown:4| D B)
        (and (= C D) (= (= 0 A) (<= B 0)) (not (= 0 A)))
      )
      (|f$unknown:6| C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (and (= C 1) (= (= 0 A) (<= B 0)) (= 0 A))
      )
      (|f$unknown:6| C B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (|f$unknown:6| F D)
        (let ((a!1 (= (not (= 0 A)) (or (not (= 0 B)) (not (= 0 C))))))
  (and (= (not (= 0 B)) (>= D 3))
       a!1
       (not (= 0 A))
       (= 0 E)
       (= (= 0 E) (<= F 0))
       (= (not (= 0 C)) (<= D 0))))
      )
      false
    )
  )
)

(check-sat)
(exit)
