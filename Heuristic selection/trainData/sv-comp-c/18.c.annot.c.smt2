(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main8 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (= 0 var2) (= 0 var1))) (inv_main8 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main8 var1 var2 var3) (and (and (and (not (= var1 0)) (<= 0 (+ (+ 100 (* (- 1) var2)) (- 1)))) (= (+ var2 1) var4)) (= (+ var3 1) var0)))) (inv_main8 var1 var4 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main8 0 var2 var3) (and (and (<= 0 (+ (+ 100 (* (- 1) var2)) (- 1))) (= var1 0)) (= (+ var2 1) var0)))) (inv_main8 var1 var0 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main8 var0 var1 var2) (not (or (= var2 100) (or (= var0 0) (<= 0 (+ (+ 100 (* (- 1) var1)) (- 1))))))))))
(check-sat)
