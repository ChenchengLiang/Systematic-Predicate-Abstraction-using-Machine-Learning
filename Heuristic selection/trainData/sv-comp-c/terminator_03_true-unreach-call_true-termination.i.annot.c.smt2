(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int) Bool)
(declare-fun inv_main11 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main11 var1 var0) (not (<= 0 (+ (+ 100 (* (- 1) var1)) (- 1)))))) (inv_main10 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main11 var1 var0) (and (<= 0 (+ (+ 100 (* (- 1) var1)) (- 1))) (= (+ var1 var0) var2)))) (inv_main11 var2 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (or (not (<= 0 (+ var1 (- 1)))) (not (<= 0 (+ 1000000 (* (- 1) var1))))) (inv_main11 var0 var1))))
(assert (forall ((var0 Int) (var1 Int)) (or (or (<= 0 (+ var0 (- 1))) (not (<= 0 (+ 1000000 (* (- 1) var0))))) (inv_main10 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main10 var1 var0) (and (<= 0 (+ 99 (* (- 1) var1))) (<= 0 (+ (- 1) var0)))))))
(check-sat)
