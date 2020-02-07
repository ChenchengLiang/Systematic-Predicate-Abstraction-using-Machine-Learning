(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (and (<= 0 var1) (<= 0 (+ 1000000 (* (- 1) var1)))) (= 0 var3)) (= 0 var0)) (= 0 var2))) (inv_main10 var3 var1 var0 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main10 var6 var2 var0 var5) (and (and (and (and (not (= var4 0)) (<= 0 (+ (+ var2 (* (- 1) var6)) (- 1)))) (= (+ var6 1) var3)) (= (+ var0 1) var1)) (= (+ var5 2) var7)))) (inv_main10 var3 var2 var1 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main10 var6 var3 var2 var4) (and (and (and (<= 0 (+ (+ var3 (* (- 1) var6)) (- 1))) (= (+ var6 1) var0)) (= (+ var2 2) var1)) (= (+ var4 1) var5)))) (inv_main10 var0 var3 var1 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main10 var3 var1 var0 var2) (and (not (= (+ (+ var0 var2) (* (- 3) var1)) 0)) (not (<= 0 (+ (+ var1 (* (- 1) var3)) (- 1)))))))))
(check-sat)
