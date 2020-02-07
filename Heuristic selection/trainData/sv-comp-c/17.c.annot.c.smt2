(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int Int) Bool)
(declare-fun inv_main8 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (= 1 var0) (= 1 var1)) (= 0 var2))) (inv_main5 var3 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main5 var2 var0 var1) (and (<= 0 (+ (+ var2 (* (- 1) var1)) (- 1))) (= 0 var3)))) (inv_main8 var2 var0 var1 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main8 var4 var2 var3 var1) (and (not (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1)))) (= (+ var3 1) var0)))) (inv_main5 var4 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main8 var4 var1 var2 var0) (and (and (<= 0 (+ (+ var2 (* (- 1) var0)) (- 1))) (= (+ var1 (+ var2 (* (- 1) var0))) var3)) (= (+ var0 1) var5)))) (inv_main8 var4 var3 var2 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main5 var2 var0 var1) (not (or (<= 0 (+ var0 (* (- 1) var2))) (<= 0 (+ (+ var2 (* (- 1) var1)) (- 1)))))))))
(check-sat)
