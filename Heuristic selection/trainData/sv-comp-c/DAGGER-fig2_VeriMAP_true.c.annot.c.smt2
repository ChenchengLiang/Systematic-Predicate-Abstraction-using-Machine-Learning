(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (= 0 var3) (= 0 var0)) (= 0 var2)) (= 0 var1))) (inv_main4 var3 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main4 var5 var1 var2 var6) (and (and (and (not (= var4 0)) (not (= var0 0))) (= (+ var5 1) var7)) (= (+ var1 2) var3)))) (inv_main4 var7 var3 var2 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main4 var4 var2 var3 var5) (and (and (not (<= 0 (+ var4 (- 4)))) (not (= var1 0))) (not (= var0 0))))) (inv_main4 var4 var2 var3 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main4 var7 var3 var4 var9) (and (and (and (and (and (and (<= 0 (+ var7 (- 4))) (not (= var2 0))) (not (= var1 0))) (= (+ var7 1) var8)) (= (+ var3 3) var0)) (= (+ var4 10) var6)) (= (+ var9 10) var5)))) (inv_main4 var8 var0 var6 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main4 var3 var1 var2 var4) (and (not (= var0 0)) (<= 0 (+ var1 (* (- 1) var4)))))) (inv_main4 var3 var1 var2 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main4 var3 var1 var2 var4) (and (not (= var0 0)) (<= 0 (+ (- 1) (+ var2 (* (- 1) var3))))))) (inv_main4 var3 var1 var2 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main4 var5 var1 var2 var6) (and (and (and (and (<= 0 (+ var5 (* (- 1) var2))) (<= 0 (+ (+ var6 (* (- 1) var1)) (- 1)))) (not (= var0 0))) (= (* (- 1) var5) var3)) (= (* (- 1) var1) var4)))) (inv_main4 var3 var4 var2 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main4 var2 var0 var1 var3) (not (<= 0 (+ (* 3 var2) (* (- 1) var0))))))))
(check-sat)
