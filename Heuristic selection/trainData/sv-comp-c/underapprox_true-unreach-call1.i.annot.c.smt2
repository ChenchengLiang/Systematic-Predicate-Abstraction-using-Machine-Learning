(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (<= 0 var1) (<= 0 var0))) (or (not (and (= 0 var0) (= 1 var1))) (inv_main4 var0 var1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (<= 0 var3) (<= 0 var2)) (<= 0 var1)) (<= 0 var0))) (or (not (and (inv_main4 var0 var3) (and (and (<= 0 (+ (+ 6 (* (- 1) var0)) (- 1))) (= (+ var0 1) var1)) (= (* 2 var3) var2)))) (inv_main4 var1 var2)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (<= 0 var0)) (not (and (inv_main4 var0 (* 3 var1)) (not (<= 0 (+ (+ 6 (* (- 1) var0)) (- 1)))))))))
(check-sat)
