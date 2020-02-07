(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (= 0 var1)) (inv_main3 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main3 var0 var2) (and (<= 0 (+ (+ var0 (* (- 1) var2)) (- 1))) (= (+ var2 1) var1)))) (inv_main3 var0 var1))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main3 var0 var1) (not (or (= var1 var0) (or (not (<= 0 (+ var0 (- 1)))) (<= 0 (+ (+ var0 (* (- 1) var1)) (- 1))))))))))
(check-sat)
