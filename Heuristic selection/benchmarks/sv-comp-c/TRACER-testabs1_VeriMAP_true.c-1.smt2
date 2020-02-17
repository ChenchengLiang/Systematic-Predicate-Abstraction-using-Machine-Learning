(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (inv_main3 var2 var0 var1 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main3 var2 var0 var1 ) (<= 0 (+ var1 (- 1) ) ) ) ) (inv_main4 4 1 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main3 var2 var0 var1 ) (not (<= 0 (+ var1 (- 1) ) ) ) ) ) (inv_main4 100 2 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (and (inv_main4 var2 var0 var1 ) (<= 0 (* (- 1) var2 ) ) ) ) ) ) ) )
(check-sat)