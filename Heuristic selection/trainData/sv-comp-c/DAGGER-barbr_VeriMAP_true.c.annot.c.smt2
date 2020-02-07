(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main18 (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (and (and (and (and (and (and (= 0 var5) (= 0 var3)) (= 0 var0)) (= 0 var1)) (= 0 var4)) (= 0 var2)) (= 0 var7)) (= 0 var6))) (inv_main18 var5 var3 var0 var1 var4 var2 var7 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main18 var3 var9 var2 var10 var4 var7 var8 var6) (and (and (and (and (and (and (and (<= 0 (+ var3 (- 1))) (<= 0 (* (- 1) var10))) (<= 0 var10)) (not (= var1 0))) (not (= var12 0))) (= (+ var3 (- 1)) var11)) (= (+ var9 1) var0)) (= 1 var5)))) (inv_main18 var11 var0 var2 var5 var4 var7 var8 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main18 var1 var7 var0 var9 var2 var4 var6 var3) (and (and (and (and (and (and (and (<= 0 (+ var1 (- 1))) (<= 0 (* (- 1) var2))) (<= 0 var2)) (not (= var11 0))) (not (= var12 0))) (= (+ var1 (- 1)) var8)) (= (+ var7 1) var5)) (= 1 var10)))) (inv_main18 var8 var5 var0 var9 var10 var4 var6 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var1 var6 var0 var9 var2 var4 var5 var3) (and (and (and (and (and (and (<= 0 (+ var0 (- 1))) (<= 0 (+ 1 (* (- 1) var2)))) (<= 0 (+ var2 (- 1)))) (not (= var8 0))) (not (= var11 0))) (= (+ var0 (- 1)) var10)) (= 0 var7)))) (inv_main18 var1 var6 var10 var9 var7 var4 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main18 var3 var9 var1 var10 var4 var6 var7 var5) (and (and (and (and (and (and (and (<= 0 (+ var3 (- 1))) (<= 0 (* (- 1) var6))) (<= 0 var6)) (not (= var8 0))) (not (= var12 0))) (= (+ var3 (- 1)) var0)) (= (+ var9 1) var11)) (= 1 var2)))) (inv_main18 var0 var11 var1 var10 var4 var2 var7 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var1 var8 var0 var9 var2 var5 var7 var4) (and (and (and (and (and (and (<= 0 (+ var0 (- 1))) (<= 0 (+ 1 (* (- 1) var5)))) (<= 0 (+ var5 (- 1)))) (not (= var3 0))) (not (= var11 0))) (= (+ var0 (- 1)) var6)) (= 0 var10)))) (inv_main18 var1 var8 var6 var9 var2 var10 var7 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main18 var1 var9 var0 var10 var2 var5 var7 var4) (and (and (and (and (and (and (and (<= 0 (+ var1 (- 1))) (<= 0 (* (- 1) var7))) (<= 0 var7)) (not (= var8 0))) (not (= var12 0))) (= (+ var1 (- 1)) var11)) (= (+ var9 1) var6)) (= (+ var7 1) var3)))) (inv_main18 var11 var6 var0 var10 var2 var5 var3 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var1 var8 var0 var10 var2 var4 var7 var3) (and (and (and (and (and (and (<= 0 (+ var0 (- 1))) (<= 0 (+ 1 (* (- 1) var7)))) (<= 0 (+ var7 (- 1)))) (not (= var9 0))) (not (= var11 0))) (= (+ var0 (- 1)) var6)) (= (+ var7 (- 1)) var5)))) (inv_main18 var1 var8 var6 var10 var2 var4 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var3 var9 var1 var10 var4 var7 var8 var6) (and (and (and (and (and (<= 0 (* (- 1) var6)) (<= 0 var6)) (not (= var0 0))) (not (= var11 0))) (= (+ var3 1) var5)) (= 1 var2)))) (inv_main18 var5 var9 var1 var10 var4 var7 var8 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var1 var7 var0 var8 var2 var4 var5 var3) (and (and (and (and (and (and (<= 0 (+ var7 (- 1))) (<= 0 (+ 1 (* (- 1) var3)))) (<= 0 (+ var3 (- 1)))) (not (= var10 0))) (not (= var11 0))) (= (+ var7 (- 1)) var6)) (= 2 var9)))) (inv_main18 var1 var6 var0 var8 var2 var4 var5 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var1 var7 var0 var9 var2 var5 var6 var4) (and (and (and (and (and (<= 0 (+ 2 (* (- 1) var4))) (<= 0 (+ var4 (- 2)))) (not (= var10 0))) (not (= var11 0))) (= (+ var0 1) var3)) (= 3 var8)))) (inv_main18 var1 var7 var3 var9 var2 var5 var6 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main18 var2 var7 0 var9 var3 var5 var6 var4) (and (and (and (and (and (<= 0 (+ 3 (* (- 1) var4))) (<= 0 (+ var4 (- 3)))) (not (= var8 0))) (not (= var10 0))) (= var1 0)) (= 0 var0)))) (inv_main18 var2 var7 var1 var9 var3 var5 var6 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main18 var1 var7 var0 var9 var2 var5 var6 var4) (and (and (and (and (and (<= 0 (+ var0 (- 1))) (<= 0 (+ 1 (* (- 1) var9)))) (<= 0 (+ var9 (- 1)))) (not (= var10 0))) (= (+ var0 (- 1)) var8)) (= 0 var3)))) (inv_main18 var1 var7 var8 var3 var2 var5 var6 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 (+ var3 (* (- 1) var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 (+ 1 (* (- 1) var7))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 (+ 1 (* (- 1) var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 (+ 1 (* (- 1) var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 (+ 1 (* (- 1) var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 (+ 3 (* (- 1) var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 var5))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 var4))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 var2))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 var7))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 var0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 var6))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var1 var6 var0 var7 var2 var4 var5 var3) (not (<= 0 var1))))))
(check-sat)
