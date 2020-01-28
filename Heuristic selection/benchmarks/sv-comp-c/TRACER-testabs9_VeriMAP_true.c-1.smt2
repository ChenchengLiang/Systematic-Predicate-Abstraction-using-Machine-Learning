(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int) Bool)
(declare-fun inv_main5 (Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main3 var0 var1 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (inv_main3 var0 var1 ) ) (inv_main5 0 99 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (not (and (inv_main5 var0 var1 ) (<= 0 (+ (* (- 1) var0 ) (- 1) ) ) ) ) ) ) )
(check-sat)
