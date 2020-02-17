(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (= 0 var1) (= 0 var3)) (= 0 var2))) (inv_main6 var0 var1 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main6 var1 var3 var5 var6) (and (and (and (and (= (+ (+ var6 1) (* (- 2) var4)) 0) (<= 0 (+ (+ var1 (* (- 1) var6)) (- 1)))) (= (+ var3 1) var2)) (= (+ var5 1) var0)) (= (+ var6 1) var7)))) (inv_main6 var1 var2 var0 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main6 var2 var4 var5 (* 2 var3)) (and (and (and (= (+ var1 (* (- 2) var3)) 1) (= (+ var0 (* (- 1) var4)) 1)) (<= 0 (+ (- 1) (+ var2 (* (- 2) var3))))) (<= 0 var3)))) (inv_main6 var2 var0 var5 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main6 var2 var4 var5 var6) (and (and (and (and (= (+ var1 (* (- 1) var6)) 1) (= (+ var0 (* (- 1) var4)) 1)) (= (+ (* 2 var3) (* (- 1) var6)) 2)) (<= 0 (+ (- 1) (+ var2 (* (- 1) var6))))) (<= 0 (+ (- 2) (+ var3 (* (- 1) var6))))))) (inv_main6 var2 var0 var5 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main6 var0 var1 var2 10) (and (not (= (+ var1 (* (- 2) var2)) 0)) (not (<= 0 (+ (+ var0 (- 10)) (- 1)))))))))
(check-sat)
