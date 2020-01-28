(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main10 (Int Int) Bool)
(declare-fun inv_main3 (Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main3 var0 var1 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main3 var1 var0 ) (<= 0 (+ var0 (- 1) ) ) ) ) (inv_main10 7 var0 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main3 var1 var0 ) (not (<= 0 (+ var0 (- 1) ) ) ) ) ) (inv_main10 8 var0 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (not (and (inv_main10 var1 var0 ) (<= 0 (+ (+ var1 (- 50) ) (- 1) ) ) ) ) ) ) )
(check-sat)
