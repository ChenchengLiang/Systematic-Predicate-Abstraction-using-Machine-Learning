(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int) Bool)
(assert (forall ((var0 Int)) (or (not (= 0 var0)) (inv_main6 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main6 var0) (and (not (= (+ var0 1) 1000000)) (= (+ var0 1) var1)))) (inv_main6 var1))))
(assert (forall ((var0 Int)) (not (and (inv_main6 var0) (not (<= 0 (+ 1000000 (* (- 1) var0))))))))
(check-sat)
