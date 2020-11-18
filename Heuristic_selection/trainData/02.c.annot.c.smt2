(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main8 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var1 (+ var6 (- 1)) (+ var2 (- 1)) (+ var4 (- 2))) (and (and (and (<= 0 (+ (+ var1 (+ (+ (+ var6 (- 1)) (+ var2 (- 1))) (+ var4 (- 2)))) (- 1))) (= (+ var1 (+ (+ (+ var6 (- 1)) (+ var2 (- 1))) (+ var4 (- 2)))) (+ (* 2 var3) 1))) (not (= var0 0))) (= (+ var1 (+ (+ (+ var6 (- 1)) (+ var2 (- 1))) (+ var4 (- 2)))) var5)))) (inv_main8 var5 var6 var2 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main8 var4 var5 (+ var2 (- 1)) (+ var1 (- 2))) (and (and (and (and (and (= (+ var7 (+ (* (- 1) var1) (+ (* (- 1) var2) (+ (* (- 1) var5) (* (- 1) var4))))) (- 3)) (= (+ (* 2 var6) (+ (* (- 1) var1) (+ (* (- 1) var2) (+ (* (- 1) var5) (+ (* (- 1) var4) var0))))) (- 3))) (not (= var3 0))) (not (= var0 (- 1)))) (<= 0 (* (- 1) var0))) (<= 0 (+ 1 var0))))) (inv_main8 var7 var5 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main8 var4 var5 (+ var2 (- 1)) (+ var1 (- 2))) (and (and (and (and (and (= (+ var7 (+ (* (- 1) var1) (+ (* (- 1) var2) (+ (* (- 1) var5) (* (- 1) var4))))) (- 3)) (= (+ (* 2 var6) (+ (* (- 1) var1) (+ (* (- 1) var2) (+ (* (- 1) var5) (+ (* (- 1) var4) var0))))) (- 3))) (not (= var3 0))) (<= 0 (+ 2 (+ (* (- 1) var1) (+ (* (- 1) var2) (+ (* (- 1) var5) (* (- 1) var4))))))) (<= 0 (* (- 1) var0))) (<= 0 (+ 1 var0))))) (inv_main8 var7 var5 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (= 0 var1) (= 0 var2)) (= 0 var0)) (= 1 var3))) (inv_main8 var3 var1 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main8 var0 var2 var1 var3) (not (= var2 var1))))))
(check-sat)
