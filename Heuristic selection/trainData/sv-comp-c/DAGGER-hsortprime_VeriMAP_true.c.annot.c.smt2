(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main23 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (and (and (<= 0 (* (- 1) (+ (+ (* 2 var2) (* (- 1) var1)) (- 1)))) (<= 0 (+ (* 2 var2) (* (- 1) var1)))) (= (+ var3 (* (- 2) var2)) 0)) (<= 0 (+ var1 (- 2)))) (= var4 var2)) (= var0 var1))) (inv_main23 var2 var0 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main23 var4 var0 var6) (and (and (and (and (<= 0 (+ (+ var0 (* (- 1) var6)) (- 1))) (not (= var3 0))) (not (= var5 0))) (= (+ var6 1) var1)) (= (+ (* 2 var6) 2) var2)))) (inv_main23 var4 var0 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main23 var3 var1 var5) (and (and (and (<= 0 (* (- 1) (+ var5 (* (- 1) var1)))) (not (= var0 0))) (not (= var4 0))) (= (* 2 var5) var2)))) (inv_main23 var3 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main23 var5 var3 var7) (and (and (and (and (and (and (<= 0 (+ var3 (- 2))) (<= 0 (+ var5 (- 2)))) (not (= var4 0))) (not (= var6 0))) (= (+ var5 (- 1)) var2)) (= (+ var5 (- 1)) var0)) (= (+ (* 2 var5) (- 2)) var1)))) (inv_main23 var2 var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main23 var2 var0 var5) (and (and (and (and (and (<= 0 (+ (+ var0 (- 1)) (- 3))) (<= 0 (+ 1 (* (- 1) var2)))) (not (= var4 0))) (= (* 2 var2) var6)) (= var3 var2)) (= (+ var0 (- 1)) var1)))) (inv_main23 var3 var1 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main23 var1 var0 var2) (not (<= 0 (+ (+ (* (- 2) var1) var0) 1)))))))
(check-sat)
