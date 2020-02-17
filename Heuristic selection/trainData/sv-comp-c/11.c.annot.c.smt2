(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main7 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (= 0 var0) (= 0 var2)) (= 100 var1))) (inv_main7 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main7 var4 var0) (and (and (and (<= 0 (+ (+ 100 (* (- 1) var0)) (- 1))) (= (+ var4 2) var1)) (= (+ var0 1) var3)) (= var2 100)))) (inv_main7 var1 var3))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main7 var1 var0) (and (not (= var1 200)) (not (<= 0 (+ (+ 100 (* (- 1) var0)) (- 1)))))))))
(check-sat)
