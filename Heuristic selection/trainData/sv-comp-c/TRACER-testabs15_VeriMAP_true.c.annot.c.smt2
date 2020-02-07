(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main9 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (<= 0 var3) (= 0 var0)) (= 0 var1)) (= 0 var2))) (inv_main9 var3 var0 var1 var2 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main9 var5 var4 var1 var3 var7) (and (and (and (and (not (= var7 0)) (<= 0 (+ (+ var5 (* (- 1) var4)) (- 1)))) (= (+ var4 1) var0)) (= (+ var1 1) var2)) (= (+ var3 2) var6)))) (inv_main9 var5 var0 var2 var6 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main9 var4 var3 var0 var1 0) (and (and (and (and (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1))) (= var6 0)) (= (+ var3 1) var7)) (= (+ var0 2) var2)) (= (+ var1 1) var5)))) (inv_main9 var4 var7 var2 var5 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main9 var3 var2 var0 var1 var4) (and (not (= (+ (+ var0 var1) (* (- 3) var3)) 0)) (not (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1)))))))))
(check-sat)
