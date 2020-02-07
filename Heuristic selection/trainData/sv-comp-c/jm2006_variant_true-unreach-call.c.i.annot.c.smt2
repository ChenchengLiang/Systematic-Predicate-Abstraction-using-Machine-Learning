(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main14 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main14 var1 var7 var3 var5 var4) (and (and (and (not (= var3 0)) (= (+ var3 (- 1)) var2)) (= (+ var5 (- 2)) var0)) (= (+ var4 1) var6)))) (inv_main14 var1 var7 var2 var0 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (and (and (<= 0 var2) (<= 0 var4)) (<= 0 (+ 1000000 (* (- 1) var4)))) (= var0 var4)) (= var1 var2)) (= 0 var3))) (inv_main14 var0 var1 var4 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main14 var2 var2 0 var1 var0) (not (= (+ var1 (* 1 var0)) 0))))))
(check-sat)
