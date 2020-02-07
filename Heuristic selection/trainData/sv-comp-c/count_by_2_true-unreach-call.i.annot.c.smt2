(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int) Bool)
(assert (forall ((var0 Int)) (or (not (= 0 var0)) (inv_main5 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main5 var1) (and (<= 0 (+ (+ 1000000 (* (- 1) var1)) (- 1))) (= (+ var1 2) var0)))) (inv_main5 var0))))
(assert (forall ((var0 Int)) (not (and (inv_main5 var0) (and (not (= var0 1000000)) (not (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1)))))))))
(check-sat)
