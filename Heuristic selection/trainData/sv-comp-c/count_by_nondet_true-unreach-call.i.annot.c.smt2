(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (= 0 var1) (= 0 var0))) (inv_main4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main4 var1 var2) (and (and (and (and (<= 0 (+ var0 (- 1))) (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1)))) (<= 0 (+ (+ 1000000 (* (- 1) var1)) (- 1)))) (= (+ var1 var0) var3)) (= (+ var2 1) var4)))) (inv_main4 var3 var4))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main4 var0 var1) (and (not (<= 0 (+ 1000000 (* (- 1) var1)))) (not (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1)))))))))
(check-sat)
