(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int Int) Bool)
(declare-fun inv_main8 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (inv_main3 var1 var0 var2 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main3 var2 var0 var1 ) (and (<= 0 (+ var2 (- 1) ) ) (<= 0 (+ (+ var2 (- 4) ) (- 1) ) ) ) ) ) (inv_main8 var2 var2 4 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main3 var2 var0 var1 ) (not (<= 0 (+ (+ var2 (- 4) ) (- 1) ) ) ) ) ) (inv_main8 5 5 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (and (inv_main8 var2 var0 var1 ) (not (<= 0 (+ (+ var0 (- 4) ) (- 1) ) ) ) ) ) ) ) ) )
(check-sat)
