(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main13 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main13 var2 var1 var3 var0) (and (and (<= 0 (+ var2 (* (- 1) var3))) (= (+ var3 1) var4)) (= (+ var0 (+ var3 1)) var5)))) (inv_main13 var2 var1 var4 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (and (<= 0 var1) (= var3 0)) (= 1 var2)) (= 0 var0)) (= 0 var4))) (inv_main13 var1 var2 var0 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (and (<= 0 var4) (not (= var3 0))) (<= 0 var0)) (= 0 var2)) (= 0 var1))) (inv_main13 var0 var4 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main13 var2 var1 var3 var0) (and (not (<= 0 (+ (+ (+ (+ var1 var3) var0) (* (- 2) var2)) (- 1)))) (not (<= 0 (+ var2 (* (- 1) var3)))))))))
(check-sat)
