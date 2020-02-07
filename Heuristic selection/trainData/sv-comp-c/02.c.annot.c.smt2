(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main8 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main8 var7 var6 var8 var1) (and (and (and (and (and (and (<= 0 (+ (+ var7 (+ (+ var6 var8) var1)) (- 1))) (= (+ var7 (+ (+ var6 var8) var1)) (+ (* 2 var5) 1))) (not (= var0 0))) (= (+ var6 1) var3)) (= (+ var8 1) var2)) (= (+ var1 2) var4)) (= (+ var7 (+ (+ var6 var8) var1)) var9)))) (inv_main8 var9 var3 var2 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main8 var8 var5 var9 var3) (and (and (and (and (and (and (and (= (+ var1 (* (- 1) var3)) 2) (= (+ var7 (* (- 1) var9)) 1)) (= (+ var4 (+ (* (- 1) var3) (+ (* (- 1) var9) (+ (* (- 1) var5) (* (- 1) var8))))) 0)) (= (+ (* 2 var0) (+ (* (- 1) var3) (+ (* (- 1) var9) (+ (* (- 1) var5) (+ (* (- 1) var8) var6))))) 0)) (not (= var2 0))) (not (= var6 (- 1)))) (<= 0 (* (- 1) var6))) (<= 0 (+ 1 var6))))) (inv_main8 var4 var5 var7 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main8 var8 var5 var9 var3) (and (and (and (and (and (and (and (= (+ var1 (* (- 1) var3)) 2) (= (+ var7 (* (- 1) var9)) 1)) (= (+ var4 (+ (* (- 1) var3) (+ (* (- 1) var9) (+ (* (- 1) var5) (* (- 1) var8))))) 0)) (= (+ (* 2 var0) (+ (* (- 1) var3) (+ (* (- 1) var9) (+ (* (- 1) var5) (+ (* (- 1) var8) var6))))) 0)) (not (= var2 0))) (<= 0 (+ (- 1) (+ (* (- 1) var3) (+ (* (- 1) var9) (+ (* (- 1) var5) (* (- 1) var8))))))) (<= 0 (* (- 1) var6))) (<= 0 (+ 1 var6))))) (inv_main8 var4 var5 var7 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (= 1 var0) (= 0 var2)) (= 0 var3)) (= 0 var1))) (inv_main8 var0 var2 var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main8 var2 var1 var3 var0) (not (= var1 var3))))))
(check-sat)
