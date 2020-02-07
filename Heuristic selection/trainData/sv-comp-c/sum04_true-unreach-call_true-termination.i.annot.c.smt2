(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (= 1 var0) (= 0 var1))) (inv_main5 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main5 var0 var3) (and (and (<= 0 (+ 8 (* (- 1) var0))) (= (+ var0 1) var2)) (= (+ var3 2) var1)))) (inv_main5 var2 var1))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main5 var0 var1) (and (not (or (= var1 16) (= var1 0))) (not (<= 0 (+ 8 (* (- 1) var0)))))))))
(check-sat)
