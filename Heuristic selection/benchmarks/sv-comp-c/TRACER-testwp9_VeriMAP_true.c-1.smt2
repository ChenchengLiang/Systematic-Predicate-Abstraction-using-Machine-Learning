(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main4 (Int) Bool)
(assert (forall ((var0 Int)) (inv_main3 var0 ) ) )
(assert (forall ((var0 Int)) (or (not (and (inv_main3 var0 ) (<= 0 (+ (+ var0 (- 10) ) (- 1) ) ) ) ) (inv_main4 var0 ) ) ) )
(assert (forall ((var0 Int)) (not (and (inv_main4 var0 ) (<= 0 (+ (+ 5 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) )
(check-sat)
