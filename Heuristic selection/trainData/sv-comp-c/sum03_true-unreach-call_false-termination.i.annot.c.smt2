(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main12 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (<= 0 var1) (<= 0 var0))) (or (not (and (inv_main12 var2 var0) (and (and (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1))) (= (+ var2 2) var3)) (= (+ var0 1) var1)))) (inv_main12 var3 var1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (<= 0 var3)) (or (not (and (and (and (and (<= 0 var2) (<= 0 var1)) (= 0 var4)) (= (+ var4 2) var0)) (= 1 var3))) (inv_main12 var0 var3)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (<= 0 var0)) (not (and (inv_main12 var1 var0) (not (or (= (+ var1 (* (- 2) var0)) 0) (= var1 0))))))))
(check-sat)
