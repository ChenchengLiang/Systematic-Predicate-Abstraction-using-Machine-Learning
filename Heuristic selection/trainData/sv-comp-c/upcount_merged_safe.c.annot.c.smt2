(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main4 var2 var3 var4) (and (and (not (<= 0 var3)) (= var0 var2)) (= var1 0)))) (inv_main5 var2 var0 var4 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main4 var2 var3 var6) (and (and (and (and (<= 0 var3) (= (+ var3 (- 1)) var5)) (= (+ var6 1) var4)) (= var0 var2)) (= var1 0)))) (inv_main4 var2 var5 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main5 var2 var0 var5 var1) (and (and (<= 0 (+ var0 (- 1))) (= (+ var0 (- 1)) var4)) (= (+ var1 1) var3)))) (inv_main5 var2 var4 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (= var0 var1) (= var4 var1)) (= 0 var2)) (= 0 var3))) (inv_main4 var0 var4 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main5 var2 var0 var3 var1) (and (not (or (<= 0 (+ (* (- 1) var2) (- 1))) (= var3 (+ var1 1)))) (not (<= 0 (+ var0 (- 1)))))))))
(check-sat)
