(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (inv_main3 var0 var1 var2 ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main5 var1 var0 var2 ) (not (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main6 var1 var0 var2 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (inv_main3 var1 var0 var2 ) ) (inv_main5 var1 0 1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main5 var1 var0 var2 ) (and (= var2 1 ) (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main5 var1 (+ var0 1 ) 2 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (or (not (and (inv_main5 var1 var0 var2 ) (and (not (= var2 1 ) ) (<= 0 (+ (+ var1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main5 var1 (+ var0 1 ) 1 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (not (and (inv_main6 var1 var0 var2 ) (<= 0 (+ (+ var2 (- 2) ) (- 1) ) ) ) ) ) ) ) )
(check-sat)