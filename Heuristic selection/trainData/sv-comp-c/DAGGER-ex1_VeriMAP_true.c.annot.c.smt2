(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (= 0 var0) (= 0 var1))) (inv_main6 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main6 var1 var4) (and (and (and (and (and (not (= var6 0)) (not (= var3 0))) (= (+ (+ (+ var1 (* 2 var4)) 1) (* (- 2) (+ (+ (* (- 2) var1) var4) (+ (+ var1 (* 2 var4)) 1)))) var2)) (= (+ (* 2 (+ (+ var1 (* 2 var4)) 1)) (+ (+ (* (- 2) var1) var4) (+ (+ var1 (* 2 var4)) 1))) var7)) (= (+ (+ var1 (* 2 var4)) 1) var5)) (= (+ (+ (* (- 2) var1) var4) (+ (+ var1 (* 2 var4)) 1)) var0)))) (inv_main6 var2 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main6 var1 var5) (and (and (and (and (not (= var3 0)) (= (+ (* 2 (+ (+ var1 (* 2 var5)) 1)) (+ (+ (* (- 2) var1) var5) (* (- 1) (+ (+ var1 (* 2 var5)) 1)))) var2)) (= (+ (+ var1 (* 2 var5)) 1) var0)) (= (+ (+ (* (- 2) var1) var5) (* (- 1) (+ (+ var1 (* 2 var5)) 1))) var6)) (= (+ (+ (+ var1 (* 2 var5)) 1) (* (- 2) (+ (+ (* (- 2) var1) var5) (* (- 1) (+ (+ var1 (* 2 var5)) 1))))) var4)))) (inv_main6 var4 var2))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main6 var0 var1) (not (<= 0 (+ var0 (* 2 var1))))))))
(check-sat)
