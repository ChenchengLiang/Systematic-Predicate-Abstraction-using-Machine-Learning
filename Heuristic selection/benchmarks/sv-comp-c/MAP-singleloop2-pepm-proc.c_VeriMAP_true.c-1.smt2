(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main5 (Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main5 0 0 var0 ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main5 var2 var1 var0 ) (<= 0 (+ var0 (- 1) ) ) ) ) (inv_main6 var2 var1 var0 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main6 var2 var1 var0 ) (and (<= 0 (+ (+ (+ var2 1 ) (* (- 1) var0 ) ) (- 1) ) ) (<= 0 (+ (+ (* 2 var0 ) (* (- 1) var2 ) ) (- 1) ) ) ) ) ) (inv_main6 (+ var2 1 ) (+ var1 (- 1) ) var0 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main6 var2 var1 var0 ) (and (not (<= 0 (+ (+ (+ var2 1 ) (* (- 1) var0 ) ) (- 1) ) ) ) (<= 0 (+ (+ (* 2 var0 ) (* (- 1) var2 ) ) (- 1) ) ) ) ) ) (inv_main6 (+ var2 1 ) (+ var1 2 ) var0 ) ) ) ) ) )
(check-sat)
