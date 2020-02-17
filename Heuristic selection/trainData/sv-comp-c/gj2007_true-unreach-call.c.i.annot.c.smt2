(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (= 0 var1) (= 50 var0))) (inv_main4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main4 var2 var0) (and (and (<= 0 (+ (+ 50 (* (- 1) var2)) (- 1))) (<= 0 (+ (+ 100 (* (- 1) var2)) (- 1)))) (= (+ var2 1) var1)))) (inv_main4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main4 var2 var1) (and (and (and (not (<= 0 (+ (+ 50 (* (- 1) var2)) (- 1)))) (<= 0 (+ (+ 100 (* (- 1) var2)) (- 1)))) (= (+ var2 1) var0)) (= (+ var1 1) var3)))) (inv_main4 var0 var3))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main4 var1 var0) (and (not (= var0 100)) (not (<= 0 (+ (+ 100 (* (- 1) var1)) (- 1)))))))))
(check-sat)