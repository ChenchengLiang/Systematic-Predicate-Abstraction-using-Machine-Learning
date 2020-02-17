(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main4 (Int) Bool)
(assert (forall ((var0 Int)) (or (not (= 0 var0)) (inv_main3 var0))))
(assert (forall ((var0 Int)) (or (not (and (inv_main3 var0) (not (<= 0 (+ (+ 100 (* (- 1) var0)) (- 1)))))) (inv_main4 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main3 var0) (and (and (= (+ var0 1) 50) (<= 0 (+ (+ 100 (* (- 1) var0)) (- 1)))) (= (+ var0 1) var1)))) (inv_main4 var1))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main3 var1) (and (and (not (= (+ var1 1) 50)) (<= 0 (+ (+ 100 (* (- 1) var1)) (- 1)))) (= (+ var1 1) var0)))) (inv_main3 var0))))
(assert (forall ((var0 Int)) (not (and (inv_main4 var0) (not (= var0 50))))))
(check-sat)
