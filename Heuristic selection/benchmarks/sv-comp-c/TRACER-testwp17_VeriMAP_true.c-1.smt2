(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main8 (Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main4 var0 var1 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main4 var0 var1 ) (<= 0 (+ var1 (- 1) ) ) ) ) (inv_main8 0 var1 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (not (and (inv_main8 var0 var1 ) (not (= var0 0 ) ) ) ) ) ) )
(check-sat)
