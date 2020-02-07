(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main18 (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (and (and (and (and (and (and (= 0 var6) (= 0 var3)) (= 0 var2)) (= 0 var1)) (= 0 var0)) (= 0 var5)) (= 0 var4)) (= 0 var7))) (inv_main18 var6 var3 var2 var1 var0 var5 var4 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main18 var5 var0 var3 var12 var6 var8 var9 var7) (and (and (and (and (and (and (and (<= 0 (+ var5 (- 1))) (<= 0 (* (- 1) var12))) (<= 0 var12)) (not (= var4 0))) (not (= var10 0))) (= (+ var5 (- 1)) var11)) (= (+ var0 1) var1)) (= 1 var2)))) (inv_main18 var11 var1 var3 var2 var6 var8 var9 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main18 var3 var0 var2 var11 var4 var6 var7 var5) (and (and (and (and (and (and (and (<= 0 (+ var3 (- 1))) (<= 0 (* (- 1) var4))) (<= 0 var4)) (not (= var1 0))) (not (= var9 0))) (= (+ var3 (- 1)) var8)) (= (+ var0 1) var10)) (= 1 var12)))) (inv_main18 var8 var10 var2 var11 var12 var6 var7 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var3 var0 var2 var11 var4 var8 var9 var7) (and (and (and (and (and (and (<= 0 (+ var2 (- 1))) (<= 0 (+ 1 (* (- 1) var4)))) (<= 0 (+ var4 (- 1)))) (not (= var1 0))) (not (= var10 0))) (= (+ var2 (- 1)) var5)) (= 0 var6)))) (inv_main18 var3 var0 var5 var11 var6 var8 var9 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main18 var4 var0 var2 var11 var5 var7 var8 var6) (and (and (and (and (and (and (and (<= 0 (+ var4 (- 1))) (<= 0 (* (- 1) var7))) (<= 0 var7)) (not (= var12 0))) (not (= var9 0))) (= (+ var4 (- 1)) var10)) (= (+ var0 1) var3)) (= 1 var1)))) (inv_main18 var10 var3 var2 var11 var5 var1 var8 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var2 var0 var1 var9 var3 var6 var7 var5) (and (and (and (and (and (and (<= 0 (+ var1 (- 1))) (<= 0 (+ 1 (* (- 1) var6)))) (<= 0 (+ var6 (- 1)))) (not (= var4 0))) (not (= var8 0))) (= (+ var1 (- 1)) var11)) (= 0 var10)))) (inv_main18 var2 var0 var11 var9 var3 var10 var7 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main18 var3 var0 var2 var11 var4 var6 var7 var5) (and (and (and (and (and (and (and (<= 0 (+ var3 (- 1))) (<= 0 (* (- 1) var7))) (<= 0 var7)) (not (= var1 0))) (not (= var8 0))) (= (+ var3 (- 1)) var12)) (= (+ var0 1) var10)) (= (+ var7 1) var9)))) (inv_main18 var12 var10 var2 var11 var4 var6 var9 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var4 var0 var2 var11 var5 var8 var9 var7) (and (and (and (and (and (and (<= 0 (+ var2 (- 1))) (<= 0 (+ 1 (* (- 1) var9)))) (<= 0 (+ var9 (- 1)))) (not (= var1 0))) (not (= var10 0))) (= (+ var2 (- 1)) var3)) (= (+ var9 (- 1)) var6)))) (inv_main18 var4 var0 var3 var11 var5 var8 var6 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var2 var0 var1 var11 var3 var6 var8 var5) (and (and (and (and (and (<= 0 (* (- 1) var5)) (<= 0 var5)) (not (= var4 0))) (not (= var9 0))) (= (+ var2 1) var10)) (= 1 var7)))) (inv_main18 var10 var0 var1 var11 var3 var6 var8 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var2 var0 var1 var9 var3 var6 var7 var5) (and (and (and (and (and (and (<= 0 (+ var0 (- 1))) (<= 0 (+ 1 (* (- 1) var5)))) (<= 0 (+ var5 (- 1)))) (not (= var4 0))) (not (= var8 0))) (= (+ var0 (- 1)) var11)) (= 2 var10)))) (inv_main18 var2 var11 var1 var9 var3 var6 var7 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var3 var0 var2 var10 var4 var6 var7 var5) (and (and (and (and (and (<= 0 (+ 2 (* (- 1) var5))) (<= 0 (+ var5 (- 2)))) (not (= var9 0))) (not (= var8 0))) (= (+ var2 1) var11)) (= 3 var1)))) (inv_main18 var3 var0 var11 var10 var4 var6 var7 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main18 var2 var0 0 var10 var3 var6 var8 var5) (and (and (and (and (and (<= 0 (+ 3 (* (- 1) var5))) (<= 0 (+ var5 (- 3)))) (not (= var7 0))) (not (= var9 0))) (= var1 0)) (= 0 var4)))) (inv_main18 var2 var0 var1 var10 var3 var6 var8 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main18 var2 var0 var1 var10 var3 var5 var7 var4) (and (and (and (and (and (<= 0 (+ var1 (- 1))) (<= 0 (+ 1 (* (- 1) var10)))) (<= 0 (+ var10 (- 1)))) (not (= var8 0))) (= (+ var1 (- 1)) var9)) (= 0 var6)))) (inv_main18 var2 var0 var9 var6 var3 var5 var7 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var2 var0 var1 var7 var3 var5 var6 var4) (not (<= 0 (+ 3 (* (- 1) var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main18 var2 var0 var1 var7 var3 var5 var6 var4) (not (<= 0 (+ var4 (* (- 1) var1))))))))
(check-sat)
