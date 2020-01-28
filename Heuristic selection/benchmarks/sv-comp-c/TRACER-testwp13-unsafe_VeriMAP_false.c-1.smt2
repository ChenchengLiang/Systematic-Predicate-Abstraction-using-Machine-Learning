(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int) Bool)
(declare-fun inv_main9 (Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (inv_main3 var1 var0 ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main3 var0 var1 ) (and (<= 0 (+ (+ 50 (* (- 1) var0 ) ) (- 1) ) ) (and (<= 0 (+ var1 (- 1) ) ) (<= 0 (+ (+ var0 (- 5) ) (- 1) ) ) ) ) ) ) (inv_main9 var0 (+ var1 1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main3 var0 var1 ) (and (<= 0 (+ (+ 50 (* (- 1) (+ var0 (- 10) ) ) ) (- 1) ) ) (and (not (<= 0 (+ var1 (- 1) ) ) ) (<= 0 (+ (+ var0 (- 5) ) (- 1) ) ) ) ) ) ) (inv_main9 (+ var0 (- 10) ) var1 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (not (and (inv_main9 var0 var1 ) (<= 0 (+ (* (- 1) var0 ) (- 1) ) ) ) ) ) ) )
(check-sat)
