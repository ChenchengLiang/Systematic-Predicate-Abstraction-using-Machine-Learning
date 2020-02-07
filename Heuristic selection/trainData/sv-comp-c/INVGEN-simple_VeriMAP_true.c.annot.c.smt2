(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (<= 0 (+ var1 (- 1))) (= 0 var0))) (inv_main5 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1) (and (<= 0 (+ (+ var1 (* (- 1) var2)) (- 1))) (= (+ var2 1) var0)))) (inv_main5 var0 var1))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main5 var1 var0) (and (not (<= 0 (+ var0 (* (- 1) var1)))) (not (<= 0 (+ (+ var0 (* (- 1) var1)) (- 1)))))))))
(check-sat)
