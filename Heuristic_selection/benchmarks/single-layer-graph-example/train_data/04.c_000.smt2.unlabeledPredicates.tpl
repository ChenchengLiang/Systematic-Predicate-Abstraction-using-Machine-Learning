(initial-predicates h5 ((x0 Int) (x1 Int))
  (= x0 (- 50))
  (= x1 1)
  (<= 0 (+ (- 1) (* (- 1) x0)))
  (<= 0 x0)
  (or (<= 0 (+ (- 1) x1)) (<= 0 (+ (- 1) (* (- 1) x0))))
  (<= 0 (+ (- 1) x1))
  (= (+ x1 x0) 50)
  (<= 0 (+ 50 (+ (* (- 1) x1) (* (- 1) x0))))
  (= (+ x1 x0) 0)
  (<= 0 (+ (* (- 1) x1) (* (- 1) x0)))
  (= (+ x1 x0) 1)
  (<= 0 (+ 1 (+ (* (- 1) x1) (* (- 1) x0))))
  (= (+ x1 x0) (- 1))
  (<= 0 (+ (- 1) (+ (* (- 1) x1) (* (- 1) x0))))
  (= (+ x1 x0) (- 50))
  (<= 0 (+ (- 50) (+ (* (- 1) x1) (* (- 1) x0))))
  (<= 0 (+ 50 (+ x1 x0)))
  (<= 0 (+ x1 x0))
  (<= 0 (+ 1 (+ x1 x0)))
  (<= 0 (+ (- 1) (+ x1 x0)))
  (<= 0 (+ (- 50) (+ x1 x0)))
  (= x1 (- 50))
  (<= 0 (+ 50 x1))
  (= x1 0)
  (<= 0 x1)
  (= x1 (- 1))
  (<= 0 (+ 1 x1))
  (= x1 50)
  (<= 0 (+ (- 50) x1))
  (<= 0 (+ 50 x0))
  (= x0 0)
  (= x0 (- 1))
  (<= 0 (+ 1 x0))
  (= x0 1)
  (<= 0 (+ (- 1) x0))
  (= x0 50)
  (<= 0 (+ (- 50) x0))
  (= (+ x1 (* (- 1) x0)) (- 50))
  (<= 0 (+ 50 (+ x1 (* (- 1) x0))))
  (= x1 x0)
  (<= 0 (+ x1 (* (- 1) x0)))
  (= (+ x1 (* (- 1) x0)) (- 1))
  (<= 0 (+ 1 (+ x1 (* (- 1) x0))))
  (= (+ x1 (* (- 1) x0)) 1)
  (<= 0 (+ (- 1) (+ x1 (* (- 1) x0))))
  (= (+ x1 (* (- 1) x0)) 50)
  (<= 0 (+ (- 50) (+ x1 (* (- 1) x0))))
  (<= 0 (+ 50 (+ (* (- 1) x1) x0)))
  (<= 0 (+ (* (- 1) x1) x0))
  (<= 0 (+ 1 (+ (* (- 1) x1) x0)))
  (<= 0 (+ (- 1) (+ (* (- 1) x1) x0)))
  (<= 0 (+ (- 50) (+ (* (- 1) x1) x0)))
  (<= 0 (+ 50 (* (- 1) x1)))
  (<= 0 (* (- 1) x1))
  (<= 0 (+ 1 (* (- 1) x1)))
  (<= 0 (+ (- 1) (* (- 1) x1)))
  (<= 0 (+ (- 50) (* (- 1) x1)))
  (<= 0 (+ 50 (* (- 1) x0)))
  (<= 0 (* (- 1) x0))
  (<= 0 (+ 1 (* (- 1) x0)))
  (<= 0 (+ (- 50) (* (- 1) x0)))
)