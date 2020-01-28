(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main5 (Int Int) Bool)
(assert (inv_main4 0 100 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main4 var0 var1 ) (not (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main5 var0 var1 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main4 var0 var1 ) (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) (inv_main4 (+ var0 1 ) var1 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (not (and (inv_main5 var0 var1 ) (<= 0 (+ (+ var0 (* (- 1) var1 ) ) (- 1) ) ) ) ) ) ) )
(check-sat)
