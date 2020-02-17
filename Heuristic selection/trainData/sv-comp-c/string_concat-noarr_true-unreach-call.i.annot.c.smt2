(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main12 (Int Int) Bool)
(declare-fun inv_main4 (Int) Bool)
(assert (forall ((var0 Int)) (or (not (= 0 var0)) (inv_main4 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main4 var1) (and (and (not (= var2 0)) (<= 0 (+ (+ 1000000 (* (- 1) var1)) (- 1)))) (= (+ var1 1) var0)))) (inv_main4 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main4 var0) (and (<= 0 (+ 99 (* (- 1) var0))) (= var1 0)))) (inv_main12 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main12 var2 var0) (and (and (and (not (= var4 0)) (<= 0 (+ (+ 1000000 (* (- 1) var2)) (- 1)))) (= (+ var2 1) var3)) (= (+ var0 1) var1)))) (inv_main12 var3 var1))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main12 var1 var0) (and (<= 0 (+ 99 (* (- 1) var0))) (<= 0 (+ (- 200) var1)))))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main12 var1 var0) (and (<= 0 (+ 99 (* (- 1) var0))) (<= 0 (+ (- 1000000) var1)))))))
(check-sat)
