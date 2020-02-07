(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main17 (Int Int Int) Bool)
(declare-fun inv_main8 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main17 var1 var5 var3) (and (and (and (<= 0 (+ (+ 10 (* (- 1) var3)) (- 1))) (= (+ 2 var3) var2)) (= (+ (+ 2 var3) (+ 2 var3)) var4)) (= var0 var1)))) (inv_main17 var1 var5 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main8 var2 var0) (and (and (and (<= 0 (+ 9 (* (- 1) var0))) (= (* 2 (+ var0 2)) var1)) (= (+ var0 2) var3)) (= var4 var2)))) (inv_main8 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (= var1 var3) (= 1 var2)) (= 0 var0))) (inv_main8 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var6 var0) (and (and (and (and (and (not (<= 0 (+ 9 (* (- 1) var0)))) (= var4 var6)) (= (* 2 var0) var3)) (= var2 var6)) (= 0 var1)) (= 1 var5)))) (inv_main17 var2 var3 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main17 var0 var2 var1) (and (not (= (+ var2 (* (- 2) var1)) 0)) (not (<= 0 (+ (+ 10 (* (- 1) var1)) (- 1)))))))))
(check-sat)
