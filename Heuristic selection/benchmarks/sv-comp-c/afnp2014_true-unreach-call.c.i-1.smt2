(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main5 (Int Int) Bool)
(assert (inv_main4 1 0 ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (or (not (and (inv_main4 var0 var1 ) (not (<= 0 (+ (+ 1000 (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main5 var0 var1 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main4 var0 var1 ) (and (= var2 0 ) (<= 0 (+ (+ 1000 (* (- 1) var1 ) ) (- 1) ) ) ) ) ) (inv_main5 var0 var1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main4 var1 var2 ) (and (not (= var0 0 ) ) (<= 0 (+ (+ 1000 (* (- 1) var2 ) ) (- 1) ) ) ) ) ) (inv_main4 (+ var1 var2 ) (+ var2 1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (not (and (inv_main5 var0 var1 ) (not (<= 0 (+ var0 (* (- 1) var1 ) ) ) ) ) ) ) ) )
(check-sat)
