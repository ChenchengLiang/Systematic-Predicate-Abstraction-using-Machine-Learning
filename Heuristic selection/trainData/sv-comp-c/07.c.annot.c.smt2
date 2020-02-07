(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main7 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (<= 0 var0) (= 0 var3)) (= 0 var2)) (= 0 var1))) (inv_main7 var3 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main7 var1 var5 var3 var0) (and (and (and (and (not (= var4 0)) (<= 0 (+ (+ var5 (* (- 1) var1)) (- 1)))) (= (+ var1 1) var7)) (= (+ var3 1) var6)) (= (+ var0 2) var2)))) (inv_main7 var7 var5 var6 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main7 var3 var6 var5 var0) (and (and (and (<= 0 (+ (+ var6 (* (- 1) var3)) (- 1))) (= (+ var3 1) var2)) (= (+ var5 2) var1)) (= (+ var0 1) var4)))) (inv_main7 var2 var6 var1 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main7 var1 var3 var2 var0) (not (or (= (+ (+ var2 var0) (* (- 3) var3)) 0) (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1)))))))))
(check-sat)
