(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main6 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (and (<= 0 var4) (<= 0 var3)) (<= 0 var2)) (<= 0 var1)) (<= 0 var0))) (or (not (and (inv_main6 var0 var3 var2) (and (and (<= 0 (+ var3 (- 1))) (= (+ var3 (- 1)) var1)) (= (+ var2 1) var4)))) (inv_main6 var0 var1 var4)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (<= 0 var2) (<= 0 var1))) (or (not (and (and (<= 0 var1) (= var0 var1)) (= 0 var2))) (inv_main6 var0 var1 var2)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (<= 0 var2) (<= 0 var1)) (<= 0 var0))) (not (and (inv_main6 var0 var2 var1) (and (not (= var1 var0)) (not (<= 0 (+ var2 (- 1))))))))))
(check-sat)
