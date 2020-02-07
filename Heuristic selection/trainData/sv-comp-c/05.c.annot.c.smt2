(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (= 0 var1) (= 0 var0)) (= 0 var3)) (= 0 var2))) (inv_main6 var4 var1 var0 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main6 var4 var5 var0 var9 var1) (and (and (and (and (and (not (= var4 0)) (not (= var8 0))) (= (+ var5 1) var2)) (= (+ var0 1) var6)) (= (+ (+ var9 (+ var0 1)) 1) var7)) (= (+ var1 (+ var5 1)) var3)))) (inv_main6 var4 var2 var6 var7 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main6 0 var6 var0 var9 var1) (and (and (and (and (and (not (= var8 0)) (= (+ var6 1) var3)) (= (+ var0 1) var4)) (= (+ var9 (+ var0 1)) var7)) (= (+ var1 (+ var6 1)) var2)) (= var5 0)))) (inv_main6 var5 var3 var4 var7 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main6 var2 var3 var0 var4 var1) (not (<= 0 (+ var4 (* (- 1) var1))))))))
(check-sat)
