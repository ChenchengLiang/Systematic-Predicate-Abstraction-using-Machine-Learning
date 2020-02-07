(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main10 var4 var3 var10 var1 var0 var2 var6) (and (and (and (and (and (<= 0 (+ (+ var4 (* (- 1) (+ var10 1))) (- 1))) (= (+ var10 1) var8)) (= (+ var6 var2) var9)) (= (+ (* 5 (+ var10 1)) var3) var7)) (= (+ var2 5) var11)) (= (+ var0 var1) var5)))) (inv_main10 var4 var3 var8 var7 var5 var11 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (and (and (and (and (<= 0 (+ var2 (- 1))) (= var1 var6)) (= var3 var6)) (= 0 var0)) (= 0 var5)) (= 0 var4))) (inv_main10 var2 var1 var5 var6 var4 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main10 var3 var2 var6 var0 var4 var1 var5) (not (= var0 var1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main10 var4 var3 var6 var0 var1 var2 var5) (not (= (+ var1 var0) (+ var5 var2)))))))
(check-sat)
