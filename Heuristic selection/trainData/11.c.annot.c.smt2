(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main7 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (= 0 var2) (= 0 var0)) (= 100 var1))) (inv_main7 var0 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main7 (+ var0 (- 2)) (+ var2 (- 1))) (and (<= 0 (+ (+ 100 (* (- 1) (+ var2 (- 1)))) (- 1))) (= var1 100)))) (inv_main7 var0 var2))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main7 var0 var1) (and (not (= var0 200)) (not (<= 0 (+ (+ 100 (* (- 1) var1)) (- 1)))))))))
(check-sat)
