(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main24 () Bool)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (= 0 var2) (= 0 var0)) (= 0 var3)) (= 0 var1))) (inv_main6 var2 var0 var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_main6 var8 var3 var1 (* 3 var6)) (and (and (and (and (not (= var0 0)) (= (+ (+ (+ var8 1) (+ var3 1)) (+ var1 1)) var4)) (= (+ var8 1) var7)) (= (+ var3 1) var5)) (= (+ var1 1) var2)))) (inv_main6 var7 var5 var2 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_main6 var7 var4 var3 (+ (* 3 var6) var5)) (and (and (and (and (= (+ var2 (* (- 1) var3)) 1) (= (+ var1 (* (- 1) var4)) 1)) (= (+ var8 (+ (* (- 1) var3) (+ (* (- 1) var4) (* (- 1) var7)))) 2)) (not (= var0 0))) (and (and (<= 0 (+ (- 1) (+ (* (- 3) var6) (* (- 1) var5)))) (<= 0 (+ (- 1) (* (- 1) var5)))) (<= 0 (+ 2 var5)))))) (inv_main6 var7 var1 var2 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int)) (or (not (and (inv_main6 var7 var4 var3 (+ (* 3 var6) var5)) (and (and (and (and (= (+ var2 (* (- 1) var3)) 1) (= (+ var1 (* (- 1) var4)) 1)) (= (+ var8 (+ (* (- 1) var3) (+ (* (- 1) var4) (* (- 1) var7)))) 2)) (not (= var0 0))) (and (and (<= 0 (+ (- 1) (+ (* 3 var6) var5))) (<= 0 (+ 2 (* (- 1) var5)))) (<= 0 (+ (- 1) var5)))))) (inv_main6 var7 var1 var2 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main6 var1 var1 var0 var2) (not (= var1 var0)))) inv_main24)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main6 var3 var1 var0 var2) (and (not (= var1 var0)) (not (= var3 var1))))) inv_main24)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main6 var3 var1 var0 var2) (not (= var3 var1))))))
(assert (not inv_main24))
(check-sat)