(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main13 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main13 var3 var0 var5 var4) (and (and (<= 0 (+ var4 (- 1))) (= (+ var5 1) var2)) (= (+ var4 (- 1)) var1)))) (inv_main13 var3 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (and (<= 0 var2) (<= 0 (+ 1000000 (* (- 1) var2)))) (<= 0 (+ 1000000 (* (- 1) var3)))) (= var0 var3)) (= var1 var2))) (inv_main13 var0 var1 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main13 var1 var0 var3 var2) (and (not (= var3 (+ var1 var0))) (not (<= 0 (+ var2 (- 1)))))))))
(check-sat)
