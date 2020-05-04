(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int) Bool)
(declare-fun inv_main6 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (= 0 var2) (= 0 var0)) (= 0 var1))) (inv_main5 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1) (= var0 0))) (inv_main6 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main5 (+ var3 (- 1)) (+ var1 (- 1))) (and (not (= var0 0)) (= var2 0)))) (inv_main5 var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main6 (+ var0 1) (+ var2 1)) (and (not (= var0 (- 1))) (= var1 0)))) (inv_main6 var0 var2))))
(assert (forall ((var0 Int)) (not (and (inv_main6 0 var0) (not (= var0 0))))))
(check-sat)
