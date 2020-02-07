(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (not (= var2 0)) (= 5 var0)) (= 0 var1))) (inv_main5 var0 var1))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (= 10 var1) (= 0 var0))) (inv_main5 var0 var1))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main5 var0 var1) (not (or (= var0 5) (= var1 10)))))))
(check-sat)
