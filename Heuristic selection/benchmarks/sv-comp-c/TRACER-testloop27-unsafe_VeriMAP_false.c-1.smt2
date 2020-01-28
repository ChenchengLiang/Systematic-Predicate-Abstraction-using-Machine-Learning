(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (inv_main3 var3 var1 var2 var0 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var0 var2 var3 var1 ) (not (<= 0 (+ (+ 1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main6 var0 var2 var3 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (inv_main3 var0 var2 var3 var1 ) ) (inv_main5 0 var2 0 var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var0 var2 var3 var1 ) (and (<= 0 (+ var1 (- 1) ) ) (<= 0 (+ (+ 1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main5 (+ var0 1 ) var2 (+ (+ var3 1 ) (- 1) ) var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main5 var0 var2 var3 var1 ) (and (not (<= 0 (+ var1 (- 1) ) ) ) (<= 0 (+ (+ 1 (* (- 1) var0 ) ) (- 1) ) ) ) ) ) (inv_main5 (+ var0 1 ) var2 (+ var3 1 ) var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (and (inv_main6 var0 var2 var3 var1 ) (not (= var3 0 ) ) ) ) ) ) ) ) )
(check-sat)
