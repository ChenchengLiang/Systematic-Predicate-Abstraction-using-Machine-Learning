(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main18 (Int Int) Bool)
(declare-fun inv_main45 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main18 var3 var1) (and (and (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1))) (= (* 2 var1) var2)) (= var0 1)))) (inv_main18 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main45 var4 var1) (and (and (and (<= 0 (+ (+ var4 (* (- 1) var1)) (- 1))) (= (* 2 var1) var2)) (= var3 0)) (= var0 2)))) (inv_main45 var4 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (not (= var1 0)) (= 1 var2)) (= 1 var3))) (inv_main18 var0 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (= var0 0) (= 2 var1)) (= 1 var2))) (inv_main45 var3 var2))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main18 var1 var0) (and (not (<= 0 (+ var0 (- 1)))) (not (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1)))))))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main45 var1 var0) (and (not (<= 0 (+ var0 (- 1)))) (not (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1)))))))))
(check-sat)
