(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main5 (Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main4 var0 0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main4 var1 var0 ) (<= 0 var1 ) ) ) (inv_main5 var1 var0 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main5 var1 var0 ) (<= 0 (+ (+ 10000 (* (- 1) var0 ) ) (- 1) ) ) ) ) (inv_main5 (+ var1 1 ) (+ var0 1 ) ) ) ) ) )
(check-sat)
