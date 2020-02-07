(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main11 (Int Int Int) Bool)
(declare-fun inv_main8 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main8 var1 var0 var4 var2) (and (and (<= 0 var4) (= (+ var4 (- 1)) var3)) (= (+ var2 1) var5)))) (inv_main8 var1 var0 var3 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main11 var1 var3 var0) (and (and (not (<= 0 (+ var1 (* (- 1) var3)))) (= var2 var1)) (= var4 0)))) (inv_main8 var1 var0 var2 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main11 var1 var5 var0) (and (and (and (and (<= 0 (+ var1 (* (- 1) var5))) (= (+ var5 1) var2)) (= (+ var0 1) var4)) (= var3 var1)) (= var6 0)))) (inv_main11 var1 var2 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (and (not (<= 0 var2)) (= var1 var2)) (= 0 var3)) (= 0 var4)) (= 0 var0))) (inv_main8 var1 var0 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (and (and (and (and (and (<= 0 (+ var3 (* (- 1) var6))) (= 0 var6)) (= 0 var1)) (= (+ var6 1) var5)) (= (+ var1 1) var4)) (= var2 var3)) (= 0 var0))) (inv_main11 var2 var5 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main11 var1 var2 var0) (not (= var2 var0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main8 var1 var0 var3 var2) (and (not (= (+ (+ var3 (- 1)) (+ var2 1)) var1)) (<= 0 var3))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main8 var1 var0 var2 var3) (and (not (= var0 var3)) (not (<= 0 var2)))))))
(check-sat)
