(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int) Bool)
(declare-fun inv_main8 (Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main3 var0 var1 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main3 var0 var1 ) (<= 0 (+ var1 (- 1) ) ) ) ) (inv_main8 5 var1 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main3 var0 var1 ) (not (<= 0 (+ var1 (- 1) ) ) ) ) ) (inv_main8 50 var1 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (not (and (inv_main8 var0 var1 ) (<= 0 (+ (+ var0 (- 50) ) (- 1) ) ) ) ) ) ) )
(check-sat)
