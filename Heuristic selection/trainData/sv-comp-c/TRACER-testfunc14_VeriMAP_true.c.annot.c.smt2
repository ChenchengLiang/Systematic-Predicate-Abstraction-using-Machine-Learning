(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main13 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main13 var1 var0 var3) (and (not (= var3 0)) (= (+ var0 1) var2)))) (inv_main13 var1 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (and (and (and (<= 0 (+ var0 (- 1))) (<= 0 (+ var3 (- 1)))) (= 1 var4)) (= 0 var5)) (= 4 var1))) (inv_main13 var4 var5 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (and (and (and (not (<= 0 (+ var2 (- 1)))) (<= 0 (+ var4 (- 1)))) (= 1 var5)) (= 0 var0)) (= 5 var3))) (inv_main13 var5 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (and (and (and (<= 0 (+ var2 (- 1))) (not (<= 0 (+ var4 (- 1))))) (= 3 var1)) (= 0 var0)) (= 4 var3))) (inv_main13 var1 var0 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (and (and (and (not (<= 0 (+ var2 (- 1)))) (not (<= 0 (+ var5 (- 1))))) (= 3 var4)) (= 0 var0)) (= 5 var1))) (inv_main13 var4 var0 var3))))
(assert (forall ((var0 Int)) (not (inv_main13 2 var0 0))))
(check-sat)
