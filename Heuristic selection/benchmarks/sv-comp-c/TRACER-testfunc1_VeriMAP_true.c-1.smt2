(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unknown)
(declare-fun inv_main3 (Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (inv_main3 var1 var2 var0 var3 ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var0 var2 var3 var1 ) (not (= var1 0 ) ) ) ) (inv_main4 var0 (+ var0 3 ) (+ (+ (+ var0 3 ) (* (- 1) var0 ) ) (- 3) ) var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (or (not (and (inv_main3 var0 var2 var3 var1 ) (= var1 0 ) ) ) (inv_main4 var0 (+ var0 5 ) (+ (+ (+ var0 5 ) (* (- 1) var0 ) ) (- 5) ) var1 ) ) ) ) ) ) )
(assert (forall ((var0 Int)) (forall ((var1 Int)) (forall ((var2 Int)) (forall ((var3 Int)) (not (and (inv_main4 var0 var2 var3 var1 ) (not (= var3 0 ) ) ) ) ) ) ) ) )
(check-sat)
