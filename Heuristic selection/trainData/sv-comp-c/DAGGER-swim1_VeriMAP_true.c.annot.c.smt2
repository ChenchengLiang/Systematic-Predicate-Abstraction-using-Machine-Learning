(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main26 (Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (and (and (and (and (and (and (and (<= 0 (+ var5 (- 1))) (<= 0 (+ var7 (- 1)))) (= var0 var5)) (= var1 var7)) (= 0 var8)) (= 0 var2)) (= 0 var4)) (= 0 var3)) (= 0 var6))) (inv_main26 var8 var2 var4 var3 var6 var1 var0 var7 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main26 var7 var9 var1 var12 var3 var2 var0 var11 var8) (and (and (and (and (<= 0 (+ var2 (- 1))) (not (= var10 0))) (not (= var5 0))) (= (+ var7 1) var6)) (= (+ var2 (- 1)) var4)))) (inv_main26 var6 var9 var1 var12 var3 var4 var0 var11 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main26 var10 var11 var0 var13 var9 var8 var7 var5 var3) (and (and (and (and (and (and (<= 0 (+ var7 (- 1))) (<= 0 (+ var10 (- 1)))) (not (= var4 0))) (not (= var1 0))) (= (+ var10 (- 1)) var12)) (= (+ var11 1) var6)) (= (+ var7 (- 1)) var2)))) (inv_main26 var12 var6 var0 var13 var9 var8 var2 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main26 var11 var12 var0 var13 var8 var7 var6 var5 var3) (and (and (and (and (and (<= 0 (+ var12 (- 1))) (not (= var10 0))) (not (= var1 0))) (= (+ var12 (- 1)) var2)) (= (+ var0 1) var9)) (= (+ var7 1) var4)))) (inv_main26 var11 var2 var9 var13 var8 var4 var6 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main26 var10 var11 var0 var13 var9 var8 var7 var6 var4) (and (and (and (and (and (and (<= 0 (+ var8 (- 1))) (<= 0 (+ var0 (- 1)))) (not (= var2 0))) (not (= var1 0))) (= (+ var0 (- 1)) var5)) (= (+ var13 1) var12)) (= (+ var8 (- 1)) var3)))) (inv_main26 var10 var11 var5 var12 var9 var3 var7 var6 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main26 var10 var11 var0 var13 var7 var6 var5 var4 var3) (and (and (and (and (and (<= 0 (+ var13 (- 1))) (not (= var1 0))) (not (= var2 0))) (= (+ var13 (- 1)) var8)) (= (+ var7 1) var9)) (= (+ var5 1) var12)))) (inv_main26 var10 var11 var0 var8 var9 var6 var12 var4 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main26 var6 var8 var2 var11 var4 var3 var0 var9 var7) (and (and (and (<= 0 (+ var4 (- 1))) (not (= var5 0))) (= (+ var4 (- 1)) var1)) (= (+ var3 1) var10)))) (inv_main26 var6 var8 var2 var11 var1 var10 var0 var9 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (= (+ (+ (+ var6 var1) var8) var0) var5))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 (+ (+ (+ (+ var6 var1) var8) var0) (* (- 1) var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 (+ (+ (+ (+ (+ var4 var6) var8) var3) var2) (* (- 1) var7))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 (+ var7 (* (- 1) (+ (+ (+ (+ var4 var6) var8) var3) var2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 var0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 var2))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 var3))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 var8))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 var1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 var6))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 var4))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 (+ (+ (+ (+ var6 var1) var8) var0) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 (+ (+ (+ (+ (+ var4 var6) var8) var3) var2) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (not (and (inv_main26 var4 var6 var1 var8 var3 var2 var0 var7 var5) (not (<= 0 (+ (+ (+ (+ (+ var4 var6) var8) var2) var0) (- 1))))))))
(check-sat)