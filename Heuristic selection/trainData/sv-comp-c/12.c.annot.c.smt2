(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main22 (Int Int) Bool)
(declare-fun inv_main7 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (= 0 var0) (= 0 var4)) (= 0 var2)) (= 0 var1))) (inv_main7 var3 var0 var4 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main22 var1 var2) (and (and (not (= var3 0)) (<= 0 (+ var1 (* (- 1) var2)))) (= (+ var2 1) var0)))) (inv_main22 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main22 var1 var2) (and (<= 0 (+ var1 (* (- 1) var2))) (= (+ var2 2) var0)))) (inv_main22 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main7 var2 var3 var0 var1 var5) (and (and (not (= var2 0)) (= (+ (+ var3 (* (- 2) var0)) 2) var6)) (= 0 var4)))) (inv_main22 var6 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main7 0 var3 var0 var1 var5) (and (and (= var2 0) (= 1 var4)) (= 0 var6)))) (inv_main22 var4 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main7 var3 var4 var0 var2 var8) (and (and (and (and (and (not (= var3 0)) (not (= var5 0))) (= (+ var2 1) var6)) (= (+ (+ var4 (+ var8 1)) (+ var2 1)) var9)) (= (+ var0 (+ var2 1)) var1)) (= (+ var8 1) var7)))) (inv_main7 var3 var9 var1 var6 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main7 0 var6 var1 var4 var8) (and (and (and (and (and (not (= var7 0)) (= (+ var6 (+ var8 1)) var9)) (= (+ var1 (+ var4 1)) var5)) (= (+ var4 1) var0)) (= (+ var8 1) var3)) (= var2 0)))) (inv_main7 var2 var9 var5 var0 var3))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main22 var0 var1) (not (or (<= 0 (+ 4 (* (- 1) var1))) (<= 0 (+ var0 (* (- 1) var1)))))))))
(check-sat)