(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main9 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (and (<= 0 (+ var1 (- 1))) (<= 0 (+ 1000000 (* (- 1) var1)))) (= 0 var0)) (= (* 2 var1) var2))) (inv_main9 var0 var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main9 var4 var0 var1) (and (and (and (<= 0 (+ var0 (- 1))) (= (+ var4 1) var3)) (= (+ var0 (- 1)) var5)) (= (+ var1 (- 1)) var2)))) (inv_main9 var3 var5 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main9 var2 var0 var1) (and (not (= var2 var1)) (not (<= 0 (+ var0 (- 1)))))))))
(check-sat)
