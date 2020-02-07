(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main12 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main12 var2 var3 var1 var4 var6) (and (and (<= 0 (+ var2 (* (- 1) var1))) (= (+ var1 1) var0)) (= (+ var4 var6) var5)))) (inv_main12 var2 var3 var0 var5 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (= var3 1) (= 0 var1)) (= 1 var0)) (= 0 var4))) (inv_main12 var2 var3 var1 var4 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (not (= var2 1)) (= 0 var1)) (= 2 var4)) (= 0 var3))) (inv_main12 var0 var2 var1 var3 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main12 var1 1 var0 var2 var3) (and (not (= var2 var0)) (not (<= 0 (+ var1 (* (- 1) var0)))))))))
(check-sat)
