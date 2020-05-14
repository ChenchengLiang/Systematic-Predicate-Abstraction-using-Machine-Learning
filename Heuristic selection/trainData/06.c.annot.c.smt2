(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(declare-fun inv_main8 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (= 1 var1) (= 0 var2)) (= 0 var3)) (= 0 var0))) (inv_main6 var1 var2 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main6 var1 var3 var2 var0) (not (= var4 0)))) (inv_main8 var1 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main8 var3 var5 var4 var2) (and (= (+ (+ var4 var2) 1) var0) (= (+ var4 var2) var1)))) (inv_main6 var0 var1 var4 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var3 var5 (+ var6 (- 1)) (+ var0 (- 1))) (and (and (and (= (+ var5 (* (- 2) var4)) 0) (<= 0 (+ var3 (- 1)))) (= var3 (+ (* 2 var2) 1))) (not (= var1 0))))) (inv_main8 var3 var5 var6 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var4 var6 (+ var5 (- 1)) var3) (and (and (and (and (= (+ (* 2 var1) (* (- 1) var4)) (- 1)) (= (+ (* 2 var0) (* (- 1) var6)) (- 1))) (not (= var2 0))) (<= 0 var1)) (<= 0 var0)))) (inv_main8 var4 var6 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var4 var6 (+ var5 (- 1)) var3) (and (and (and (and (= (+ (* 2 var1) (* (- 1) var4)) (- 1)) (= (+ (* 2 var0) (* (- 1) var6)) 1)) (not (= var2 0))) (<= 0 var1)) (<= 0 (+ (- 1) (+ var0 (* (- 1) var6))))))) (inv_main8 var4 var6 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main8 var3 var6 var5 (+ var7 (- 1))) (and (and (and (= (+ (* 2 var2) (+ (* (- 1) var3) var4)) 0) (= (* 2 var1) var6)) (and (not (= var0 0)) (not (= var4 (- 1))))) (and (<= 0 (* (- 1) var4)) (<= 0 (+ 1 var4)))))) (inv_main8 var3 var6 var5 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main8 var3 var6 var5 (+ var7 (- 1))) (and (and (and (= (+ (* 2 var2) (+ (* (- 1) var3) var4)) 0) (= (* 2 var1) var6)) (not (= var0 0))) (and (and (<= 0 (+ (- 1) (* (- 1) var3))) (<= 0 (* (- 1) var4))) (<= 0 (+ 1 var4)))))) (inv_main8 var3 var6 var5 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var3 var6 var5 var2) (and (and (and (and (= (+ (* 2 var0) (* (- 1) var3)) 1) (= (+ (* 2 var4) (* (- 1) var6)) (- 1))) (not (= var1 0))) (<= 0 (+ (- 1) (+ var0 (* (- 1) var3))))) (<= 0 var4)))) (inv_main8 var3 var6 var5 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var3 var6 var5 var2) (and (and (and (= (* 2 var0) var3) (= (+ (* 2 var4) (* (- 1) var6)) (- 1))) (not (= var1 0))) (<= 0 var4)))) (inv_main8 var3 var6 var5 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var3 var6 var5 var2) (and (and (and (and (= (+ (* 2 var0) (* (- 1) var3)) 1) (= (+ (* 2 var4) (* (- 1) var6)) 1)) (not (= var1 0))) (<= 0 (+ (- 1) (+ var0 (* (- 1) var3))))) (<= 0 (+ (- 1) (+ var4 (* (- 1) var6))))))) (inv_main8 var3 var6 var5 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main8 var3 var6 var5 var2) (and (and (and (= (* 2 var0) var3) (= (+ (* 2 var4) (* (- 1) var6)) 1)) (not (= var1 0))) (<= 0 (+ (- 1) (+ var4 (* (- 1) var6))))))) (inv_main8 var3 var6 var5 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main6 var1 var3 var2 var0) (not (= var2 var0))))))
(check-sat)
