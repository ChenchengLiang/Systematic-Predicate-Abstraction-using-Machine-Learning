(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main8 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (<= 0 (+ (+ var1 (- 1)) (- 1))) (= 0 var3)) (= 0 var0)) (= 0 var2))) (inv_main8 var1 var3 var0 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var1 var0 var4 var6) (and (and (and (and (<= 0 (+ (+ 1 (* (- 1) var0)) (- 1))) (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1)))) (= (+ var0 1) var3)) (= (+ var4 1) var2)) (= 1 var5)))) (inv_main8 var1 var3 var2 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var3 var1 var4 var6) (and (and (and (and (not (<= 0 (+ (+ 1 (* (- 1) var1)) (- 1)))) (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1)))) (= (+ var1 1) var0)) (= (+ var4 1) var2)) (= 0 var5)))) (inv_main8 var3 var0 var2 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main8 var1 var0 var2 var3) (and (<= 0 (+ var3 (- 1))) (not (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1)))))))))
(check-sat)
