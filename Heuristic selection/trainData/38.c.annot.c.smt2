(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (= 0 var1) (= 0 var0)) (= 0 var2))) (inv_main5 var3 var1 var0 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main5 var1 (+ var4 (- 1)) (+ var3 (- 1)) (+ var2 (- 1))) (and (= (+ (+ (+ var2 (- 1)) 1) (* (- 2) var0)) 0) (<= 0 (+ (+ var1 (* (- 1) (+ var2 (- 1)))) (- 1)))))) (inv_main5 var1 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main5 var0 (+ var4 (- 1)) var1 (+ var2 (- 1))) (and (and (= (+ (* 2 var3) (* (- 1) var2)) (- 1)) (<= 0 (+ var0 (* (- 1) var2)))) (<= 0 var3)))) (inv_main5 var0 var4 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main5 var0 (+ var4 (- 1)) var1 (+ var2 (- 1))) (and (and (= (+ (* 2 var3) (* (- 1) var2)) 1) (<= 0 (+ var0 (* (- 1) var2)))) (<= 0 (+ (- 1) (+ var3 (* (- 1) var2))))))) (inv_main5 var0 var4 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main5 var0 var3 var2 var4) (and (and (not (= (+ var3 (* (- 2) var2)) 0)) (= (+ var4 (* (- 2) var1)) 0)) (not (<= 0 (+ (+ var0 (* (- 1) var4)) (- 1)))))))))
(check-sat)
