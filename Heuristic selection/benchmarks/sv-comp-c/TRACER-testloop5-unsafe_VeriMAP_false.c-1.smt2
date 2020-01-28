(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main2 (Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(assert (inv_main2 0 ) )
(assert (forall ((var0 Int)) (or (not (and (inv_main2 var0 ) (not (<= 0 (+ (+ 10 (* (- 1) (+ var0 1 ) ) ) (- 1) ) ) ) ) ) (inv_main3 (+ var0 1 ) ) ) ) )
(assert (forall ((var0 Int)) (or (not (and (inv_main2 var0 ) (<= 0 (+ (+ 10 (* (- 1) (+ var0 1 ) ) ) (- 1) ) ) ) ) (inv_main2 (+ var0 1 ) ) ) ) )
(assert (forall ((var0 Int)) (not (and (inv_main3 var0 ) (= var0 10 ) ) ) ) )
(check-sat)
