(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (= 1 var2) (= 0 var3)) (= 0 var0)) (= 0 var1))) (inv_main6 var2 var3 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main6 0 var3 var4 var0) (and (and (not (= var3 0)) (not (= var1 0))) (= var2 0)))) (inv_main6 var2 var3 var4 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main6 0 0 var5 var1) (and (and (and (not (= var2 0)) (= 1 var0)) (= var3 0)) (= (+ var1 1) var4)))) (inv_main6 var3 var0 var5 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main6 var5 var4 var6 var0) (and (and (and (and (= (+ var3 (* (- 1) var6)) 1) (not (= var2 0))) (not (= var5 0))) (not (= var4 0))) (= var1 0)))) (inv_main6 var1 var4 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main6 var4 0 var7 var1) (and (and (and (and (and (= (+ var0 (* (- 1) var1)) 1) (= (+ var3 (* (- 1) var7)) 1)) (not (= var2 0))) (not (= var4 0))) (= var6 1)) (= var5 0)))) (inv_main6 var5 var6 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main6 var2 var1 var3 var0) (not (= var3 var0))))))
(check-sat)
