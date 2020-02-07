(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (<= 0 var1) (<= 0 var0))) (or (not (and (= 1 var0) (= 0 var1))) (inv_main4 var0 var1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (<= 0 var3) (<= 0 var2)) (<= 0 var1)) (<= 0 var0))) (or (not (and (inv_main4 var2 var0) (and (and (<= 0 (+ (+ 1024 (* (- 1) var0)) (- 1))) (= 0 var1)) (= (+ var0 1) var3)))) (inv_main4 var1 var3)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (<= 0 var1) (<= 0 var0))) (not (and (inv_main4 var1 var0) (and (not (= var1 0)) (not (<= 0 (+ (+ 1024 (* (- 1) var0)) (- 1))))))))))
(check-sat)
