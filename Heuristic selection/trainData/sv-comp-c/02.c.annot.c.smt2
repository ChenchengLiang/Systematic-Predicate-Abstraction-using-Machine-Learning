(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main8 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main8 var8 var6 var9 var2) (and (and (and (and (and (and (<= 0 (+ (+ var8 (+ (+ var6 var9) var2)) (- 1))) (= (+ var8 (+ (+ var6 var9) var2)) (+ (* 2 var5) 1))) (not (= var0 0))) (= (+ var6 1) var7)) (= (+ var9 1) var4)) (= (+ var2 2) var3)) (= (+ var8 (+ (+ var6 var9) var2)) var1)))) (inv_main8 var1 var7 var4 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main8 var8 var4 var9 var2) (and (and (and (and (and (and (and (= (+ var6 (* (- 1) var2)) 2) (= (+ var0 (* (- 1) var9)) 1)) (= (+ var7 (+ (* (- 1) var2) (+ (* (- 1) var9) (+ (* (- 1) var4) (* (- 1) var8))))) 0)) (= (+ (* 2 var5) (+ (* (- 1) var2) (+ (* (- 1) var9) (+ (* (- 1) var4) (+ (* (- 1) var8) var3))))) 0)) (not (= var1 0))) (not (= var3 (- 1)))) (<= 0 (* (- 1) var3))) (<= 0 (+ 1 var3))))) (inv_main8 var7 var4 var0 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main8 var8 var4 var9 var2) (and (and (and (and (and (and (and (= (+ var6 (* (- 1) var2)) 2) (= (+ var0 (* (- 1) var9)) 1)) (= (+ var7 (+ (* (- 1) var2) (+ (* (- 1) var9) (+ (* (- 1) var4) (* (- 1) var8))))) 0)) (= (+ (* 2 var5) (+ (* (- 1) var2) (+ (* (- 1) var9) (+ (* (- 1) var4) (+ (* (- 1) var8) var3))))) 0)) (not (= var1 0))) (<= 0 (+ (- 1) (+ (* (- 1) var2) (+ (* (- 1) var9) (+ (* (- 1) var4) (* (- 1) var8))))))) (<= 0 (* (- 1) var3))) (<= 0 (+ 1 var3))))) (inv_main8 var7 var4 var0 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (= 1 var3) (= 0 var0)) (= 0 var1)) (= 0 var2))) (inv_main8 var3 var0 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main8 var2 var1 var3 var0) (not (= var1 var3))))))
(check-sat)
