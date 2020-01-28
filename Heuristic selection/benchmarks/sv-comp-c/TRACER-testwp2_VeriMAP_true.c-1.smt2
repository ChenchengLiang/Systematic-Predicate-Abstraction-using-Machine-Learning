(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int Int) Bool)
(declare-fun inv_main7 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (inv_main3 var1 var2 var0 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main3 var0 var2 var1 ) (<= 0 (+ var1 (- 1) ) ) ) ) (inv_main7 1 1 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main3 var0 var2 var1 ) (not (<= 0 (+ var1 (- 1) ) ) ) ) ) (inv_main7 2 1 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (and (inv_main7 var0 var2 var1 ) (<= 0 (+ (* (- 1) var2 ) (- 1) ) ) ) ) ) ) ) )
(check-sat)
