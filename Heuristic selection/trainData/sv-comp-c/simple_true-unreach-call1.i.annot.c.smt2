(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int) Bool)
(assert (forall ((var0 Int)) (or (not (<= 0 var0)) (or (not (= 0 var0)) (inv_main3 var0)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (<= 0 var1) (<= 0 var0))) (or (not (and (inv_main3 var0) (and (<= 0 (+ (+ 268435455 (* (- 1) var0)) (- 1))) (= (+ var0 2) var1)))) (inv_main3 var1)))))
(assert (forall ((var0 Int)) (not (and (inv_main3 (+ (* 2 var0) 1)) (<= 0 (+ (- 134217727) var0))))))
(check-sat)
