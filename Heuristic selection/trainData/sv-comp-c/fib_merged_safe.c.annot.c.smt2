(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main7 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (and (and (and (and (= 0 var3) (= 1 var1)) (= 1 var6)) (= 1 var2)) (= 0 var4)) (= 0 var0))) (inv_main7 var5 var3 var1 var6 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main7 var3 var1 var2 var7 var6) (and (and (and (and (and (<= 0 (+ var3 (- 1))) (= (+ var1 var7) var0)) (= (+ var2 var6) var4)) (= (+ var1 var7) var5)) (= (+ var2 var6) var9)) (= (+ var3 (- 1)) var8)))) (inv_main7 var8 var7 var6 var0 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main7 var0 var4 var3 var2 var1) (and (not (= (+ var3 var1) (+ (+ var4 var2) var2))) (<= 0 (+ var0 (- 1))))))))
(check-sat)
