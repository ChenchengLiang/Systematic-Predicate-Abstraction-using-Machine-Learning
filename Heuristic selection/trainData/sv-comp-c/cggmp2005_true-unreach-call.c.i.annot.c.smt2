(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (= 1 var0) (= 10 var1))) (inv_main5 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main5 var2 var1) (and (and (<= 0 (+ var1 (* (- 1) var2))) (= (+ var2 2) var3)) (= (+ (- 1) var1) var0)))) (inv_main5 var3 var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main5 var1 var0) (and (not (= var0 6)) (not (<= 0 (+ var0 (* (- 1) var1)))))))))
(check-sat)
