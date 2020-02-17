(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main16 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (<= 0 (+ var1 (- 1))) (= var2 0)) (= var0 0)) (= var3 0))) (inv_main16 var1 var2 var0 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main16 var3 var5 var1 var9) (and (and (and (and (and (and (<= 0 (+ var3 (- 1))) (not (= var2 0))) (not (= var6 0))) (= (+ var3 (- 1)) var0)) (= (+ var5 1) var4)) (= (+ var1 var9) var8)) (= 0 var7)))) (inv_main16 var0 var4 var8 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main16 var3 var5 var0 var9) (and (and (and (and (and (and (<= 0 (+ (+ var0 var5) (- 1))) (not (= var8 0))) (not (= var6 0))) (= (+ (+ (+ var3 var5) var0) (- 1)) var4)) (= 0 var7)) (= 0 var2)) (= (+ var9 1) var1)))) (inv_main16 var4 var7 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_main16 var1 var3 var0 var8) (and (and (and (and (and (<= 0 (+ var1 (- 1))) (not (= var4 0))) (= (+ (+ var1 1) (- 1)) var7)) (= 0 var6)) (= 0 var2)) (= 1 var5)))) (inv_main16 var7 var6 var2 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var1 var2 var0 var3) (not (<= 0 var3))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var1 var2 var0 var3) (not (<= 0 var0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var1 var2 var0 var3) (not (<= 0 var2))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var1 var2 var0 var3) (not (<= 0 var1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var1 var2 var0 var3) (not (<= 0 (+ (+ (+ var1 var2) var3) (- 1))))))))
(check-sat)